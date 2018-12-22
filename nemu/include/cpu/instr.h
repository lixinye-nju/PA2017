#ifndef __INSTRUCTIONS_H__
#define __INSTRUCTIONS_H__

#include "nemu.h"
#include "cpu/cpu.h"
#include "cpu/fpu.h"
#include "cpu/modrm.h"
#include "cpu/operand.h"
#include "cpu/instr_helper.h"
#include "memory/memory.h"

#include <stdio.h>
 
extern uint8_t data_size;

#include "cpu/instr/mov.h"
#include "cpu/instr/jmp.h"
#include "cpu/instr/shift.h"
#include "cpu/instr/flags.h"
#include "cpu/instr/group.h"
#include "cpu/instr/special.h"
#include "cpu/instr/x87.h"

/* TODO: add more instructions here */
int jmp_rel_v(uint32_t eip, uint8_t opcode);
int cmp_i2rm_bv(uint32_t eip, uint8_t opcode);
int push_ebp_v(uint32_t eip, uint8_t opcode);
int call_rel_v(uint32_t eip, uint8_t opcode);
int ret_v(uint32_t eip, uint8_t opcode);
int add_i2rm_v(uint32_t eip, uint8_t opcode);
int test_r2rm_v(uint32_t eip, uint8_t opcode);
int je_b(uint32_t eip, uint8_t opcode);
int jg_b(uint32_t eip, uint8_t opcode);
int jng_b(uint32_t eip, uint8_t opcode);
int jne_b(uint32_t eip, uint8_t opcode);
int push_ebx_v(uint32_t eip, uint8_t opcode);
int sub_i2rm_bv(uint32_t eip, uint8_t opcode);
int jmp_rel_b(uint32_t eip, uint8_t opcode);
int jna_b(uint32_t eip, uint8_t opcode);
int push_edx_v(uint32_t eip, uint8_t opcode);
int push_eax_v(uint32_t eip, uint8_t opcode);
int add_i2eax_v(uint32_t eip, uint8_t opcode);
int add_r2rm_v(uint32_t eip, uint8_t opcode);
int leave_v(uint32_t eip, uint8_t opcode);
int add_i2rm_bv(uint32_t eip, uint8_t opcode);
int lea_v(uint32_t eip, uint8_t opcode);
int cmp_r2rm_v(uint32_t eip, uint8_t opcode);
int inc_v(uint32_t eip, uint8_t opcode);
int and_i2rm_bv(uint32_t eip, uint8_t opcode);
int push_m_v(uint32_t eip, uint8_t opcode);
int push_edi_v(uint32_t eip, uint8_t opcode);
int push_esi_v(uint32_t eip, uint8_t opcode);
int push_ecx_v(uint32_t eip, uint8_t opcode);
int jbe_v(uint32_t eip, uint8_t opcode);
int adc_r2rm_v(uint32_t eip, uint8_t opcode);
int pop_ebx_v(uint32_t eip, uint8_t opcode);
int pop_ebp_v(uint32_t eip, uint8_t opcode);
int xor_r2rm_v(uint32_t eip, uint8_t opcode);
int or_r2rm_v(uint32_t eip, uint8_t opcode);
int cmp_i2rm_v(uint32_t eip, uint8_t opcode);
int dec_REG_EAX_v(uint32_t eip, uint8_t opcode);
int sub_r2rm_v(uint32_t eip, uint8_t opcode);
int cmp_rm2r_v(uint32_t eip, uint8_t opcode);
int inc_REG_EDX_v(uint32_t eip, uint8_t opcode);
int push_i_b(uint32_t eip, uint8_t opcode);

int jge_b(uint32_t eip, uint8_t opcode);
int jl_v(uint32_t eip, uint8_t opcode);
int dec_rm_l(uint32_t eip, uint8_t opcode);
int inc_REG_EAX_v(uint32_t eip, uint8_t opcode);
int inc_REG_ECX_v(uint32_t eip, uint8_t opcode);
int jle_v(uint32_t eip, uint8_t opcode);
int sub_rm2r_v(uint32_t eip, uint8_t opcode);
int jl_b(uint32_t eip, uint8_t opcode);

int and_rm2r_b(uint32_t eip, uint8_t opcode);
int test_r2rm_b(uint32_t eip, uint8_t opcode);
int setne_rm_b(uint32_t eip, uint8_t opcode);
int cmp_i2al_b(uint32_t eip, uint8_t opcode);
int cmp_i2rm_b(uint32_t eip, uint8_t opcode);
int or_rm2r_b(uint32_t eip, uint8_t opcode);
int not_rm_v(uint32_t eip, uint8_t opcode);
int and_r2rm_v(uint32_t eip, uint8_t opcode);

int sbb_rm2r_v(uint32_t eip, uint8_t opcode);

int imul_rm2r_v(uint32_t eip, uint8_t opcode);
int imul_r2rm_v(uint32_t eip, uint8_t opcode);
int imul_rm2a_b(uint32_t eip, uint8_t opcode);
int imul_rm2a_v(uint32_t eip, uint8_t opcode);
int imul_irm2r_v(uint32_t eip, uint8_t opcode);
int imul_i8rm2r_v(uint32_t eip, uint8_t opcode);

int idiv_rm2a_b(uint32_t eip, uint8_t opcode);
int idiv_rm2a_v(uint32_t eip, uint8_t opcode);

int mul_rm2a_b(uint32_t eip, uint8_t opcode);
int mul_rm2a_v(uint32_t eip, uint8_t opcode);

int sub_i2rm_v(uint32_t eip, uint8_t opcode);

int pop_REG_ESI_v(uint32_t eip, uint8_t opcode);
int pop_REG_EDI_v(uint32_t eip, uint8_t opcode);

int ret_imm_v(uint32_t eip, uint8_t opcode);

int and_i2rm_v(uint32_t eip, uint8_t opcode);
int cmp_rm2r_b(uint32_t eip, uint8_t opcode);

int test_i2rm_v(uint32_t eip, uint8_t opcode);
int test_i2ax_v(uint32_t eip, uint8_t opcode);
int stos_b(uint32_t eip, uint8_t opcode);
int stos_v(uint32_t eip, uint8_t opcode);
int test_i2al_b(uint32_t eip, uint8_t opcode);
int cmps_v(uint32_t eip, uint8_t opcode);
int cmps_b(uint32_t eip, uint8_t opcode);

int inc_REG_EDI_v(uint32_t eip, uint8_t opcode);
int test_i2rm_b(uint32_t eip, uint8_t opcode);
int je_v(uint32_t eip, uint8_t opcode);
int ja_v(uint32_t eip, uint8_t opcode);
int jmp_rm_v(uint32_t eip, uint8_t opcode);
int js_v(uint32_t eip, uint8_t opcode);
int jb_b(uint32_t eip, uint8_t opcode);
int dec_REG_ECX_v(uint32_t eip, uint8_t opcode);
int dec_REG_EDX_v(uint32_t eip, uint8_t opcode);
int dec_REG_EBX_v(uint32_t eip, uint8_t opcode);
int dec_REG_EBP_v(uint32_t eip, uint8_t opcode);
int dec_REG_ESP_v(uint32_t eip, uint8_t opcode);
int dec_REG_ESI_v(uint32_t eip, uint8_t opcode);
int dec_REG_EDI_v(uint32_t eip, uint8_t opcode);
int cmova_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovae_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovb_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovbe_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovg_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovge_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovl_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovle_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovne_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovno_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovnp_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovns_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovo_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovp_rm2r_v(uint32_t eip, uint8_t opcode);
int cmovs_rm2r_v(uint32_t eip, uint8_t opcode);
int cmove_rm2r_v(uint32_t eip, uint8_t opcode);
int jne_v(uint32_t eip, uint8_t opcode);
int jg_v(uint32_t eip, uint8_t opcode);
int jae_v(uint32_t eip, uint8_t opcode);
int jb_v(uint32_t eip, uint8_t opcode);
int jge_v(uint32_t eip, uint8_t opcode);
int jno_v(uint32_t eip, uint8_t opcode);
int jnp_v(uint32_t eip, uint8_t opcode);
int jns_v(uint32_t eip, uint8_t opcode);
int jo_v(uint32_t eip, uint8_t opcode);
int jp_v(uint32_t eip, uint8_t opcode);
int ja_b(uint32_t eip, uint8_t opcode);
int jae_b(uint32_t eip, uint8_t opcode);
int jno_b(uint32_t eip, uint8_t opcode);
int jnp_b(uint32_t eip, uint8_t opcode);
int jns_b(uint32_t eip, uint8_t opcode);
int jnz_b(uint32_t eip, uint8_t opcode);
int jo_b(uint32_t eip, uint8_t opcode);
int jp_b(uint32_t eip, uint8_t opcode);
int js_b(uint32_t eip, uint8_t opcode);
int and_i2rm_b(uint32_t eip, uint8_t opcode);

int push_i_v(uint32_t eip, uint8_t opcode);
int call_rm_v(uint32_t eip, uint8_t opcode);

int lgdt_v(uint32_t eip, uint8_t opcode);
int mov_cr2r_l(uint32_t eip, uint8_t opcode);
int or_i2rm_bv(uint32_t eip, uint8_t opcode);
int mov_r2cr_l(uint32_t eip, uint8_t opcode);
int ljmp_v(uint32_t eip, uint8_t opcode);
int mov_rm2seg_w(uint32_t eip, uint8_t opcode);

int and_i2eax_v(uint32_t eip, uint8_t opcode);
int cmp_i2eax_v(uint32_t eip, uint8_t opcode);

int cli(uint32_t eip, uint8_t opcode);
int lidt_v(uint32_t eip, uint8_t opcode);
int sti(uint32_t eip, uint8_t opcode);
int INT(uint32_t eip, uint8_t opcode);
int pusha_v(uint32_t eip, uint8_t opcode);
int popa_v(uint32_t eip, uint8_t opcode);
int push_esp_v(uint32_t eip, uint8_t opcode);
int sub_i2eax_v(uint32_t eip, uint8_t opcode);
int iret(uint32_t eip, uint8_t opcode);

int in_dx2al(uint32_t eip, uint8_t opcode);
int out_al2dx(uint32_t eip, uint8_t opcode);

int in_dx2eax_v(uint32_t eip, uint8_t opcode);

int or_i2rm_b(uint32_t eip, uint8_t opcode);
int sete_rm_b(uint32_t eip, uint8_t opcode);
int or_i2rm_v(uint32_t eip, uint8_t opcode);
int add_rm2r_v(uint32_t eip, uint8_t opcode);
int neg_rm_v(uint32_t eip, uint8_t opcode);
int adc_i2rm_bv(uint32_t eip, uint8_t opcode);

int add_rm2r_b(uint32_t eip, uint8_t opcode);
int cmp_r2rm_b(uint32_t eip, uint8_t opcode);
int and_rm2r_v(uint32_t eip, uint8_t opcode);
int or_rm2r_v(uint32_t eip, uint8_t opcode);

int div_rm2a_b(uint32_t eip, uint8_t opcode);
int div_rm2a_v(uint32_t eip, uint8_t opcode);

int and_i2al_b(uint32_t eip, uint8_t opcode);
int or_i2al_b(uint32_t eip, uint8_t opcode);
int or_i2eax_v(uint32_t eip, uint8_t opcode);
int xor_i2rm_bv(uint32_t eip, uint8_t opcode);
#endif
