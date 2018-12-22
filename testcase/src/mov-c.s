
mov-c：     文件格式 elf32-i386


Disassembly of section .text:

08048094 <start>:
 8048094:	e9 00 00 00 00       	jmp    8048099 <main>

08048099 <main>:
 8048099:	55                   	push   %ebp
 804809a:	89 e5                	mov    %esp,%ebp
 804809c:	e8 fe 00 00 00       	call   804819f <__x86.get_pc_thunk.dx>
 80480a1:	81 c2 5f 1f 00 00    	add    $0x1f5f,%edx
 80480a7:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480ad:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80480b3:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480b9:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 80480c0:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480c6:	c7 40 08 02 00 00 00 	movl   $0x2,0x8(%eax)
 80480cd:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480d3:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
 80480da:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480e0:	c7 40 10 04 00 00 00 	movl   $0x4,0x10(%eax)
 80480e7:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 80480ed:	8b 48 0c             	mov    0xc(%eax),%ecx
 80480f0:	c7 c0 20 a0 04 08    	mov    $0x804a020,%eax
 80480f6:	89 08                	mov    %ecx,(%eax)
 80480f8:	c7 c0 20 a0 04 08    	mov    $0x804a020,%eax
 80480fe:	8b 08                	mov    (%eax),%ecx
 8048100:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 8048106:	89 48 14             	mov    %ecx,0x14(%eax)
 8048109:	c7 c0 40 a0 04 08    	mov    $0x804a040,%eax
 804810f:	8b 00                	mov    (%eax),%eax
 8048111:	85 c0                	test   %eax,%eax
 8048113:	74 06                	je     804811b <main+0x82>
 8048115:	b8 01 00 00 00       	mov    $0x1,%eax
 804811a:	82 c7 c0             	add    $0xc0,%bh
 804811d:	40                   	inc    %eax
 804811e:	a0 04 08 8b 40       	mov    0x408b0804,%al
 8048123:	04 83                	add    $0x83,%al
 8048125:	f8                   	clc    
 8048126:	01 74 06 b8          	add    %esi,-0x48(%esi,%eax,1)
 804812a:	01 00                	add    %eax,(%eax)
 804812c:	00 00                	add    %al,(%eax)
 804812e:	82 c7 c0             	add    $0xc0,%bh
 8048131:	40                   	inc    %eax
 8048132:	a0 04 08 8b 40       	mov    0x408b0804,%al
 8048137:	08 83 f8 02 74 06    	or     %al,0x67402f8(%ebx)
 804813d:	b8 01 00 00 00       	mov    $0x1,%eax
 8048142:	82 c7 c0             	add    $0xc0,%bh
 8048145:	40                   	inc    %eax
 8048146:	a0 04 08 8b 40       	mov    0x408b0804,%al
 804814b:	0c 83                	or     $0x83,%al
 804814d:	f8                   	clc    
 804814e:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
 8048152:	01 00                	add    %eax,(%eax)
 8048154:	00 00                	add    %al,(%eax)
 8048156:	82 c7 c0             	add    $0xc0,%bh
 8048159:	40                   	inc    %eax
 804815a:	a0 04 08 8b 40       	mov    0x408b0804,%al
 804815f:	10 83 f8 04 74 06    	adc    %al,0x67404f8(%ebx)
 8048165:	b8 01 00 00 00       	mov    $0x1,%eax
 804816a:	82 c7 c0             	add    $0xc0,%bh
 804816d:	20 a0 04 08 8b 00    	and    %ah,0x8b0804(%eax)
 8048173:	83 f8 03             	cmp    $0x3,%eax
 8048176:	74 06                	je     804817e <main+0xe5>
 8048178:	b8 01 00 00 00       	mov    $0x1,%eax
 804817d:	82 c7 c0             	add    $0xc0,%bh
 8048180:	40                   	inc    %eax
 8048181:	a0 04 08 8b 40       	mov    0x408b0804,%al
 8048186:	14 83                	adc    $0x83,%al
 8048188:	f8                   	clc    
 8048189:	03 74 06 b8          	add    -0x48(%esi,%eax,1),%esi
 804818d:	01 00                	add    %eax,(%eax)
 804818f:	00 00                	add    %al,(%eax)
 8048191:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
 8048198:	b8 00 00 00 00       	mov    $0x0,%eax
 804819d:	5d                   	pop    %ebp
 804819e:	c3                   	ret    

0804819f <__x86.get_pc_thunk.dx>:
 804819f:	8b 14 24             	mov    (%esp),%edx
 80481a2:	c3                   	ret    
