#include "nemu.h"
#include "cpu/reg.h"
#include "cpu/cpu.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

extern uint32_t look_up_symtab(char *sym, bool *success);

enum {
	ADD, SUB, MUL, DIV,
	NOTYPE, EQ, NOTEQ, AND,
	OR, NOT, POS, NEG, 
	MOD, POINTER, REG,
	INT, INT_16, FLOAT_E, STRING, 
	LEFT_PAREN, RIGHT_PAREN,
	
};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */
	{" +",	NOTYPE},				// white space					
	{"\\+", ADD},
	{"-", SUB},
	{"0[Xx][0-9a-fA-F]{1,}", INT_16},
	{"[0-9]{1,}", INT},
	{"[0-9]{1,}\\.{0,1}[0-9]{0,}", FLOAT_E},
	{"\\*", MUL},
	{"/", DIV},
	{"%", MOD},
	{"==", EQ},
	{"!=", NOTEQ},
	{"&&", AND},
	{"\\|\\|", OR},
	{"!", NOT},
	{"\\(", LEFT_PAREN},
	{"\\)", RIGHT_PAREN},
	{"\\$[Ee][AaBbCcDdSsIi][XxIiPp]", REG},
	{"[a-zA-Z]{1,}[a-zA-Z_]{0,}", STRING}
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

#define PRIORITY(num) \
			if(record == 0) { \
				minPri = (minPri < num)? minPri: num; \
				flag = (minPri < num)? flag: i; \
			}

#define PRIORITY_SINGLE(num) \
			if(record == 0) { \
				minPri = (minPri <= num)? minPri: num; \
				flag = (minPri <= num)? flag: i; \
			} \

#define REG_MACRO(name, NAME) \
			if(strcmp(tokens[start].str, str(concat($, name))) == 0 || \
				strcmp(tokens[start].str, str(concat($, NAME))) == 0) \

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;
				assert(substr_len != 0);

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */
				
				tokens[nr_token].type = rules[i].token_type;
				memcpy((void *)tokens[nr_token].str, substr_start, substr_len);
				nr_token++;

				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	for(int i = 0; i < nr_token; i++) {
		if(tokens[i].type == ADD || tokens[i].type == SUB || tokens[i].type == MUL) {
			bool flag = false;
			if(i == 0) { flag = true;}
			else if(tokens[i - 1].type == ADD || tokens[i - 1].type == SUB ||
					tokens[i - 1].type == MUL || tokens[i - 1].type == DIV ||
					tokens[i - 1].type == AND || tokens[i - 1].type == OR  ||
					tokens[i - 1].type == EQ  || tokens[i - 1].type == NOTEQ ||
					tokens[i - 1].type == NOT || tokens[i - 1].type == LEFT_PAREN) { flag = true;}
			if(flag) {
				if(tokens[i].type == ADD) {
					tokens[i].type = POS;
				}
				else if(tokens[i].type == SUB){
					tokens[i].type = NEG;
				}
				else {
					tokens[i].type = POINTER;
				}
			}
		}
		//printf("%s\t%d\n", tokens[i].str, tokens[i].type);
	}

	return true; 
}

static bool check_parenthesis(int start, int end, bool *flag) {
	uint32_t record = 0;
	if(tokens[start].type == LEFT_PAREN && tokens[end].type == RIGHT_PAREN) 
		*flag = 1;
	else 
		*flag = 0;
	for(int i = start; i <= end; i++) {
		if(tokens[i].type == LEFT_PAREN) { record++;}
		if(tokens[i].type == RIGHT_PAREN) { record--;}
		if(record == 0 && i != end)
			*flag = 0;
		if(record < 0) 
			return false;
	}	
	if(record == 0)
		return true;
	else 
		return false;
}

static uint32_t eval(int start, int end) {
	
	assert(start >= 0 && start < nr_token);			//assert if start or end is illegal
	assert(end >= 0 && end < nr_token);
	assert(start <= end);
	
	bool cflag;
	assert(check_parenthesis(start, end, &cflag));	//assert if parenthesis are not matched

	if(start == end) {
		uint32_t result;
		double res_float;
		bool eflag;
		switch(tokens[start].type) {
			case INT_16:
				sscanf(tokens[start].str, "%x", &result);
				return result; 
			case INT:
				sscanf(tokens[start].str, "%d", &result);
				return result;
			case FLOAT_E:
				sscanf(tokens[start].str, "%lf", &res_float);
				return res_float;
			case REG:
				REG_MACRO(eax, EAX)
					return cpu.eax;
				REG_MACRO(ecx, ECX)
					return cpu.ecx;
				REG_MACRO(edx, EDX)
					return cpu.edx;
				REG_MACRO(ebx, EBX)
					return cpu.ebx;
				REG_MACRO(esi, ESI)
					return cpu.esi;
				REG_MACRO(edi, EDI)
					return cpu.edi;
				REG_MACRO(ebp, EBP)
					return cpu.ebp;
				REG_MACRO(esp, ESP)
					return cpu.esp;
				REG_MACRO(eip, EIP)
					return cpu.eip;
			case STRING:
				result = look_up_symtab(tokens[start].str, &eflag);
				if(eflag) { return result;}
				else { 
					printf("%s not found\n", tokens[start].str);
					assert(0);
				}
			default:
				printf("Expression illegal\n");
				assert(0);
		}
	}
	if(cflag == 1) {
		return eval(start + 1, end - 1);
	}
	uint32_t record = 0;
	uint32_t minPri = 0xffff;
	uint32_t flag = start;
	for(int i = start; i <= end; i++) {
		switch(tokens[i].type) {
			case LEFT_PAREN: record++; break;
			case RIGHT_PAREN: record--; break;
			case OR:
				PRIORITY(0) break;
			case AND:
				PRIORITY(1) break;
			case EQ: case NOTEQ:
				PRIORITY(2) break;
			case ADD: case SUB:
				PRIORITY(3) break;
			case MUL: case DIV: case MOD:
				PRIORITY(4) break;
			case NOT: case POS: case NEG: case POINTER:
				PRIORITY_SINGLE(5) break;
		}
	}
	uint32_t result = 0;
	assert(flag >= start && flag <= end);
	switch(tokens[flag].type) {
		case EQ:
			result = eval(start, flag - 1) == eval(flag + 1, end); break;
		case NOTEQ:
			result = eval(start, flag - 1) != eval(flag + 1, end); break;
		case NOT:
			result = !eval(flag + 1, end); break;
		case POS:
			result = eval(flag + 1, end); break;
		case NEG:
			result = -eval(flag + 1, end); break;
		case POINTER:
			result = vaddr_read((uint32_t)eval(flag + 1, end), SREG_DS, 4); break;
		case MOD:
			result = eval(start, flag - 1) % eval(flag + 1, end); break;
		case AND:
			result = eval(start, flag - 1) && eval(flag + 1, end); break;
		case OR:
			result = eval(start, flag - 1) || eval(flag + 1, end); break;
		case ADD:
			result = eval(start, flag - 1) + eval(flag + 1, end); break;
		case SUB:
			result = eval(start, flag - 1) - eval(flag + 1, end); break;
		case MUL:
			result = eval(start, flag - 1) * eval(flag + 1, end); break;
		case DIV:
			result = eval(start, flag - 1) / eval(flag + 1, end); break;
	}
	return result;
}

uint32_t expr(char *e, bool *success) {
	
	if(!make_token(e)) {
		*success = false;
		return 0;
	}

	*success = true;
	/*printf("\nPlease implement expr at expr.c\n");
	assert(0);*/

	return eval(0, nr_token - 1);
}
