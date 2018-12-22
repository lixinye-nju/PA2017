
kernel：     文件格式 elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 b7 0f 00 00       	jmp    c0030feb <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 3a 02 00 00       	call   c003030b <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <in_byte>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	83 ec 14             	sub    $0x14,%esp
c00300df:	e8 b2 00 00 00       	call   c0030196 <__x86.get_pc_thunk.ax>
c00300e4:	05 1c bf 00 00       	add    $0xbf1c,%eax
c00300e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00300ec:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00300f0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00300f3:	89 c2                	mov    %eax,%edx
c00300f5:	ec                   	in     (%dx),%al
c00300f6:	88 45 ff             	mov    %al,-0x1(%ebp)
c00300f9:	8a 45 ff             	mov    -0x1(%ebp),%al
c00300fc:	c9                   	leave  
c00300fd:	c3                   	ret    

c00300fe <out_byte>:
c00300fe:	55                   	push   %ebp
c00300ff:	89 e5                	mov    %esp,%ebp
c0030101:	83 ec 08             	sub    $0x8,%esp
c0030104:	e8 8d 00 00 00       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030109:	05 f7 be 00 00       	add    $0xbef7,%eax
c003010e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030111:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030114:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030118:	88 55 f8             	mov    %dl,-0x8(%ebp)
c003011b:	8a 45 f8             	mov    -0x8(%ebp),%al
c003011e:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030121:	ee                   	out    %al,(%dx)
c0030122:	90                   	nop
c0030123:	c9                   	leave  
c0030124:	c3                   	ret    

c0030125 <init_serial>:
c0030125:	55                   	push   %ebp
c0030126:	89 e5                	mov    %esp,%ebp
c0030128:	e8 69 00 00 00       	call   c0030196 <__x86.get_pc_thunk.ax>
c003012d:	05 d3 be 00 00       	add    $0xbed3,%eax
c0030132:	90                   	nop
c0030133:	5d                   	pop    %ebp
c0030134:	c3                   	ret    

c0030135 <serial_idle>:
c0030135:	55                   	push   %ebp
c0030136:	89 e5                	mov    %esp,%ebp
c0030138:	e8 59 00 00 00       	call   c0030196 <__x86.get_pc_thunk.ax>
c003013d:	05 c3 be 00 00       	add    $0xbec3,%eax
c0030142:	68 fd 03 00 00       	push   $0x3fd
c0030147:	e8 8d ff ff ff       	call   c00300d9 <in_byte>
c003014c:	83 c4 04             	add    $0x4,%esp
c003014f:	0f b6 c0             	movzbl %al,%eax
c0030152:	83 e0 20             	and    $0x20,%eax
c0030155:	85 c0                	test   %eax,%eax
c0030157:	0f 95 c0             	setne  %al
c003015a:	0f b6 c0             	movzbl %al,%eax
c003015d:	c9                   	leave  
c003015e:	c3                   	ret    

c003015f <serial_printc>:
c003015f:	55                   	push   %ebp
c0030160:	89 e5                	mov    %esp,%ebp
c0030162:	83 ec 04             	sub    $0x4,%esp
c0030165:	e8 2c 00 00 00       	call   c0030196 <__x86.get_pc_thunk.ax>
c003016a:	05 96 be 00 00       	add    $0xbe96,%eax
c003016f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030172:	88 45 fc             	mov    %al,-0x4(%ebp)
c0030175:	90                   	nop
c0030176:	e8 ba ff ff ff       	call   c0030135 <serial_idle>
c003017b:	85 c0                	test   %eax,%eax
c003017d:	74 f7                	je     c0030176 <serial_printc+0x17>
c003017f:	8a 45 fc             	mov    -0x4(%ebp),%al
c0030182:	0f b6 c0             	movzbl %al,%eax
c0030185:	50                   	push   %eax
c0030186:	68 f8 03 00 00       	push   $0x3f8
c003018b:	e8 6e ff ff ff       	call   c00300fe <out_byte>
c0030190:	83 c4 08             	add    $0x8,%esp
c0030193:	90                   	nop
c0030194:	c9                   	leave  
c0030195:	c3                   	ret    

c0030196 <__x86.get_pc_thunk.ax>:
c0030196:	8b 04 24             	mov    (%esp),%eax
c0030199:	c3                   	ret    

c003019a <printk>:
c003019a:	55                   	push   %ebp
c003019b:	89 e5                	mov    %esp,%ebp
c003019d:	53                   	push   %ebx
c003019e:	83 ec 14             	sub    $0x14,%esp
c00301a1:	e8 48 00 00 00       	call   c00301ee <__x86.get_pc_thunk.bx>
c00301a6:	81 c3 5a be 00 00    	add    $0xbe5a,%ebx
c00301ac:	8d 45 0c             	lea    0xc(%ebp),%eax
c00301af:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00301b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00301b5:	ff 75 f4             	pushl  -0xc(%ebp)
c00301b8:	50                   	push   %eax
c00301b9:	68 00 01 00 00       	push   $0x100
c00301be:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c00301c4:	50                   	push   %eax
c00301c5:	e8 46 25 00 00       	call   c0032710 <vsnprintf>
c00301ca:	83 c4 10             	add    $0x10,%esp
c00301cd:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00301d0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00301d3:	83 ec 04             	sub    $0x4,%esp
c00301d6:	50                   	push   %eax
c00301d7:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c00301dd:	50                   	push   %eax
c00301de:	6a 01                	push   $0x1
c00301e0:	e8 c3 11 00 00       	call   c00313a8 <fs_write>
c00301e5:	83 c4 10             	add    $0x10,%esp
c00301e8:	90                   	nop
c00301e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00301ec:	c9                   	leave  
c00301ed:	c3                   	ret    

c00301ee <__x86.get_pc_thunk.bx>:
c00301ee:	8b 1c 24             	mov    (%esp),%ebx
c00301f1:	c3                   	ret    

c00301f2 <sbrk>:
c00301f2:	55                   	push   %ebp
c00301f3:	89 e5                	mov    %esp,%ebp
c00301f5:	53                   	push   %ebx
c00301f6:	83 ec 04             	sub    $0x4,%esp
c00301f9:	e8 98 ff ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00301fe:	05 02 be 00 00       	add    $0xbe02,%eax
c0030203:	83 ec 0c             	sub    $0xc,%esp
c0030206:	8d 90 00 ce ff ff    	lea    -0x3200(%eax),%edx
c003020c:	52                   	push   %edx
c003020d:	8d 90 60 ce ff ff    	lea    -0x31a0(%eax),%edx
c0030213:	52                   	push   %edx
c0030214:	6a 08                	push   $0x8
c0030216:	8d 90 02 ce ff ff    	lea    -0x31fe(%eax),%edx
c003021c:	52                   	push   %edx
c003021d:	8d 90 14 ce ff ff    	lea    -0x31ec(%eax),%edx
c0030223:	52                   	push   %edx
c0030224:	89 c3                	mov    %eax,%ebx
c0030226:	e8 6f ff ff ff       	call   c003019a <printk>
c003022b:	83 c4 20             	add    $0x20,%esp
c003022e:	b8 01 00 00 00       	mov    $0x1,%eax
c0030233:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c003023a:	5d                   	pop    %ebp
c003023b:	fc                   	cld    
c003023c:	c9                   	leave  
c003023d:	c3                   	ret    

c003023e <add_irq_handle>:
c003023e:	55                   	push   %ebp
c003023f:	89 e5                	mov    %esp,%ebp
c0030241:	53                   	push   %ebx
c0030242:	83 ec 14             	sub    $0x14,%esp
c0030245:	e8 a4 ff ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c003024a:	81 c3 b6 bd 00 00    	add    $0xbdb6,%ebx
c0030250:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030254:	7e 2f                	jle    c0030285 <add_irq_handle+0x47>
c0030256:	83 ec 0c             	sub    $0xc,%esp
c0030259:	8d 83 68 ce ff ff    	lea    -0x3198(%ebx),%eax
c003025f:	50                   	push   %eax
c0030260:	8d 83 b4 cf ff ff    	lea    -0x304c(%ebx),%eax
c0030266:	50                   	push   %eax
c0030267:	6a 16                	push   $0x16
c0030269:	8d 83 7b ce ff ff    	lea    -0x3185(%ebx),%eax
c003026f:	50                   	push   %eax
c0030270:	8d 83 90 ce ff ff    	lea    -0x3170(%ebx),%eax
c0030276:	50                   	push   %eax
c0030277:	e8 1e ff ff ff       	call   c003019a <printk>
c003027c:	83 c4 20             	add    $0x20,%esp
c003027f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030284:	82 8b 83 40 12 00 00 	orb    $0x0,0x124083(%ebx)
c003028b:	83 f8 20             	cmp    $0x20,%eax
c003028e:	7e 2f                	jle    c00302bf <add_irq_handle+0x81>
c0030290:	83 ec 0c             	sub    $0xc,%esp
c0030293:	8d 83 da ce ff ff    	lea    -0x3126(%ebx),%eax
c0030299:	50                   	push   %eax
c003029a:	8d 83 b4 cf ff ff    	lea    -0x304c(%ebx),%eax
c00302a0:	50                   	push   %eax
c00302a1:	6a 17                	push   $0x17
c00302a3:	8d 83 7b ce ff ff    	lea    -0x3185(%ebx),%eax
c00302a9:	50                   	push   %eax
c00302aa:	8d 83 90 ce ff ff    	lea    -0x3170(%ebx),%eax
c00302b0:	50                   	push   %eax
c00302b1:	e8 e4 fe ff ff       	call   c003019a <printk>
c00302b6:	83 c4 20             	add    $0x20,%esp
c00302b9:	b8 01 00 00 00       	mov    $0x1,%eax
c00302be:	82 8b 83 40 12 00 00 	orb    $0x0,0x124083(%ebx)
c00302c5:	8d 50 01             	lea    0x1(%eax),%edx
c00302c8:	89 93 40 12 00 00    	mov    %edx,0x1240(%ebx)
c00302ce:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00302d5:	8d 83 00 11 00 00    	lea    0x1100(%ebx),%eax
c00302db:	01 d0                	add    %edx,%eax
c00302dd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00302e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302e3:	8b 55 0c             	mov    0xc(%ebp),%edx
c00302e6:	89 10                	mov    %edx,(%eax)
c00302e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00302eb:	8b 94 83 00 12 00 00 	mov    0x1200(%ebx,%eax,4),%edx
c00302f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302f5:	89 50 04             	mov    %edx,0x4(%eax)
c00302f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00302fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302fe:	89 94 83 00 12 00 00 	mov    %edx,0x1200(%ebx,%eax,4)
c0030305:	90                   	nop
c0030306:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030309:	c9                   	leave  
c003030a:	c3                   	ret    

c003030b <irq_handle>:
c003030b:	55                   	push   %ebp
c003030c:	89 e5                	mov    %esp,%ebp
c003030e:	53                   	push   %ebx
c003030f:	83 ec 14             	sub    $0x14,%esp
c0030312:	e8 d7 fe ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030317:	81 c3 e9 bc 00 00    	add    $0xbce9,%ebx
c003031d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030320:	8b 40 20             	mov    0x20(%eax),%eax
c0030323:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030326:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c003032a:	79 2a                	jns    c0030356 <irq_handle+0x4b>
c003032c:	8d 83 c4 cf ff ff    	lea    -0x303c(%ebx),%eax
c0030332:	50                   	push   %eax
c0030333:	6a 23                	push   $0x23
c0030335:	8d 83 7b ce ff ff    	lea    -0x3185(%ebx),%eax
c003033b:	50                   	push   %eax
c003033c:	8d 83 f8 ce ff ff    	lea    -0x3108(%ebx),%eax
c0030342:	50                   	push   %eax
c0030343:	e8 52 fe ff ff       	call   c003019a <printk>
c0030348:	83 c4 10             	add    $0x10,%esp
c003034b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030350:	82 e9 c7             	sub    $0xc7,%cl
c0030353:	00 00                	add    %al,(%eax)
c0030355:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c003035b:	00 00                	add    %al,(%eax)
c003035d:	75 13                	jne    c0030372 <irq_handle+0x67>
c003035f:	83 ec 0c             	sub    $0xc,%esp
c0030362:	ff 75 08             	pushl  0x8(%ebp)
c0030365:	e8 3c 1e 00 00       	call   c00321a6 <do_syscall>
c003036a:	83 c4 10             	add    $0x10,%esp
c003036d:	e9 ab 00 00 00       	jmp    c003041d <irq_handle+0x112>
c0030372:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030379:	7f 34                	jg     c00303af <irq_handle+0xa4>
c003037b:	8b 45 08             	mov    0x8(%ebp),%eax
c003037e:	8b 40 28             	mov    0x28(%eax),%eax
c0030381:	83 ec 08             	sub    $0x8,%esp
c0030384:	50                   	push   %eax
c0030385:	ff 75 f0             	pushl  -0x10(%ebp)
c0030388:	8d 83 c4 cf ff ff    	lea    -0x303c(%ebx),%eax
c003038e:	50                   	push   %eax
c003038f:	6a 27                	push   $0x27
c0030391:	8d 83 7b ce ff ff    	lea    -0x3185(%ebx),%eax
c0030397:	50                   	push   %eax
c0030398:	8d 83 44 cf ff ff    	lea    -0x30bc(%ebx),%eax
c003039e:	50                   	push   %eax
c003039f:	e8 f6 fd ff ff       	call   c003019a <printk>
c00303a4:	83 c4 20             	add    $0x20,%esp
c00303a7:	b8 01 00 00 00       	mov    $0x1,%eax
c00303ac:	82 eb 6e             	sub    $0x6e,%bl
c00303af:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00303b6:	7e 65                	jle    c003041d <irq_handle+0x112>
c00303b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00303bb:	2d e8 03 00 00       	sub    $0x3e8,%eax
c00303c0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00303c3:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c00303c7:	7e 2f                	jle    c00303f8 <irq_handle+0xed>
c00303c9:	83 ec 0c             	sub    $0xc,%esp
c00303cc:	8d 83 9e cf ff ff    	lea    -0x3062(%ebx),%eax
c00303d2:	50                   	push   %eax
c00303d3:	8d 83 c4 cf ff ff    	lea    -0x303c(%ebx),%eax
c00303d9:	50                   	push   %eax
c00303da:	6a 2a                	push   $0x2a
c00303dc:	8d 83 7b ce ff ff    	lea    -0x3185(%ebx),%eax
c00303e2:	50                   	push   %eax
c00303e3:	8d 83 90 ce ff ff    	lea    -0x3170(%ebx),%eax
c00303e9:	50                   	push   %eax
c00303ea:	e8 ab fd ff ff       	call   c003019a <printk>
c00303ef:	83 c4 20             	add    $0x20,%esp
c00303f2:	b8 01 00 00 00       	mov    $0x1,%eax
c00303f7:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c00303fe:	00 12                	add    %dl,(%edx)
c0030400:	00 00                	add    %al,(%eax)
c0030402:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030405:	eb 10                	jmp    c0030417 <irq_handle+0x10c>
c0030407:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003040a:	8b 00                	mov    (%eax),%eax
c003040c:	ff d0                	call   *%eax
c003040e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030411:	8b 40 04             	mov    0x4(%eax),%eax
c0030414:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030417:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c003041b:	75 ea                	jne    c0030407 <irq_handle+0xfc>
c003041d:	90                   	nop
c003041e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030421:	c9                   	leave  
c0030422:	c3                   	ret    

c0030423 <write_idtr>:
c0030423:	55                   	push   %ebp
c0030424:	89 e5                	mov    %esp,%ebp
c0030426:	e8 6b fd ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c003042b:	05 d5 bb 00 00       	add    $0xbbd5,%eax
c0030430:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030433:	4a                   	dec    %edx
c0030434:	66 89 90 60 1a 00 00 	mov    %dx,0x1a60(%eax)
c003043b:	8b 55 08             	mov    0x8(%ebp),%edx
c003043e:	66 89 90 62 1a 00 00 	mov    %dx,0x1a62(%eax)
c0030445:	8b 55 08             	mov    0x8(%ebp),%edx
c0030448:	c1 ea 10             	shr    $0x10,%edx
c003044b:	66 89 90 64 1a 00 00 	mov    %dx,0x1a64(%eax)
c0030452:	8d 80 60 1a 00 00    	lea    0x1a60(%eax),%eax
c0030458:	0f 01 18             	lidtl  (%eax)
c003045b:	90                   	nop
c003045c:	5d                   	pop    %ebp
c003045d:	c3                   	ret    

c003045e <sti>:
c003045e:	55                   	push   %ebp
c003045f:	89 e5                	mov    %esp,%ebp
c0030461:	e8 30 fd ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030466:	05 9a bb 00 00       	add    $0xbb9a,%eax
c003046b:	fb                   	sti    
c003046c:	90                   	nop
c003046d:	5d                   	pop    %ebp
c003046e:	c3                   	ret    

c003046f <set_intr>:
c003046f:	55                   	push   %ebp
c0030470:	89 e5                	mov    %esp,%ebp
c0030472:	e8 1f fd ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030477:	05 89 bb 00 00       	add    $0xbb89,%eax
c003047c:	8b 45 10             	mov    0x10(%ebp),%eax
c003047f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030482:	66 89 02             	mov    %ax,(%edx)
c0030485:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030488:	8b 55 08             	mov    0x8(%ebp),%edx
c003048b:	66 89 42 02          	mov    %ax,0x2(%edx)
c003048f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030492:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030496:	8b 45 08             	mov    0x8(%ebp),%eax
c0030499:	8a 50 05             	mov    0x5(%eax),%dl
c003049c:	83 e2 f0             	and    $0xfffffff0,%edx
c003049f:	83 ca 0e             	or     $0xe,%edx
c00304a2:	88 50 05             	mov    %dl,0x5(%eax)
c00304a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00304a8:	8a 50 05             	mov    0x5(%eax),%dl
c00304ab:	83 e2 ef             	and    $0xffffffef,%edx
c00304ae:	88 50 05             	mov    %dl,0x5(%eax)
c00304b1:	8b 45 14             	mov    0x14(%ebp),%eax
c00304b4:	83 e0 03             	and    $0x3,%eax
c00304b7:	88 c2                	mov    %al,%dl
c00304b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00304bc:	83 e2 03             	and    $0x3,%edx
c00304bf:	88 d1                	mov    %dl,%cl
c00304c1:	c1 e1 05             	shl    $0x5,%ecx
c00304c4:	8a 50 05             	mov    0x5(%eax),%dl
c00304c7:	83 e2 9f             	and    $0xffffff9f,%edx
c00304ca:	09 ca                	or     %ecx,%edx
c00304cc:	88 50 05             	mov    %dl,0x5(%eax)
c00304cf:	8b 45 08             	mov    0x8(%ebp),%eax
c00304d2:	8a 50 05             	mov    0x5(%eax),%dl
c00304d5:	83 ca 80             	or     $0xffffff80,%edx
c00304d8:	88 50 05             	mov    %dl,0x5(%eax)
c00304db:	8b 45 10             	mov    0x10(%ebp),%eax
c00304de:	c1 e8 10             	shr    $0x10,%eax
c00304e1:	8b 55 08             	mov    0x8(%ebp),%edx
c00304e4:	66 89 42 06          	mov    %ax,0x6(%edx)
c00304e8:	90                   	nop
c00304e9:	5d                   	pop    %ebp
c00304ea:	c3                   	ret    

c00304eb <set_trap>:
c00304eb:	55                   	push   %ebp
c00304ec:	89 e5                	mov    %esp,%ebp
c00304ee:	e8 a3 fc ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00304f3:	05 0d bb 00 00       	add    $0xbb0d,%eax
c00304f8:	8b 45 10             	mov    0x10(%ebp),%eax
c00304fb:	8b 55 08             	mov    0x8(%ebp),%edx
c00304fe:	66 89 02             	mov    %ax,(%edx)
c0030501:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030504:	8b 55 08             	mov    0x8(%ebp),%edx
c0030507:	66 89 42 02          	mov    %ax,0x2(%edx)
c003050b:	8b 45 08             	mov    0x8(%ebp),%eax
c003050e:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030512:	8b 45 08             	mov    0x8(%ebp),%eax
c0030515:	8a 50 05             	mov    0x5(%eax),%dl
c0030518:	83 ca 0f             	or     $0xf,%edx
c003051b:	88 50 05             	mov    %dl,0x5(%eax)
c003051e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030521:	8a 50 05             	mov    0x5(%eax),%dl
c0030524:	83 e2 ef             	and    $0xffffffef,%edx
c0030527:	88 50 05             	mov    %dl,0x5(%eax)
c003052a:	8b 45 14             	mov    0x14(%ebp),%eax
c003052d:	83 e0 03             	and    $0x3,%eax
c0030530:	88 c2                	mov    %al,%dl
c0030532:	8b 45 08             	mov    0x8(%ebp),%eax
c0030535:	83 e2 03             	and    $0x3,%edx
c0030538:	88 d1                	mov    %dl,%cl
c003053a:	c1 e1 05             	shl    $0x5,%ecx
c003053d:	8a 50 05             	mov    0x5(%eax),%dl
c0030540:	83 e2 9f             	and    $0xffffff9f,%edx
c0030543:	09 ca                	or     %ecx,%edx
c0030545:	88 50 05             	mov    %dl,0x5(%eax)
c0030548:	8b 45 08             	mov    0x8(%ebp),%eax
c003054b:	8a 50 05             	mov    0x5(%eax),%dl
c003054e:	83 ca 80             	or     $0xffffff80,%edx
c0030551:	88 50 05             	mov    %dl,0x5(%eax)
c0030554:	8b 45 10             	mov    0x10(%ebp),%eax
c0030557:	c1 e8 10             	shr    $0x10,%eax
c003055a:	8b 55 08             	mov    0x8(%ebp),%edx
c003055d:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030561:	90                   	nop
c0030562:	5d                   	pop    %ebp
c0030563:	c3                   	ret    

c0030564 <init_idt>:
c0030564:	55                   	push   %ebp
c0030565:	89 e5                	mov    %esp,%ebp
c0030567:	53                   	push   %ebx
c0030568:	83 ec 10             	sub    $0x10,%esp
c003056b:	e8 7e fc ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030570:	81 c3 90 ba 00 00    	add    $0xba90,%ebx
c0030576:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c003057d:	eb 2b                	jmp    c00305aa <init_idt+0x46>
c003057f:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0030585:	89 c2                	mov    %eax,%edx
c0030587:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003058a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030591:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c0030597:	01 c8                	add    %ecx,%eax
c0030599:	6a 00                	push   $0x0
c003059b:	52                   	push   %edx
c003059c:	6a 08                	push   $0x8
c003059e:	50                   	push   %eax
c003059f:	e8 47 ff ff ff       	call   c00304eb <set_trap>
c00305a4:	83 c4 10             	add    $0x10,%esp
c00305a7:	ff 45 f8             	incl   -0x8(%ebp)
c00305aa:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c00305b1:	7e cc                	jle    c003057f <init_idt+0x1b>
c00305b3:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c00305b9:	6a 00                	push   $0x0
c00305bb:	50                   	push   %eax
c00305bc:	6a 08                	push   $0x8
c00305be:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c00305c4:	50                   	push   %eax
c00305c5:	e8 21 ff ff ff       	call   c00304eb <set_trap>
c00305ca:	83 c4 10             	add    $0x10,%esp
c00305cd:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c00305d3:	89 c2                	mov    %eax,%edx
c00305d5:	8d 83 68 12 00 00    	lea    0x1268(%ebx),%eax
c00305db:	6a 00                	push   $0x0
c00305dd:	52                   	push   %edx
c00305de:	6a 08                	push   $0x8
c00305e0:	50                   	push   %eax
c00305e1:	e8 05 ff ff ff       	call   c00304eb <set_trap>
c00305e6:	83 c4 10             	add    $0x10,%esp
c00305e9:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00305ef:	89 c2                	mov    %eax,%edx
c00305f1:	8d 83 70 12 00 00    	lea    0x1270(%ebx),%eax
c00305f7:	6a 00                	push   $0x0
c00305f9:	52                   	push   %edx
c00305fa:	6a 08                	push   $0x8
c00305fc:	50                   	push   %eax
c00305fd:	e8 e9 fe ff ff       	call   c00304eb <set_trap>
c0030602:	83 c4 10             	add    $0x10,%esp
c0030605:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c003060b:	89 c2                	mov    %eax,%edx
c003060d:	8d 83 78 12 00 00    	lea    0x1278(%ebx),%eax
c0030613:	6a 00                	push   $0x0
c0030615:	52                   	push   %edx
c0030616:	6a 08                	push   $0x8
c0030618:	50                   	push   %eax
c0030619:	e8 cd fe ff ff       	call   c00304eb <set_trap>
c003061e:	83 c4 10             	add    $0x10,%esp
c0030621:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030627:	89 c2                	mov    %eax,%edx
c0030629:	8d 83 80 12 00 00    	lea    0x1280(%ebx),%eax
c003062f:	6a 00                	push   $0x0
c0030631:	52                   	push   %edx
c0030632:	6a 08                	push   $0x8
c0030634:	50                   	push   %eax
c0030635:	e8 b1 fe ff ff       	call   c00304eb <set_trap>
c003063a:	83 c4 10             	add    $0x10,%esp
c003063d:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030643:	89 c2                	mov    %eax,%edx
c0030645:	8d 83 88 12 00 00    	lea    0x1288(%ebx),%eax
c003064b:	6a 00                	push   $0x0
c003064d:	52                   	push   %edx
c003064e:	6a 08                	push   $0x8
c0030650:	50                   	push   %eax
c0030651:	e8 95 fe ff ff       	call   c00304eb <set_trap>
c0030656:	83 c4 10             	add    $0x10,%esp
c0030659:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c003065f:	89 c2                	mov    %eax,%edx
c0030661:	8d 83 90 12 00 00    	lea    0x1290(%ebx),%eax
c0030667:	6a 00                	push   $0x0
c0030669:	52                   	push   %edx
c003066a:	6a 08                	push   $0x8
c003066c:	50                   	push   %eax
c003066d:	e8 79 fe ff ff       	call   c00304eb <set_trap>
c0030672:	83 c4 10             	add    $0x10,%esp
c0030675:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c003067b:	89 c2                	mov    %eax,%edx
c003067d:	8d 83 98 12 00 00    	lea    0x1298(%ebx),%eax
c0030683:	6a 00                	push   $0x0
c0030685:	52                   	push   %edx
c0030686:	6a 08                	push   $0x8
c0030688:	50                   	push   %eax
c0030689:	e8 5d fe ff ff       	call   c00304eb <set_trap>
c003068e:	83 c4 10             	add    $0x10,%esp
c0030691:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030697:	89 c2                	mov    %eax,%edx
c0030699:	8d 83 a0 12 00 00    	lea    0x12a0(%ebx),%eax
c003069f:	6a 00                	push   $0x0
c00306a1:	52                   	push   %edx
c00306a2:	6a 08                	push   $0x8
c00306a4:	50                   	push   %eax
c00306a5:	e8 41 fe ff ff       	call   c00304eb <set_trap>
c00306aa:	83 c4 10             	add    $0x10,%esp
c00306ad:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00306b3:	89 c2                	mov    %eax,%edx
c00306b5:	8d 83 a8 12 00 00    	lea    0x12a8(%ebx),%eax
c00306bb:	6a 00                	push   $0x0
c00306bd:	52                   	push   %edx
c00306be:	6a 08                	push   $0x8
c00306c0:	50                   	push   %eax
c00306c1:	e8 25 fe ff ff       	call   c00304eb <set_trap>
c00306c6:	83 c4 10             	add    $0x10,%esp
c00306c9:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00306cf:	89 c2                	mov    %eax,%edx
c00306d1:	8d 83 b0 12 00 00    	lea    0x12b0(%ebx),%eax
c00306d7:	6a 00                	push   $0x0
c00306d9:	52                   	push   %edx
c00306da:	6a 08                	push   $0x8
c00306dc:	50                   	push   %eax
c00306dd:	e8 09 fe ff ff       	call   c00304eb <set_trap>
c00306e2:	83 c4 10             	add    $0x10,%esp
c00306e5:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00306eb:	89 c2                	mov    %eax,%edx
c00306ed:	8d 83 b8 12 00 00    	lea    0x12b8(%ebx),%eax
c00306f3:	6a 00                	push   $0x0
c00306f5:	52                   	push   %edx
c00306f6:	6a 08                	push   $0x8
c00306f8:	50                   	push   %eax
c00306f9:	e8 ed fd ff ff       	call   c00304eb <set_trap>
c00306fe:	83 c4 10             	add    $0x10,%esp
c0030701:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0030707:	89 c2                	mov    %eax,%edx
c0030709:	8d 83 c0 12 00 00    	lea    0x12c0(%ebx),%eax
c003070f:	6a 00                	push   $0x0
c0030711:	52                   	push   %edx
c0030712:	6a 08                	push   $0x8
c0030714:	50                   	push   %eax
c0030715:	e8 d1 fd ff ff       	call   c00304eb <set_trap>
c003071a:	83 c4 10             	add    $0x10,%esp
c003071d:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0030723:	89 c2                	mov    %eax,%edx
c0030725:	8d 83 c8 12 00 00    	lea    0x12c8(%ebx),%eax
c003072b:	6a 00                	push   $0x0
c003072d:	52                   	push   %edx
c003072e:	6a 08                	push   $0x8
c0030730:	50                   	push   %eax
c0030731:	e8 b5 fd ff ff       	call   c00304eb <set_trap>
c0030736:	83 c4 10             	add    $0x10,%esp
c0030739:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c003073f:	89 c2                	mov    %eax,%edx
c0030741:	8d 83 d0 12 00 00    	lea    0x12d0(%ebx),%eax
c0030747:	6a 00                	push   $0x0
c0030749:	52                   	push   %edx
c003074a:	6a 08                	push   $0x8
c003074c:	50                   	push   %eax
c003074d:	e8 99 fd ff ff       	call   c00304eb <set_trap>
c0030752:	83 c4 10             	add    $0x10,%esp
c0030755:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c003075b:	89 c2                	mov    %eax,%edx
c003075d:	8d 83 60 16 00 00    	lea    0x1660(%ebx),%eax
c0030763:	6a 03                	push   $0x3
c0030765:	52                   	push   %edx
c0030766:	6a 08                	push   $0x8
c0030768:	50                   	push   %eax
c0030769:	e8 7d fd ff ff       	call   c00304eb <set_trap>
c003076e:	83 c4 10             	add    $0x10,%esp
c0030771:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030777:	89 c2                	mov    %eax,%edx
c0030779:	8d 83 60 13 00 00    	lea    0x1360(%ebx),%eax
c003077f:	6a 00                	push   $0x0
c0030781:	52                   	push   %edx
c0030782:	6a 08                	push   $0x8
c0030784:	50                   	push   %eax
c0030785:	e8 e5 fc ff ff       	call   c003046f <set_intr>
c003078a:	83 c4 10             	add    $0x10,%esp
c003078d:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0030793:	89 c2                	mov    %eax,%edx
c0030795:	8d 83 68 13 00 00    	lea    0x1368(%ebx),%eax
c003079b:	6a 00                	push   $0x0
c003079d:	52                   	push   %edx
c003079e:	6a 08                	push   $0x8
c00307a0:	50                   	push   %eax
c00307a1:	e8 c9 fc ff ff       	call   c003046f <set_intr>
c00307a6:	83 c4 10             	add    $0x10,%esp
c00307a9:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00307af:	89 c2                	mov    %eax,%edx
c00307b1:	8d 83 d0 13 00 00    	lea    0x13d0(%ebx),%eax
c00307b7:	6a 00                	push   $0x0
c00307b9:	52                   	push   %edx
c00307ba:	6a 08                	push   $0x8
c00307bc:	50                   	push   %eax
c00307bd:	e8 ad fc ff ff       	call   c003046f <set_intr>
c00307c2:	83 c4 10             	add    $0x10,%esp
c00307c5:	68 00 08 00 00       	push   $0x800
c00307ca:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c00307d0:	50                   	push   %eax
c00307d1:	e8 4d fc ff ff       	call   c0030423 <write_idtr>
c00307d6:	83 c4 08             	add    $0x8,%esp
c00307d9:	e8 80 fc ff ff       	call   c003045e <sti>
c00307de:	90                   	nop
c00307df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307e2:	c9                   	leave  
c00307e3:	c3                   	ret    

c00307e4 <out_byte>:
c00307e4:	55                   	push   %ebp
c00307e5:	89 e5                	mov    %esp,%ebp
c00307e7:	83 ec 08             	sub    $0x8,%esp
c00307ea:	e8 a7 f9 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00307ef:	05 11 b8 00 00       	add    $0xb811,%eax
c00307f4:	8b 45 08             	mov    0x8(%ebp),%eax
c00307f7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00307fa:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00307fe:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030801:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030804:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030807:	ee                   	out    %al,(%dx)
c0030808:	90                   	nop
c0030809:	c9                   	leave  
c003080a:	c3                   	ret    

c003080b <init_i8259>:
c003080b:	55                   	push   %ebp
c003080c:	89 e5                	mov    %esp,%ebp
c003080e:	e8 83 f9 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030813:	05 ed b7 00 00       	add    $0xb7ed,%eax
c0030818:	68 ff 00 00 00       	push   $0xff
c003081d:	6a 21                	push   $0x21
c003081f:	e8 c0 ff ff ff       	call   c00307e4 <out_byte>
c0030824:	83 c4 08             	add    $0x8,%esp
c0030827:	68 ff 00 00 00       	push   $0xff
c003082c:	68 a1 00 00 00       	push   $0xa1
c0030831:	e8 ae ff ff ff       	call   c00307e4 <out_byte>
c0030836:	83 c4 08             	add    $0x8,%esp
c0030839:	6a 11                	push   $0x11
c003083b:	6a 20                	push   $0x20
c003083d:	e8 a2 ff ff ff       	call   c00307e4 <out_byte>
c0030842:	83 c4 08             	add    $0x8,%esp
c0030845:	6a 20                	push   $0x20
c0030847:	6a 21                	push   $0x21
c0030849:	e8 96 ff ff ff       	call   c00307e4 <out_byte>
c003084e:	83 c4 08             	add    $0x8,%esp
c0030851:	6a 04                	push   $0x4
c0030853:	6a 21                	push   $0x21
c0030855:	e8 8a ff ff ff       	call   c00307e4 <out_byte>
c003085a:	83 c4 08             	add    $0x8,%esp
c003085d:	6a 03                	push   $0x3
c003085f:	6a 21                	push   $0x21
c0030861:	e8 7e ff ff ff       	call   c00307e4 <out_byte>
c0030866:	83 c4 08             	add    $0x8,%esp
c0030869:	6a 11                	push   $0x11
c003086b:	68 a0 00 00 00       	push   $0xa0
c0030870:	e8 6f ff ff ff       	call   c00307e4 <out_byte>
c0030875:	83 c4 08             	add    $0x8,%esp
c0030878:	6a 28                	push   $0x28
c003087a:	68 a1 00 00 00       	push   $0xa1
c003087f:	e8 60 ff ff ff       	call   c00307e4 <out_byte>
c0030884:	83 c4 08             	add    $0x8,%esp
c0030887:	6a 02                	push   $0x2
c0030889:	68 a1 00 00 00       	push   $0xa1
c003088e:	e8 51 ff ff ff       	call   c00307e4 <out_byte>
c0030893:	83 c4 08             	add    $0x8,%esp
c0030896:	6a 03                	push   $0x3
c0030898:	68 a1 00 00 00       	push   $0xa1
c003089d:	e8 42 ff ff ff       	call   c00307e4 <out_byte>
c00308a2:	83 c4 08             	add    $0x8,%esp
c00308a5:	6a 68                	push   $0x68
c00308a7:	6a 20                	push   $0x20
c00308a9:	e8 36 ff ff ff       	call   c00307e4 <out_byte>
c00308ae:	83 c4 08             	add    $0x8,%esp
c00308b1:	6a 0a                	push   $0xa
c00308b3:	6a 20                	push   $0x20
c00308b5:	e8 2a ff ff ff       	call   c00307e4 <out_byte>
c00308ba:	83 c4 08             	add    $0x8,%esp
c00308bd:	6a 68                	push   $0x68
c00308bf:	68 a0 00 00 00       	push   $0xa0
c00308c4:	e8 1b ff ff ff       	call   c00307e4 <out_byte>
c00308c9:	83 c4 08             	add    $0x8,%esp
c00308cc:	6a 0a                	push   $0xa
c00308ce:	68 a0 00 00 00       	push   $0xa0
c00308d3:	e8 0c ff ff ff       	call   c00307e4 <out_byte>
c00308d8:	83 c4 08             	add    $0x8,%esp
c00308db:	90                   	nop
c00308dc:	c9                   	leave  
c00308dd:	c3                   	ret    

c00308de <cache_init>:
c00308de:	55                   	push   %ebp
c00308df:	89 e5                	mov    %esp,%ebp
c00308e1:	53                   	push   %ebx
c00308e2:	83 ec 10             	sub    $0x10,%esp
c00308e5:	e8 fd 01 00 00       	call   c0030ae7 <__x86.get_pc_thunk.dx>
c00308ea:	81 c2 16 b7 00 00    	add    $0xb716,%edx
c00308f0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00308f7:	eb 1b                	jmp    c0030914 <cache_init+0x36>
c00308f9:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c00308fc:	8d 9a 84 1a 00 00    	lea    0x1a84(%edx),%ebx
c0030902:	89 c8                	mov    %ecx,%eax
c0030904:	c1 e0 06             	shl    $0x6,%eax
c0030907:	01 c8                	add    %ecx,%eax
c0030909:	c1 e0 03             	shl    $0x3,%eax
c003090c:	01 d8                	add    %ebx,%eax
c003090e:	c6 00 00             	movb   $0x0,(%eax)
c0030911:	ff 45 f8             	incl   -0x8(%ebp)
c0030914:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030918:	7e df                	jle    c00308f9 <cache_init+0x1b>
c003091a:	90                   	nop
c003091b:	83 c4 10             	add    $0x10,%esp
c003091e:	5b                   	pop    %ebx
c003091f:	5d                   	pop    %ebp
c0030920:	c3                   	ret    

c0030921 <cache_writeback>:
c0030921:	55                   	push   %ebp
c0030922:	89 e5                	mov    %esp,%ebp
c0030924:	53                   	push   %ebx
c0030925:	83 ec 14             	sub    $0x14,%esp
c0030928:	e8 c1 f8 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c003092d:	81 c3 d3 b6 00 00    	add    $0xb6d3,%ebx
c0030933:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003093a:	eb 72                	jmp    c00309ae <cache_writeback+0x8d>
c003093c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003093f:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c0030945:	89 d0                	mov    %edx,%eax
c0030947:	c1 e0 06             	shl    $0x6,%eax
c003094a:	01 d0                	add    %edx,%eax
c003094c:	c1 e0 03             	shl    $0x3,%eax
c003094f:	01 c8                	add    %ecx,%eax
c0030951:	8a 00                	mov    (%eax),%al
c0030953:	3c 01                	cmp    $0x1,%al
c0030955:	75 54                	jne    c00309ab <cache_writeback+0x8a>
c0030957:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003095a:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c0030960:	89 d0                	mov    %edx,%eax
c0030962:	c1 e0 06             	shl    $0x6,%eax
c0030965:	01 d0                	add    %edx,%eax
c0030967:	c1 e0 03             	shl    $0x3,%eax
c003096a:	01 c8                	add    %ecx,%eax
c003096c:	8b 10                	mov    (%eax),%edx
c003096e:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030971:	89 c8                	mov    %ecx,%eax
c0030973:	c1 e0 06             	shl    $0x6,%eax
c0030976:	01 c8                	add    %ecx,%eax
c0030978:	c1 e0 03             	shl    $0x3,%eax
c003097b:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c0030981:	01 c8                	add    %ecx,%eax
c0030983:	83 c0 06             	add    $0x6,%eax
c0030986:	83 ec 08             	sub    $0x8,%esp
c0030989:	52                   	push   %edx
c003098a:	50                   	push   %eax
c003098b:	e8 f4 05 00 00       	call   c0030f84 <disk_do_write>
c0030990:	83 c4 10             	add    $0x10,%esp
c0030993:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030996:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c003099c:	89 d0                	mov    %edx,%eax
c003099e:	c1 e0 06             	shl    $0x6,%eax
c00309a1:	01 d0                	add    %edx,%eax
c00309a3:	c1 e0 03             	shl    $0x3,%eax
c00309a6:	01 c8                	add    %ecx,%eax
c00309a8:	c6 00 00             	movb   $0x0,(%eax)
c00309ab:	ff 45 f4             	incl   -0xc(%ebp)
c00309ae:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c00309b2:	7e 88                	jle    c003093c <cache_writeback+0x1b>
c00309b4:	90                   	nop
c00309b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309b8:	c9                   	leave  
c00309b9:	c3                   	ret    

c00309ba <cache_fetch>:
c00309ba:	55                   	push   %ebp
c00309bb:	89 e5                	mov    %esp,%ebp
c00309bd:	53                   	push   %ebx
c00309be:	83 ec 14             	sub    $0x14,%esp
c00309c1:	e8 28 f8 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c00309c6:	81 c3 3a b6 00 00    	add    $0xb63a,%ebx
c00309cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00309cf:	83 e0 7f             	and    $0x7f,%eax
c00309d2:	89 c2                	mov    %eax,%edx
c00309d4:	89 d0                	mov    %edx,%eax
c00309d6:	c1 e0 06             	shl    $0x6,%eax
c00309d9:	01 d0                	add    %edx,%eax
c00309db:	c1 e0 03             	shl    $0x3,%eax
c00309de:	8d 93 80 1a 00 00    	lea    0x1a80(%ebx),%edx
c00309e4:	01 d0                	add    %edx,%eax
c00309e6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00309e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309ec:	8a 40 04             	mov    0x4(%eax),%al
c00309ef:	3c 01                	cmp    $0x1,%al
c00309f1:	75 0a                	jne    c00309fd <cache_fetch+0x43>
c00309f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309f6:	8b 00                	mov    (%eax),%eax
c00309f8:	3b 45 08             	cmp    0x8(%ebp),%eax
c00309fb:	74 57                	je     c0030a54 <cache_fetch+0x9a>
c00309fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a00:	8a 40 04             	mov    0x4(%eax),%al
c0030a03:	3c 01                	cmp    $0x1,%al
c0030a05:	75 22                	jne    c0030a29 <cache_fetch+0x6f>
c0030a07:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a0a:	8a 40 05             	mov    0x5(%eax),%al
c0030a0d:	3c 01                	cmp    $0x1,%al
c0030a0f:	75 18                	jne    c0030a29 <cache_fetch+0x6f>
c0030a11:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a14:	8b 00                	mov    (%eax),%eax
c0030a16:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030a19:	83 c2 06             	add    $0x6,%edx
c0030a1c:	83 ec 08             	sub    $0x8,%esp
c0030a1f:	50                   	push   %eax
c0030a20:	52                   	push   %edx
c0030a21:	e8 5e 05 00 00       	call   c0030f84 <disk_do_write>
c0030a26:	83 c4 10             	add    $0x10,%esp
c0030a29:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a2c:	83 c0 06             	add    $0x6,%eax
c0030a2f:	83 ec 08             	sub    $0x8,%esp
c0030a32:	ff 75 08             	pushl  0x8(%ebp)
c0030a35:	50                   	push   %eax
c0030a36:	e8 de 04 00 00       	call   c0030f19 <disk_do_read>
c0030a3b:	83 c4 10             	add    $0x10,%esp
c0030a3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a41:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030a45:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a48:	8b 55 08             	mov    0x8(%ebp),%edx
c0030a4b:	89 10                	mov    %edx,(%eax)
c0030a4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a50:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030a54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a57:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a5a:	c9                   	leave  
c0030a5b:	c3                   	ret    

c0030a5c <read_byte>:
c0030a5c:	55                   	push   %ebp
c0030a5d:	89 e5                	mov    %esp,%ebp
c0030a5f:	83 ec 18             	sub    $0x18,%esp
c0030a62:	e8 2f f7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030a67:	05 99 b5 00 00       	add    $0xb599,%eax
c0030a6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a6f:	c1 e8 09             	shr    $0x9,%eax
c0030a72:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a75:	83 ec 0c             	sub    $0xc,%esp
c0030a78:	ff 75 f4             	pushl  -0xc(%ebp)
c0030a7b:	e8 3a ff ff ff       	call   c00309ba <cache_fetch>
c0030a80:	83 c4 10             	add    $0x10,%esp
c0030a83:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030a86:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a89:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030a8e:	89 c2                	mov    %eax,%edx
c0030a90:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a93:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0030a97:	c9                   	leave  
c0030a98:	c3                   	ret    

c0030a99 <write_byte>:
c0030a99:	55                   	push   %ebp
c0030a9a:	89 e5                	mov    %esp,%ebp
c0030a9c:	83 ec 28             	sub    $0x28,%esp
c0030a9f:	e8 f2 f6 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030aa4:	05 5c b5 00 00       	add    $0xb55c,%eax
c0030aa9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030aac:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030aaf:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ab2:	c1 e8 09             	shr    $0x9,%eax
c0030ab5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030ab8:	83 ec 0c             	sub    $0xc,%esp
c0030abb:	ff 75 f4             	pushl  -0xc(%ebp)
c0030abe:	e8 f7 fe ff ff       	call   c00309ba <cache_fetch>
c0030ac3:	83 c4 10             	add    $0x10,%esp
c0030ac6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030ac9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030acc:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030ad1:	89 c1                	mov    %eax,%ecx
c0030ad3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030ad6:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030ad9:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030add:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030ae0:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030ae4:	90                   	nop
c0030ae5:	c9                   	leave  
c0030ae6:	c3                   	ret    

c0030ae7 <__x86.get_pc_thunk.dx>:
c0030ae7:	8b 14 24             	mov    (%esp),%edx
c0030aea:	c3                   	ret    

c0030aeb <wait_intr>:
c0030aeb:	55                   	push   %ebp
c0030aec:	89 e5                	mov    %esp,%ebp
c0030aee:	e8 a3 f6 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030af3:	05 0d b5 00 00       	add    $0xb50d,%eax
c0030af8:	f4                   	hlt    
c0030af9:	90                   	nop
c0030afa:	5d                   	pop    %ebp
c0030afb:	c3                   	ret    

c0030afc <ide_read>:
c0030afc:	55                   	push   %ebp
c0030afd:	89 e5                	mov    %esp,%ebp
c0030aff:	56                   	push   %esi
c0030b00:	53                   	push   %ebx
c0030b01:	83 ec 10             	sub    $0x10,%esp
c0030b04:	e8 e5 f6 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030b09:	81 c3 f7 b4 00 00    	add    $0xb4f7,%ebx
c0030b0f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030b16:	eb 22                	jmp    c0030b3a <ide_read+0x3e>
c0030b18:	8b 55 08             	mov    0x8(%ebp),%edx
c0030b1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b1e:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030b21:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030b24:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b27:	01 d0                	add    %edx,%eax
c0030b29:	83 ec 0c             	sub    $0xc,%esp
c0030b2c:	50                   	push   %eax
c0030b2d:	e8 2a ff ff ff       	call   c0030a5c <read_byte>
c0030b32:	83 c4 10             	add    $0x10,%esp
c0030b35:	88 06                	mov    %al,(%esi)
c0030b37:	ff 45 f4             	incl   -0xc(%ebp)
c0030b3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b3d:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030b40:	72 d6                	jb     c0030b18 <ide_read+0x1c>
c0030b42:	90                   	nop
c0030b43:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030b46:	5b                   	pop    %ebx
c0030b47:	5e                   	pop    %esi
c0030b48:	5d                   	pop    %ebp
c0030b49:	c3                   	ret    

c0030b4a <ide_write>:
c0030b4a:	55                   	push   %ebp
c0030b4b:	89 e5                	mov    %esp,%ebp
c0030b4d:	53                   	push   %ebx
c0030b4e:	83 ec 14             	sub    $0x14,%esp
c0030b51:	e8 98 f6 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030b56:	81 c3 aa b4 00 00    	add    $0xb4aa,%ebx
c0030b5c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030b63:	eb 25                	jmp    c0030b8a <ide_write+0x40>
c0030b65:	8b 55 08             	mov    0x8(%ebp),%edx
c0030b68:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b6b:	01 d0                	add    %edx,%eax
c0030b6d:	8a 00                	mov    (%eax),%al
c0030b6f:	0f b6 c0             	movzbl %al,%eax
c0030b72:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030b75:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b78:	01 ca                	add    %ecx,%edx
c0030b7a:	83 ec 08             	sub    $0x8,%esp
c0030b7d:	50                   	push   %eax
c0030b7e:	52                   	push   %edx
c0030b7f:	e8 15 ff ff ff       	call   c0030a99 <write_byte>
c0030b84:	83 c4 10             	add    $0x10,%esp
c0030b87:	ff 45 f4             	incl   -0xc(%ebp)
c0030b8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b8d:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030b90:	72 d3                	jb     c0030b65 <ide_write+0x1b>
c0030b92:	90                   	nop
c0030b93:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b96:	c9                   	leave  
c0030b97:	c3                   	ret    

c0030b98 <ide_writeback>:
c0030b98:	55                   	push   %ebp
c0030b99:	89 e5                	mov    %esp,%ebp
c0030b9b:	53                   	push   %ebx
c0030b9c:	83 ec 04             	sub    $0x4,%esp
c0030b9f:	e8 4a f6 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030ba4:	81 c3 5c b4 00 00    	add    $0xb45c,%ebx
c0030baa:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c0030bb0:	40                   	inc    %eax
c0030bb1:	89 83 84 1e 01 00    	mov    %eax,0x11e84(%ebx)
c0030bb7:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c0030bbd:	83 f8 64             	cmp    $0x64,%eax
c0030bc0:	75 0f                	jne    c0030bd1 <ide_writeback+0x39>
c0030bc2:	e8 5a fd ff ff       	call   c0030921 <cache_writeback>
c0030bc7:	c7 83 84 1e 01 00 00 	movl   $0x0,0x11e84(%ebx)
c0030bce:	00 00 00 
c0030bd1:	90                   	nop
c0030bd2:	83 c4 04             	add    $0x4,%esp
c0030bd5:	5b                   	pop    %ebx
c0030bd6:	5d                   	pop    %ebp
c0030bd7:	c3                   	ret    

c0030bd8 <ide_intr>:
c0030bd8:	55                   	push   %ebp
c0030bd9:	89 e5                	mov    %esp,%ebp
c0030bdb:	e8 b6 f5 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030be0:	05 20 b4 00 00       	add    $0xb420,%eax
c0030be5:	c7 80 80 1e 01 00 01 	movl   $0x1,0x11e80(%eax)
c0030bec:	00 00 00 
c0030bef:	90                   	nop
c0030bf0:	5d                   	pop    %ebp
c0030bf1:	c3                   	ret    

c0030bf2 <clear_ide_intr>:
c0030bf2:	55                   	push   %ebp
c0030bf3:	89 e5                	mov    %esp,%ebp
c0030bf5:	e8 9c f5 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030bfa:	05 06 b4 00 00       	add    $0xb406,%eax
c0030bff:	c7 80 80 1e 01 00 00 	movl   $0x0,0x11e80(%eax)
c0030c06:	00 00 00 
c0030c09:	90                   	nop
c0030c0a:	5d                   	pop    %ebp
c0030c0b:	c3                   	ret    

c0030c0c <wait_ide_intr>:
c0030c0c:	55                   	push   %ebp
c0030c0d:	89 e5                	mov    %esp,%ebp
c0030c0f:	53                   	push   %ebx
c0030c10:	e8 d9 f5 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030c15:	81 c3 eb b3 00 00    	add    $0xb3eb,%ebx
c0030c1b:	eb 05                	jmp    c0030c22 <wait_ide_intr+0x16>
c0030c1d:	e8 c9 fe ff ff       	call   c0030aeb <wait_intr>
c0030c22:	8b 83 80 1e 01 00    	mov    0x11e80(%ebx),%eax
c0030c28:	85 c0                	test   %eax,%eax
c0030c2a:	74 f1                	je     c0030c1d <wait_ide_intr+0x11>
c0030c2c:	e8 c1 ff ff ff       	call   c0030bf2 <clear_ide_intr>
c0030c31:	90                   	nop
c0030c32:	5b                   	pop    %ebx
c0030c33:	5d                   	pop    %ebp
c0030c34:	c3                   	ret    

c0030c35 <init_ide>:
c0030c35:	55                   	push   %ebp
c0030c36:	89 e5                	mov    %esp,%ebp
c0030c38:	53                   	push   %ebx
c0030c39:	83 ec 04             	sub    $0x4,%esp
c0030c3c:	e8 ad f5 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030c41:	81 c3 bf b3 00 00    	add    $0xb3bf,%ebx
c0030c47:	e8 92 fc ff ff       	call   c00308de <cache_init>
c0030c4c:	83 ec 08             	sub    $0x8,%esp
c0030c4f:	8d 83 98 4b ff ff    	lea    -0xb468(%ebx),%eax
c0030c55:	50                   	push   %eax
c0030c56:	6a 00                	push   $0x0
c0030c58:	e8 e1 f5 ff ff       	call   c003023e <add_irq_handle>
c0030c5d:	83 c4 10             	add    $0x10,%esp
c0030c60:	83 ec 08             	sub    $0x8,%esp
c0030c63:	8d 83 d8 4b ff ff    	lea    -0xb428(%ebx),%eax
c0030c69:	50                   	push   %eax
c0030c6a:	6a 0e                	push   $0xe
c0030c6c:	e8 cd f5 ff ff       	call   c003023e <add_irq_handle>
c0030c71:	83 c4 10             	add    $0x10,%esp
c0030c74:	90                   	nop
c0030c75:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c78:	c9                   	leave  
c0030c79:	c3                   	ret    

c0030c7a <in_byte>:
c0030c7a:	55                   	push   %ebp
c0030c7b:	89 e5                	mov    %esp,%ebp
c0030c7d:	83 ec 14             	sub    $0x14,%esp
c0030c80:	e8 11 f5 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030c85:	05 7b b3 00 00       	add    $0xb37b,%eax
c0030c8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c8d:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030c91:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030c94:	89 c2                	mov    %eax,%edx
c0030c96:	ec                   	in     (%dx),%al
c0030c97:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030c9a:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030c9d:	c9                   	leave  
c0030c9e:	c3                   	ret    

c0030c9f <out_byte>:
c0030c9f:	55                   	push   %ebp
c0030ca0:	89 e5                	mov    %esp,%ebp
c0030ca2:	83 ec 08             	sub    $0x8,%esp
c0030ca5:	e8 ec f4 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030caa:	05 56 b3 00 00       	add    $0xb356,%eax
c0030caf:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cb2:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030cb5:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030cb9:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030cbc:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030cbf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030cc2:	ee                   	out    %al,(%dx)
c0030cc3:	90                   	nop
c0030cc4:	c9                   	leave  
c0030cc5:	c3                   	ret    

c0030cc6 <out_long>:
c0030cc6:	55                   	push   %ebp
c0030cc7:	89 e5                	mov    %esp,%ebp
c0030cc9:	83 ec 04             	sub    $0x4,%esp
c0030ccc:	e8 c5 f4 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030cd1:	05 2f b3 00 00       	add    $0xb32f,%eax
c0030cd6:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cd9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ce0:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030ce3:	ef                   	out    %eax,(%dx)
c0030ce4:	90                   	nop
c0030ce5:	c9                   	leave  
c0030ce6:	c3                   	ret    

c0030ce7 <dma_prepare>:
c0030ce7:	55                   	push   %ebp
c0030ce8:	89 e5                	mov    %esp,%ebp
c0030cea:	83 ec 10             	sub    $0x10,%esp
c0030ced:	e8 a4 f4 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030cf2:	05 0e b3 00 00       	add    $0xb30e,%eax
c0030cf7:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cfa:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030d00:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030d03:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030d09:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030d0c:	89 0a                	mov    %ecx,(%edx)
c0030d0e:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030d14:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030d1a:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030d20:	8a 4a 07             	mov    0x7(%edx),%cl
c0030d23:	83 c9 80             	or     $0xffffff80,%ecx
c0030d26:	88 4a 07             	mov    %cl,0x7(%edx)
c0030d29:	c7 c1 54 f0 06 c0    	mov    $0xc006f054,%ecx
c0030d2f:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030d33:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030d39:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030d3d:	c7 c0 54 f0 06 c0    	mov    $0xc006f054,%eax
c0030d43:	05 00 00 00 40       	add    $0x40000000,%eax
c0030d48:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030d4b:	ff 75 f8             	pushl  -0x8(%ebp)
c0030d4e:	68 44 c0 00 00       	push   $0xc044
c0030d53:	e8 6e ff ff ff       	call   c0030cc6 <out_long>
c0030d58:	83 c4 08             	add    $0x8,%esp
c0030d5b:	90                   	nop
c0030d5c:	c9                   	leave  
c0030d5d:	c3                   	ret    

c0030d5e <dma_issue_read>:
c0030d5e:	55                   	push   %ebp
c0030d5f:	89 e5                	mov    %esp,%ebp
c0030d61:	e8 30 f4 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030d66:	05 9a b2 00 00       	add    $0xb29a,%eax
c0030d6b:	68 40 c0 00 00       	push   $0xc040
c0030d70:	e8 05 ff ff ff       	call   c0030c7a <in_byte>
c0030d75:	83 c4 04             	add    $0x4,%esp
c0030d78:	83 c8 09             	or     $0x9,%eax
c0030d7b:	0f b6 c0             	movzbl %al,%eax
c0030d7e:	50                   	push   %eax
c0030d7f:	68 40 c0 00 00       	push   $0xc040
c0030d84:	e8 16 ff ff ff       	call   c0030c9f <out_byte>
c0030d89:	83 c4 08             	add    $0x8,%esp
c0030d8c:	90                   	nop
c0030d8d:	c9                   	leave  
c0030d8e:	c3                   	ret    

c0030d8f <in_byte>:
c0030d8f:	55                   	push   %ebp
c0030d90:	89 e5                	mov    %esp,%ebp
c0030d92:	83 ec 14             	sub    $0x14,%esp
c0030d95:	e8 fc f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030d9a:	05 66 b2 00 00       	add    $0xb266,%eax
c0030d9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030da2:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030da6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030da9:	89 c2                	mov    %eax,%edx
c0030dab:	ec                   	in     (%dx),%al
c0030dac:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030daf:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030db2:	c9                   	leave  
c0030db3:	c3                   	ret    

c0030db4 <in_long>:
c0030db4:	55                   	push   %ebp
c0030db5:	89 e5                	mov    %esp,%ebp
c0030db7:	83 ec 14             	sub    $0x14,%esp
c0030dba:	e8 d7 f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030dbf:	05 41 b2 00 00       	add    $0xb241,%eax
c0030dc4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dc7:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030dcb:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030dce:	89 c2                	mov    %eax,%edx
c0030dd0:	ed                   	in     (%dx),%eax
c0030dd1:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030dd4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030dd7:	c9                   	leave  
c0030dd8:	c3                   	ret    

c0030dd9 <out_byte>:
c0030dd9:	55                   	push   %ebp
c0030dda:	89 e5                	mov    %esp,%ebp
c0030ddc:	83 ec 08             	sub    $0x8,%esp
c0030ddf:	e8 b2 f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030de4:	05 1c b2 00 00       	add    $0xb21c,%eax
c0030de9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dec:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030def:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030df3:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030df6:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030df9:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030dfc:	ee                   	out    %al,(%dx)
c0030dfd:	90                   	nop
c0030dfe:	c9                   	leave  
c0030dff:	c3                   	ret    

c0030e00 <out_long>:
c0030e00:	55                   	push   %ebp
c0030e01:	89 e5                	mov    %esp,%ebp
c0030e03:	83 ec 04             	sub    $0x4,%esp
c0030e06:	e8 8b f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030e0b:	05 f5 b1 00 00       	add    $0xb1f5,%eax
c0030e10:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e13:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030e17:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030e1a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030e1d:	ef                   	out    %eax,(%dx)
c0030e1e:	90                   	nop
c0030e1f:	c9                   	leave  
c0030e20:	c3                   	ret    

c0030e21 <waitdisk>:
c0030e21:	55                   	push   %ebp
c0030e22:	89 e5                	mov    %esp,%ebp
c0030e24:	e8 6d f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030e29:	05 d7 b1 00 00       	add    $0xb1d7,%eax
c0030e2e:	90                   	nop
c0030e2f:	68 f7 01 00 00       	push   $0x1f7
c0030e34:	e8 56 ff ff ff       	call   c0030d8f <in_byte>
c0030e39:	83 c4 04             	add    $0x4,%esp
c0030e3c:	0f b6 c0             	movzbl %al,%eax
c0030e3f:	25 c0 00 00 00       	and    $0xc0,%eax
c0030e44:	83 f8 40             	cmp    $0x40,%eax
c0030e47:	75 e6                	jne    c0030e2f <waitdisk+0xe>
c0030e49:	90                   	nop
c0030e4a:	c9                   	leave  
c0030e4b:	c3                   	ret    

c0030e4c <ide_prepare>:
c0030e4c:	55                   	push   %ebp
c0030e4d:	89 e5                	mov    %esp,%ebp
c0030e4f:	e8 42 f3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030e54:	05 ac b1 00 00       	add    $0xb1ac,%eax
c0030e59:	e8 c3 ff ff ff       	call   c0030e21 <waitdisk>
c0030e5e:	6a 00                	push   $0x0
c0030e60:	68 f1 01 00 00       	push   $0x1f1
c0030e65:	e8 6f ff ff ff       	call   c0030dd9 <out_byte>
c0030e6a:	83 c4 08             	add    $0x8,%esp
c0030e6d:	6a 01                	push   $0x1
c0030e6f:	68 f2 01 00 00       	push   $0x1f2
c0030e74:	e8 60 ff ff ff       	call   c0030dd9 <out_byte>
c0030e79:	83 c4 08             	add    $0x8,%esp
c0030e7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e7f:	0f b6 c0             	movzbl %al,%eax
c0030e82:	50                   	push   %eax
c0030e83:	68 f3 01 00 00       	push   $0x1f3
c0030e88:	e8 4c ff ff ff       	call   c0030dd9 <out_byte>
c0030e8d:	83 c4 08             	add    $0x8,%esp
c0030e90:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e93:	c1 e8 08             	shr    $0x8,%eax
c0030e96:	0f b6 c0             	movzbl %al,%eax
c0030e99:	50                   	push   %eax
c0030e9a:	68 f4 01 00 00       	push   $0x1f4
c0030e9f:	e8 35 ff ff ff       	call   c0030dd9 <out_byte>
c0030ea4:	83 c4 08             	add    $0x8,%esp
c0030ea7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eaa:	c1 e8 10             	shr    $0x10,%eax
c0030ead:	0f b6 c0             	movzbl %al,%eax
c0030eb0:	50                   	push   %eax
c0030eb1:	68 f5 01 00 00       	push   $0x1f5
c0030eb6:	e8 1e ff ff ff       	call   c0030dd9 <out_byte>
c0030ebb:	83 c4 08             	add    $0x8,%esp
c0030ebe:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ec1:	c1 e8 18             	shr    $0x18,%eax
c0030ec4:	83 c8 e0             	or     $0xffffffe0,%eax
c0030ec7:	0f b6 c0             	movzbl %al,%eax
c0030eca:	50                   	push   %eax
c0030ecb:	68 f6 01 00 00       	push   $0x1f6
c0030ed0:	e8 04 ff ff ff       	call   c0030dd9 <out_byte>
c0030ed5:	83 c4 08             	add    $0x8,%esp
c0030ed8:	90                   	nop
c0030ed9:	c9                   	leave  
c0030eda:	c3                   	ret    

c0030edb <issue_read>:
c0030edb:	55                   	push   %ebp
c0030edc:	89 e5                	mov    %esp,%ebp
c0030ede:	e8 b3 f2 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030ee3:	05 1d b1 00 00       	add    $0xb11d,%eax
c0030ee8:	6a 20                	push   $0x20
c0030eea:	68 f7 01 00 00       	push   $0x1f7
c0030eef:	e8 e5 fe ff ff       	call   c0030dd9 <out_byte>
c0030ef4:	83 c4 08             	add    $0x8,%esp
c0030ef7:	90                   	nop
c0030ef8:	c9                   	leave  
c0030ef9:	c3                   	ret    

c0030efa <issue_write>:
c0030efa:	55                   	push   %ebp
c0030efb:	89 e5                	mov    %esp,%ebp
c0030efd:	e8 94 f2 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030f02:	05 fe b0 00 00       	add    $0xb0fe,%eax
c0030f07:	6a 30                	push   $0x30
c0030f09:	68 f7 01 00 00       	push   $0x1f7
c0030f0e:	e8 c6 fe ff ff       	call   c0030dd9 <out_byte>
c0030f13:	83 c4 08             	add    $0x8,%esp
c0030f16:	90                   	nop
c0030f17:	c9                   	leave  
c0030f18:	c3                   	ret    

c0030f19 <disk_do_read>:
c0030f19:	55                   	push   %ebp
c0030f1a:	89 e5                	mov    %esp,%ebp
c0030f1c:	53                   	push   %ebx
c0030f1d:	83 ec 14             	sub    $0x14,%esp
c0030f20:	e8 c9 f2 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030f25:	81 c3 db b0 00 00    	add    $0xb0db,%ebx
c0030f2b:	e8 c2 fc ff ff       	call   c0030bf2 <clear_ide_intr>
c0030f30:	83 ec 0c             	sub    $0xc,%esp
c0030f33:	ff 75 0c             	pushl  0xc(%ebp)
c0030f36:	e8 11 ff ff ff       	call   c0030e4c <ide_prepare>
c0030f3b:	83 c4 10             	add    $0x10,%esp
c0030f3e:	e8 98 ff ff ff       	call   c0030edb <issue_read>
c0030f43:	e8 c4 fc ff ff       	call   c0030c0c <wait_ide_intr>
c0030f48:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030f4f:	eb 25                	jmp    c0030f76 <disk_do_read+0x5d>
c0030f51:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f54:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030f5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f5e:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0030f61:	83 ec 0c             	sub    $0xc,%esp
c0030f64:	68 f0 01 00 00       	push   $0x1f0
c0030f69:	e8 46 fe ff ff       	call   c0030db4 <in_long>
c0030f6e:	83 c4 10             	add    $0x10,%esp
c0030f71:	89 03                	mov    %eax,(%ebx)
c0030f73:	ff 45 f4             	incl   -0xc(%ebp)
c0030f76:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f79:	83 f8 7f             	cmp    $0x7f,%eax
c0030f7c:	76 d3                	jbe    c0030f51 <disk_do_read+0x38>
c0030f7e:	90                   	nop
c0030f7f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030f82:	c9                   	leave  
c0030f83:	c3                   	ret    

c0030f84 <disk_do_write>:
c0030f84:	55                   	push   %ebp
c0030f85:	89 e5                	mov    %esp,%ebp
c0030f87:	83 ec 10             	sub    $0x10,%esp
c0030f8a:	e8 07 f2 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030f8f:	05 71 b0 00 00       	add    $0xb071,%eax
c0030f94:	ff 75 0c             	pushl  0xc(%ebp)
c0030f97:	e8 b0 fe ff ff       	call   c0030e4c <ide_prepare>
c0030f9c:	83 c4 04             	add    $0x4,%esp
c0030f9f:	e8 56 ff ff ff       	call   c0030efa <issue_write>
c0030fa4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030fab:	eb 22                	jmp    c0030fcf <disk_do_write+0x4b>
c0030fad:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030fb0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030fb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fba:	01 d0                	add    %edx,%eax
c0030fbc:	8b 00                	mov    (%eax),%eax
c0030fbe:	50                   	push   %eax
c0030fbf:	68 f0 01 00 00       	push   $0x1f0
c0030fc4:	e8 37 fe ff ff       	call   c0030e00 <out_long>
c0030fc9:	83 c4 08             	add    $0x8,%esp
c0030fcc:	ff 45 fc             	incl   -0x4(%ebp)
c0030fcf:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030fd2:	83 f8 7f             	cmp    $0x7f,%eax
c0030fd5:	76 d6                	jbe    c0030fad <disk_do_write+0x29>
c0030fd7:	90                   	nop
c0030fd8:	c9                   	leave  
c0030fd9:	c3                   	ret    

c0030fda <sti>:
c0030fda:	55                   	push   %ebp
c0030fdb:	89 e5                	mov    %esp,%ebp
c0030fdd:	e8 b4 f1 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0030fe2:	05 1e b0 00 00       	add    $0xb01e,%eax
c0030fe7:	fb                   	sti    
c0030fe8:	90                   	nop
c0030fe9:	5d                   	pop    %ebp
c0030fea:	c3                   	ret    

c0030feb <init>:
c0030feb:	55                   	push   %ebp
c0030fec:	89 e5                	mov    %esp,%ebp
c0030fee:	53                   	push   %ebx
c0030fef:	83 ec 04             	sub    $0x4,%esp
c0030ff2:	e8 f7 f1 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0030ff7:	81 c3 09 b0 00 00    	add    $0xb009,%ebx
c0030ffd:	e8 22 0a 00 00       	call   c0031a24 <init_page>
c0031002:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0031008:	8d 83 1d 50 ff bf    	lea    -0x4000afe3(%ebx),%eax
c003100e:	ff e0                	jmp    *%eax
c0031010:	b8 01 00 00 00       	mov    $0x1,%eax
c0031015:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c003101c:	c3                   	ret    

c003101d <init_cond>:
c003101d:	55                   	push   %ebp
c003101e:	89 e5                	mov    %esp,%ebp
c0031020:	53                   	push   %ebx
c0031021:	83 ec 14             	sub    $0x14,%esp
c0031024:	e8 c5 f1 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031029:	81 c3 d7 af 00 00    	add    $0xafd7,%ebx
c003102f:	e8 cf 0b 00 00       	call   c0031c03 <init_segment>
c0031034:	e8 2b f5 ff ff       	call   c0030564 <init_idt>
c0031039:	e8 9c ff ff ff       	call   c0030fda <sti>
c003103e:	e8 f2 fb ff ff       	call   c0030c35 <init_ide>
c0031043:	e8 06 0e 00 00       	call   c0031e4e <init_mm>
c0031048:	8d 83 10 d0 ff ff    	lea    -0x2ff0(%ebx),%eax
c003104e:	50                   	push   %eax
c003104f:	6a 4d                	push   $0x4d
c0031051:	8d 83 d0 cf ff ff    	lea    -0x3030(%ebx),%eax
c0031057:	50                   	push   %eax
c0031058:	8d 83 dc cf ff ff    	lea    -0x3024(%ebx),%eax
c003105e:	50                   	push   %eax
c003105f:	e8 36 f1 ff ff       	call   c003019a <printk>
c0031064:	83 c4 10             	add    $0x10,%esp
c0031067:	e8 7a 0c 00 00       	call   c0031ce6 <video_mapping_write_test>
c003106c:	e8 6c 0e 00 00       	call   c0031edd <loader>
c0031071:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031074:	e8 b0 0c 00 00       	call   c0031d29 <video_mapping_read_test>
c0031079:	e8 26 0d 00 00       	call   c0031da4 <video_mapping_clear>
c003107e:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031083:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031086:	ff d0                	call   *%eax
c0031088:	90                   	nop
c0031089:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003108c:	c9                   	leave  
c003108d:	c3                   	ret    

c003108e <fs_open>:
c003108e:	55                   	push   %ebp
c003108f:	89 e5                	mov    %esp,%ebp
c0031091:	56                   	push   %esi
c0031092:	53                   	push   %ebx
c0031093:	83 ec 10             	sub    $0x10,%esp
c0031096:	e8 53 f1 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c003109b:	81 c3 65 af 00 00    	add    $0xaf65,%ebx
c00310a1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00310a8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00310af:	eb 2c                	jmp    c00310dd <fs_open+0x4f>
c00310b1:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00310b4:	8d 8b c0 fe ff ff    	lea    -0x140(%ebx),%ecx
c00310ba:	89 d0                	mov    %edx,%eax
c00310bc:	01 c0                	add    %eax,%eax
c00310be:	01 d0                	add    %edx,%eax
c00310c0:	c1 e0 02             	shl    $0x2,%eax
c00310c3:	01 c8                	add    %ecx,%eax
c00310c5:	8b 00                	mov    (%eax),%eax
c00310c7:	83 ec 08             	sub    $0x8,%esp
c00310ca:	ff 75 08             	pushl  0x8(%ebp)
c00310cd:	50                   	push   %eax
c00310ce:	e8 3d 15 00 00       	call   c0032610 <strcmp>
c00310d3:	83 c4 10             	add    $0x10,%esp
c00310d6:	85 c0                	test   %eax,%eax
c00310d8:	74 0d                	je     c00310e7 <fs_open+0x59>
c00310da:	ff 45 f4             	incl   -0xc(%ebp)
c00310dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310e0:	83 f8 18             	cmp    $0x18,%eax
c00310e3:	76 cc                	jbe    c00310b1 <fs_open+0x23>
c00310e5:	eb 01                	jmp    c00310e8 <fs_open+0x5a>
c00310e7:	90                   	nop
c00310e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310eb:	83 f8 18             	cmp    $0x18,%eax
c00310ee:	77 5e                	ja     c003114e <fs_open+0xc0>
c00310f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00310f3:	83 c0 03             	add    $0x3,%eax
c00310f6:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00310f9:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00310ff:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0031102:	89 d0                	mov    %edx,%eax
c0031104:	01 c0                	add    %eax,%eax
c0031106:	01 d0                	add    %edx,%eax
c0031108:	c1 e0 02             	shl    $0x2,%eax
c003110b:	01 c8                	add    %ecx,%eax
c003110d:	c6 00 01             	movb   $0x1,(%eax)
c0031110:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031113:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0031119:	8b 4d f0             	mov    -0x10(%ebp),%ecx
c003111c:	89 c8                	mov    %ecx,%eax
c003111e:	01 c0                	add    %eax,%eax
c0031120:	01 c8                	add    %ecx,%eax
c0031122:	c1 e0 02             	shl    $0x2,%eax
c0031125:	01 f0                	add    %esi,%eax
c0031127:	83 c0 04             	add    $0x4,%eax
c003112a:	89 10                	mov    %edx,(%eax)
c003112c:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0031132:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0031135:	89 d0                	mov    %edx,%eax
c0031137:	01 c0                	add    %eax,%eax
c0031139:	01 d0                	add    %edx,%eax
c003113b:	c1 e0 02             	shl    $0x2,%eax
c003113e:	01 c8                	add    %ecx,%eax
c0031140:	83 c0 08             	add    $0x8,%eax
c0031143:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0031149:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003114c:	eb 34                	jmp    c0031182 <fs_open+0xf4>
c003114e:	83 ec 0c             	sub    $0xc,%esp
c0031151:	8d 83 df d0 ff ff    	lea    -0x2f21(%ebx),%eax
c0031157:	50                   	push   %eax
c0031158:	8d 83 00 d2 ff ff    	lea    -0x2e00(%ebx),%eax
c003115e:	50                   	push   %eax
c003115f:	6a 39                	push   $0x39
c0031161:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031167:	50                   	push   %eax
c0031168:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c003116e:	50                   	push   %eax
c003116f:	e8 26 f0 ff ff       	call   c003019a <printk>
c0031174:	83 c4 20             	add    $0x20,%esp
c0031177:	b8 01 00 00 00       	mov    $0x1,%eax
c003117c:	82 b8 ff ff ff ff 8d 	cmpb   $0x8d,-0x1(%eax)
c0031183:	65 f8                	gs clc 
c0031185:	5b                   	pop    %ebx
c0031186:	5e                   	pop    %esi
c0031187:	5d                   	pop    %ebp
c0031188:	c3                   	ret    

c0031189 <fs_read>:
c0031189:	55                   	push   %ebp
c003118a:	89 e5                	mov    %esp,%ebp
c003118c:	56                   	push   %esi
c003118d:	53                   	push   %ebx
c003118e:	83 ec 10             	sub    $0x10,%esp
c0031191:	e8 58 f0 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031196:	81 c3 6a ae 00 00    	add    $0xae6a,%ebx
c003119c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00311a0:	7f 2f                	jg     c00311d1 <fs_read+0x48>
c00311a2:	83 ec 0c             	sub    $0xc,%esp
c00311a5:	8d 83 3a d1 ff ff    	lea    -0x2ec6(%ebx),%eax
c00311ab:	50                   	push   %eax
c00311ac:	8d 83 08 d2 ff ff    	lea    -0x2df8(%ebx),%eax
c00311b2:	50                   	push   %eax
c00311b3:	6a 3f                	push   $0x3f
c00311b5:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00311bb:	50                   	push   %eax
c00311bc:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00311c2:	50                   	push   %eax
c00311c3:	e8 d2 ef ff ff       	call   c003019a <printk>
c00311c8:	83 c4 20             	add    $0x20,%esp
c00311cb:	b8 01 00 00 00       	mov    $0x1,%eax
c00311d0:	82 8b 45 08 83 f8 1b 	orb    $0x1b,-0x77cf7bb(%ebx)
c00311d7:	76 2f                	jbe    c0031208 <fs_read+0x7f>
c00311d9:	83 ec 0c             	sub    $0xc,%esp
c00311dc:	8d 83 41 d1 ff ff    	lea    -0x2ebf(%ebx),%eax
c00311e2:	50                   	push   %eax
c00311e3:	8d 83 08 d2 ff ff    	lea    -0x2df8(%ebx),%eax
c00311e9:	50                   	push   %eax
c00311ea:	6a 40                	push   $0x40
c00311ec:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00311f2:	50                   	push   %eax
c00311f3:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00311f9:	50                   	push   %eax
c00311fa:	e8 9b ef ff ff       	call   c003019a <printk>
c00311ff:	83 c4 20             	add    $0x20,%esp
c0031202:	b8 01 00 00 00       	mov    $0x1,%eax
c0031207:	82 c7 c1             	add    $0xc1,%bh
c003120a:	60                   	pusha  
c003120b:	f0 06                	lock push %es
c003120d:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0031214:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031217:	c1 e0 02             	shl    $0x2,%eax
c003121a:	01 c8                	add    %ecx,%eax
c003121c:	8a 00                	mov    (%eax),%al
c003121e:	3c 01                	cmp    $0x1,%al
c0031220:	74 2f                	je     c0031251 <fs_read+0xc8>
c0031222:	83 ec 0c             	sub    $0xc,%esp
c0031225:	8d 83 53 d1 ff ff    	lea    -0x2ead(%ebx),%eax
c003122b:	50                   	push   %eax
c003122c:	8d 83 08 d2 ff ff    	lea    -0x2df8(%ebx),%eax
c0031232:	50                   	push   %eax
c0031233:	6a 41                	push   $0x41
c0031235:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c003123b:	50                   	push   %eax
c003123c:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031242:	50                   	push   %eax
c0031243:	e8 52 ef ff ff       	call   c003019a <printk>
c0031248:	83 c4 20             	add    $0x20,%esp
c003124b:	b8 01 00 00 00       	mov    $0x1,%eax
c0031250:	82 c7 c1             	add    $0xc1,%bh
c0031253:	60                   	pusha  
c0031254:	f0 06                	lock push %es
c0031256:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003125d:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031260:	c1 e0 02             	shl    $0x2,%eax
c0031263:	01 c8                	add    %ecx,%eax
c0031265:	83 c0 04             	add    $0x4,%eax
c0031268:	8b 00                	mov    (%eax),%eax
c003126a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003126d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031270:	8d 8b c8 fe ff ff    	lea    -0x138(%ebx),%ecx
c0031276:	89 d0                	mov    %edx,%eax
c0031278:	01 c0                	add    %eax,%eax
c003127a:	01 d0                	add    %edx,%eax
c003127c:	c1 e0 02             	shl    $0x2,%eax
c003127f:	01 c8                	add    %ecx,%eax
c0031281:	8b 00                	mov    (%eax),%eax
c0031283:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031286:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031289:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c003128f:	89 d0                	mov    %edx,%eax
c0031291:	01 c0                	add    %eax,%eax
c0031293:	01 d0                	add    %edx,%eax
c0031295:	c1 e0 02             	shl    $0x2,%eax
c0031298:	01 c8                	add    %ecx,%eax
c003129a:	8b 00                	mov    (%eax),%eax
c003129c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003129f:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00312a5:	8b 55 08             	mov    0x8(%ebp),%edx
c00312a8:	89 d0                	mov    %edx,%eax
c00312aa:	01 c0                	add    %eax,%eax
c00312ac:	01 d0                	add    %edx,%eax
c00312ae:	c1 e0 02             	shl    $0x2,%eax
c00312b1:	01 c8                	add    %ecx,%eax
c00312b3:	83 c0 08             	add    $0x8,%eax
c00312b6:	8b 10                	mov    (%eax),%edx
c00312b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00312bb:	39 c2                	cmp    %eax,%edx
c00312bd:	76 2f                	jbe    c00312ee <fs_read+0x165>
c00312bf:	83 ec 0c             	sub    $0xc,%esp
c00312c2:	8d 83 6a d1 ff ff    	lea    -0x2e96(%ebx),%eax
c00312c8:	50                   	push   %eax
c00312c9:	8d 83 08 d2 ff ff    	lea    -0x2df8(%ebx),%eax
c00312cf:	50                   	push   %eax
c00312d0:	6a 45                	push   $0x45
c00312d2:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00312d8:	50                   	push   %eax
c00312d9:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00312df:	50                   	push   %eax
c00312e0:	e8 b5 ee ff ff       	call   c003019a <printk>
c00312e5:	83 c4 20             	add    $0x20,%esp
c00312e8:	b8 01 00 00 00       	mov    $0x1,%eax
c00312ed:	82 c7 c1             	add    $0xc1,%bh
c00312f0:	60                   	pusha  
c00312f1:	f0 06                	lock push %es
c00312f3:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00312fa:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00312fd:	c1 e0 02             	shl    $0x2,%eax
c0031300:	01 c8                	add    %ecx,%eax
c0031302:	83 c0 08             	add    $0x8,%eax
c0031305:	8b 10                	mov    (%eax),%edx
c0031307:	8b 45 10             	mov    0x10(%ebp),%eax
c003130a:	01 c2                	add    %eax,%edx
c003130c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003130f:	39 c2                	cmp    %eax,%edx
c0031311:	72 23                	jb     c0031336 <fs_read+0x1ad>
c0031313:	8b 4d ec             	mov    -0x14(%ebp),%ecx
c0031316:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c003131c:	8b 55 08             	mov    0x8(%ebp),%edx
c003131f:	89 d0                	mov    %edx,%eax
c0031321:	01 c0                	add    %eax,%eax
c0031323:	01 d0                	add    %edx,%eax
c0031325:	c1 e0 02             	shl    $0x2,%eax
c0031328:	01 f0                	add    %esi,%eax
c003132a:	83 c0 08             	add    $0x8,%eax
c003132d:	8b 00                	mov    (%eax),%eax
c003132f:	29 c1                	sub    %eax,%ecx
c0031331:	89 c8                	mov    %ecx,%eax
c0031333:	89 45 10             	mov    %eax,0x10(%ebp)
c0031336:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003133c:	8b 55 08             	mov    0x8(%ebp),%edx
c003133f:	89 d0                	mov    %edx,%eax
c0031341:	01 c0                	add    %eax,%eax
c0031343:	01 d0                	add    %edx,%eax
c0031345:	c1 e0 02             	shl    $0x2,%eax
c0031348:	01 c8                	add    %ecx,%eax
c003134a:	83 c0 08             	add    $0x8,%eax
c003134d:	8b 10                	mov    (%eax),%edx
c003134f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031352:	01 d0                	add    %edx,%eax
c0031354:	83 ec 04             	sub    $0x4,%esp
c0031357:	ff 75 10             	pushl  0x10(%ebp)
c003135a:	50                   	push   %eax
c003135b:	ff 75 0c             	pushl  0xc(%ebp)
c003135e:	e8 99 f7 ff ff       	call   c0030afc <ide_read>
c0031363:	83 c4 10             	add    $0x10,%esp
c0031366:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003136c:	8b 55 08             	mov    0x8(%ebp),%edx
c003136f:	89 d0                	mov    %edx,%eax
c0031371:	01 c0                	add    %eax,%eax
c0031373:	01 d0                	add    %edx,%eax
c0031375:	c1 e0 02             	shl    $0x2,%eax
c0031378:	01 c8                	add    %ecx,%eax
c003137a:	83 c0 08             	add    $0x8,%eax
c003137d:	8b 10                	mov    (%eax),%edx
c003137f:	8b 45 10             	mov    0x10(%ebp),%eax
c0031382:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0031385:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c003138b:	8b 55 08             	mov    0x8(%ebp),%edx
c003138e:	89 d0                	mov    %edx,%eax
c0031390:	01 c0                	add    %eax,%eax
c0031392:	01 d0                	add    %edx,%eax
c0031394:	c1 e0 02             	shl    $0x2,%eax
c0031397:	01 d8                	add    %ebx,%eax
c0031399:	83 c0 08             	add    $0x8,%eax
c003139c:	89 08                	mov    %ecx,(%eax)
c003139e:	8b 45 10             	mov    0x10(%ebp),%eax
c00313a1:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00313a4:	5b                   	pop    %ebx
c00313a5:	5e                   	pop    %esi
c00313a6:	5d                   	pop    %ebp
c00313a7:	c3                   	ret    

c00313a8 <fs_write>:
c00313a8:	55                   	push   %ebp
c00313a9:	89 e5                	mov    %esp,%ebp
c00313ab:	56                   	push   %esi
c00313ac:	53                   	push   %ebx
c00313ad:	83 ec 10             	sub    $0x10,%esp
c00313b0:	e8 39 ee ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c00313b5:	81 c3 4b ac 00 00    	add    $0xac4b,%ebx
c00313bb:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00313bf:	7f 32                	jg     c00313f3 <fs_write+0x4b>
c00313c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00313c8:	eb 1c                	jmp    c00313e6 <fs_write+0x3e>
c00313ca:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00313cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00313d0:	01 d0                	add    %edx,%eax
c00313d2:	8a 00                	mov    (%eax),%al
c00313d4:	0f be c0             	movsbl %al,%eax
c00313d7:	83 ec 0c             	sub    $0xc,%esp
c00313da:	50                   	push   %eax
c00313db:	e8 7f ed ff ff       	call   c003015f <serial_printc>
c00313e0:	83 c4 10             	add    $0x10,%esp
c00313e3:	ff 45 f4             	incl   -0xc(%ebp)
c00313e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00313e9:	3b 45 10             	cmp    0x10(%ebp),%eax
c00313ec:	72 dc                	jb     c00313ca <fs_write+0x22>
c00313ee:	e9 cd 01 00 00       	jmp    c00315c0 <fs_write+0x218>
c00313f3:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00313f9:	8b 55 08             	mov    0x8(%ebp),%edx
c00313fc:	89 d0                	mov    %edx,%eax
c00313fe:	01 c0                	add    %eax,%eax
c0031400:	01 d0                	add    %edx,%eax
c0031402:	c1 e0 02             	shl    $0x2,%eax
c0031405:	01 c8                	add    %ecx,%eax
c0031407:	8a 00                	mov    (%eax),%al
c0031409:	3c 01                	cmp    $0x1,%al
c003140b:	74 2f                	je     c003143c <fs_write+0x94>
c003140d:	83 ec 0c             	sub    $0xc,%esp
c0031410:	8d 83 53 d1 ff ff    	lea    -0x2ead(%ebx),%eax
c0031416:	50                   	push   %eax
c0031417:	8d 83 10 d2 ff ff    	lea    -0x2df0(%ebx),%eax
c003141d:	50                   	push   %eax
c003141e:	6a 5a                	push   $0x5a
c0031420:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031426:	50                   	push   %eax
c0031427:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c003142d:	50                   	push   %eax
c003142e:	e8 67 ed ff ff       	call   c003019a <printk>
c0031433:	83 c4 20             	add    $0x20,%esp
c0031436:	b8 01 00 00 00       	mov    $0x1,%eax
c003143b:	82 8b 45 08 83 f8 1b 	orb    $0x1b,-0x77cf7bb(%ebx)
c0031442:	76 2f                	jbe    c0031473 <fs_write+0xcb>
c0031444:	83 ec 0c             	sub    $0xc,%esp
c0031447:	8d 83 41 d1 ff ff    	lea    -0x2ebf(%ebx),%eax
c003144d:	50                   	push   %eax
c003144e:	8d 83 10 d2 ff ff    	lea    -0x2df0(%ebx),%eax
c0031454:	50                   	push   %eax
c0031455:	6a 5b                	push   $0x5b
c0031457:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c003145d:	50                   	push   %eax
c003145e:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031464:	50                   	push   %eax
c0031465:	e8 30 ed ff ff       	call   c003019a <printk>
c003146a:	83 c4 20             	add    $0x20,%esp
c003146d:	b8 01 00 00 00       	mov    $0x1,%eax
c0031472:	82 c7 c1             	add    $0xc1,%bh
c0031475:	60                   	pusha  
c0031476:	f0 06                	lock push %es
c0031478:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003147f:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031482:	c1 e0 02             	shl    $0x2,%eax
c0031485:	01 c8                	add    %ecx,%eax
c0031487:	83 c0 04             	add    $0x4,%eax
c003148a:	8b 00                	mov    (%eax),%eax
c003148c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003148f:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0031492:	8d 8b c8 fe ff ff    	lea    -0x138(%ebx),%ecx
c0031498:	89 d0                	mov    %edx,%eax
c003149a:	01 c0                	add    %eax,%eax
c003149c:	01 d0                	add    %edx,%eax
c003149e:	c1 e0 02             	shl    $0x2,%eax
c00314a1:	01 c8                	add    %ecx,%eax
c00314a3:	8b 00                	mov    (%eax),%eax
c00314a5:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00314a8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00314ab:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c00314b1:	89 d0                	mov    %edx,%eax
c00314b3:	01 c0                	add    %eax,%eax
c00314b5:	01 d0                	add    %edx,%eax
c00314b7:	c1 e0 02             	shl    $0x2,%eax
c00314ba:	01 c8                	add    %ecx,%eax
c00314bc:	8b 00                	mov    (%eax),%eax
c00314be:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00314c1:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00314c7:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ca:	89 d0                	mov    %edx,%eax
c00314cc:	01 c0                	add    %eax,%eax
c00314ce:	01 d0                	add    %edx,%eax
c00314d0:	c1 e0 02             	shl    $0x2,%eax
c00314d3:	01 c8                	add    %ecx,%eax
c00314d5:	83 c0 08             	add    $0x8,%eax
c00314d8:	8b 10                	mov    (%eax),%edx
c00314da:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00314dd:	39 c2                	cmp    %eax,%edx
c00314df:	76 2f                	jbe    c0031510 <fs_write+0x168>
c00314e1:	83 ec 0c             	sub    $0xc,%esp
c00314e4:	8d 83 6a d1 ff ff    	lea    -0x2e96(%ebx),%eax
c00314ea:	50                   	push   %eax
c00314eb:	8d 83 10 d2 ff ff    	lea    -0x2df0(%ebx),%eax
c00314f1:	50                   	push   %eax
c00314f2:	6a 5f                	push   $0x5f
c00314f4:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00314fa:	50                   	push   %eax
c00314fb:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031501:	50                   	push   %eax
c0031502:	e8 93 ec ff ff       	call   c003019a <printk>
c0031507:	83 c4 20             	add    $0x20,%esp
c003150a:	b8 01 00 00 00       	mov    $0x1,%eax
c003150f:	82 c7 c1             	add    $0xc1,%bh
c0031512:	60                   	pusha  
c0031513:	f0 06                	lock push %es
c0031515:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003151c:	c0 01 d0             	rolb   $0xd0,(%ecx)
c003151f:	c1 e0 02             	shl    $0x2,%eax
c0031522:	01 c8                	add    %ecx,%eax
c0031524:	83 c0 08             	add    $0x8,%eax
c0031527:	8b 10                	mov    (%eax),%edx
c0031529:	8b 45 10             	mov    0x10(%ebp),%eax
c003152c:	01 c2                	add    %eax,%edx
c003152e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031531:	39 c2                	cmp    %eax,%edx
c0031533:	72 23                	jb     c0031558 <fs_write+0x1b0>
c0031535:	8b 4d e8             	mov    -0x18(%ebp),%ecx
c0031538:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c003153e:	8b 55 08             	mov    0x8(%ebp),%edx
c0031541:	89 d0                	mov    %edx,%eax
c0031543:	01 c0                	add    %eax,%eax
c0031545:	01 d0                	add    %edx,%eax
c0031547:	c1 e0 02             	shl    $0x2,%eax
c003154a:	01 f0                	add    %esi,%eax
c003154c:	83 c0 08             	add    $0x8,%eax
c003154f:	8b 00                	mov    (%eax),%eax
c0031551:	29 c1                	sub    %eax,%ecx
c0031553:	89 c8                	mov    %ecx,%eax
c0031555:	89 45 10             	mov    %eax,0x10(%ebp)
c0031558:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003155e:	8b 55 08             	mov    0x8(%ebp),%edx
c0031561:	89 d0                	mov    %edx,%eax
c0031563:	01 c0                	add    %eax,%eax
c0031565:	01 d0                	add    %edx,%eax
c0031567:	c1 e0 02             	shl    $0x2,%eax
c003156a:	01 c8                	add    %ecx,%eax
c003156c:	83 c0 08             	add    $0x8,%eax
c003156f:	8b 10                	mov    (%eax),%edx
c0031571:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031574:	01 d0                	add    %edx,%eax
c0031576:	83 ec 04             	sub    $0x4,%esp
c0031579:	ff 75 10             	pushl  0x10(%ebp)
c003157c:	50                   	push   %eax
c003157d:	ff 75 0c             	pushl  0xc(%ebp)
c0031580:	e8 c5 f5 ff ff       	call   c0030b4a <ide_write>
c0031585:	83 c4 10             	add    $0x10,%esp
c0031588:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003158e:	8b 55 08             	mov    0x8(%ebp),%edx
c0031591:	89 d0                	mov    %edx,%eax
c0031593:	01 c0                	add    %eax,%eax
c0031595:	01 d0                	add    %edx,%eax
c0031597:	c1 e0 02             	shl    $0x2,%eax
c003159a:	01 c8                	add    %ecx,%eax
c003159c:	83 c0 08             	add    $0x8,%eax
c003159f:	8b 10                	mov    (%eax),%edx
c00315a1:	8b 45 10             	mov    0x10(%ebp),%eax
c00315a4:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c00315a7:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c00315ad:	8b 55 08             	mov    0x8(%ebp),%edx
c00315b0:	89 d0                	mov    %edx,%eax
c00315b2:	01 c0                	add    %eax,%eax
c00315b4:	01 d0                	add    %edx,%eax
c00315b6:	c1 e0 02             	shl    $0x2,%eax
c00315b9:	01 d8                	add    %ebx,%eax
c00315bb:	83 c0 08             	add    $0x8,%eax
c00315be:	89 08                	mov    %ecx,(%eax)
c00315c0:	8b 45 10             	mov    0x10(%ebp),%eax
c00315c3:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00315c6:	5b                   	pop    %ebx
c00315c7:	5e                   	pop    %esi
c00315c8:	5d                   	pop    %ebp
c00315c9:	c3                   	ret    

c00315ca <fs_lseek>:
c00315ca:	55                   	push   %ebp
c00315cb:	89 e5                	mov    %esp,%ebp
c00315cd:	56                   	push   %esi
c00315ce:	53                   	push   %ebx
c00315cf:	83 ec 10             	sub    $0x10,%esp
c00315d2:	e8 17 ec ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c00315d7:	81 c3 29 aa 00 00    	add    $0xaa29,%ebx
c00315dd:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00315e1:	7e 08                	jle    c00315eb <fs_lseek+0x21>
c00315e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00315e6:	83 f8 1b             	cmp    $0x1b,%eax
c00315e9:	76 2f                	jbe    c003161a <fs_lseek+0x50>
c00315eb:	83 ec 0c             	sub    $0xc,%esp
c00315ee:	8d 83 86 d1 ff ff    	lea    -0x2e7a(%ebx),%eax
c00315f4:	50                   	push   %eax
c00315f5:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c00315fb:	50                   	push   %eax
c00315fc:	6a 6a                	push   $0x6a
c00315fe:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031604:	50                   	push   %eax
c0031605:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c003160b:	50                   	push   %eax
c003160c:	e8 89 eb ff ff       	call   c003019a <printk>
c0031611:	83 c4 20             	add    $0x20,%esp
c0031614:	b8 01 00 00 00       	mov    $0x1,%eax
c0031619:	82 c7 c1             	add    $0xc1,%bh
c003161c:	60                   	pusha  
c003161d:	f0 06                	lock push %es
c003161f:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0031626:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031629:	c1 e0 02             	shl    $0x2,%eax
c003162c:	01 c8                	add    %ecx,%eax
c003162e:	8a 00                	mov    (%eax),%al
c0031630:	3c 01                	cmp    $0x1,%al
c0031632:	74 2f                	je     c0031663 <fs_lseek+0x99>
c0031634:	83 ec 0c             	sub    $0xc,%esp
c0031637:	8d 83 53 d1 ff ff    	lea    -0x2ead(%ebx),%eax
c003163d:	50                   	push   %eax
c003163e:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c0031644:	50                   	push   %eax
c0031645:	6a 6b                	push   $0x6b
c0031647:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c003164d:	50                   	push   %eax
c003164e:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031654:	50                   	push   %eax
c0031655:	e8 40 eb ff ff       	call   c003019a <printk>
c003165a:	83 c4 20             	add    $0x20,%esp
c003165d:	b8 01 00 00 00       	mov    $0x1,%eax
c0031662:	82 c7 c1             	add    $0xc1,%bh
c0031665:	60                   	pusha  
c0031666:	f0 06                	lock push %es
c0031668:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003166f:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031672:	c1 e0 02             	shl    $0x2,%eax
c0031675:	01 c8                	add    %ecx,%eax
c0031677:	83 c0 04             	add    $0x4,%eax
c003167a:	8b 00                	mov    (%eax),%eax
c003167c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003167f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031682:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c0031688:	89 d0                	mov    %edx,%eax
c003168a:	01 c0                	add    %eax,%eax
c003168c:	01 d0                	add    %edx,%eax
c003168e:	c1 e0 02             	shl    $0x2,%eax
c0031691:	01 c8                	add    %ecx,%eax
c0031693:	8b 00                	mov    (%eax),%eax
c0031695:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031698:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003169e:	8b 55 08             	mov    0x8(%ebp),%edx
c00316a1:	89 d0                	mov    %edx,%eax
c00316a3:	01 c0                	add    %eax,%eax
c00316a5:	01 d0                	add    %edx,%eax
c00316a7:	c1 e0 02             	shl    $0x2,%eax
c00316aa:	01 c8                	add    %ecx,%eax
c00316ac:	83 c0 08             	add    $0x8,%eax
c00316af:	8b 10                	mov    (%eax),%edx
c00316b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00316b4:	39 c2                	cmp    %eax,%edx
c00316b6:	76 2f                	jbe    c00316e7 <fs_lseek+0x11d>
c00316b8:	83 ec 0c             	sub    $0xc,%esp
c00316bb:	8d 83 a4 d1 ff ff    	lea    -0x2e5c(%ebx),%eax
c00316c1:	50                   	push   %eax
c00316c2:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c00316c8:	50                   	push   %eax
c00316c9:	6a 6e                	push   $0x6e
c00316cb:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00316d1:	50                   	push   %eax
c00316d2:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00316d8:	50                   	push   %eax
c00316d9:	e8 bc ea ff ff       	call   c003019a <printk>
c00316de:	83 c4 20             	add    $0x20,%esp
c00316e1:	b8 01 00 00 00       	mov    $0x1,%eax
c00316e6:	82 8b 45 10 83 f8 01 	orb    $0x1,-0x77cefbb(%ebx)
c00316ed:	74 72                	je     c0031761 <fs_lseek+0x197>
c00316ef:	83 f8 02             	cmp    $0x2,%eax
c00316f2:	0f 84 0e 01 00 00    	je     c0031806 <fs_lseek+0x23c>
c00316f8:	85 c0                	test   %eax,%eax
c00316fa:	0f 85 93 01 00 00    	jne    c0031893 <fs_lseek+0x2c9>
c0031700:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
c0031704:	78 08                	js     c003170e <fs_lseek+0x144>
c0031706:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031709:	3b 45 f0             	cmp    -0x10(%ebp),%eax
c003170c:	7e 2f                	jle    c003173d <fs_lseek+0x173>
c003170e:	83 ec 0c             	sub    $0xc,%esp
c0031711:	8d 83 dc d1 ff ff    	lea    -0x2e24(%ebx),%eax
c0031717:	50                   	push   %eax
c0031718:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c003171e:	50                   	push   %eax
c003171f:	6a 71                	push   $0x71
c0031721:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031727:	50                   	push   %eax
c0031728:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c003172e:	50                   	push   %eax
c003172f:	e8 66 ea ff ff       	call   c003019a <printk>
c0031734:	83 c4 20             	add    $0x20,%esp
c0031737:	b8 01 00 00 00       	mov    $0x1,%eax
c003173c:	82 8b 55 0c c7 c3 60 	orb    $0x60,-0x3c38f3ab(%ebx)
c0031743:	f0 06                	lock push %es
c0031745:	c0 8b 4d 08 89 c8 01 	rorb   $0x1,-0x3776f7b3(%ebx)
c003174c:	c0 01 c8             	rolb   $0xc8,(%ecx)
c003174f:	c1 e0 02             	shl    $0x2,%eax
c0031752:	01 d8                	add    %ebx,%eax
c0031754:	83 c0 08             	add    $0x8,%eax
c0031757:	89 10                	mov    %edx,(%eax)
c0031759:	8b 45 0c             	mov    0xc(%ebp),%eax
c003175c:	e9 66 01 00 00       	jmp    c00318c7 <fs_lseek+0x2fd>
c0031761:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0031767:	8b 55 08             	mov    0x8(%ebp),%edx
c003176a:	89 d0                	mov    %edx,%eax
c003176c:	01 c0                	add    %eax,%eax
c003176e:	01 d0                	add    %edx,%eax
c0031770:	c1 e0 02             	shl    $0x2,%eax
c0031773:	01 c8                	add    %ecx,%eax
c0031775:	83 c0 08             	add    $0x8,%eax
c0031778:	8b 10                	mov    (%eax),%edx
c003177a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003177d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0031780:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0031786:	8b 55 08             	mov    0x8(%ebp),%edx
c0031789:	89 d0                	mov    %edx,%eax
c003178b:	01 c0                	add    %eax,%eax
c003178d:	01 d0                	add    %edx,%eax
c003178f:	c1 e0 02             	shl    $0x2,%eax
c0031792:	01 f0                	add    %esi,%eax
c0031794:	83 c0 08             	add    $0x8,%eax
c0031797:	89 08                	mov    %ecx,(%eax)
c0031799:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003179f:	8b 55 08             	mov    0x8(%ebp),%edx
c00317a2:	89 d0                	mov    %edx,%eax
c00317a4:	01 c0                	add    %eax,%eax
c00317a6:	01 d0                	add    %edx,%eax
c00317a8:	c1 e0 02             	shl    $0x2,%eax
c00317ab:	01 c8                	add    %ecx,%eax
c00317ad:	83 c0 08             	add    $0x8,%eax
c00317b0:	8b 10                	mov    (%eax),%edx
c00317b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317b5:	39 c2                	cmp    %eax,%edx
c00317b7:	76 2f                	jbe    c00317e8 <fs_lseek+0x21e>
c00317b9:	83 ec 0c             	sub    $0xc,%esp
c00317bc:	8d 83 a4 d1 ff ff    	lea    -0x2e5c(%ebx),%eax
c00317c2:	50                   	push   %eax
c00317c3:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c00317c9:	50                   	push   %eax
c00317ca:	6a 76                	push   $0x76
c00317cc:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00317d2:	50                   	push   %eax
c00317d3:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00317d9:	50                   	push   %eax
c00317da:	e8 bb e9 ff ff       	call   c003019a <printk>
c00317df:	83 c4 20             	add    $0x20,%esp
c00317e2:	b8 01 00 00 00       	mov    $0x1,%eax
c00317e7:	82 c7 c1             	add    $0xc1,%bh
c00317ea:	60                   	pusha  
c00317eb:	f0 06                	lock push %es
c00317ed:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00317f4:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00317f7:	c1 e0 02             	shl    $0x2,%eax
c00317fa:	01 c8                	add    %ecx,%eax
c00317fc:	83 c0 08             	add    $0x8,%eax
c00317ff:	8b 00                	mov    (%eax),%eax
c0031801:	e9 c1 00 00 00       	jmp    c00318c7 <fs_lseek+0x2fd>
c0031806:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0031809:	8b 45 0c             	mov    0xc(%ebp),%eax
c003180c:	01 d0                	add    %edx,%eax
c003180e:	89 c1                	mov    %eax,%ecx
c0031810:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0031816:	8b 55 08             	mov    0x8(%ebp),%edx
c0031819:	89 d0                	mov    %edx,%eax
c003181b:	01 c0                	add    %eax,%eax
c003181d:	01 d0                	add    %edx,%eax
c003181f:	c1 e0 02             	shl    $0x2,%eax
c0031822:	01 f0                	add    %esi,%eax
c0031824:	83 c0 08             	add    $0x8,%eax
c0031827:	89 08                	mov    %ecx,(%eax)
c0031829:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003182f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031832:	89 d0                	mov    %edx,%eax
c0031834:	01 c0                	add    %eax,%eax
c0031836:	01 d0                	add    %edx,%eax
c0031838:	c1 e0 02             	shl    $0x2,%eax
c003183b:	01 c8                	add    %ecx,%eax
c003183d:	83 c0 08             	add    $0x8,%eax
c0031840:	8b 10                	mov    (%eax),%edx
c0031842:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031845:	39 c2                	cmp    %eax,%edx
c0031847:	76 2f                	jbe    c0031878 <fs_lseek+0x2ae>
c0031849:	83 ec 0c             	sub    $0xc,%esp
c003184c:	8d 83 a4 d1 ff ff    	lea    -0x2e5c(%ebx),%eax
c0031852:	50                   	push   %eax
c0031853:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c0031859:	50                   	push   %eax
c003185a:	6a 7a                	push   $0x7a
c003185c:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031862:	50                   	push   %eax
c0031863:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031869:	50                   	push   %eax
c003186a:	e8 2b e9 ff ff       	call   c003019a <printk>
c003186f:	83 c4 20             	add    $0x20,%esp
c0031872:	b8 01 00 00 00       	mov    $0x1,%eax
c0031877:	82 c7 c1             	add    $0xc1,%bh
c003187a:	60                   	pusha  
c003187b:	f0 06                	lock push %es
c003187d:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0031884:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0031887:	c1 e0 02             	shl    $0x2,%eax
c003188a:	01 c8                	add    %ecx,%eax
c003188c:	83 c0 08             	add    $0x8,%eax
c003188f:	8b 00                	mov    (%eax),%eax
c0031891:	eb 34                	jmp    c00318c7 <fs_lseek+0x2fd>
c0031893:	83 ec 0c             	sub    $0xc,%esp
c0031896:	8d 83 df d0 ff ff    	lea    -0x2f21(%ebx),%eax
c003189c:	50                   	push   %eax
c003189d:	8d 83 1c d2 ff ff    	lea    -0x2de4(%ebx),%eax
c00318a3:	50                   	push   %eax
c00318a4:	6a 7d                	push   $0x7d
c00318a6:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c00318ac:	50                   	push   %eax
c00318ad:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c00318b3:	50                   	push   %eax
c00318b4:	e8 e1 e8 ff ff       	call   c003019a <printk>
c00318b9:	83 c4 20             	add    $0x20,%esp
c00318bc:	b8 01 00 00 00       	mov    $0x1,%eax
c00318c1:	82 b8 ff ff ff ff 8d 	cmpb   $0x8d,-0x1(%eax)
c00318c8:	65 f8                	gs clc 
c00318ca:	5b                   	pop    %ebx
c00318cb:	5e                   	pop    %esi
c00318cc:	5d                   	pop    %ebp
c00318cd:	c3                   	ret    

c00318ce <fs_close>:
c00318ce:	55                   	push   %ebp
c00318cf:	89 e5                	mov    %esp,%ebp
c00318d1:	53                   	push   %ebx
c00318d2:	83 ec 04             	sub    $0x4,%esp
c00318d5:	e8 14 e9 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c00318da:	81 c3 26 a7 00 00    	add    $0xa726,%ebx
c00318e0:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00318e4:	7e 08                	jle    c00318ee <fs_close+0x20>
c00318e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00318e9:	83 f8 1b             	cmp    $0x1b,%eax
c00318ec:	76 32                	jbe    c0031920 <fs_close+0x52>
c00318ee:	83 ec 0c             	sub    $0xc,%esp
c00318f1:	8d 83 86 d1 ff ff    	lea    -0x2e7a(%ebx),%eax
c00318f7:	50                   	push   %eax
c00318f8:	8d 83 28 d2 ff ff    	lea    -0x2dd8(%ebx),%eax
c00318fe:	50                   	push   %eax
c00318ff:	68 83 00 00 00       	push   $0x83
c0031904:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c003190a:	50                   	push   %eax
c003190b:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c0031911:	50                   	push   %eax
c0031912:	e8 83 e8 ff ff       	call   c003019a <printk>
c0031917:	83 c4 20             	add    $0x20,%esp
c003191a:	b8 01 00 00 00       	mov    $0x1,%eax
c003191f:	82 c7 c1             	add    $0xc1,%bh
c0031922:	60                   	pusha  
c0031923:	f0 06                	lock push %es
c0031925:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003192c:	c0 01 d0             	rolb   $0xd0,(%ecx)
c003192f:	c1 e0 02             	shl    $0x2,%eax
c0031932:	01 c8                	add    %ecx,%eax
c0031934:	8a 00                	mov    (%eax),%al
c0031936:	3c 01                	cmp    $0x1,%al
c0031938:	74 32                	je     c003196c <fs_close+0x9e>
c003193a:	83 ec 0c             	sub    $0xc,%esp
c003193d:	8d 83 53 d1 ff ff    	lea    -0x2ead(%ebx),%eax
c0031943:	50                   	push   %eax
c0031944:	8d 83 28 d2 ff ff    	lea    -0x2dd8(%ebx),%eax
c003194a:	50                   	push   %eax
c003194b:	68 84 00 00 00       	push   $0x84
c0031950:	8d 83 e1 d0 ff ff    	lea    -0x2f1f(%ebx),%eax
c0031956:	50                   	push   %eax
c0031957:	8d 83 f0 d0 ff ff    	lea    -0x2f10(%ebx),%eax
c003195d:	50                   	push   %eax
c003195e:	e8 37 e8 ff ff       	call   c003019a <printk>
c0031963:	83 c4 20             	add    $0x20,%esp
c0031966:	b8 01 00 00 00       	mov    $0x1,%eax
c003196b:	82 c7 c1             	add    $0xc1,%bh
c003196e:	60                   	pusha  
c003196f:	f0 06                	lock push %es
c0031971:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0031978:	c0 01 d0             	rolb   $0xd0,(%ecx)
c003197b:	c1 e0 02             	shl    $0x2,%eax
c003197e:	01 c8                	add    %ecx,%eax
c0031980:	c6 00 00             	movb   $0x0,(%eax)
c0031983:	b8 00 00 00 00       	mov    $0x0,%eax
c0031988:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003198b:	c9                   	leave  
c003198c:	c3                   	ret    

c003198d <read_cr0>:
c003198d:	55                   	push   %ebp
c003198e:	89 e5                	mov    %esp,%ebp
c0031990:	83 ec 10             	sub    $0x10,%esp
c0031993:	e8 fe e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031998:	05 68 a6 00 00       	add    $0xa668,%eax
c003199d:	0f 20 c0             	mov    %cr0,%eax
c00319a0:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00319a3:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00319a6:	c9                   	leave  
c00319a7:	c3                   	ret    

c00319a8 <write_cr0>:
c00319a8:	55                   	push   %ebp
c00319a9:	89 e5                	mov    %esp,%ebp
c00319ab:	e8 e6 e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00319b0:	05 50 a6 00 00       	add    $0xa650,%eax
c00319b5:	8b 45 08             	mov    0x8(%ebp),%eax
c00319b8:	0f 22 c0             	mov    %eax,%cr0
c00319bb:	90                   	nop
c00319bc:	5d                   	pop    %ebp
c00319bd:	c3                   	ret    

c00319be <write_cr3>:
c00319be:	55                   	push   %ebp
c00319bf:	89 e5                	mov    %esp,%ebp
c00319c1:	e8 d0 e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00319c6:	05 3a a6 00 00       	add    $0xa63a,%eax
c00319cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00319ce:	0f 22 d8             	mov    %eax,%cr3
c00319d1:	90                   	nop
c00319d2:	5d                   	pop    %ebp
c00319d3:	c3                   	ret    

c00319d4 <write_gdtr>:
c00319d4:	55                   	push   %ebp
c00319d5:	89 e5                	mov    %esp,%ebp
c00319d7:	e8 ba e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00319dc:	05 24 a6 00 00       	add    $0xa624,%eax
c00319e1:	8b 55 0c             	mov    0xc(%ebp),%edx
c00319e4:	4a                   	dec    %edx
c00319e5:	66 89 90 88 1e 01 00 	mov    %dx,0x11e88(%eax)
c00319ec:	8b 55 08             	mov    0x8(%ebp),%edx
c00319ef:	66 89 90 8a 1e 01 00 	mov    %dx,0x11e8a(%eax)
c00319f6:	8b 55 08             	mov    0x8(%ebp),%edx
c00319f9:	c1 ea 10             	shr    $0x10,%edx
c00319fc:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c0031a03:	8d 80 88 1e 01 00    	lea    0x11e88(%eax),%eax
c0031a09:	0f 01 10             	lgdtl  (%eax)
c0031a0c:	90                   	nop
c0031a0d:	5d                   	pop    %ebp
c0031a0e:	c3                   	ret    

c0031a0f <get_kpdir>:
c0031a0f:	55                   	push   %ebp
c0031a10:	89 e5                	mov    %esp,%ebp
c0031a12:	e8 7f e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031a17:	05 e9 a5 00 00       	add    $0xa5e9,%eax
c0031a1c:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031a22:	5d                   	pop    %ebp
c0031a23:	c3                   	ret    

c0031a24 <init_page>:
c0031a24:	55                   	push   %ebp
c0031a25:	89 e5                	mov    %esp,%ebp
c0031a27:	53                   	push   %ebx
c0031a28:	83 ec 24             	sub    $0x24,%esp
c0031a2b:	e8 66 e7 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031a30:	05 d0 a5 00 00       	add    $0xa5d0,%eax
c0031a35:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c0031a3b:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031a41:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031a44:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c0031a4a:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031a50:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031a53:	83 ec 04             	sub    $0x4,%esp
c0031a56:	68 00 10 00 00       	push   $0x1000
c0031a5b:	6a 00                	push   $0x0
c0031a5d:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031a60:	89 c3                	mov    %eax,%ebx
c0031a62:	e8 15 0b 00 00       	call   c003257c <memset>
c0031a67:	83 c4 10             	add    $0x10,%esp
c0031a6a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031a71:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031a78:	eb 6e                	jmp    c0031ae8 <init_page+0xc4>
c0031a7a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031a7d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031a84:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031a87:	01 d0                	add    %edx,%eax
c0031a89:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031a8c:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031a92:	83 ca 07             	or     $0x7,%edx
c0031a95:	89 10                	mov    %edx,(%eax)
c0031a97:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031a9a:	05 00 03 00 00       	add    $0x300,%eax
c0031a9f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031aa6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031aa9:	01 d0                	add    %edx,%eax
c0031aab:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031aae:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031ab4:	83 ca 07             	or     $0x7,%edx
c0031ab7:	89 10                	mov    %edx,(%eax)
c0031ab9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031ac0:	eb 1a                	jmp    c0031adc <init_page+0xb8>
c0031ac2:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031ac5:	c1 e0 0c             	shl    $0xc,%eax
c0031ac8:	83 c8 07             	or     $0x7,%eax
c0031acb:	89 c2                	mov    %eax,%edx
c0031acd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031ad0:	89 10                	mov    %edx,(%eax)
c0031ad2:	ff 45 e8             	incl   -0x18(%ebp)
c0031ad5:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031ad9:	ff 45 ec             	incl   -0x14(%ebp)
c0031adc:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031ae3:	76 dd                	jbe    c0031ac2 <init_page+0x9e>
c0031ae5:	ff 45 f0             	incl   -0x10(%ebp)
c0031ae8:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0031aec:	76 8c                	jbe    c0031a7a <init_page+0x56>
c0031aee:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0031af5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031af8:	c1 e8 0c             	shr    $0xc,%eax
c0031afb:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031b00:	c1 e0 0c             	shl    $0xc,%eax
c0031b03:	89 c2                	mov    %eax,%edx
c0031b05:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031b08:	25 ff 0f 00 00       	and    $0xfff,%eax
c0031b0d:	09 d0                	or     %edx,%eax
c0031b0f:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b12:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031b15:	83 ec 0c             	sub    $0xc,%esp
c0031b18:	50                   	push   %eax
c0031b19:	e8 a0 fe ff ff       	call   c00319be <write_cr3>
c0031b1e:	83 c4 10             	add    $0x10,%esp
c0031b21:	e8 67 fe ff ff       	call   c003198d <read_cr0>
c0031b26:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031b29:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031b2c:	83 c8 80             	or     $0xffffff80,%eax
c0031b2f:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031b32:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031b35:	83 ec 0c             	sub    $0xc,%esp
c0031b38:	50                   	push   %eax
c0031b39:	e8 6a fe ff ff       	call   c00319a8 <write_cr0>
c0031b3e:	83 c4 10             	add    $0x10,%esp
c0031b41:	90                   	nop
c0031b42:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b45:	c9                   	leave  
c0031b46:	c3                   	ret    

c0031b47 <set_segment>:
c0031b47:	55                   	push   %ebp
c0031b48:	89 e5                	mov    %esp,%ebp
c0031b4a:	e8 47 e6 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031b4f:	05 b1 a4 00 00       	add    $0xa4b1,%eax
c0031b54:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b57:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031b5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b5f:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031b65:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b68:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031b6c:	8b 45 10             	mov    0x10(%ebp),%eax
c0031b6f:	83 e0 0f             	and    $0xf,%eax
c0031b72:	88 c2                	mov    %al,%dl
c0031b74:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b77:	88 d1                	mov    %dl,%cl
c0031b79:	83 e1 0f             	and    $0xf,%ecx
c0031b7c:	8a 50 05             	mov    0x5(%eax),%dl
c0031b7f:	83 e2 f0             	and    $0xfffffff0,%edx
c0031b82:	09 ca                	or     %ecx,%edx
c0031b84:	88 50 05             	mov    %dl,0x5(%eax)
c0031b87:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b8a:	8a 50 05             	mov    0x5(%eax),%dl
c0031b8d:	83 ca 10             	or     $0x10,%edx
c0031b90:	88 50 05             	mov    %dl,0x5(%eax)
c0031b93:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031b96:	83 e0 03             	and    $0x3,%eax
c0031b99:	88 c2                	mov    %al,%dl
c0031b9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b9e:	83 e2 03             	and    $0x3,%edx
c0031ba1:	88 d1                	mov    %dl,%cl
c0031ba3:	c1 e1 05             	shl    $0x5,%ecx
c0031ba6:	8a 50 05             	mov    0x5(%eax),%dl
c0031ba9:	83 e2 9f             	and    $0xffffff9f,%edx
c0031bac:	09 ca                	or     %ecx,%edx
c0031bae:	88 50 05             	mov    %dl,0x5(%eax)
c0031bb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bb4:	8a 50 05             	mov    0x5(%eax),%dl
c0031bb7:	83 ca 80             	or     $0xffffff80,%edx
c0031bba:	88 50 05             	mov    %dl,0x5(%eax)
c0031bbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bc0:	8a 50 06             	mov    0x6(%eax),%dl
c0031bc3:	83 ca 0f             	or     $0xf,%edx
c0031bc6:	88 50 06             	mov    %dl,0x6(%eax)
c0031bc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bcc:	8a 50 06             	mov    0x6(%eax),%dl
c0031bcf:	83 e2 ef             	and    $0xffffffef,%edx
c0031bd2:	88 50 06             	mov    %dl,0x6(%eax)
c0031bd5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bd8:	8a 50 06             	mov    0x6(%eax),%dl
c0031bdb:	83 e2 df             	and    $0xffffffdf,%edx
c0031bde:	88 50 06             	mov    %dl,0x6(%eax)
c0031be1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031be4:	8a 50 06             	mov    0x6(%eax),%dl
c0031be7:	83 ca 40             	or     $0x40,%edx
c0031bea:	88 50 06             	mov    %dl,0x6(%eax)
c0031bed:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bf0:	8a 50 06             	mov    0x6(%eax),%dl
c0031bf3:	83 ca 80             	or     $0xffffff80,%edx
c0031bf6:	88 50 06             	mov    %dl,0x6(%eax)
c0031bf9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bfc:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031c00:	90                   	nop
c0031c01:	5d                   	pop    %ebp
c0031c02:	c3                   	ret    

c0031c03 <init_segment>:
c0031c03:	55                   	push   %ebp
c0031c04:	89 e5                	mov    %esp,%ebp
c0031c06:	53                   	push   %ebx
c0031c07:	83 ec 04             	sub    $0x4,%esp
c0031c0a:	e8 df e5 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031c0f:	81 c3 f1 a3 00 00    	add    $0xa3f1,%ebx
c0031c15:	83 ec 04             	sub    $0x4,%esp
c0031c18:	6a 18                	push   $0x18
c0031c1a:	6a 00                	push   $0x0
c0031c1c:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031c22:	50                   	push   %eax
c0031c23:	e8 54 09 00 00       	call   c003257c <memset>
c0031c28:	83 c4 10             	add    $0x10,%esp
c0031c2b:	83 ec 04             	sub    $0x4,%esp
c0031c2e:	6a 0a                	push   $0xa
c0031c30:	6a 00                	push   $0x0
c0031c32:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031c38:	8d 40 08             	lea    0x8(%eax),%eax
c0031c3b:	50                   	push   %eax
c0031c3c:	e8 06 ff ff ff       	call   c0031b47 <set_segment>
c0031c41:	83 c4 10             	add    $0x10,%esp
c0031c44:	83 ec 04             	sub    $0x4,%esp
c0031c47:	6a 02                	push   $0x2
c0031c49:	6a 00                	push   $0x0
c0031c4b:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031c51:	8d 40 10             	lea    0x10(%eax),%eax
c0031c54:	50                   	push   %eax
c0031c55:	e8 ed fe ff ff       	call   c0031b47 <set_segment>
c0031c5a:	83 c4 10             	add    $0x10,%esp
c0031c5d:	83 ec 08             	sub    $0x8,%esp
c0031c60:	6a 18                	push   $0x18
c0031c62:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031c68:	50                   	push   %eax
c0031c69:	e8 66 fd ff ff       	call   c00319d4 <write_gdtr>
c0031c6e:	83 c4 10             	add    $0x10,%esp
c0031c71:	90                   	nop
c0031c72:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031c75:	c9                   	leave  
c0031c76:	c3                   	ret    

c0031c77 <create_video_mapping>:
c0031c77:	55                   	push   %ebp
c0031c78:	89 e5                	mov    %esp,%ebp
c0031c7a:	53                   	push   %ebx
c0031c7b:	83 ec 14             	sub    $0x14,%esp
c0031c7e:	e8 6b e5 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031c83:	81 c3 7d a3 00 00    	add    $0xa37d,%ebx
c0031c89:	e8 46 01 00 00       	call   c0031dd4 <get_updir>
c0031c8e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031c91:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031c98:	eb 25                	jmp    c0031cbf <create_video_mapping+0x48>
c0031c9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031c9d:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
c0031ca3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031ca6:	05 a0 00 00 00       	add    $0xa0,%eax
c0031cab:	c1 e0 0c             	shl    $0xc,%eax
c0031cae:	83 c8 07             	or     $0x7,%eax
c0031cb1:	89 c1                	mov    %eax,%ecx
c0031cb3:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031cb9:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
c0031cbc:	ff 45 f4             	incl   -0xc(%ebp)
c0031cbf:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
c0031cc3:	7e d5                	jle    c0031c9a <create_video_mapping+0x23>
c0031cc5:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031ccb:	05 00 00 00 40       	add    $0x40000000,%eax
c0031cd0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031cd5:	83 c8 07             	or     $0x7,%eax
c0031cd8:	89 c2                	mov    %eax,%edx
c0031cda:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031cdd:	89 10                	mov    %edx,(%eax)
c0031cdf:	90                   	nop
c0031ce0:	83 c4 14             	add    $0x14,%esp
c0031ce3:	5b                   	pop    %ebx
c0031ce4:	5d                   	pop    %ebp
c0031ce5:	c3                   	ret    

c0031ce6 <video_mapping_write_test>:
c0031ce6:	55                   	push   %ebp
c0031ce7:	89 e5                	mov    %esp,%ebp
c0031ce9:	83 ec 10             	sub    $0x10,%esp
c0031cec:	e8 a5 e4 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031cf1:	05 0f a3 00 00       	add    $0xa30f,%eax
c0031cf6:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031cfd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031d04:	eb 17                	jmp    c0031d1d <video_mapping_write_test+0x37>
c0031d06:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031d09:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031d10:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031d13:	01 c2                	add    %eax,%edx
c0031d15:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031d18:	89 02                	mov    %eax,(%edx)
c0031d1a:	ff 45 fc             	incl   -0x4(%ebp)
c0031d1d:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031d24:	7e e0                	jle    c0031d06 <video_mapping_write_test+0x20>
c0031d26:	90                   	nop
c0031d27:	c9                   	leave  
c0031d28:	c3                   	ret    

c0031d29 <video_mapping_read_test>:
c0031d29:	55                   	push   %ebp
c0031d2a:	89 e5                	mov    %esp,%ebp
c0031d2c:	53                   	push   %ebx
c0031d2d:	83 ec 14             	sub    $0x14,%esp
c0031d30:	e8 b9 e4 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031d35:	81 c3 cb a2 00 00    	add    $0xa2cb,%ebx
c0031d3b:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031d42:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031d49:	eb 4a                	jmp    c0031d95 <video_mapping_read_test+0x6c>
c0031d4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d4e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031d55:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031d58:	01 d0                	add    %edx,%eax
c0031d5a:	8b 10                	mov    (%eax),%edx
c0031d5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d5f:	39 c2                	cmp    %eax,%edx
c0031d61:	74 2f                	je     c0031d92 <video_mapping_read_test+0x69>
c0031d63:	83 ec 0c             	sub    $0xc,%esp
c0031d66:	8d 83 34 d2 ff ff    	lea    -0x2dcc(%ebx),%eax
c0031d6c:	50                   	push   %eax
c0031d6d:	8d 83 a0 d2 ff ff    	lea    -0x2d60(%ebx),%eax
c0031d73:	50                   	push   %eax
c0031d74:	6a 26                	push   $0x26
c0031d76:	8d 83 40 d2 ff ff    	lea    -0x2dc0(%ebx),%eax
c0031d7c:	50                   	push   %eax
c0031d7d:	8d 83 54 d2 ff ff    	lea    -0x2dac(%ebx),%eax
c0031d83:	50                   	push   %eax
c0031d84:	e8 11 e4 ff ff       	call   c003019a <printk>
c0031d89:	83 c4 20             	add    $0x20,%esp
c0031d8c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d91:	82 ff 45             	cmp    $0x45,%bh
c0031d94:	f4                   	hlt    
c0031d95:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031d9c:	7e ad                	jle    c0031d4b <video_mapping_read_test+0x22>
c0031d9e:	90                   	nop
c0031d9f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031da2:	c9                   	leave  
c0031da3:	c3                   	ret    

c0031da4 <video_mapping_clear>:
c0031da4:	55                   	push   %ebp
c0031da5:	89 e5                	mov    %esp,%ebp
c0031da7:	53                   	push   %ebx
c0031da8:	83 ec 04             	sub    $0x4,%esp
c0031dab:	e8 e6 e3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031db0:	05 50 a2 00 00       	add    $0xa250,%eax
c0031db5:	83 ec 04             	sub    $0x4,%esp
c0031db8:	68 00 fa 00 00       	push   $0xfa00
c0031dbd:	6a 00                	push   $0x0
c0031dbf:	68 00 00 0a 00       	push   $0xa0000
c0031dc4:	89 c3                	mov    %eax,%ebx
c0031dc6:	e8 b1 07 00 00       	call   c003257c <memset>
c0031dcb:	83 c4 10             	add    $0x10,%esp
c0031dce:	90                   	nop
c0031dcf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031dd2:	c9                   	leave  
c0031dd3:	c3                   	ret    

c0031dd4 <get_updir>:
c0031dd4:	55                   	push   %ebp
c0031dd5:	89 e5                	mov    %esp,%ebp
c0031dd7:	e8 ba e3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031ddc:	05 24 a2 00 00       	add    $0xa224,%eax
c0031de1:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031de7:	5d                   	pop    %ebp
c0031de8:	c3                   	ret    

c0031de9 <get_ucr3>:
c0031de9:	55                   	push   %ebp
c0031dea:	89 e5                	mov    %esp,%ebp
c0031dec:	e8 a5 e3 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031df1:	05 0f a2 00 00       	add    $0xa20f,%eax
c0031df6:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031dfc:	8b 00                	mov    (%eax),%eax
c0031dfe:	5d                   	pop    %ebp
c0031dff:	c3                   	ret    

c0031e00 <mm_brk>:
c0031e00:	55                   	push   %ebp
c0031e01:	89 e5                	mov    %esp,%ebp
c0031e03:	53                   	push   %ebx
c0031e04:	83 ec 04             	sub    $0x4,%esp
c0031e07:	e8 e2 e3 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031e0c:	81 c3 f4 a1 00 00    	add    $0xa1f4,%ebx
c0031e12:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031e18:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031e1b:	76 22                	jbe    c0031e3f <mm_brk+0x3f>
c0031e1d:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031e23:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e26:	29 c2                	sub    %eax,%edx
c0031e28:	89 d0                	mov    %edx,%eax
c0031e2a:	89 c2                	mov    %eax,%edx
c0031e2c:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031e32:	83 ec 08             	sub    $0x8,%esp
c0031e35:	52                   	push   %edx
c0031e36:	50                   	push   %eax
c0031e37:	e8 64 04 00 00       	call   c00322a0 <mm_malloc>
c0031e3c:	83 c4 10             	add    $0x10,%esp
c0031e3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e42:	89 83 90 1e 01 00    	mov    %eax,0x11e90(%ebx)
c0031e48:	90                   	nop
c0031e49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031e4c:	c9                   	leave  
c0031e4d:	c3                   	ret    

c0031e4e <init_mm>:
c0031e4e:	55                   	push   %ebp
c0031e4f:	89 e5                	mov    %esp,%ebp
c0031e51:	53                   	push   %ebx
c0031e52:	83 ec 14             	sub    $0x14,%esp
c0031e55:	e8 94 e3 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031e5a:	81 c3 a6 a1 00 00    	add    $0xa1a6,%ebx
c0031e60:	e8 aa fb ff ff       	call   c0031a0f <get_kpdir>
c0031e65:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031e68:	83 ec 04             	sub    $0x4,%esp
c0031e6b:	68 00 10 00 00       	push   $0x1000
c0031e70:	6a 00                	push   $0x0
c0031e72:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031e78:	50                   	push   %eax
c0031e79:	e8 fe 06 00 00       	call   c003257c <memset>
c0031e7e:	83 c4 10             	add    $0x10,%esp
c0031e81:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031e84:	05 00 0c 00 00       	add    $0xc00,%eax
c0031e89:	83 ec 04             	sub    $0x4,%esp
c0031e8c:	68 80 00 00 00       	push   $0x80
c0031e91:	50                   	push   %eax
c0031e92:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031e98:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031e9e:	50                   	push   %eax
c0031e9f:	e8 90 06 00 00       	call   c0032534 <memcpy>
c0031ea4:	83 c4 10             	add    $0x10,%esp
c0031ea7:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031ead:	05 00 00 00 40       	add    $0x40000000,%eax
c0031eb2:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031eb7:	89 c2                	mov    %eax,%edx
c0031eb9:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031ebf:	89 10                	mov    %edx,(%eax)
c0031ec1:	90                   	nop
c0031ec2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031ec5:	c9                   	leave  
c0031ec6:	c3                   	ret    

c0031ec7 <write_cr3>:
c0031ec7:	55                   	push   %ebp
c0031ec8:	89 e5                	mov    %esp,%ebp
c0031eca:	e8 c7 e2 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0031ecf:	05 31 a1 00 00       	add    $0xa131,%eax
c0031ed4:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ed7:	0f 22 d8             	mov    %eax,%cr3
c0031eda:	90                   	nop
c0031edb:	5d                   	pop    %ebp
c0031edc:	c3                   	ret    

c0031edd <loader>:
c0031edd:	55                   	push   %ebp
c0031ede:	89 e5                	mov    %esp,%ebp
c0031ee0:	53                   	push   %ebx
c0031ee1:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c0031ee7:	e8 02 e3 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c0031eec:	81 c3 14 a1 00 00    	add    $0xa114,%ebx
c0031ef2:	83 ec 04             	sub    $0x4,%esp
c0031ef5:	68 00 10 00 00       	push   $0x1000
c0031efa:	6a 00                	push   $0x0
c0031efc:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0031f02:	50                   	push   %eax
c0031f03:	e8 f4 eb ff ff       	call   c0030afc <ide_read>
c0031f08:	83 c4 10             	add    $0x10,%esp
c0031f0b:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0031f11:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031f14:	8d 83 04 d3 ff ff    	lea    -0x2cfc(%ebx),%eax
c0031f1a:	50                   	push   %eax
c0031f1b:	6a 1b                	push   $0x1b
c0031f1d:	8d 83 b8 d2 ff ff    	lea    -0x2d48(%ebx),%eax
c0031f23:	50                   	push   %eax
c0031f24:	8d 83 c8 d2 ff ff    	lea    -0x2d38(%ebx),%eax
c0031f2a:	50                   	push   %eax
c0031f2b:	e8 6a e2 ff ff       	call   c003019a <printk>
c0031f30:	83 c4 10             	add    $0x10,%esp
c0031f33:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031f36:	8b 50 1c             	mov    0x1c(%eax),%edx
c0031f39:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031f3c:	01 d0                	add    %edx,%eax
c0031f3e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031f41:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031f44:	8b 40 2c             	mov    0x2c(%eax),%eax
c0031f47:	0f b7 c0             	movzwl %ax,%eax
c0031f4a:	c1 e0 05             	shl    $0x5,%eax
c0031f4d:	89 c2                	mov    %eax,%edx
c0031f4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f52:	01 d0                	add    %edx,%eax
c0031f54:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031f57:	eb 72                	jmp    c0031fcb <loader+0xee>
c0031f59:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f5c:	8b 00                	mov    (%eax),%eax
c0031f5e:	83 f8 01             	cmp    $0x1,%eax
c0031f61:	75 64                	jne    c0031fc7 <loader+0xea>
c0031f63:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f66:	8b 40 14             	mov    0x14(%eax),%eax
c0031f69:	89 c2                	mov    %eax,%edx
c0031f6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f6e:	8b 40 08             	mov    0x8(%eax),%eax
c0031f71:	83 ec 08             	sub    $0x8,%esp
c0031f74:	52                   	push   %edx
c0031f75:	50                   	push   %eax
c0031f76:	e8 25 03 00 00       	call   c00322a0 <mm_malloc>
c0031f7b:	83 c4 10             	add    $0x10,%esp
c0031f7e:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0031f81:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f84:	8b 50 10             	mov    0x10(%eax),%edx
c0031f87:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031f8a:	8b 40 04             	mov    0x4(%eax),%eax
c0031f8d:	83 ec 04             	sub    $0x4,%esp
c0031f90:	52                   	push   %edx
c0031f91:	50                   	push   %eax
c0031f92:	ff 75 e8             	pushl  -0x18(%ebp)
c0031f95:	e8 62 eb ff ff       	call   c0030afc <ide_read>
c0031f9a:	83 c4 10             	add    $0x10,%esp
c0031f9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031fa0:	8b 50 08             	mov    0x8(%eax),%edx
c0031fa3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031fa6:	8b 40 14             	mov    0x14(%eax),%eax
c0031fa9:	01 d0                	add    %edx,%eax
c0031fab:	48                   	dec    %eax
c0031fac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031faf:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c0031fb5:	8b 00                	mov    (%eax),%eax
c0031fb7:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0031fba:	73 0b                	jae    c0031fc7 <loader+0xea>
c0031fbc:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c0031fc2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0031fc5:	89 10                	mov    %edx,(%eax)
c0031fc7:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0031fcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031fce:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0031fd1:	72 86                	jb     c0031f59 <loader+0x7c>
c0031fd3:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031fd6:	8b 40 18             	mov    0x18(%eax),%eax
c0031fd9:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c0031fdf:	83 ec 08             	sub    $0x8,%esp
c0031fe2:	68 00 00 10 00       	push   $0x100000
c0031fe7:	68 00 00 f0 bf       	push   $0xbff00000
c0031fec:	e8 af 02 00 00       	call   c00322a0 <mm_malloc>
c0031ff1:	83 c4 10             	add    $0x10,%esp
c0031ff4:	e8 7e fc ff ff       	call   c0031c77 <create_video_mapping>
c0031ff9:	e8 eb fd ff ff       	call   c0031de9 <get_ucr3>
c0031ffe:	83 ec 0c             	sub    $0xc,%esp
c0032001:	50                   	push   %eax
c0032002:	e8 c0 fe ff ff       	call   c0031ec7 <write_cr3>
c0032007:	83 c4 10             	add    $0x10,%esp
c003200a:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c0032010:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0032013:	c9                   	leave  
c0032014:	c3                   	ret    

c0032015 <sti>:
c0032015:	55                   	push   %ebp
c0032016:	89 e5                	mov    %esp,%ebp
c0032018:	e8 79 e1 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c003201d:	05 e3 9f 00 00       	add    $0x9fe3,%eax
c0032022:	fb                   	sti    
c0032023:	90                   	nop
c0032024:	5d                   	pop    %ebp
c0032025:	c3                   	ret    

c0032026 <cli>:
c0032026:	55                   	push   %ebp
c0032027:	89 e5                	mov    %esp,%ebp
c0032029:	e8 68 e1 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c003202e:	05 d2 9f 00 00       	add    $0x9fd2,%eax
c0032033:	fa                   	cli    
c0032034:	90                   	nop
c0032035:	5d                   	pop    %ebp
c0032036:	c3                   	ret    

c0032037 <sys_brk>:
c0032037:	55                   	push   %ebp
c0032038:	89 e5                	mov    %esp,%ebp
c003203a:	53                   	push   %ebx
c003203b:	83 ec 04             	sub    $0x4,%esp
c003203e:	e8 53 e1 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0032043:	05 bd 9f 00 00       	add    $0x9fbd,%eax
c0032048:	8b 55 08             	mov    0x8(%ebp),%edx
c003204b:	8b 52 10             	mov    0x10(%edx),%edx
c003204e:	83 ec 0c             	sub    $0xc,%esp
c0032051:	52                   	push   %edx
c0032052:	89 c3                	mov    %eax,%ebx
c0032054:	e8 a7 fd ff ff       	call   c0031e00 <mm_brk>
c0032059:	83 c4 10             	add    $0x10,%esp
c003205c:	8b 45 08             	mov    0x8(%ebp),%eax
c003205f:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0032066:	90                   	nop
c0032067:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003206a:	c9                   	leave  
c003206b:	c3                   	ret    

c003206c <sys_open>:
c003206c:	55                   	push   %ebp
c003206d:	89 e5                	mov    %esp,%ebp
c003206f:	53                   	push   %ebx
c0032070:	83 ec 04             	sub    $0x4,%esp
c0032073:	e8 1e e1 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c0032078:	05 88 9f 00 00       	add    $0x9f88,%eax
c003207d:	8b 55 08             	mov    0x8(%ebp),%edx
c0032080:	8b 52 18             	mov    0x18(%edx),%edx
c0032083:	89 d1                	mov    %edx,%ecx
c0032085:	8b 55 08             	mov    0x8(%ebp),%edx
c0032088:	8b 52 10             	mov    0x10(%edx),%edx
c003208b:	83 ec 08             	sub    $0x8,%esp
c003208e:	51                   	push   %ecx
c003208f:	52                   	push   %edx
c0032090:	89 c3                	mov    %eax,%ebx
c0032092:	e8 f7 ef ff ff       	call   c003108e <fs_open>
c0032097:	83 c4 10             	add    $0x10,%esp
c003209a:	89 c2                	mov    %eax,%edx
c003209c:	8b 45 08             	mov    0x8(%ebp),%eax
c003209f:	89 50 1c             	mov    %edx,0x1c(%eax)
c00320a2:	90                   	nop
c00320a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00320a6:	c9                   	leave  
c00320a7:	c3                   	ret    

c00320a8 <sys_read>:
c00320a8:	55                   	push   %ebp
c00320a9:	89 e5                	mov    %esp,%ebp
c00320ab:	53                   	push   %ebx
c00320ac:	83 ec 04             	sub    $0x4,%esp
c00320af:	e8 e2 e0 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00320b4:	05 4c 9f 00 00       	add    $0x9f4c,%eax
c00320b9:	8b 55 08             	mov    0x8(%ebp),%edx
c00320bc:	8b 52 14             	mov    0x14(%edx),%edx
c00320bf:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00320c2:	8b 49 18             	mov    0x18(%ecx),%ecx
c00320c5:	89 cb                	mov    %ecx,%ebx
c00320c7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00320ca:	8b 49 10             	mov    0x10(%ecx),%ecx
c00320cd:	83 ec 04             	sub    $0x4,%esp
c00320d0:	52                   	push   %edx
c00320d1:	53                   	push   %ebx
c00320d2:	51                   	push   %ecx
c00320d3:	89 c3                	mov    %eax,%ebx
c00320d5:	e8 af f0 ff ff       	call   c0031189 <fs_read>
c00320da:	83 c4 10             	add    $0x10,%esp
c00320dd:	89 c2                	mov    %eax,%edx
c00320df:	8b 45 08             	mov    0x8(%ebp),%eax
c00320e2:	89 50 1c             	mov    %edx,0x1c(%eax)
c00320e5:	90                   	nop
c00320e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00320e9:	c9                   	leave  
c00320ea:	c3                   	ret    

c00320eb <sys_write>:
c00320eb:	55                   	push   %ebp
c00320ec:	89 e5                	mov    %esp,%ebp
c00320ee:	53                   	push   %ebx
c00320ef:	83 ec 04             	sub    $0x4,%esp
c00320f2:	e8 9f e0 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c00320f7:	05 09 9f 00 00       	add    $0x9f09,%eax
c00320fc:	8b 55 08             	mov    0x8(%ebp),%edx
c00320ff:	8b 52 14             	mov    0x14(%edx),%edx
c0032102:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0032105:	8b 49 18             	mov    0x18(%ecx),%ecx
c0032108:	89 cb                	mov    %ecx,%ebx
c003210a:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003210d:	8b 49 10             	mov    0x10(%ecx),%ecx
c0032110:	83 ec 04             	sub    $0x4,%esp
c0032113:	52                   	push   %edx
c0032114:	53                   	push   %ebx
c0032115:	51                   	push   %ecx
c0032116:	89 c3                	mov    %eax,%ebx
c0032118:	e8 8b f2 ff ff       	call   c00313a8 <fs_write>
c003211d:	83 c4 10             	add    $0x10,%esp
c0032120:	89 c2                	mov    %eax,%edx
c0032122:	8b 45 08             	mov    0x8(%ebp),%eax
c0032125:	89 50 1c             	mov    %edx,0x1c(%eax)
c0032128:	90                   	nop
c0032129:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003212c:	c9                   	leave  
c003212d:	c3                   	ret    

c003212e <sys_lseek>:
c003212e:	55                   	push   %ebp
c003212f:	89 e5                	mov    %esp,%ebp
c0032131:	53                   	push   %ebx
c0032132:	83 ec 04             	sub    $0x4,%esp
c0032135:	e8 5c e0 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c003213a:	05 c6 9e 00 00       	add    $0x9ec6,%eax
c003213f:	8b 55 08             	mov    0x8(%ebp),%edx
c0032142:	8b 52 14             	mov    0x14(%edx),%edx
c0032145:	89 d3                	mov    %edx,%ebx
c0032147:	8b 55 08             	mov    0x8(%ebp),%edx
c003214a:	8b 52 18             	mov    0x18(%edx),%edx
c003214d:	89 d1                	mov    %edx,%ecx
c003214f:	8b 55 08             	mov    0x8(%ebp),%edx
c0032152:	8b 52 10             	mov    0x10(%edx),%edx
c0032155:	83 ec 04             	sub    $0x4,%esp
c0032158:	53                   	push   %ebx
c0032159:	51                   	push   %ecx
c003215a:	52                   	push   %edx
c003215b:	89 c3                	mov    %eax,%ebx
c003215d:	e8 68 f4 ff ff       	call   c00315ca <fs_lseek>
c0032162:	83 c4 10             	add    $0x10,%esp
c0032165:	89 c2                	mov    %eax,%edx
c0032167:	8b 45 08             	mov    0x8(%ebp),%eax
c003216a:	89 50 1c             	mov    %edx,0x1c(%eax)
c003216d:	90                   	nop
c003216e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0032171:	c9                   	leave  
c0032172:	c3                   	ret    

c0032173 <sys_close>:
c0032173:	55                   	push   %ebp
c0032174:	89 e5                	mov    %esp,%ebp
c0032176:	53                   	push   %ebx
c0032177:	83 ec 04             	sub    $0x4,%esp
c003217a:	e8 17 e0 ff ff       	call   c0030196 <__x86.get_pc_thunk.ax>
c003217f:	05 81 9e 00 00       	add    $0x9e81,%eax
c0032184:	8b 55 08             	mov    0x8(%ebp),%edx
c0032187:	8b 52 10             	mov    0x10(%edx),%edx
c003218a:	83 ec 0c             	sub    $0xc,%esp
c003218d:	52                   	push   %edx
c003218e:	89 c3                	mov    %eax,%ebx
c0032190:	e8 39 f7 ff ff       	call   c00318ce <fs_close>
c0032195:	83 c4 10             	add    $0x10,%esp
c0032198:	89 c2                	mov    %eax,%edx
c003219a:	8b 45 08             	mov    0x8(%ebp),%eax
c003219d:	89 50 1c             	mov    %edx,0x1c(%eax)
c00321a0:	90                   	nop
c00321a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00321a4:	c9                   	leave  
c00321a5:	c3                   	ret    

c00321a6 <do_syscall>:
c00321a6:	55                   	push   %ebp
c00321a7:	89 e5                	mov    %esp,%ebp
c00321a9:	53                   	push   %ebx
c00321aa:	83 ec 04             	sub    $0x4,%esp
c00321ad:	e8 3c e0 ff ff       	call   c00301ee <__x86.get_pc_thunk.bx>
c00321b2:	81 c3 4e 9e 00 00    	add    $0x9e4e,%ebx
c00321b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00321bb:	8b 40 1c             	mov    0x1c(%eax),%eax
c00321be:	83 f8 2d             	cmp    $0x2d,%eax
c00321c1:	0f 87 98 00 00 00    	ja     c003225f <.L10>
c00321c7:	c1 e0 02             	shl    $0x2,%eax
c00321ca:	8b 84 18 7c d3 ff ff 	mov    -0x2c84(%eax,%ebx,1),%eax
c00321d1:	01 d8                	add    %ebx,%eax
c00321d3:	ff e0                	jmp    *%eax

c00321d5 <.L11>:
c00321d5:	e8 4c fe ff ff       	call   c0032026 <cli>
c00321da:	8b 45 08             	mov    0x8(%ebp),%eax
c00321dd:	8b 40 18             	mov    0x18(%eax),%eax
c00321e0:	89 c2                	mov    %eax,%edx
c00321e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00321e5:	8b 40 10             	mov    0x10(%eax),%eax
c00321e8:	83 ec 08             	sub    $0x8,%esp
c00321eb:	52                   	push   %edx
c00321ec:	50                   	push   %eax
c00321ed:	e8 4c e0 ff ff       	call   c003023e <add_irq_handle>
c00321f2:	83 c4 10             	add    $0x10,%esp
c00321f5:	e8 1b fe ff ff       	call   c0032015 <sti>
c00321fa:	e9 8f 00 00 00       	jmp    c003228e <.L10+0x2f>

c00321ff <.L18>:
c00321ff:	83 ec 0c             	sub    $0xc,%esp
c0032202:	ff 75 08             	pushl  0x8(%ebp)
c0032205:	e8 2d fe ff ff       	call   c0032037 <sys_brk>
c003220a:	83 c4 10             	add    $0x10,%esp
c003220d:	eb 7f                	jmp    c003228e <.L10+0x2f>

c003220f <.L15>:
c003220f:	83 ec 0c             	sub    $0xc,%esp
c0032212:	ff 75 08             	pushl  0x8(%ebp)
c0032215:	e8 52 fe ff ff       	call   c003206c <sys_open>
c003221a:	83 c4 10             	add    $0x10,%esp
c003221d:	eb 6f                	jmp    c003228e <.L10+0x2f>

c003221f <.L13>:
c003221f:	83 ec 0c             	sub    $0xc,%esp
c0032222:	ff 75 08             	pushl  0x8(%ebp)
c0032225:	e8 7e fe ff ff       	call   c00320a8 <sys_read>
c003222a:	83 c4 10             	add    $0x10,%esp
c003222d:	eb 5f                	jmp    c003228e <.L10+0x2f>

c003222f <.L14>:
c003222f:	83 ec 0c             	sub    $0xc,%esp
c0032232:	ff 75 08             	pushl  0x8(%ebp)
c0032235:	e8 b1 fe ff ff       	call   c00320eb <sys_write>
c003223a:	83 c4 10             	add    $0x10,%esp
c003223d:	eb 4f                	jmp    c003228e <.L10+0x2f>

c003223f <.L17>:
c003223f:	83 ec 0c             	sub    $0xc,%esp
c0032242:	ff 75 08             	pushl  0x8(%ebp)
c0032245:	e8 e4 fe ff ff       	call   c003212e <sys_lseek>
c003224a:	83 c4 10             	add    $0x10,%esp
c003224d:	eb 3f                	jmp    c003228e <.L10+0x2f>

c003224f <.L16>:
c003224f:	83 ec 0c             	sub    $0xc,%esp
c0032252:	ff 75 08             	pushl  0x8(%ebp)
c0032255:	e8 19 ff ff ff       	call   c0032173 <sys_close>
c003225a:	83 c4 10             	add    $0x10,%esp
c003225d:	eb 2f                	jmp    c003228e <.L10+0x2f>

c003225f <.L10>:
c003225f:	8b 45 08             	mov    0x8(%ebp),%eax
c0032262:	8b 40 1c             	mov    0x1c(%eax),%eax
c0032265:	83 ec 0c             	sub    $0xc,%esp
c0032268:	50                   	push   %eax
c0032269:	8d 83 34 d4 ff ff    	lea    -0x2bcc(%ebx),%eax
c003226f:	50                   	push   %eax
c0032270:	6a 35                	push   $0x35
c0032272:	8d 83 0c d3 ff ff    	lea    -0x2cf4(%ebx),%eax
c0032278:	50                   	push   %eax
c0032279:	8d 83 28 d3 ff ff    	lea    -0x2cd8(%ebx),%eax
c003227f:	50                   	push   %eax
c0032280:	e8 15 df ff ff       	call   c003019a <printk>
c0032285:	83 c4 20             	add    $0x20,%esp
c0032288:	b8 01 00 00 00       	mov    $0x1,%eax
c003228d:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)
c0032294:	66 90                	xchg   %ax,%ax
c0032296:	66 90                	xchg   %ax,%ax
c0032298:	66 90                	xchg   %ax,%ax
c003229a:	66 90                	xchg   %ax,%ax
c003229c:	66 90                	xchg   %ax,%ax
c003229e:	66 90                	xchg   %ax,%ax

c00322a0 <mm_malloc>:
c00322a0:	55                   	push   %ebp
c00322a1:	31 c0                	xor    %eax,%eax
c00322a3:	89 e5                	mov    %esp,%ebp
c00322a5:	57                   	push   %edi
c00322a6:	56                   	push   %esi
c00322a7:	53                   	push   %ebx
c00322a8:	83 ec 3c             	sub    $0x3c,%esp
c00322ab:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00322ae:	85 db                	test   %ebx,%ebx
c00322b0:	0f 8e 36 02 00 00    	jle    c00324ec <mm_malloc+0x24c>
c00322b6:	e8 19 fb ff ff       	call   c0031dd4 <get_updir>
c00322bb:	89 c6                	mov    %eax,%esi
c00322bd:	e8 27 fb ff ff       	call   c0031de9 <get_ucr3>
c00322c2:	8b 55 08             	mov    0x8(%ebp),%edx
c00322c5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c00322c9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c00322cc:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00322cf:	b8 00 10 00 00       	mov    $0x1000,%eax
c00322d4:	29 d0                	sub    %edx,%eax
c00322d6:	89 da                	mov    %ebx,%edx
c00322d8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c00322de:	01 d0                	add    %edx,%eax
c00322e0:	85 c0                	test   %eax,%eax
c00322e2:	0f 8e c0 00 00 00    	jle    c00323a8 <mm_malloc+0x108>
c00322e8:	8b 55 08             	mov    0x8(%ebp),%edx
c00322eb:	83 e8 01             	sub    $0x1,%eax
c00322ee:	89 f7                	mov    %esi,%edi
c00322f0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00322f5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c00322fc:	89 d3                	mov    %edx,%ebx
c00322fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0032301:	eb 51                	jmp    c0032354 <mm_malloc+0xb4>
c0032303:	90                   	nop
c0032304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032308:	8b 31                	mov    (%ecx),%esi
c003230a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0032310:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0032316:	89 d8                	mov    %ebx,%eax
c0032318:	c1 e8 0a             	shr    $0xa,%eax
c003231b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0032320:	01 c6                	add    %eax,%esi
c0032322:	f6 06 01             	testb  $0x1,(%esi)
c0032325:	75 22                	jne    c0032349 <mm_malloc+0xa9>
c0032327:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c003232c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0032331:	0f 8f c1 01 00 00    	jg     c00324f8 <mm_malloc+0x258>
c0032337:	89 c1                	mov    %eax,%ecx
c0032339:	83 c0 01             	add    $0x1,%eax
c003233c:	c1 e1 0c             	shl    $0xc,%ecx
c003233f:	83 c9 07             	or     $0x7,%ecx
c0032342:	89 0e                	mov    %ecx,(%esi)
c0032344:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0032349:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c003234f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0032352:	74 54                	je     c00323a8 <mm_malloc+0x108>
c0032354:	89 d8                	mov    %ebx,%eax
c0032356:	c1 e8 16             	shr    $0x16,%eax
c0032359:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c003235c:	f6 01 01             	testb  $0x1,(%ecx)
c003235f:	75 a7                	jne    c0032308 <mm_malloc+0x68>
c0032361:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0032366:	89 c6                	mov    %eax,%esi
c0032368:	83 c0 01             	add    $0x1,%eax
c003236b:	c1 e6 0c             	shl    $0xc,%esi
c003236e:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0032374:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0032379:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c003237f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0032384:	83 c8 07             	or     $0x7,%eax
c0032387:	89 01                	mov    %eax,(%ecx)
c0032389:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0032390:	00 
c0032391:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0032398:	00 
c0032399:	89 34 24             	mov    %esi,(%esp)
c003239c:	e8 db 01 00 00       	call   c003257c <memset>
c00323a1:	e9 70 ff ff ff       	jmp    c0032316 <mm_malloc+0x76>
c00323a6:	66 90                	xchg   %ax,%ax
c00323a8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00323ab:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00323ae:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c00323b4:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c00323ba:	c1 e8 16             	shr    $0x16,%eax
c00323bd:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c00323c0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c00323c6:	75 32                	jne    c00323fa <mm_malloc+0x15a>
c00323c8:	c7 44 24 10 63 94 03 	movl   $0xc0039463,0x10(%esp)
c00323cf:	c0 
c00323d0:	c7 44 24 0c ca 94 03 	movl   $0xc00394ca,0xc(%esp)
c00323d7:	c0 
c00323d8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c00323df:	00 
c00323e0:	c7 44 24 04 52 94 03 	movl   $0xc0039452,0x4(%esp)
c00323e7:	c0 
c00323e8:	c7 04 24 74 94 03 c0 	movl   $0xc0039474,(%esp)
c00323ef:	e8 a6 dd ff ff       	call   c003019a <printk>
c00323f4:	b8 01 00 00 00       	mov    $0x1,%eax
c00323f9:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0032400:	00 00                	add    %al,(%eax)
c0032402:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0032409:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0032410:	00 f6                	add    %dh,%dh
c0032412:	04 90                	add    $0x90,%al
c0032414:	01 75 32             	add    %esi,0x32(%ebp)
c0032417:	c7 44 24 10 6b 94 03 	movl   $0xc003946b,0x10(%esp)
c003241e:	c0 
c003241f:	c7 44 24 0c ca 94 03 	movl   $0xc00394ca,0xc(%esp)
c0032426:	c0 
c0032427:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c003242e:	00 
c003242f:	c7 44 24 04 52 94 03 	movl   $0xc0039452,0x4(%esp)
c0032436:	c0 
c0032437:	c7 04 24 74 94 03 c0 	movl   $0xc0039474,(%esp)
c003243e:	e8 57 dd ff ff       	call   c003019a <printk>
c0032443:	b8 01 00 00 00       	mov    $0x1,%eax
c0032448:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c003244f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0032452:	f6 c3 01             	test   $0x1,%bl
c0032455:	75 32                	jne    c0032489 <mm_malloc+0x1e9>
c0032457:	c7 44 24 10 63 94 03 	movl   $0xc0039463,0x10(%esp)
c003245e:	c0 
c003245f:	c7 44 24 0c ca 94 03 	movl   $0xc00394ca,0xc(%esp)
c0032466:	c0 
c0032467:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003246e:	00 
c003246f:	c7 44 24 04 52 94 03 	movl   $0xc0039452,0x4(%esp)
c0032476:	c0 
c0032477:	c7 04 24 74 94 03 c0 	movl   $0xc0039474,(%esp)
c003247e:	e8 17 dd ff ff       	call   c003019a <printk>
c0032483:	b8 01 00 00 00       	mov    $0x1,%eax
c0032488:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c003248f:	00 00                	add    %al,(%eax)
c0032491:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0032498:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c003249f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c00324a5:	01 75 32             	add    %esi,0x32(%ebp)
c00324a8:	c7 44 24 10 6b 94 03 	movl   $0xc003946b,0x10(%esp)
c00324af:	c0 
c00324b0:	c7 44 24 0c ca 94 03 	movl   $0xc00394ca,0xc(%esp)
c00324b7:	c0 
c00324b8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c00324bf:	00 
c00324c0:	c7 44 24 04 52 94 03 	movl   $0xc0039452,0x4(%esp)
c00324c7:	c0 
c00324c8:	c7 04 24 74 94 03 c0 	movl   $0xc0039474,(%esp)
c00324cf:	e8 c6 dc ff ff       	call   c003019a <printk>
c00324d4:	b8 01 00 00 00       	mov    $0x1,%eax
c00324d9:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c00324e0:	00 f0                	add    %dh,%al
c00324e2:	ff                   	(bad)  
c00324e3:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c00324e9:	00 09                	add    %cl,(%ecx)
c00324eb:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c00324f1:	5f                   	pop    %edi
c00324f2:	5d                   	pop    %ebp
c00324f3:	c3                   	ret    
c00324f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00324f8:	c7 44 24 10 3f 94 03 	movl   $0xc003943f,0x10(%esp)
c00324ff:	c0 
c0032500:	c7 44 24 0c c0 94 03 	movl   $0xc00394c0,0xc(%esp)
c0032507:	c0 
c0032508:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c003250f:	00 
c0032510:	c7 44 24 04 52 94 03 	movl   $0xc0039452,0x4(%esp)
c0032517:	c0 
c0032518:	c7 04 24 74 94 03 c0 	movl   $0xc0039474,(%esp)
c003251f:	e8 76 dc ff ff       	call   c003019a <printk>
c0032524:	b8 01 00 00 00       	mov    $0x1,%eax
c0032529:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0032530:	03 fe                	add    %esi,%edi
c0032532:	ff                   	(bad)  
c0032533:	ff                   	.byte 0xff

c0032534 <memcpy>:
c0032534:	55                   	push   %ebp
c0032535:	89 e5                	mov    %esp,%ebp
c0032537:	56                   	push   %esi
c0032538:	57                   	push   %edi
c0032539:	53                   	push   %ebx
c003253a:	8b 7d 08             	mov    0x8(%ebp),%edi
c003253d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0032540:	8b 75 0c             	mov    0xc(%ebp),%esi
c0032543:	fc                   	cld    
c0032544:	83 f9 08             	cmp    $0x8,%ecx
c0032547:	76 26                	jbe    c003256f <memcpy+0x3b>
c0032549:	89 fa                	mov    %edi,%edx
c003254b:	89 cb                	mov    %ecx,%ebx
c003254d:	83 e2 03             	and    $0x3,%edx
c0032550:	74 10                	je     c0032562 <memcpy+0x2e>
c0032552:	b9 04 00 00 00       	mov    $0x4,%ecx
c0032557:	29 d1                	sub    %edx,%ecx
c0032559:	83 e1 03             	and    $0x3,%ecx
c003255c:	29 cb                	sub    %ecx,%ebx
c003255e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032560:	89 d9                	mov    %ebx,%ecx
c0032562:	c1 e9 02             	shr    $0x2,%ecx
c0032565:	8d 76 00             	lea    0x0(%esi),%esi
c0032568:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003256a:	89 d9                	mov    %ebx,%ecx
c003256c:	83 e1 03             	and    $0x3,%ecx
c003256f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032571:	8b 45 08             	mov    0x8(%ebp),%eax
c0032574:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0032577:	5b                   	pop    %ebx
c0032578:	5f                   	pop    %edi
c0032579:	5e                   	pop    %esi
c003257a:	c9                   	leave  
c003257b:	c3                   	ret    

c003257c <memset>:
c003257c:	55                   	push   %ebp
c003257d:	89 e5                	mov    %esp,%ebp
c003257f:	57                   	push   %edi
c0032580:	8b 7d 08             	mov    0x8(%ebp),%edi
c0032583:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0032587:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003258a:	fc                   	cld    
c003258b:	83 f9 10             	cmp    $0x10,%ecx
c003258e:	76 69                	jbe    c00325f9 <memset+0x7d>
c0032590:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032596:	74 4c                	je     c00325e4 <memset+0x68>
c0032598:	88 07                	mov    %al,(%edi)
c003259a:	47                   	inc    %edi
c003259b:	49                   	dec    %ecx
c003259c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325a2:	74 40                	je     c00325e4 <memset+0x68>
c00325a4:	88 07                	mov    %al,(%edi)
c00325a6:	47                   	inc    %edi
c00325a7:	49                   	dec    %ecx
c00325a8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325ae:	74 34                	je     c00325e4 <memset+0x68>
c00325b0:	88 07                	mov    %al,(%edi)
c00325b2:	47                   	inc    %edi
c00325b3:	49                   	dec    %ecx
c00325b4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325ba:	74 28                	je     c00325e4 <memset+0x68>
c00325bc:	88 07                	mov    %al,(%edi)
c00325be:	47                   	inc    %edi
c00325bf:	49                   	dec    %ecx
c00325c0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325c6:	74 1c                	je     c00325e4 <memset+0x68>
c00325c8:	88 07                	mov    %al,(%edi)
c00325ca:	47                   	inc    %edi
c00325cb:	49                   	dec    %ecx
c00325cc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325d2:	74 10                	je     c00325e4 <memset+0x68>
c00325d4:	88 07                	mov    %al,(%edi)
c00325d6:	47                   	inc    %edi
c00325d7:	49                   	dec    %ecx
c00325d8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00325de:	74 04                	je     c00325e4 <memset+0x68>
c00325e0:	88 07                	mov    %al,(%edi)
c00325e2:	47                   	inc    %edi
c00325e3:	49                   	dec    %ecx
c00325e4:	88 c4                	mov    %al,%ah
c00325e6:	89 c2                	mov    %eax,%edx
c00325e8:	c1 e2 10             	shl    $0x10,%edx
c00325eb:	09 d0                	or     %edx,%eax
c00325ed:	89 ca                	mov    %ecx,%edx
c00325ef:	c1 e9 02             	shr    $0x2,%ecx
c00325f2:	83 e2 03             	and    $0x3,%edx
c00325f5:	f3 ab                	rep stos %eax,%es:(%edi)
c00325f7:	89 d1                	mov    %edx,%ecx
c00325f9:	f3 aa                	rep stos %al,%es:(%edi)
c00325fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00325fe:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0032601:	5f                   	pop    %edi
c0032602:	c9                   	leave  
c0032603:	c3                   	ret    
c0032604:	66 90                	xchg   %ax,%ax
c0032606:	66 90                	xchg   %ax,%ax
c0032608:	66 90                	xchg   %ax,%ax
c003260a:	66 90                	xchg   %ax,%ax
c003260c:	66 90                	xchg   %ax,%ax
c003260e:	66 90                	xchg   %ax,%ax

c0032610 <strcmp>:
c0032610:	55                   	push   %ebp
c0032611:	89 e5                	mov    %esp,%ebp
c0032613:	8b 45 08             	mov    0x8(%ebp),%eax
c0032616:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032619:	53                   	push   %ebx
c003261a:	89 c1                	mov    %eax,%ecx
c003261c:	09 d1                	or     %edx,%ecx
c003261e:	83 e1 03             	and    $0x3,%ecx
c0032621:	75 17                	jne    c003263a <strcmp+0x2a>
c0032623:	8b 08                	mov    (%eax),%ecx
c0032625:	3b 0a                	cmp    (%edx),%ecx
c0032627:	74 33                	je     c003265c <strcmp+0x4c>
c0032629:	eb 0f                	jmp    c003263a <strcmp+0x2a>
c003262b:	90                   	nop
c003262c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032630:	3a 0a                	cmp    (%edx),%cl
c0032632:	75 0d                	jne    c0032641 <strcmp+0x31>
c0032634:	83 c0 01             	add    $0x1,%eax
c0032637:	83 c2 01             	add    $0x1,%edx
c003263a:	0f b6 08             	movzbl (%eax),%ecx
c003263d:	84 c9                	test   %cl,%cl
c003263f:	75 ef                	jne    c0032630 <strcmp+0x20>
c0032641:	0f b6 00             	movzbl (%eax),%eax
c0032644:	0f b6 12             	movzbl (%edx),%edx
c0032647:	5b                   	pop    %ebx
c0032648:	5d                   	pop    %ebp
c0032649:	29 d0                	sub    %edx,%eax
c003264b:	c3                   	ret    
c003264c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032650:	83 c0 04             	add    $0x4,%eax
c0032653:	83 c2 04             	add    $0x4,%edx
c0032656:	8b 08                	mov    (%eax),%ecx
c0032658:	3b 0a                	cmp    (%edx),%ecx
c003265a:	75 de                	jne    c003263a <strcmp+0x2a>
c003265c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0032662:	f7 d1                	not    %ecx
c0032664:	21 cb                	and    %ecx,%ebx
c0032666:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c003266c:	74 e2                	je     c0032650 <strcmp+0x40>
c003266e:	31 c0                	xor    %eax,%eax
c0032670:	5b                   	pop    %ebx
c0032671:	5d                   	pop    %ebp
c0032672:	c3                   	ret    
c0032673:	66 90                	xchg   %ax,%ax
c0032675:	66 90                	xchg   %ax,%ax
c0032677:	66 90                	xchg   %ax,%ax
c0032679:	66 90                	xchg   %ax,%ax
c003267b:	66 90                	xchg   %ax,%ax
c003267d:	66 90                	xchg   %ax,%ax
c003267f:	90                   	nop

c0032680 <_vsnprintf_r>:
c0032680:	55                   	push   %ebp
c0032681:	89 e5                	mov    %esp,%ebp
c0032683:	56                   	push   %esi
c0032684:	53                   	push   %ebx
c0032685:	83 c4 80             	add    $0xffffff80,%esp
c0032688:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003268b:	8b 75 08             	mov    0x8(%ebp),%esi
c003268e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032691:	85 db                	test   %ebx,%ebx
c0032693:	78 63                	js     c00326f8 <_vsnprintf_r+0x78>
c0032695:	ba 08 02 00 00       	mov    $0x208,%edx
c003269a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003269f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c00326a3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c00326a6:	89 45 90             	mov    %eax,-0x70(%ebp)
c00326a9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00326ac:	31 c0                	xor    %eax,%eax
c00326ae:	85 db                	test   %ebx,%ebx
c00326b0:	0f 45 c2             	cmovne %edx,%eax
c00326b3:	89 45 98             	mov    %eax,-0x68(%ebp)
c00326b6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00326b9:	8b 45 18             	mov    0x18(%ebp),%eax
c00326bc:	89 34 24             	mov    %esi,(%esp)
c00326bf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c00326c3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00326c7:	8b 45 14             	mov    0x14(%ebp),%eax
c00326ca:	89 44 24 08          	mov    %eax,0x8(%esp)
c00326ce:	8d 45 90             	lea    -0x70(%ebp),%eax
c00326d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00326d5:	e8 86 00 00 00       	call   c0032760 <_svfprintf_r>
c00326da:	83 f8 ff             	cmp    $0xffffffff,%eax
c00326dd:	7c 11                	jl     c00326f0 <_vsnprintf_r+0x70>
c00326df:	85 db                	test   %ebx,%ebx
c00326e1:	74 06                	je     c00326e9 <_vsnprintf_r+0x69>
c00326e3:	8b 55 90             	mov    -0x70(%ebp),%edx
c00326e6:	c6 02 00             	movb   $0x0,(%edx)
c00326e9:	83 ec 80             	sub    $0xffffff80,%esp
c00326ec:	5b                   	pop    %ebx
c00326ed:	5e                   	pop    %esi
c00326ee:	5d                   	pop    %ebp
c00326ef:	c3                   	ret    
c00326f0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00326f6:	eb e7                	jmp    c00326df <_vsnprintf_r+0x5f>
c00326f8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00326fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032703:	eb e4                	jmp    c00326e9 <_vsnprintf_r+0x69>
c0032705:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0032710 <vsnprintf>:
c0032710:	55                   	push   %ebp
c0032711:	89 e5                	mov    %esp,%ebp
c0032713:	83 ec 28             	sub    $0x28,%esp
c0032716:	e8 35 00 00 00       	call   c0032750 <__getreent>
c003271b:	8b 55 14             	mov    0x14(%ebp),%edx
c003271e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032722:	8b 55 10             	mov    0x10(%ebp),%edx
c0032725:	89 04 24             	mov    %eax,(%esp)
c0032728:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003272c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003272f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032733:	8b 55 08             	mov    0x8(%ebp),%edx
c0032736:	89 54 24 04          	mov    %edx,0x4(%esp)
c003273a:	e8 41 ff ff ff       	call   c0032680 <_vsnprintf_r>
c003273f:	c9                   	leave  
c0032740:	c3                   	ret    
c0032741:	66 90                	xchg   %ax,%ax
c0032743:	66 90                	xchg   %ax,%ax
c0032745:	66 90                	xchg   %ax,%ax
c0032747:	66 90                	xchg   %ax,%ax
c0032749:	66 90                	xchg   %ax,%ax
c003274b:	66 90                	xchg   %ax,%ax
c003274d:	66 90                	xchg   %ax,%ax
c003274f:	90                   	nop

c0032750 <__getreent>:
c0032750:	55                   	push   %ebp
c0032751:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0032756:	89 e5                	mov    %esp,%ebp
c0032758:	5d                   	pop    %ebp
c0032759:	c3                   	ret    
c003275a:	66 90                	xchg   %ax,%ax
c003275c:	66 90                	xchg   %ax,%ax
c003275e:	66 90                	xchg   %ax,%ax

c0032760 <_svfprintf_r>:
c0032760:	55                   	push   %ebp
c0032761:	89 e5                	mov    %esp,%ebp
c0032763:	57                   	push   %edi
c0032764:	56                   	push   %esi
c0032765:	53                   	push   %ebx
c0032766:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003276c:	8b 45 08             	mov    0x8(%ebp),%eax
c003276f:	89 04 24             	mov    %eax,(%esp)
c0032772:	e8 89 33 00 00       	call   c0035b00 <_localeconv_r>
c0032777:	8b 00                	mov    (%eax),%eax
c0032779:	89 04 24             	mov    %eax,(%esp)
c003277c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032782:	e8 69 4a 00 00       	call   c00371f0 <strlen>
c0032787:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003278d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032790:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032794:	74 0b                	je     c00327a1 <_svfprintf_r+0x41>
c0032796:	8b 40 10             	mov    0x10(%eax),%eax
c0032799:	85 c0                	test   %eax,%eax
c003279b:	0f 84 62 18 00 00    	je     c0034003 <_svfprintf_r+0x18a3>
c00327a1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00327a4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c00327a7:	89 c7                	mov    %eax,%edi
c00327a9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c00327af:	d9 ee                	fldz   
c00327b1:	29 d0                	sub    %edx,%eax
c00327b3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c00327ba:	00 00 00 
c00327bd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00327c3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00327ca:	00 00 00 
c00327cd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c00327d4:	00 00 00 
c00327d7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c00327de:	00 00 00 
c00327e1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00327e8:	00 00 00 
c00327eb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c00327f2:	00 00 00 
c00327f5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c00327fb:	8b 45 10             	mov    0x10(%ebp),%eax
c00327fe:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032801:	0f b6 00             	movzbl (%eax),%eax
c0032804:	3c 25                	cmp    $0x25,%al
c0032806:	74 4d                	je     c0032855 <_svfprintf_r+0xf5>
c0032808:	84 c0                	test   %al,%al
c003280a:	75 08                	jne    c0032814 <_svfprintf_r+0xb4>
c003280c:	eb 47                	jmp    c0032855 <_svfprintf_r+0xf5>
c003280e:	66 90                	xchg   %ax,%ax
c0032810:	84 c0                	test   %al,%al
c0032812:	74 0a                	je     c003281e <_svfprintf_r+0xbe>
c0032814:	83 c3 01             	add    $0x1,%ebx
c0032817:	0f b6 03             	movzbl (%ebx),%eax
c003281a:	3c 25                	cmp    $0x25,%al
c003281c:	75 f2                	jne    c0032810 <_svfprintf_r+0xb0>
c003281e:	89 de                	mov    %ebx,%esi
c0032820:	2b 75 10             	sub    0x10(%ebp),%esi
c0032823:	74 30                	je     c0032855 <_svfprintf_r+0xf5>
c0032825:	8b 45 10             	mov    0x10(%ebp),%eax
c0032828:	83 c7 08             	add    $0x8,%edi
c003282b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003282e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032834:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032837:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003283d:	83 c0 01             	add    $0x1,%eax
c0032840:	83 f8 07             	cmp    $0x7,%eax
c0032843:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032849:	0f 8f 91 00 00 00    	jg     c00328e0 <_svfprintf_r+0x180>
c003284f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032855:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032858:	0f 84 aa 00 00 00    	je     c0032908 <_svfprintf_r+0x1a8>
c003285e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032861:	be 20 00 00 00       	mov    $0x20,%esi
c0032866:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003286d:	31 db                	xor    %ebx,%ebx
c003286f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032876:	ff ff ff 
c0032879:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032880:	00 00 00 
c0032883:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003288a:	00 00 00 
c003288d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032890:	0f be 00             	movsbl (%eax),%eax
c0032893:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032896:	83 fa 58             	cmp    $0x58,%edx
c0032899:	0f 87 8f 07 00 00    	ja     c003302e <_svfprintf_r+0x8ce>
c003289f:	ff 24 95 14 95 03 c0 	jmp    *-0x3ffc6aec(,%edx,4)
c00328a6:	66 90                	xchg   %ax,%ax
c00328a8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00328af:	89 c8                	mov    %ecx,%eax
c00328b1:	eb da                	jmp    c003288d <_svfprintf_r+0x12d>
c00328b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00328b6:	8b 55 14             	mov    0x14(%ebp),%edx
c00328b9:	8b 00                	mov    (%eax),%eax
c00328bb:	83 c2 04             	add    $0x4,%edx
c00328be:	89 55 14             	mov    %edx,0x14(%ebp)
c00328c1:	85 c0                	test   %eax,%eax
c00328c3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00328c9:	79 e4                	jns    c00328af <_svfprintf_r+0x14f>
c00328cb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00328d1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00328d8:	89 c8                	mov    %ecx,%eax
c00328da:	eb b1                	jmp    c003288d <_svfprintf_r+0x12d>
c00328dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328e0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00328e6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00328ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c00328ed:	89 44 24 04          	mov    %eax,0x4(%esp)
c00328f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00328f4:	89 04 24             	mov    %eax,(%esp)
c00328f7:	e8 74 49 00 00       	call   c0037270 <__ssprint_r>
c00328fc:	85 c0                	test   %eax,%eax
c00328fe:	75 30                	jne    c0032930 <_svfprintf_r+0x1d0>
c0032900:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032903:	e9 47 ff ff ff       	jmp    c003284f <_svfprintf_r+0xef>
c0032908:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003290e:	85 c0                	test   %eax,%eax
c0032910:	74 1e                	je     c0032930 <_svfprintf_r+0x1d0>
c0032912:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032918:	89 44 24 08          	mov    %eax,0x8(%esp)
c003291c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003291f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032923:	8b 45 08             	mov    0x8(%ebp),%eax
c0032926:	89 04 24             	mov    %eax,(%esp)
c0032929:	e8 42 49 00 00       	call   c0037270 <__ssprint_r>
c003292e:	66 90                	xchg   %ax,%ax
c0032930:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032933:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032938:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003293c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032943:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032949:	5b                   	pop    %ebx
c003294a:	5e                   	pop    %esi
c003294b:	5f                   	pop    %edi
c003294c:	5d                   	pop    %ebp
c003294d:	c3                   	ret    
c003294e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032953:	89 c8                	mov    %ecx,%eax
c0032955:	e9 33 ff ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c003295a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032960:	8b 45 14             	mov    0x14(%ebp),%eax
c0032963:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032966:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003296d:	8d 70 04             	lea    0x4(%eax),%esi
c0032970:	8b 00                	mov    (%eax),%eax
c0032972:	85 c0                	test   %eax,%eax
c0032974:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003297a:	0f 84 7f 18 00 00    	je     c00341ff <_svfprintf_r+0x1a9f>
c0032980:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032986:	85 c0                	test   %eax,%eax
c0032988:	0f 88 b6 17 00 00    	js     c0034144 <_svfprintf_r+0x19e4>
c003298e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032992:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032998:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003299f:	00 
c00329a0:	89 04 24             	mov    %eax,(%esp)
c00329a3:	e8 f8 38 00 00       	call   c00362a0 <memchr>
c00329a8:	85 c0                	test   %eax,%eax
c00329aa:	0f 84 a0 19 00 00    	je     c0034350 <_svfprintf_r+0x1bf0>
c00329b0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00329b6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00329bc:	39 d0                	cmp    %edx,%eax
c00329be:	0f 4f c2             	cmovg  %edx,%eax
c00329c1:	89 c2                	mov    %eax,%edx
c00329c3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00329ca:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00329d0:	31 c0                	xor    %eax,%eax
c00329d2:	85 d2                	test   %edx,%edx
c00329d4:	0f 49 c2             	cmovns %edx,%eax
c00329d7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00329dd:	89 75 14             	mov    %esi,0x14(%ebp)
c00329e0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00329e7:	00 00 00 
c00329ea:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00329f1:	00 00 00 
c00329f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329f8:	84 db                	test   %bl,%bl
c00329fa:	74 07                	je     c0032a03 <_svfprintf_r+0x2a3>
c00329fc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032a03:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032a09:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0032a0f:	89 c8                	mov    %ecx,%eax
c0032a11:	89 f2                	mov    %esi,%edx
c0032a13:	83 c0 02             	add    $0x2,%eax
c0032a16:	83 e2 02             	and    $0x2,%edx
c0032a19:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c0032a1f:	89 f2                	mov    %esi,%edx
c0032a21:	0f 44 c1             	cmove  %ecx,%eax
c0032a24:	81 e2 84 00 00 00    	and    $0x84,%edx
c0032a2a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032a30:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032a36:	0f 85 1c 06 00 00    	jne    c0033058 <_svfprintf_r+0x8f8>
c0032a3c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a42:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a48:	85 f6                	test   %esi,%esi
c0032a4a:	0f 8e 08 06 00 00    	jle    c0033058 <_svfprintf_r+0x8f8>
c0032a50:	83 fe 10             	cmp    $0x10,%esi
c0032a53:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a5f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a65:	7f 11                	jg     c0032a78 <_svfprintf_r+0x318>
c0032a67:	eb 6b                	jmp    c0032ad4 <_svfprintf_r+0x374>
c0032a69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032a70:	83 ee 10             	sub    $0x10,%esi
c0032a73:	83 fe 10             	cmp    $0x10,%esi
c0032a76:	7e 5c                	jle    c0032ad4 <_svfprintf_r+0x374>
c0032a78:	83 c0 01             	add    $0x1,%eax
c0032a7b:	83 c1 10             	add    $0x10,%ecx
c0032a7e:	c7 07 88 96 03 c0    	movl   $0xc0039688,(%edi)
c0032a84:	83 c7 08             	add    $0x8,%edi
c0032a87:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a8e:	83 f8 07             	cmp    $0x7,%eax
c0032a91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a9d:	7e d1                	jle    c0032a70 <_svfprintf_r+0x310>
c0032a9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032aa2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032aa6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032aaa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032aad:	89 04 24             	mov    %eax,(%esp)
c0032ab0:	e8 bb 47 00 00       	call   c0037270 <__ssprint_r>
c0032ab5:	85 c0                	test   %eax,%eax
c0032ab7:	0f 85 73 fe ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0032abd:	83 ee 10             	sub    $0x10,%esi
c0032ac0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ac6:	83 fe 10             	cmp    $0x10,%esi
c0032ac9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032acf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ad2:	7f a4                	jg     c0032a78 <_svfprintf_r+0x318>
c0032ad4:	83 c0 01             	add    $0x1,%eax
c0032ad7:	01 f1                	add    %esi,%ecx
c0032ad9:	83 f8 07             	cmp    $0x7,%eax
c0032adc:	c7 07 88 96 03 c0    	movl   $0xc0039688,(%edi)
c0032ae2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ae5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032aeb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032af1:	0f 8f 16 0e 00 00    	jg     c003390d <_svfprintf_r+0x11ad>
c0032af7:	83 c7 08             	add    $0x8,%edi
c0032afa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032b01:	e9 58 05 00 00       	jmp    c003305e <_svfprintf_r+0x8fe>
c0032b06:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032b0d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032b13:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b16:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032b19:	0f 85 fd 04 00 00    	jne    c003301c <_svfprintf_r+0x8bc>
c0032b1f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032b26:	0f 84 f0 04 00 00    	je     c003301c <_svfprintf_r+0x8bc>
c0032b2c:	0f b7 08             	movzwl (%eax),%ecx
c0032b2f:	83 c0 04             	add    $0x4,%eax
c0032b32:	89 45 14             	mov    %eax,0x14(%ebp)
c0032b35:	b8 01 00 00 00       	mov    $0x1,%eax
c0032b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032b40:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032b47:	31 db                	xor    %ebx,%ebx
c0032b49:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c0032b4f:	89 f2                	mov    %esi,%edx
c0032b51:	80 e2 7f             	and    $0x7f,%dl
c0032b54:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c0032b5b:	0f 48 d6             	cmovs  %esi,%edx
c0032b5e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032b64:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032b6a:	85 d2                	test   %edx,%edx
c0032b6c:	75 08                	jne    c0032b76 <_svfprintf_r+0x416>
c0032b6e:	85 c9                	test   %ecx,%ecx
c0032b70:	0f 84 ea 08 00 00    	je     c0033460 <_svfprintf_r+0xd00>
c0032b76:	3c 01                	cmp    $0x1,%al
c0032b78:	0f 84 6a 0d 00 00    	je     c00338e8 <_svfprintf_r+0x1188>
c0032b7e:	3c 02                	cmp    $0x2,%al
c0032b80:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032b83:	0f 85 bf 0b 00 00    	jne    c0033748 <_svfprintf_r+0xfe8>
c0032b89:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c0032b8f:	90                   	nop
c0032b90:	89 ca                	mov    %ecx,%edx
c0032b92:	83 e8 01             	sub    $0x1,%eax
c0032b95:	83 e2 0f             	and    $0xf,%edx
c0032b98:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c0032b9c:	c1 e9 04             	shr    $0x4,%ecx
c0032b9f:	85 c9                	test   %ecx,%ecx
c0032ba1:	88 10                	mov    %dl,(%eax)
c0032ba3:	75 eb                	jne    c0032b90 <_svfprintf_r+0x430>
c0032ba5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032ba8:	29 c2                	sub    %eax,%edx
c0032baa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032bb0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032bb6:	66 90                	xchg   %ax,%ax
c0032bb8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032bbe:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032bc4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032bcb:	00 00 00 
c0032bce:	39 c2                	cmp    %eax,%edx
c0032bd0:	0f 4d c2             	cmovge %edx,%eax
c0032bd3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032bd9:	e9 1a fe ff ff       	jmp    c00329f8 <_svfprintf_r+0x298>
c0032bde:	84 db                	test   %bl,%bl
c0032be0:	89 c8                	mov    %ecx,%eax
c0032be2:	0f 44 de             	cmove  %esi,%ebx
c0032be5:	e9 a3 fc ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0032bea:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032bf1:	89 c8                	mov    %ecx,%eax
c0032bf3:	e9 95 fc ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0032bf8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c0032bff:	00 00 00 
c0032c02:	89 c8                	mov    %ecx,%eax
c0032c04:	e9 84 fc ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0032c09:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032c0f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032c12:	31 ff                	xor    %edi,%edi
c0032c14:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032c1b:	00 00 00 
c0032c1e:	66 90                	xchg   %ax,%ax
c0032c20:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032c23:	83 c1 01             	add    $0x1,%ecx
c0032c26:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032c29:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c0032c2d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032c30:	83 fa 09             	cmp    $0x9,%edx
c0032c33:	76 eb                	jbe    c0032c20 <_svfprintf_r+0x4c0>
c0032c35:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c0032c3b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032c41:	e9 4d fc ff ff       	jmp    c0032893 <_svfprintf_r+0x133>
c0032c46:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032c4d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032c54:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032c5a:	8b 45 14             	mov    0x14(%ebp),%eax
c0032c5d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032c60:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032c66:	0f 85 61 02 00 00    	jne    c0032ecd <_svfprintf_r+0x76d>
c0032c6c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032c73:	0f 84 54 02 00 00    	je     c0032ecd <_svfprintf_r+0x76d>
c0032c79:	0f bf 08             	movswl (%eax),%ecx
c0032c7c:	83 c0 04             	add    $0x4,%eax
c0032c7f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c82:	85 c9                	test   %ecx,%ecx
c0032c84:	0f 88 53 02 00 00    	js     c0032edd <_svfprintf_r+0x77d>
c0032c8a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032c91:	b8 01 00 00 00       	mov    $0x1,%eax
c0032c96:	e9 ae fe ff ff       	jmp    c0032b49 <_svfprintf_r+0x3e9>
c0032c9b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032ca2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032ca8:	8b 45 14             	mov    0x14(%ebp),%eax
c0032cab:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032cae:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032cb4:	0f 84 15 10 00 00    	je     c0033ccf <_svfprintf_r+0x156f>
c0032cba:	db 28                	fldt   (%eax)
c0032cbc:	83 c0 0c             	add    $0xc,%eax
c0032cbf:	89 45 14             	mov    %eax,0x14(%ebp)
c0032cc2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032cc8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032cce:	dd 1c 24             	fstpl  (%esp)
c0032cd1:	e8 aa 44 00 00       	call   c0037180 <__fpclassifyd>
c0032cd6:	83 f8 01             	cmp    $0x1,%eax
c0032cd9:	0f 85 82 0f 00 00    	jne    c0033c61 <_svfprintf_r+0x1501>
c0032cdf:	d9 ee                	fldz   
c0032ce1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032ce7:	d9 c9                	fxch   %st(1)
c0032ce9:	df e9                	fucomip %st(1),%st
c0032ceb:	dd d8                	fstp   %st(0)
c0032ced:	0f 87 59 15 00 00    	ja     c003424c <_svfprintf_r+0x1aec>
c0032cf3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032cfa:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032d01:	ba d6 94 03 c0       	mov    $0xc00394d6,%edx
c0032d06:	b8 da 94 03 c0       	mov    $0xc00394da,%eax
c0032d0b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032d12:	00 00 00 
c0032d15:	0f 4e c2             	cmovle %edx,%eax
c0032d18:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d1e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032d25:	ff ff ff 
c0032d28:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0032d2f:	00 00 00 
c0032d32:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032d39:	00 00 00 
c0032d3c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032d43:	00 00 00 
c0032d46:	e9 ad fc ff ff       	jmp    c00329f8 <_svfprintf_r+0x298>
c0032d4b:	8d 41 01             	lea    0x1(%ecx),%eax
c0032d4e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032d54:	0f be 01             	movsbl (%ecx),%eax
c0032d57:	83 f8 2a             	cmp    $0x2a,%eax
c0032d5a:	0f 84 84 18 00 00    	je     c00345e4 <_svfprintf_r+0x1e84>
c0032d60:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032d63:	31 c9                	xor    %ecx,%ecx
c0032d65:	83 fa 09             	cmp    $0x9,%edx
c0032d68:	0f 87 a8 16 00 00    	ja     c0034416 <_svfprintf_r+0x1cb6>
c0032d6e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032d74:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032d80:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032d83:	83 c7 01             	add    $0x1,%edi
c0032d86:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032d89:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0032d8d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032d90:	83 fa 09             	cmp    $0x9,%edx
c0032d93:	76 eb                	jbe    c0032d80 <_svfprintf_r+0x620>
c0032d95:	85 c9                	test   %ecx,%ecx
c0032d97:	89 ca                	mov    %ecx,%edx
c0032d99:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0032d9e:	0f 48 d1             	cmovs  %ecx,%edx
c0032da1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032da7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c0032dad:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032db3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032db9:	e9 d5 fa ff ff       	jmp    c0032893 <_svfprintf_r+0x133>
c0032dbe:	8b 45 14             	mov    0x14(%ebp),%eax
c0032dc1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032dc4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032dcb:	8b 08                	mov    (%eax),%ecx
c0032dcd:	83 c0 04             	add    $0x4,%eax
c0032dd0:	89 45 14             	mov    %eax,0x14(%ebp)
c0032dd3:	b8 02 00 00 00       	mov    $0x2,%eax
c0032dd8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032ddf:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032de6:	c7 85 18 ff ff ff f7 	movl   $0xc00394f7,-0xe8(%ebp)
c0032ded:	94 03 c0 
c0032df0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032df7:	00 00 00 
c0032dfa:	e9 41 fd ff ff       	jmp    c0032b40 <_svfprintf_r+0x3e0>
c0032dff:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e06:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032e0c:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e0f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e12:	0f 85 87 00 00 00    	jne    c0032e9f <_svfprintf_r+0x73f>
c0032e18:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032e1f:	74 7e                	je     c0032e9f <_svfprintf_r+0x73f>
c0032e21:	0f b7 08             	movzwl (%eax),%ecx
c0032e24:	83 c0 04             	add    $0x4,%eax
c0032e27:	89 45 14             	mov    %eax,0x14(%ebp)
c0032e2a:	31 c0                	xor    %eax,%eax
c0032e2c:	e9 0f fd ff ff       	jmp    c0032b40 <_svfprintf_r+0x3e0>
c0032e31:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032e38:	89 c8                	mov    %ecx,%eax
c0032e3a:	e9 4e fa ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0032e3f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e46:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e49:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032e4f:	0f 85 97 0b 00 00    	jne    c00339ec <_svfprintf_r+0x128c>
c0032e55:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032e5c:	0f 84 8a 0b 00 00    	je     c00339ec <_svfprintf_r+0x128c>
c0032e62:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e65:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c0032e6c:	8b 00                	mov    (%eax),%eax
c0032e6e:	66 89 10             	mov    %dx,(%eax)
c0032e71:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e74:	83 c0 04             	add    $0x4,%eax
c0032e77:	89 45 14             	mov    %eax,0x14(%ebp)
c0032e7a:	e9 7c f9 ff ff       	jmp    c00327fb <_svfprintf_r+0x9b>
c0032e7f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032e86:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032e8d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032e93:	8b 45 14             	mov    0x14(%ebp),%eax
c0032e96:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032e99:	0f 84 79 ff ff ff    	je     c0032e18 <_svfprintf_r+0x6b8>
c0032e9f:	8b 08                	mov    (%eax),%ecx
c0032ea1:	83 c0 04             	add    $0x4,%eax
c0032ea4:	89 45 14             	mov    %eax,0x14(%ebp)
c0032ea7:	31 c0                	xor    %eax,%eax
c0032ea9:	e9 92 fc ff ff       	jmp    c0032b40 <_svfprintf_r+0x3e0>
c0032eae:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032eb5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032ebb:	8b 45 14             	mov    0x14(%ebp),%eax
c0032ebe:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032ec1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032ec7:	0f 84 9f fd ff ff    	je     c0032c6c <_svfprintf_r+0x50c>
c0032ecd:	8b 08                	mov    (%eax),%ecx
c0032ecf:	83 c0 04             	add    $0x4,%eax
c0032ed2:	89 45 14             	mov    %eax,0x14(%ebp)
c0032ed5:	85 c9                	test   %ecx,%ecx
c0032ed7:	0f 89 ad fd ff ff    	jns    c0032c8a <_svfprintf_r+0x52a>
c0032edd:	f7 d9                	neg    %ecx
c0032edf:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032ee4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0032eeb:	b8 01 00 00 00       	mov    $0x1,%eax
c0032ef0:	e9 54 fc ff ff       	jmp    c0032b49 <_svfprintf_r+0x3e9>
c0032ef5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c0032efc:	89 c8                	mov    %ecx,%eax
c0032efe:	e9 8a f9 ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0032f03:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032f0a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032f10:	8b 45 14             	mov    0x14(%ebp),%eax
c0032f13:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032f16:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032f1c:	c7 85 18 ff ff ff f7 	movl   $0xc00394f7,-0xe8(%ebp)
c0032f23:	94 03 c0 
c0032f26:	75 71                	jne    c0032f99 <_svfprintf_r+0x839>
c0032f28:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032f2f:	74 68                	je     c0032f99 <_svfprintf_r+0x839>
c0032f31:	0f b7 08             	movzwl (%eax),%ecx
c0032f34:	83 c0 04             	add    $0x4,%eax
c0032f37:	89 45 14             	mov    %eax,0x14(%ebp)
c0032f3a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f41:	b8 02 00 00 00       	mov    $0x2,%eax
c0032f46:	0f 84 f4 fb ff ff    	je     c0032b40 <_svfprintf_r+0x3e0>
c0032f4c:	85 c9                	test   %ecx,%ecx
c0032f4e:	0f 84 ec fb ff ff    	je     c0032b40 <_svfprintf_r+0x3e0>
c0032f54:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c0032f5b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032f62:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032f69:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c0032f6f:	e9 cc fb ff ff       	jmp    c0032b40 <_svfprintf_r+0x3e0>
c0032f74:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032f7b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032f81:	8b 45 14             	mov    0x14(%ebp),%eax
c0032f84:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032f87:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032f8d:	c7 85 18 ff ff ff e6 	movl   $0xc00394e6,-0xe8(%ebp)
c0032f94:	94 03 c0 
c0032f97:	74 8f                	je     c0032f28 <_svfprintf_r+0x7c8>
c0032f99:	8b 08                	mov    (%eax),%ecx
c0032f9b:	83 c0 04             	add    $0x4,%eax
c0032f9e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032fa1:	eb 97                	jmp    c0032f3a <_svfprintf_r+0x7da>
c0032fa3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032fa9:	8b 45 14             	mov    0x14(%ebp),%eax
c0032fac:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032faf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032fb6:	8b 00                	mov    (%eax),%eax
c0032fb8:	88 45 80             	mov    %al,-0x80(%ebp)
c0032fbb:	8b 45 14             	mov    0x14(%ebp),%eax
c0032fbe:	83 c0 04             	add    $0x4,%eax
c0032fc1:	89 45 14             	mov    %eax,0x14(%ebp)
c0032fc4:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032fc7:	31 db                	xor    %ebx,%ebx
c0032fc9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032fd0:	00 00 00 
c0032fd3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0032fda:	00 00 00 
c0032fdd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032fe4:	00 00 00 
c0032fe7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032fee:	00 00 00 
c0032ff1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ff7:	e9 07 fa ff ff       	jmp    c0032a03 <_svfprintf_r+0x2a3>
c0032ffc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0033003:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003300a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0033010:	8b 45 14             	mov    0x14(%ebp),%eax
c0033013:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0033016:	0f 84 03 fb ff ff    	je     c0032b1f <_svfprintf_r+0x3bf>
c003301c:	8b 08                	mov    (%eax),%ecx
c003301e:	83 c0 04             	add    $0x4,%eax
c0033021:	89 45 14             	mov    %eax,0x14(%ebp)
c0033024:	b8 01 00 00 00       	mov    $0x1,%eax
c0033029:	e9 12 fb ff ff       	jmp    c0032b40 <_svfprintf_r+0x3e0>
c003302e:	85 c0                	test   %eax,%eax
c0033030:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0033036:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0033039:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003303f:	0f 84 c3 f8 ff ff    	je     c0032908 <_svfprintf_r+0x1a8>
c0033045:	88 45 80             	mov    %al,-0x80(%ebp)
c0033048:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003304f:	e9 70 ff ff ff       	jmp    c0032fc4 <_svfprintf_r+0x864>
c0033054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033058:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003305e:	84 db                	test   %bl,%bl
c0033060:	74 33                	je     c0033095 <_svfprintf_r+0x935>
c0033062:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0033068:	83 c1 01             	add    $0x1,%ecx
c003306b:	89 07                	mov    %eax,(%edi)
c003306d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033073:	83 c7 08             	add    $0x8,%edi
c0033076:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003307d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033083:	83 c0 01             	add    $0x1,%eax
c0033086:	83 f8 07             	cmp    $0x7,%eax
c0033089:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003308f:	0f 8f 7b 06 00 00    	jg     c0033710 <_svfprintf_r+0xfb0>
c0033095:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003309b:	85 db                	test   %ebx,%ebx
c003309d:	74 33                	je     c00330d2 <_svfprintf_r+0x972>
c003309f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00330a5:	83 c1 02             	add    $0x2,%ecx
c00330a8:	89 07                	mov    %eax,(%edi)
c00330aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330b0:	83 c7 08             	add    $0x8,%edi
c00330b3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00330ba:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330c0:	83 c0 01             	add    $0x1,%eax
c00330c3:	83 f8 07             	cmp    $0x7,%eax
c00330c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330cc:	0f 8f 06 06 00 00    	jg     c00336d8 <_svfprintf_r+0xf78>
c00330d2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00330d9:	00 00 00 
c00330dc:	0f 84 c6 03 00 00    	je     c00334a8 <_svfprintf_r+0xd48>
c00330e2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00330e8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00330ee:	85 f6                	test   %esi,%esi
c00330f0:	0f 8e d2 00 00 00    	jle    c00331c8 <_svfprintf_r+0xa68>
c00330f6:	83 fe 10             	cmp    $0x10,%esi
c00330f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330ff:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033105:	7f 11                	jg     c0033118 <_svfprintf_r+0x9b8>
c0033107:	eb 6b                	jmp    c0033174 <_svfprintf_r+0xa14>
c0033109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033110:	83 ee 10             	sub    $0x10,%esi
c0033113:	83 fe 10             	cmp    $0x10,%esi
c0033116:	7e 5c                	jle    c0033174 <_svfprintf_r+0xa14>
c0033118:	83 c0 01             	add    $0x1,%eax
c003311b:	83 c1 10             	add    $0x10,%ecx
c003311e:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033124:	83 c7 08             	add    $0x8,%edi
c0033127:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003312e:	83 f8 07             	cmp    $0x7,%eax
c0033131:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033137:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003313d:	7e d1                	jle    c0033110 <_svfprintf_r+0x9b0>
c003313f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033142:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033146:	89 44 24 04          	mov    %eax,0x4(%esp)
c003314a:	8b 45 08             	mov    0x8(%ebp),%eax
c003314d:	89 04 24             	mov    %eax,(%esp)
c0033150:	e8 1b 41 00 00       	call   c0037270 <__ssprint_r>
c0033155:	85 c0                	test   %eax,%eax
c0033157:	0f 85 d3 f7 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003315d:	83 ee 10             	sub    $0x10,%esi
c0033160:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033166:	83 fe 10             	cmp    $0x10,%esi
c0033169:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003316f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033172:	7f a4                	jg     c0033118 <_svfprintf_r+0x9b8>
c0033174:	83 c0 01             	add    $0x1,%eax
c0033177:	01 f1                	add    %esi,%ecx
c0033179:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c003317f:	83 c7 08             	add    $0x8,%edi
c0033182:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033185:	83 f8 07             	cmp    $0x7,%eax
c0033188:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003318e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033194:	7e 32                	jle    c00331c8 <_svfprintf_r+0xa68>
c0033196:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003319c:	89 44 24 08          	mov    %eax,0x8(%esp)
c00331a0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331a3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00331aa:	89 04 24             	mov    %eax,(%esp)
c00331ad:	e8 be 40 00 00       	call   c0037270 <__ssprint_r>
c00331b2:	85 c0                	test   %eax,%eax
c00331b4:	0f 85 76 f7 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00331ba:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00331c0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331c3:	90                   	nop
c00331c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331c8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00331cf:	01 00 00 
c00331d2:	0f 85 50 01 00 00    	jne    c0033328 <_svfprintf_r+0xbc8>
c00331d8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00331de:	89 07                	mov    %eax,(%edi)
c00331e0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c00331e6:	01 c1                	add    %eax,%ecx
c00331e8:	89 47 04             	mov    %eax,0x4(%edi)
c00331eb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00331f7:	83 c0 01             	add    $0x1,%eax
c00331fa:	83 f8 07             	cmp    $0x7,%eax
c00331fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033203:	0f 8f 6a 04 00 00    	jg     c0033673 <_svfprintf_r+0xf13>
c0033209:	83 c7 08             	add    $0x8,%edi
c003320c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0033213:	0f 84 d7 00 00 00    	je     c00332f0 <_svfprintf_r+0xb90>
c0033219:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c003321f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0033225:	85 f6                	test   %esi,%esi
c0033227:	0f 8e c3 00 00 00    	jle    c00332f0 <_svfprintf_r+0xb90>
c003322d:	83 fe 10             	cmp    $0x10,%esi
c0033230:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033236:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c003323c:	7f 0a                	jg     c0033248 <_svfprintf_r+0xae8>
c003323e:	eb 64                	jmp    c00332a4 <_svfprintf_r+0xb44>
c0033240:	83 ee 10             	sub    $0x10,%esi
c0033243:	83 fe 10             	cmp    $0x10,%esi
c0033246:	7e 5c                	jle    c00332a4 <_svfprintf_r+0xb44>
c0033248:	83 c0 01             	add    $0x1,%eax
c003324b:	83 c1 10             	add    $0x10,%ecx
c003324e:	c7 07 88 96 03 c0    	movl   $0xc0039688,(%edi)
c0033254:	83 c7 08             	add    $0x8,%edi
c0033257:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003325e:	83 f8 07             	cmp    $0x7,%eax
c0033261:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033267:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003326d:	7e d1                	jle    c0033240 <_svfprintf_r+0xae0>
c003326f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033272:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033276:	89 44 24 04          	mov    %eax,0x4(%esp)
c003327a:	8b 45 08             	mov    0x8(%ebp),%eax
c003327d:	89 04 24             	mov    %eax,(%esp)
c0033280:	e8 eb 3f 00 00       	call   c0037270 <__ssprint_r>
c0033285:	85 c0                	test   %eax,%eax
c0033287:	0f 85 a3 f6 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003328d:	83 ee 10             	sub    $0x10,%esi
c0033290:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033296:	83 fe 10             	cmp    $0x10,%esi
c0033299:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003329f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332a2:	7f a4                	jg     c0033248 <_svfprintf_r+0xae8>
c00332a4:	83 c0 01             	add    $0x1,%eax
c00332a7:	01 f1                	add    %esi,%ecx
c00332a9:	83 f8 07             	cmp    $0x7,%eax
c00332ac:	c7 07 88 96 03 c0    	movl   $0xc0039688,(%edi)
c00332b2:	89 77 04             	mov    %esi,0x4(%edi)
c00332b5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332c1:	7e 2d                	jle    c00332f0 <_svfprintf_r+0xb90>
c00332c3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332c9:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332cd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332d4:	8b 45 08             	mov    0x8(%ebp),%eax
c00332d7:	89 04 24             	mov    %eax,(%esp)
c00332da:	e8 91 3f 00 00       	call   c0037270 <__ssprint_r>
c00332df:	85 c0                	test   %eax,%eax
c00332e1:	0f 85 49 f6 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00332e7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332ed:	8d 76 00             	lea    0x0(%esi),%esi
c00332f0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c00332f6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c00332fc:	39 c2                	cmp    %eax,%edx
c00332fe:	0f 4d c2             	cmovge %edx,%eax
c0033301:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0033307:	85 c9                	test   %ecx,%ecx
c0033309:	0f 85 99 03 00 00    	jne    c00336a8 <_svfprintf_r+0xf48>
c003330f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0033316:	00 00 00 
c0033319:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003331c:	e9 da f4 ff ff       	jmp    c00327fb <_svfprintf_r+0x9b>
c0033321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033328:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003332f:	0f 8e 5b 02 00 00    	jle    c0033590 <_svfprintf_r+0xe30>
c0033335:	d9 ee                	fldz   
c0033337:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003333d:	df e9                	fucomip %st(1),%st
c003333f:	dd d8                	fstp   %st(0)
c0033341:	0f 8a 59 04 00 00    	jp     c00337a0 <_svfprintf_r+0x1040>
c0033347:	0f 85 53 04 00 00    	jne    c00337a0 <_svfprintf_r+0x1040>
c003334d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033353:	83 c1 01             	add    $0x1,%ecx
c0033356:	83 c7 08             	add    $0x8,%edi
c0033359:	c7 47 f8 0f 95 03 c0 	movl   $0xc003950f,-0x8(%edi)
c0033360:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033367:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003336d:	83 c0 01             	add    $0x1,%eax
c0033370:	83 f8 07             	cmp    $0x7,%eax
c0033373:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033379:	0f 8f 63 09 00 00    	jg     c0033ce2 <_svfprintf_r+0x1582>
c003337f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0033385:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c003338b:	7c 0d                	jl     c003339a <_svfprintf_r+0xc3a>
c003338d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033394:	0f 84 72 fe ff ff    	je     c003320c <_svfprintf_r+0xaac>
c003339a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00333a0:	83 c7 08             	add    $0x8,%edi
c00333a3:	89 47 f8             	mov    %eax,-0x8(%edi)
c00333a6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00333ac:	89 47 fc             	mov    %eax,-0x4(%edi)
c00333af:	01 c1                	add    %eax,%ecx
c00333b1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333b7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333bd:	83 c0 01             	add    $0x1,%eax
c00333c0:	83 f8 07             	cmp    $0x7,%eax
c00333c3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333c9:	0f 8f dc 0b 00 00    	jg     c0033fab <_svfprintf_r+0x184b>
c00333cf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00333d5:	8d 70 ff             	lea    -0x1(%eax),%esi
c00333d8:	85 f6                	test   %esi,%esi
c00333da:	0f 8e 2c fe ff ff    	jle    c003320c <_svfprintf_r+0xaac>
c00333e0:	83 fe 10             	cmp    $0x10,%esi
c00333e3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333e9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00333ef:	7f 13                	jg     c0033404 <_svfprintf_r+0xca4>
c00333f1:	e9 e6 05 00 00       	jmp    c00339dc <_svfprintf_r+0x127c>
c00333f6:	66 90                	xchg   %ax,%ax
c00333f8:	83 ee 10             	sub    $0x10,%esi
c00333fb:	83 fe 10             	cmp    $0x10,%esi
c00333fe:	0f 8e d8 05 00 00    	jle    c00339dc <_svfprintf_r+0x127c>
c0033404:	83 c0 01             	add    $0x1,%eax
c0033407:	83 c1 10             	add    $0x10,%ecx
c003340a:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033410:	83 c7 08             	add    $0x8,%edi
c0033413:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003341a:	83 f8 07             	cmp    $0x7,%eax
c003341d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033423:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033429:	7e cd                	jle    c00333f8 <_svfprintf_r+0xc98>
c003342b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003342e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033432:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033436:	8b 45 08             	mov    0x8(%ebp),%eax
c0033439:	89 04 24             	mov    %eax,(%esp)
c003343c:	e8 2f 3e 00 00       	call   c0037270 <__ssprint_r>
c0033441:	85 c0                	test   %eax,%eax
c0033443:	0f 85 e7 f4 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033449:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003344f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033452:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033458:	eb 9e                	jmp    c00333f8 <_svfprintf_r+0xc98>
c003345a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033460:	84 c0                	test   %al,%al
c0033462:	75 2c                	jne    c0033490 <_svfprintf_r+0xd30>
c0033464:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003346b:	74 23                	je     c0033490 <_svfprintf_r+0xd30>
c003346d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033473:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0033477:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003347d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033480:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033486:	e9 2d f7 ff ff       	jmp    c0032bb8 <_svfprintf_r+0x458>
c003348b:	90                   	nop
c003348c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033490:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033493:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c003349a:	00 00 00 
c003349d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334a3:	e9 10 f7 ff ff       	jmp    c0032bb8 <_svfprintf_r+0x458>
c00334a8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00334ae:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00334b4:	85 f6                	test   %esi,%esi
c00334b6:	0f 8e 26 fc ff ff    	jle    c00330e2 <_svfprintf_r+0x982>
c00334bc:	83 fe 10             	cmp    $0x10,%esi
c00334bf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334c5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00334cb:	7f 0b                	jg     c00334d8 <_svfprintf_r+0xd78>
c00334cd:	eb 65                	jmp    c0033534 <_svfprintf_r+0xdd4>
c00334cf:	90                   	nop
c00334d0:	83 ee 10             	sub    $0x10,%esi
c00334d3:	83 fe 10             	cmp    $0x10,%esi
c00334d6:	7e 5c                	jle    c0033534 <_svfprintf_r+0xdd4>
c00334d8:	83 c0 01             	add    $0x1,%eax
c00334db:	83 c1 10             	add    $0x10,%ecx
c00334de:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c00334e4:	83 c7 08             	add    $0x8,%edi
c00334e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00334ee:	83 f8 07             	cmp    $0x7,%eax
c00334f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00334f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00334fd:	7e d1                	jle    c00334d0 <_svfprintf_r+0xd70>
c00334ff:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033502:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033506:	89 44 24 04          	mov    %eax,0x4(%esp)
c003350a:	8b 45 08             	mov    0x8(%ebp),%eax
c003350d:	89 04 24             	mov    %eax,(%esp)
c0033510:	e8 5b 3d 00 00       	call   c0037270 <__ssprint_r>
c0033515:	85 c0                	test   %eax,%eax
c0033517:	0f 85 13 f4 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003351d:	83 ee 10             	sub    $0x10,%esi
c0033520:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033526:	83 fe 10             	cmp    $0x10,%esi
c0033529:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003352f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033532:	7f a4                	jg     c00334d8 <_svfprintf_r+0xd78>
c0033534:	83 c0 01             	add    $0x1,%eax
c0033537:	01 f1                	add    %esi,%ecx
c0033539:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c003353f:	83 c7 08             	add    $0x8,%edi
c0033542:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033545:	83 f8 07             	cmp    $0x7,%eax
c0033548:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003354e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033554:	0f 8e 88 fb ff ff    	jle    c00330e2 <_svfprintf_r+0x982>
c003355a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033560:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033564:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033567:	89 44 24 04          	mov    %eax,0x4(%esp)
c003356b:	8b 45 08             	mov    0x8(%ebp),%eax
c003356e:	89 04 24             	mov    %eax,(%esp)
c0033571:	e8 fa 3c 00 00       	call   c0037270 <__ssprint_r>
c0033576:	85 c0                	test   %eax,%eax
c0033578:	0f 85 b2 f3 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003357e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033584:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033587:	e9 56 fb ff ff       	jmp    c00330e2 <_svfprintf_r+0x982>
c003358c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033590:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0033597:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003359d:	0f 8e df 05 00 00    	jle    c0033b82 <_svfprintf_r+0x1422>
c00335a3:	89 07                	mov    %eax,(%edi)
c00335a5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335ab:	8d 51 01             	lea    0x1(%ecx),%edx
c00335ae:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00335b5:	83 c7 08             	add    $0x8,%edi
c00335b8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335be:	83 c0 01             	add    $0x1,%eax
c00335c1:	83 f8 07             	cmp    $0x7,%eax
c00335c4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335ca:	0f 8f 59 06 00 00    	jg     c0033c29 <_svfprintf_r+0x14c9>
c00335d0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c00335d6:	83 c0 01             	add    $0x1,%eax
c00335d9:	83 c7 08             	add    $0x8,%edi
c00335dc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335e2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c00335e5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c00335eb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00335ee:	01 da                	add    %ebx,%edx
c00335f0:	83 f8 07             	cmp    $0x7,%eax
c00335f3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335f9:	0f 8f f2 05 00 00    	jg     c0033bf1 <_svfprintf_r+0x1491>
c00335ff:	d9 ee                	fldz   
c0033601:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033607:	df e9                	fucomip %st(1),%st
c0033609:	dd d8                	fstp   %st(0)
c003360b:	7a 06                	jp     c0033613 <_svfprintf_r+0xeb3>
c003360d:	0f 84 33 03 00 00    	je     c0033946 <_svfprintf_r+0x11e6>
c0033613:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0033619:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003361f:	83 c1 01             	add    $0x1,%ecx
c0033622:	89 0f                	mov    %ecx,(%edi)
c0033624:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0033627:	89 4f 04             	mov    %ecx,0x4(%edi)
c003362a:	01 ca                	add    %ecx,%edx
c003362c:	83 c0 01             	add    $0x1,%eax
c003362f:	83 f8 07             	cmp    $0x7,%eax
c0033632:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033638:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003363e:	0f 8f 75 05 00 00    	jg     c0033bb9 <_svfprintf_r+0x1459>
c0033644:	83 c7 08             	add    $0x8,%edi
c0033647:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c003364d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0033653:	89 0f                	mov    %ecx,(%edi)
c0033655:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033658:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c003365b:	83 c0 01             	add    $0x1,%eax
c003365e:	83 f8 07             	cmp    $0x7,%eax
c0033661:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033667:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003366d:	0f 8e 96 fb ff ff    	jle    c0033209 <_svfprintf_r+0xaa9>
c0033673:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033679:	89 44 24 08          	mov    %eax,0x8(%esp)
c003367d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033680:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033684:	8b 45 08             	mov    0x8(%ebp),%eax
c0033687:	89 04 24             	mov    %eax,(%esp)
c003368a:	e8 e1 3b 00 00       	call   c0037270 <__ssprint_r>
c003368f:	85 c0                	test   %eax,%eax
c0033691:	0f 85 99 f2 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033697:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003369d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336a0:	e9 67 fb ff ff       	jmp    c003320c <_svfprintf_r+0xaac>
c00336a5:	8d 76 00             	lea    0x0(%esi),%esi
c00336a8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00336ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00336b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336b5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00336bc:	89 04 24             	mov    %eax,(%esp)
c00336bf:	e8 ac 3b 00 00       	call   c0037270 <__ssprint_r>
c00336c4:	85 c0                	test   %eax,%eax
c00336c6:	0f 84 43 fc ff ff    	je     c003330f <_svfprintf_r+0xbaf>
c00336cc:	e9 5f f2 ff ff       	jmp    c0032930 <_svfprintf_r+0x1d0>
c00336d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00336d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00336de:	89 44 24 08          	mov    %eax,0x8(%esp)
c00336e2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00336ec:	89 04 24             	mov    %eax,(%esp)
c00336ef:	e8 7c 3b 00 00       	call   c0037270 <__ssprint_r>
c00336f4:	85 c0                	test   %eax,%eax
c00336f6:	0f 85 34 f2 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00336fc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033702:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033705:	e9 c8 f9 ff ff       	jmp    c00330d2 <_svfprintf_r+0x972>
c003370a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033710:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033716:	89 44 24 08          	mov    %eax,0x8(%esp)
c003371a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003371d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033721:	8b 45 08             	mov    0x8(%ebp),%eax
c0033724:	89 04 24             	mov    %eax,(%esp)
c0033727:	e8 44 3b 00 00       	call   c0037270 <__ssprint_r>
c003372c:	85 c0                	test   %eax,%eax
c003372e:	0f 85 fc f1 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033734:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003373a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003373d:	e9 53 f9 ff ff       	jmp    c0033095 <_svfprintf_r+0x935>
c0033742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033748:	89 c2                	mov    %eax,%edx
c003374a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033750:	89 c8                	mov    %ecx,%eax
c0033752:	83 ea 01             	sub    $0x1,%edx
c0033755:	83 e0 07             	and    $0x7,%eax
c0033758:	c1 e9 03             	shr    $0x3,%ecx
c003375b:	83 c0 30             	add    $0x30,%eax
c003375e:	85 c9                	test   %ecx,%ecx
c0033760:	88 02                	mov    %al,(%edx)
c0033762:	75 ec                	jne    c0033750 <_svfprintf_r+0xff0>
c0033764:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003376b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033771:	0f 84 5b 01 00 00    	je     c00338d2 <_svfprintf_r+0x1172>
c0033777:	3c 30                	cmp    $0x30,%al
c0033779:	74 0b                	je     c0033786 <_svfprintf_r+0x1026>
c003377b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033782:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033786:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033789:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003378f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033795:	e9 1e f4 ff ff       	jmp    c0032bb8 <_svfprintf_r+0x458>
c003379a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00337a0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00337a6:	85 db                	test   %ebx,%ebx
c00337a8:	0f 8e 66 05 00 00    	jle    c0033d14 <_svfprintf_r+0x15b4>
c00337ae:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00337b4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00337ba:	01 d0                	add    %edx,%eax
c00337bc:	89 c3                	mov    %eax,%ebx
c00337be:	29 d3                	sub    %edx,%ebx
c00337c0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00337c6:	89 d0                	mov    %edx,%eax
c00337c8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337ce:	39 d3                	cmp    %edx,%ebx
c00337d0:	0f 4f da             	cmovg  %edx,%ebx
c00337d3:	85 db                	test   %ebx,%ebx
c00337d5:	7e 28                	jle    c00337ff <_svfprintf_r+0x109f>
c00337d7:	89 07                	mov    %eax,(%edi)
c00337d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337df:	01 d9                	add    %ebx,%ecx
c00337e1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00337e4:	83 c7 08             	add    $0x8,%edi
c00337e7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00337ed:	83 c0 01             	add    $0x1,%eax
c00337f0:	83 f8 07             	cmp    $0x7,%eax
c00337f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337f9:	0f 8f 58 09 00 00    	jg     c0034157 <_svfprintf_r+0x19f7>
c00337ff:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033805:	31 c0                	xor    %eax,%eax
c0033807:	85 db                	test   %ebx,%ebx
c0033809:	0f 49 c3             	cmovns %ebx,%eax
c003380c:	29 c6                	sub    %eax,%esi
c003380e:	85 f6                	test   %esi,%esi
c0033810:	0f 8e 40 02 00 00    	jle    c0033a56 <_svfprintf_r+0x12f6>
c0033816:	83 fe 10             	cmp    $0x10,%esi
c0033819:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003381f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033825:	7f 15                	jg     c003383c <_svfprintf_r+0x10dc>
c0033827:	e9 db 01 00 00       	jmp    c0033a07 <_svfprintf_r+0x12a7>
c003382c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033830:	83 ee 10             	sub    $0x10,%esi
c0033833:	83 fe 10             	cmp    $0x10,%esi
c0033836:	0f 8e cb 01 00 00    	jle    c0033a07 <_svfprintf_r+0x12a7>
c003383c:	83 c0 01             	add    $0x1,%eax
c003383f:	83 c1 10             	add    $0x10,%ecx
c0033842:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033848:	83 c7 08             	add    $0x8,%edi
c003384b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033852:	83 f8 07             	cmp    $0x7,%eax
c0033855:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003385b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033861:	7e cd                	jle    c0033830 <_svfprintf_r+0x10d0>
c0033863:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033866:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003386a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003386e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033871:	89 04 24             	mov    %eax,(%esp)
c0033874:	e8 f7 39 00 00       	call   c0037270 <__ssprint_r>
c0033879:	85 c0                	test   %eax,%eax
c003387b:	0f 85 af f0 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033881:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033887:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003388a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033890:	eb 9e                	jmp    c0033830 <_svfprintf_r+0x10d0>
c0033892:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033895:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003389a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00338a0:	89 c7                	mov    %eax,%edi
c00338a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00338a8:	89 c8                	mov    %ecx,%eax
c00338aa:	83 ef 01             	sub    $0x1,%edi
c00338ad:	f7 e6                	mul    %esi
c00338af:	c1 ea 03             	shr    $0x3,%edx
c00338b2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00338b5:	01 c0                	add    %eax,%eax
c00338b7:	29 c1                	sub    %eax,%ecx
c00338b9:	83 c1 30             	add    $0x30,%ecx
c00338bc:	85 d2                	test   %edx,%edx
c00338be:	88 0f                	mov    %cl,(%edi)
c00338c0:	89 d1                	mov    %edx,%ecx
c00338c2:	75 e4                	jne    c00338a8 <_svfprintf_r+0x1148>
c00338c4:	89 fa                	mov    %edi,%edx
c00338c6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00338cc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00338d2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00338d5:	29 d0                	sub    %edx,%eax
c00338d7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00338dd:	e9 d6 f2 ff ff       	jmp    c0032bb8 <_svfprintf_r+0x458>
c00338e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00338e8:	83 f9 09             	cmp    $0x9,%ecx
c00338eb:	77 a5                	ja     c0033892 <_svfprintf_r+0x1132>
c00338ed:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00338f3:	83 c1 30             	add    $0x30,%ecx
c00338f6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00338f9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00338ff:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033902:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033908:	e9 ab f2 ff ff       	jmp    c0032bb8 <_svfprintf_r+0x458>
c003390d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033913:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033917:	8b 45 0c             	mov    0xc(%ebp),%eax
c003391a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003391e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033921:	89 04 24             	mov    %eax,(%esp)
c0033924:	e8 47 39 00 00       	call   c0037270 <__ssprint_r>
c0033929:	85 c0                	test   %eax,%eax
c003392b:	0f 85 ff ef ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033931:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033938:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003393b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033941:	e9 18 f7 ff ff       	jmp    c003305e <_svfprintf_r+0x8fe>
c0033946:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003394c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003394f:	85 f6                	test   %esi,%esi
c0033951:	0f 8e f0 fc ff ff    	jle    c0033647 <_svfprintf_r+0xee7>
c0033957:	83 fe 10             	cmp    $0x10,%esi
c003395a:	7e 70                	jle    c00339cc <_svfprintf_r+0x126c>
c003395c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033962:	eb 0c                	jmp    c0033970 <_svfprintf_r+0x1210>
c0033964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033968:	83 ee 10             	sub    $0x10,%esi
c003396b:	83 fe 10             	cmp    $0x10,%esi
c003396e:	7e 5c                	jle    c00339cc <_svfprintf_r+0x126c>
c0033970:	83 c0 01             	add    $0x1,%eax
c0033973:	83 c2 10             	add    $0x10,%edx
c0033976:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c003397c:	83 c7 08             	add    $0x8,%edi
c003397f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033986:	83 f8 07             	cmp    $0x7,%eax
c0033989:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003398f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033995:	7e d1                	jle    c0033968 <_svfprintf_r+0x1208>
c0033997:	8b 45 0c             	mov    0xc(%ebp),%eax
c003399a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003399e:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00339a5:	89 04 24             	mov    %eax,(%esp)
c00339a8:	e8 c3 38 00 00       	call   c0037270 <__ssprint_r>
c00339ad:	85 c0                	test   %eax,%eax
c00339af:	0f 85 7b ef ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00339b5:	83 ee 10             	sub    $0x10,%esi
c00339b8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339be:	83 fe 10             	cmp    $0x10,%esi
c00339c1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339ca:	7f a4                	jg     c0033970 <_svfprintf_r+0x1210>
c00339cc:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c00339d2:	01 f2                	add    %esi,%edx
c00339d4:	89 77 04             	mov    %esi,0x4(%edi)
c00339d7:	e9 50 fc ff ff       	jmp    c003362c <_svfprintf_r+0xecc>
c00339dc:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c00339e2:	01 f1                	add    %esi,%ecx
c00339e4:	89 77 04             	mov    %esi,0x4(%edi)
c00339e7:	e9 6f fc ff ff       	jmp    c003365b <_svfprintf_r+0xefb>
c00339ec:	8b 45 14             	mov    0x14(%ebp),%eax
c00339ef:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00339f5:	8b 00                	mov    (%eax),%eax
c00339f7:	89 10                	mov    %edx,(%eax)
c00339f9:	8b 45 14             	mov    0x14(%ebp),%eax
c00339fc:	83 c0 04             	add    $0x4,%eax
c00339ff:	89 45 14             	mov    %eax,0x14(%ebp)
c0033a02:	e9 f4 ed ff ff       	jmp    c00327fb <_svfprintf_r+0x9b>
c0033a07:	83 c0 01             	add    $0x1,%eax
c0033a0a:	01 f1                	add    %esi,%ecx
c0033a0c:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033a12:	83 c7 08             	add    $0x8,%edi
c0033a15:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033a18:	83 f8 07             	cmp    $0x7,%eax
c0033a1b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033a21:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033a27:	7e 2d                	jle    c0033a56 <_svfprintf_r+0x12f6>
c0033a29:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a2f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a3d:	89 04 24             	mov    %eax,(%esp)
c0033a40:	e8 2b 38 00 00       	call   c0037270 <__ssprint_r>
c0033a45:	85 c0                	test   %eax,%eax
c0033a47:	0f 85 e3 ee ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033a4d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a53:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a56:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a5c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033a62:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033a68:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c0033a6e:	89 c6                	mov    %eax,%esi
c0033a70:	7c 0d                	jl     c0033a7f <_svfprintf_r+0x131f>
c0033a72:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033a79:	0f 84 5e 05 00 00    	je     c0033fdd <_svfprintf_r+0x187d>
c0033a7f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033a85:	89 07                	mov    %eax,(%edi)
c0033a87:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033a8d:	01 c1                	add    %eax,%ecx
c0033a8f:	89 47 04             	mov    %eax,0x4(%edi)
c0033a92:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a98:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033a9e:	83 c0 01             	add    $0x1,%eax
c0033aa1:	83 f8 07             	cmp    $0x7,%eax
c0033aa4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033aaa:	0f 8f d9 06 00 00    	jg     c0034189 <_svfprintf_r+0x1a29>
c0033ab0:	83 c7 08             	add    $0x8,%edi
c0033ab3:	89 d0                	mov    %edx,%eax
c0033ab5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033abb:	89 f2                	mov    %esi,%edx
c0033abd:	29 f3                	sub    %esi,%ebx
c0033abf:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033ac5:	29 c6                	sub    %eax,%esi
c0033ac7:	39 de                	cmp    %ebx,%esi
c0033ac9:	0f 4e de             	cmovle %esi,%ebx
c0033acc:	85 db                	test   %ebx,%ebx
c0033ace:	7e 29                	jle    c0033af9 <_svfprintf_r+0x1399>
c0033ad0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033ad6:	01 d9                	add    %ebx,%ecx
c0033ad8:	83 c7 08             	add    $0x8,%edi
c0033adb:	89 57 f8             	mov    %edx,-0x8(%edi)
c0033ade:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033ae1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033ae7:	83 c0 01             	add    $0x1,%eax
c0033aea:	83 f8 07             	cmp    $0x7,%eax
c0033aed:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033af3:	0f 8f c8 06 00 00    	jg     c00341c1 <_svfprintf_r+0x1a61>
c0033af9:	31 c0                	xor    %eax,%eax
c0033afb:	85 db                	test   %ebx,%ebx
c0033afd:	0f 49 c3             	cmovns %ebx,%eax
c0033b00:	29 c6                	sub    %eax,%esi
c0033b02:	85 f6                	test   %esi,%esi
c0033b04:	0f 8e 02 f7 ff ff    	jle    c003320c <_svfprintf_r+0xaac>
c0033b0a:	83 fe 10             	cmp    $0x10,%esi
c0033b0d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b13:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033b19:	7f 11                	jg     c0033b2c <_svfprintf_r+0x13cc>
c0033b1b:	e9 bc fe ff ff       	jmp    c00339dc <_svfprintf_r+0x127c>
c0033b20:	83 ee 10             	sub    $0x10,%esi
c0033b23:	83 fe 10             	cmp    $0x10,%esi
c0033b26:	0f 8e b0 fe ff ff    	jle    c00339dc <_svfprintf_r+0x127c>
c0033b2c:	83 c0 01             	add    $0x1,%eax
c0033b2f:	83 c1 10             	add    $0x10,%ecx
c0033b32:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033b38:	83 c7 08             	add    $0x8,%edi
c0033b3b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033b42:	83 f8 07             	cmp    $0x7,%eax
c0033b45:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033b4b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033b51:	7e cd                	jle    c0033b20 <_svfprintf_r+0x13c0>
c0033b53:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b56:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033b5a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b61:	89 04 24             	mov    %eax,(%esp)
c0033b64:	e8 07 37 00 00       	call   c0037270 <__ssprint_r>
c0033b69:	85 c0                	test   %eax,%eax
c0033b6b:	0f 85 bf ed ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033b71:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033b77:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033b7a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b80:	eb 9e                	jmp    c0033b20 <_svfprintf_r+0x13c0>
c0033b82:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b89:	0f 85 14 fa ff ff    	jne    c00335a3 <_svfprintf_r+0xe43>
c0033b8f:	89 07                	mov    %eax,(%edi)
c0033b91:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b97:	8d 51 01             	lea    0x1(%ecx),%edx
c0033b9a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033ba1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033ba7:	83 c0 01             	add    $0x1,%eax
c0033baa:	83 f8 07             	cmp    $0x7,%eax
c0033bad:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033bb3:	0f 8e 8b fa ff ff    	jle    c0033644 <_svfprintf_r+0xee4>
c0033bb9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bbf:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bc3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bc6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033bca:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bcd:	89 04 24             	mov    %eax,(%esp)
c0033bd0:	e8 9b 36 00 00       	call   c0037270 <__ssprint_r>
c0033bd5:	85 c0                	test   %eax,%eax
c0033bd7:	0f 85 53 ed ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033bdd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033be3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033be6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033bec:	e9 56 fa ff ff       	jmp    c0033647 <_svfprintf_r+0xee7>
c0033bf1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033bf7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033bfb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033bfe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033c02:	8b 45 08             	mov    0x8(%ebp),%eax
c0033c05:	89 04 24             	mov    %eax,(%esp)
c0033c08:	e8 63 36 00 00       	call   c0037270 <__ssprint_r>
c0033c0d:	85 c0                	test   %eax,%eax
c0033c0f:	0f 85 1b ed ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033c15:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033c1b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c1e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033c24:	e9 d6 f9 ff ff       	jmp    c00335ff <_svfprintf_r+0xe9f>
c0033c29:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033c2f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033c33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033c36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033c3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033c3d:	89 04 24             	mov    %eax,(%esp)
c0033c40:	e8 2b 36 00 00       	call   c0037270 <__ssprint_r>
c0033c45:	85 c0                	test   %eax,%eax
c0033c47:	0f 85 e3 ec ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033c4d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033c53:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c56:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033c5c:	e9 6f f9 ff ff       	jmp    c00335d0 <_svfprintf_r+0xe70>
c0033c61:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033c67:	dd 1c 24             	fstpl  (%esp)
c0033c6a:	e8 11 35 00 00       	call   c0037180 <__fpclassifyd>
c0033c6f:	85 c0                	test   %eax,%eax
c0033c71:	0f 85 a3 01 00 00    	jne    c0033e1a <_svfprintf_r+0x16ba>
c0033c77:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0033c7e:	ba de 94 03 c0       	mov    $0xc00394de,%edx
c0033c83:	b8 e2 94 03 c0       	mov    $0xc00394e2,%eax
c0033c88:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033c8f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033c96:	00 00 00 
c0033c99:	0f 4e c2             	cmovle %edx,%eax
c0033c9c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033ca2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033ca9:	ff ff ff 
c0033cac:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033cb3:	00 00 00 
c0033cb6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033cbd:	00 00 00 
c0033cc0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033cc7:	00 00 00 
c0033cca:	e9 29 ed ff ff       	jmp    c00329f8 <_svfprintf_r+0x298>
c0033ccf:	dd 00                	fldl   (%eax)
c0033cd1:	83 c0 08             	add    $0x8,%eax
c0033cd4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0033cda:	89 45 14             	mov    %eax,0x14(%ebp)
c0033cdd:	e9 e6 ef ff ff       	jmp    c0032cc8 <_svfprintf_r+0x568>
c0033ce2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ce8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033cec:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033cef:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033cf3:	8b 45 08             	mov    0x8(%ebp),%eax
c0033cf6:	89 04 24             	mov    %eax,(%esp)
c0033cf9:	e8 72 35 00 00       	call   c0037270 <__ssprint_r>
c0033cfe:	85 c0                	test   %eax,%eax
c0033d00:	0f 85 2a ec ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033d06:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033d0c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d0f:	e9 6b f6 ff ff       	jmp    c003337f <_svfprintf_r+0xc1f>
c0033d14:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033d1a:	83 c1 01             	add    $0x1,%ecx
c0033d1d:	83 c7 08             	add    $0x8,%edi
c0033d20:	c7 47 f8 0f 95 03 c0 	movl   $0xc003950f,-0x8(%edi)
c0033d27:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033d2e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033d34:	83 c0 01             	add    $0x1,%eax
c0033d37:	83 f8 07             	cmp    $0x7,%eax
c0033d3a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033d40:	0f 8f ef 02 00 00    	jg     c0034035 <_svfprintf_r+0x18d5>
c0033d46:	85 db                	test   %ebx,%ebx
c0033d48:	75 17                	jne    c0033d61 <_svfprintf_r+0x1601>
c0033d4a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033d50:	85 d2                	test   %edx,%edx
c0033d52:	75 0d                	jne    c0033d61 <_svfprintf_r+0x1601>
c0033d54:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d5b:	0f 84 ab f4 ff ff    	je     c003320c <_svfprintf_r+0xaac>
c0033d61:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033d67:	83 c7 08             	add    $0x8,%edi
c0033d6a:	89 47 f8             	mov    %eax,-0x8(%edi)
c0033d6d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033d73:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033d76:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033d79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033d7f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033d85:	83 c0 01             	add    $0x1,%eax
c0033d88:	83 f8 07             	cmp    $0x7,%eax
c0033d8b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033d91:	0f 8f 60 03 00 00    	jg     c00340f7 <_svfprintf_r+0x1997>
c0033d97:	f7 db                	neg    %ebx
c0033d99:	85 db                	test   %ebx,%ebx
c0033d9b:	0f 8e 21 03 00 00    	jle    c00340c2 <_svfprintf_r+0x1962>
c0033da1:	83 fb 10             	cmp    $0x10,%ebx
c0033da4:	0f 8e c3 02 00 00    	jle    c003406d <_svfprintf_r+0x190d>
c0033daa:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033db0:	eb 12                	jmp    c0033dc4 <_svfprintf_r+0x1664>
c0033db2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033db8:	83 eb 10             	sub    $0x10,%ebx
c0033dbb:	83 fb 10             	cmp    $0x10,%ebx
c0033dbe:	0f 8e a9 02 00 00    	jle    c003406d <_svfprintf_r+0x190d>
c0033dc4:	83 c0 01             	add    $0x1,%eax
c0033dc7:	83 c2 10             	add    $0x10,%edx
c0033dca:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0033dd0:	83 c7 08             	add    $0x8,%edi
c0033dd3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033dda:	83 f8 07             	cmp    $0x7,%eax
c0033ddd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033de3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033de9:	7e cd                	jle    c0033db8 <_svfprintf_r+0x1658>
c0033deb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033dee:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033df2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033df6:	8b 45 08             	mov    0x8(%ebp),%eax
c0033df9:	89 04 24             	mov    %eax,(%esp)
c0033dfc:	e8 6f 34 00 00       	call   c0037270 <__ssprint_r>
c0033e01:	85 c0                	test   %eax,%eax
c0033e03:	0f 85 27 eb ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033e09:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033e0f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033e12:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033e18:	eb 9e                	jmp    c0033db8 <_svfprintf_r+0x1658>
c0033e1a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033e20:	83 e3 df             	and    $0xffffffdf,%ebx
c0033e23:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c0033e2a:	0f 84 05 03 00 00    	je     c0034135 <_svfprintf_r+0x19d5>
c0033e30:	83 fb 47             	cmp    $0x47,%ebx
c0033e33:	75 16                	jne    c0033e4b <_svfprintf_r+0x16eb>
c0033e35:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e3b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e40:	85 d2                	test   %edx,%edx
c0033e42:	0f 45 c2             	cmovne %edx,%eax
c0033e45:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033e4b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e51:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033e57:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c0033e5d:	80 cc 01             	or     $0x1,%ah
c0033e60:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033e66:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0033e6c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033e73:	85 c0                	test   %eax,%eax
c0033e75:	0f 88 ba 05 00 00    	js     c0034435 <_svfprintf_r+0x1cd5>
c0033e7b:	83 fb 46             	cmp    $0x46,%ebx
c0033e7e:	0f 94 c0             	sete   %al
c0033e81:	89 c6                	mov    %eax,%esi
c0033e83:	0f 84 d4 03 00 00    	je     c003425d <_svfprintf_r+0x1afd>
c0033e89:	83 fb 45             	cmp    $0x45,%ebx
c0033e8c:	0f 85 99 05 00 00    	jne    c003442b <_svfprintf_r+0x1ccb>
c0033e92:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e98:	dd 54 24 04          	fstl   0x4(%esp)
c0033e9c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033ea3:	00 
c0033ea4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033eaa:	8d 70 01             	lea    0x1(%eax),%esi
c0033ead:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033eb3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033eb7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033ebd:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033ec1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033ec7:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ecb:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ece:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033ed2:	89 04 24             	mov    %eax,(%esp)
c0033ed5:	e8 56 09 00 00       	call   c0034830 <_dtoa_r>
c0033eda:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033ee0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033ee3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ee9:	d9 ee                	fldz   
c0033eeb:	d9 c9                	fxch   %st(1)
c0033eed:	df e9                	fucomip %st(1),%st
c0033eef:	dd d8                	fstp   %st(0)
c0033ef1:	0f 8a fd 00 00 00    	jp     c0033ff4 <_svfprintf_r+0x1894>
c0033ef7:	89 c8                	mov    %ecx,%eax
c0033ef9:	0f 85 f5 00 00 00    	jne    c0033ff4 <_svfprintf_r+0x1894>
c0033eff:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033f05:	83 fb 47             	cmp    $0x47,%ebx
c0033f08:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033f0e:	0f 84 1e 04 00 00    	je     c0034332 <_svfprintf_r+0x1bd2>
c0033f14:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0033f1b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033f21:	0f 8e 65 04 00 00    	jle    c003438c <_svfprintf_r+0x1c2c>
c0033f27:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c0033f2e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033f34:	0f 84 3c 05 00 00    	je     c0034476 <_svfprintf_r+0x1d16>
c0033f3a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033f40:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033f46:	0f 8f f7 04 00 00    	jg     c0034443 <_svfprintf_r+0x1ce3>
c0033f4c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033f52:	83 e0 01             	and    $0x1,%eax
c0033f55:	0f 85 e2 05 00 00    	jne    c003453d <_svfprintf_r+0x1ddd>
c0033f5b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033f61:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033f68:	00 00 00 
c0033f6b:	85 d2                	test   %edx,%edx
c0033f6d:	0f 49 c2             	cmovns %edx,%eax
c0033f70:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033f76:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c0033f7d:	0f 85 68 03 00 00    	jne    c00342eb <_svfprintf_r+0x1b8b>
c0033f83:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033f89:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033f8f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033f96:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033f9d:	00 00 00 
c0033fa0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033fa6:	e9 4d ea ff ff       	jmp    c00329f8 <_svfprintf_r+0x298>
c0033fab:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033fb1:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033fb5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033fb8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0033fbf:	89 04 24             	mov    %eax,(%esp)
c0033fc2:	e8 a9 32 00 00       	call   c0037270 <__ssprint_r>
c0033fc7:	85 c0                	test   %eax,%eax
c0033fc9:	0f 85 61 e9 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0033fcf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033fd5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033fd8:	e9 f2 f3 ff ff       	jmp    c00333cf <_svfprintf_r+0xc6f>
c0033fdd:	89 d0                	mov    %edx,%eax
c0033fdf:	e9 d1 fa ff ff       	jmp    c0033ab5 <_svfprintf_r+0x1355>
c0033fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fe8:	8d 50 01             	lea    0x1(%eax),%edx
c0033feb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033ff1:	c6 00 30             	movb   $0x30,(%eax)
c0033ff4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033ffa:	39 c1                	cmp    %eax,%ecx
c0033ffc:	77 ea                	ja     c0033fe8 <_svfprintf_r+0x1888>
c0033ffe:	e9 fc fe ff ff       	jmp    c0033eff <_svfprintf_r+0x179f>
c0034003:	8b 45 08             	mov    0x8(%ebp),%eax
c0034006:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003400d:	00 
c003400e:	89 04 24             	mov    %eax,(%esp)
c0034011:	e8 4a 1b 00 00       	call   c0035b60 <_malloc_r>
c0034016:	8b 55 0c             	mov    0xc(%ebp),%edx
c0034019:	85 c0                	test   %eax,%eax
c003401b:	89 02                	mov    %eax,(%edx)
c003401d:	89 42 10             	mov    %eax,0x10(%edx)
c0034020:	0f 84 15 06 00 00    	je     c003463b <_svfprintf_r+0x1edb>
c0034026:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034029:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0034030:	e9 6c e7 ff ff       	jmp    c00327a1 <_svfprintf_r+0x41>
c0034035:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003403b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003403f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034042:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034046:	8b 45 08             	mov    0x8(%ebp),%eax
c0034049:	89 04 24             	mov    %eax,(%esp)
c003404c:	e8 1f 32 00 00       	call   c0037270 <__ssprint_r>
c0034051:	85 c0                	test   %eax,%eax
c0034053:	0f 85 d7 e8 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c0034059:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003405f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034062:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0034068:	e9 d9 fc ff ff       	jmp    c0033d46 <_svfprintf_r+0x15e6>
c003406d:	83 c0 01             	add    $0x1,%eax
c0034070:	01 da                	add    %ebx,%edx
c0034072:	c7 07 78 96 03 c0    	movl   $0xc0039678,(%edi)
c0034078:	83 c7 08             	add    $0x8,%edi
c003407b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003407e:	83 f8 07             	cmp    $0x7,%eax
c0034081:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0034087:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003408d:	7e 33                	jle    c00340c2 <_svfprintf_r+0x1962>
c003408f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0034095:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034099:	8b 45 0c             	mov    0xc(%ebp),%eax
c003409c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00340a3:	89 04 24             	mov    %eax,(%esp)
c00340a6:	e8 c5 31 00 00       	call   c0037270 <__ssprint_r>
c00340ab:	85 c0                	test   %eax,%eax
c00340ad:	0f 85 7d e8 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00340b3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00340b9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00340bc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00340c2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00340c8:	83 c0 01             	add    $0x1,%eax
c00340cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00340d1:	89 1f                	mov    %ebx,(%edi)
c00340d3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00340d9:	01 da                	add    %ebx,%edx
c00340db:	83 f8 07             	cmp    $0x7,%eax
c00340de:	89 5f 04             	mov    %ebx,0x4(%edi)
c00340e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00340e7:	0f 8f 86 f5 ff ff    	jg     c0033673 <_svfprintf_r+0xf13>
c00340ed:	83 c7 08             	add    $0x8,%edi
c00340f0:	89 d1                	mov    %edx,%ecx
c00340f2:	e9 15 f1 ff ff       	jmp    c003320c <_svfprintf_r+0xaac>
c00340f7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00340fd:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034101:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034104:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034108:	8b 45 08             	mov    0x8(%ebp),%eax
c003410b:	89 04 24             	mov    %eax,(%esp)
c003410e:	e8 5d 31 00 00       	call   c0037270 <__ssprint_r>
c0034113:	85 c0                	test   %eax,%eax
c0034115:	0f 85 15 e8 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003411b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0034121:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034124:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003412a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0034130:	e9 62 fc ff ff       	jmp    c0033d97 <_svfprintf_r+0x1637>
c0034135:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003413c:	00 00 00 
c003413f:	e9 07 fd ff ff       	jmp    c0033e4b <_svfprintf_r+0x16eb>
c0034144:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003414a:	89 04 24             	mov    %eax,(%esp)
c003414d:	e8 9e 30 00 00       	call   c00371f0 <strlen>
c0034152:	e9 6a e8 ff ff       	jmp    c00329c1 <_svfprintf_r+0x261>
c0034157:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003415d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034161:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034164:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034168:	8b 45 08             	mov    0x8(%ebp),%eax
c003416b:	89 04 24             	mov    %eax,(%esp)
c003416e:	e8 fd 30 00 00       	call   c0037270 <__ssprint_r>
c0034173:	85 c0                	test   %eax,%eax
c0034175:	0f 85 b5 e7 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c003417b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0034181:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0034184:	e9 76 f6 ff ff       	jmp    c00337ff <_svfprintf_r+0x109f>
c0034189:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003418f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034193:	8b 45 0c             	mov    0xc(%ebp),%eax
c0034196:	89 44 24 04          	mov    %eax,0x4(%esp)
c003419a:	8b 45 08             	mov    0x8(%ebp),%eax
c003419d:	89 04 24             	mov    %eax,(%esp)
c00341a0:	e8 cb 30 00 00       	call   c0037270 <__ssprint_r>
c00341a5:	85 c0                	test   %eax,%eax
c00341a7:	0f 85 83 e7 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00341ad:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00341b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00341b6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00341bc:	e9 f4 f8 ff ff       	jmp    c0033ab5 <_svfprintf_r+0x1355>
c00341c1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00341c7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00341cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00341ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00341d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00341d5:	89 04 24             	mov    %eax,(%esp)
c00341d8:	e8 93 30 00 00       	call   c0037270 <__ssprint_r>
c00341dd:	85 c0                	test   %eax,%eax
c00341df:	0f 85 4b e7 ff ff    	jne    c0032930 <_svfprintf_r+0x1d0>
c00341e5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00341eb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00341ee:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c00341f4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00341fa:	e9 fa f8 ff ff       	jmp    c0033af9 <_svfprintf_r+0x1399>
c00341ff:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0034205:	b0 06                	mov    $0x6,%al
c0034207:	89 75 14             	mov    %esi,0x14(%ebp)
c003420a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034211:	00 00 00 
c0034214:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003421b:	00 00 00 
c003421e:	83 fa 06             	cmp    $0x6,%edx
c0034221:	0f 46 c2             	cmovbe %edx,%eax
c0034224:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c003422a:	85 c0                	test   %eax,%eax
c003422c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034232:	c7 85 28 ff ff ff 08 	movl   $0xc0039508,-0xd8(%ebp)
c0034239:	95 03 c0 
c003423c:	0f 49 d0             	cmovns %eax,%edx
c003423f:	31 db                	xor    %ebx,%ebx
c0034241:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0034247:	e9 b7 e7 ff ff       	jmp    c0032a03 <_svfprintf_r+0x2a3>
c003424c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0034253:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0034258:	e9 9d ea ff ff       	jmp    c0032cfa <_svfprintf_r+0x59a>
c003425d:	ba 03 00 00 00       	mov    $0x3,%edx
c0034262:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0034268:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c003426c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0034272:	89 44 24 18          	mov    %eax,0x18(%esp)
c0034276:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c003427c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0034280:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0034286:	dd 54 24 04          	fstl   0x4(%esp)
c003428a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003428e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0034294:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034298:	8b 45 08             	mov    0x8(%ebp),%eax
c003429b:	89 04 24             	mov    %eax,(%esp)
c003429e:	e8 8d 05 00 00       	call   c0034830 <_dtoa_r>
c00342a3:	83 fb 47             	cmp    $0x47,%ebx
c00342a6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00342ac:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00342b2:	75 09                	jne    c00342bd <_svfprintf_r+0x1b5d>
c00342b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00342bb:	74 5b                	je     c0034318 <_svfprintf_r+0x1bb8>
c00342bd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00342c3:	89 f0                	mov    %esi,%eax
c00342c5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c00342cb:	01 d1                	add    %edx,%ecx
c00342cd:	84 c0                	test   %al,%al
c00342cf:	0f 84 14 fc ff ff    	je     c0033ee9 <_svfprintf_r+0x1789>
c00342d5:	80 3a 30             	cmpb   $0x30,(%edx)
c00342d8:	0f 84 37 02 00 00    	je     c0034515 <_svfprintf_r+0x1db5>
c00342de:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00342e4:	01 c1                	add    %eax,%ecx
c00342e6:	e9 fe fb ff ff       	jmp    c0033ee9 <_svfprintf_r+0x1789>
c00342eb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00342f1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00342f7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00342fc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0034303:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003430a:	00 00 00 
c003430d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0034313:	e9 e4 e6 ff ff       	jmp    c00329fc <_svfprintf_r+0x29c>
c0034318:	dd d8                	fstp   %st(0)
c003431a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0034320:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0034326:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003432c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0034332:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0034338:	83 f8 fd             	cmp    $0xfffffffd,%eax
c003433b:	7c 48                	jl     c0034385 <_svfprintf_r+0x1c25>
c003433d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0034343:	7c 40                	jl     c0034385 <_svfprintf_r+0x1c25>
c0034345:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c003434b:	e9 ea fb ff ff       	jmp    c0033f3a <_svfprintf_r+0x17da>
c0034350:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0034356:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003435d:	89 75 14             	mov    %esi,0x14(%ebp)
c0034360:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034367:	00 00 00 
c003436a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0034370:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034376:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003437d:	00 00 00 
c0034380:	e9 73 e6 ff ff       	jmp    c00329f8 <_svfprintf_r+0x298>
c0034385:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c003438c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c003438f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0034396:	85 c9                	test   %ecx,%ecx
c0034398:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c003439e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c00343a4:	0f 88 2c 02 00 00    	js     c00345d6 <_svfprintf_r+0x1e76>
c00343aa:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c00343b1:	83 f9 09             	cmp    $0x9,%ecx
c00343b4:	0f 8f ea 00 00 00    	jg     c00344a4 <_svfprintf_r+0x1d44>
c00343ba:	83 c1 30             	add    $0x30,%ecx
c00343bd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c00343c4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c00343ca:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c00343d0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00343d6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c00343dc:	29 d0                	sub    %edx,%eax
c00343de:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c00343e4:	89 da                	mov    %ebx,%edx
c00343e6:	01 c2                	add    %eax,%edx
c00343e8:	83 fb 01             	cmp    $0x1,%ebx
c00343eb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00343f1:	0f 8e 21 02 00 00    	jle    c0034618 <_svfprintf_r+0x1eb8>
c00343f7:	31 c0                	xor    %eax,%eax
c00343f9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0034400:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0034407:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003440e:	00 00 00 
c0034411:	e9 60 fb ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c0034416:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c003441c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034423:	00 00 00 
c0034426:	e9 68 e4 ff ff       	jmp    c0032893 <_svfprintf_r+0x133>
c003442b:	ba 02 00 00 00       	mov    $0x2,%edx
c0034430:	e9 2d fe ff ff       	jmp    c0034262 <_svfprintf_r+0x1b02>
c0034435:	d9 e0                	fchs   
c0034437:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c003443e:	e9 38 fa ff ff       	jmp    c0033e7b <_svfprintf_r+0x171b>
c0034443:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0034449:	ba 01 00 00 00       	mov    $0x1,%edx
c003444e:	85 c9                	test   %ecx,%ecx
c0034450:	0f 8e 5a 01 00 00    	jle    c00345b0 <_svfprintf_r+0x1e50>
c0034456:	31 c0                	xor    %eax,%eax
c0034458:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c003445e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0034465:	00 00 00 
c0034468:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003446e:	0f 49 c2             	cmovns %edx,%eax
c0034471:	e9 00 fb ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c0034476:	85 c0                	test   %eax,%eax
c0034478:	0f 8e 06 01 00 00    	jle    c0034584 <_svfprintf_r+0x1e24>
c003447e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0034484:	85 f6                	test   %esi,%esi
c0034486:	0f 85 d4 00 00 00    	jne    c0034560 <_svfprintf_r+0x1e00>
c003448c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034493:	0f 85 c7 00 00 00    	jne    c0034560 <_svfprintf_r+0x1e00>
c0034499:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003449f:	e9 d2 fa ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c00344a4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c00344aa:	89 f3                	mov    %esi,%ebx
c00344ac:	b8 67 66 66 66       	mov    $0x66666667,%eax
c00344b1:	83 eb 01             	sub    $0x1,%ebx
c00344b4:	f7 e9                	imul   %ecx
c00344b6:	89 c8                	mov    %ecx,%eax
c00344b8:	c1 f8 1f             	sar    $0x1f,%eax
c00344bb:	c1 fa 02             	sar    $0x2,%edx
c00344be:	29 c2                	sub    %eax,%edx
c00344c0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00344c3:	01 c0                	add    %eax,%eax
c00344c5:	29 c1                	sub    %eax,%ecx
c00344c7:	83 fa 09             	cmp    $0x9,%edx
c00344ca:	8d 41 30             	lea    0x30(%ecx),%eax
c00344cd:	89 d1                	mov    %edx,%ecx
c00344cf:	88 03                	mov    %al,(%ebx)
c00344d1:	7f d9                	jg     c00344ac <_svfprintf_r+0x1d4c>
c00344d3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c00344d6:	83 c1 30             	add    $0x30,%ecx
c00344d9:	39 f0                	cmp    %esi,%eax
c00344db:	88 4b ff             	mov    %cl,-0x1(%ebx)
c00344de:	0f 83 6a 01 00 00    	jae    c003464e <_svfprintf_r+0x1eee>
c00344e4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c00344ea:	eb 07                	jmp    c00344f3 <_svfprintf_r+0x1d93>
c00344ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344f0:	0f b6 08             	movzbl (%eax),%ecx
c00344f3:	83 c0 01             	add    $0x1,%eax
c00344f6:	83 c2 01             	add    $0x1,%edx
c00344f9:	39 f0                	cmp    %esi,%eax
c00344fb:	88 4a ff             	mov    %cl,-0x1(%edx)
c00344fe:	75 f0                	jne    c00344f0 <_svfprintf_r+0x1d90>
c0034500:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0034506:	29 d8                	sub    %ebx,%eax
c0034508:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c003450e:	01 d0                	add    %edx,%eax
c0034510:	e9 bb fe ff ff       	jmp    c00343d0 <_svfprintf_r+0x1c70>
c0034515:	d9 ee                	fldz   
c0034517:	d9 c9                	fxch   %st(1)
c0034519:	db e9                	fucomi %st(1),%st
c003451b:	dd d9                	fstp   %st(1)
c003451d:	7a 06                	jp     c0034525 <_svfprintf_r+0x1dc5>
c003451f:	0f 84 b9 fd ff ff    	je     c00342de <_svfprintf_r+0x1b7e>
c0034525:	b8 01 00 00 00       	mov    $0x1,%eax
c003452a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0034530:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0034536:	01 c1                	add    %eax,%ecx
c0034538:	e9 ac f9 ff ff       	jmp    c0033ee9 <_svfprintf_r+0x1789>
c003453d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034543:	31 c0                	xor    %eax,%eax
c0034545:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c003454c:	00 00 00 
c003454f:	83 c2 01             	add    $0x1,%edx
c0034552:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0034558:	0f 49 c2             	cmovns %edx,%eax
c003455b:	e9 16 fa ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c0034560:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034566:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003456c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0034570:	89 c2                	mov    %eax,%edx
c0034572:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034578:	31 c0                	xor    %eax,%eax
c003457a:	85 d2                	test   %edx,%edx
c003457c:	0f 49 c2             	cmovns %edx,%eax
c003457f:	e9 f2 f9 ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c0034584:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003458a:	85 db                	test   %ebx,%ebx
c003458c:	75 2f                	jne    c00345bd <_svfprintf_r+0x1e5d>
c003458e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034595:	75 26                	jne    c00345bd <_svfprintf_r+0x1e5d>
c0034597:	b8 01 00 00 00       	mov    $0x1,%eax
c003459c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00345a3:	00 00 00 
c00345a6:	e9 cb f9 ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c00345ab:	90                   	nop
c00345ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00345b0:	b2 02                	mov    $0x2,%dl
c00345b2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c00345b8:	e9 99 fe ff ff       	jmp    c0034456 <_svfprintf_r+0x1cf6>
c00345bd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00345c3:	31 c0                	xor    %eax,%eax
c00345c5:	83 c2 02             	add    $0x2,%edx
c00345c8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00345ce:	0f 49 c2             	cmovns %edx,%eax
c00345d1:	e9 a0 f9 ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c00345d6:	f7 d9                	neg    %ecx
c00345d8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c00345df:	e9 cd fd ff ff       	jmp    c00343b1 <_svfprintf_r+0x1c51>
c00345e4:	8b 55 14             	mov    0x14(%ebp),%edx
c00345e7:	8b 45 14             	mov    0x14(%ebp),%eax
c00345ea:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00345f0:	8b 12                	mov    (%edx),%edx
c00345f2:	83 c0 04             	add    $0x4,%eax
c00345f5:	89 45 14             	mov    %eax,0x14(%ebp)
c00345f8:	85 d2                	test   %edx,%edx
c00345fa:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0034600:	0f 89 a9 e2 ff ff    	jns    c00328af <_svfprintf_r+0x14f>
c0034606:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c003460d:	ff ff ff 
c0034610:	89 c8                	mov    %ecx,%eax
c0034612:	e9 76 e2 ff ff       	jmp    c003288d <_svfprintf_r+0x12d>
c0034617:	90                   	nop
c0034618:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c003461e:	83 e0 01             	and    $0x1,%eax
c0034621:	0f 85 d0 fd ff ff    	jne    c00343f7 <_svfprintf_r+0x1c97>
c0034627:	85 d2                	test   %edx,%edx
c0034629:	0f 49 c2             	cmovns %edx,%eax
c003462c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0034633:	00 00 00 
c0034636:	e9 3b f9 ff ff       	jmp    c0033f76 <_svfprintf_r+0x1816>
c003463b:	8b 45 08             	mov    0x8(%ebp),%eax
c003463e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0034644:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0034649:	e9 f5 e2 ff ff       	jmp    c0032943 <_svfprintf_r+0x1e3>
c003464e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0034654:	e9 77 fd ff ff       	jmp    c00343d0 <_svfprintf_r+0x1c70>
c0034659:	66 90                	xchg   %ax,%ax
c003465b:	66 90                	xchg   %ax,%ax
c003465d:	66 90                	xchg   %ax,%ax
c003465f:	90                   	nop

c0034660 <quorem>:
c0034660:	55                   	push   %ebp
c0034661:	89 c1                	mov    %eax,%ecx
c0034663:	89 e5                	mov    %esp,%ebp
c0034665:	57                   	push   %edi
c0034666:	89 d7                	mov    %edx,%edi
c0034668:	56                   	push   %esi
c0034669:	53                   	push   %ebx
c003466a:	83 ec 3c             	sub    $0x3c,%esp
c003466d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0034670:	8b 42 10             	mov    0x10(%edx),%eax
c0034673:	3b 41 10             	cmp    0x10(%ecx),%eax
c0034676:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0034679:	89 ca                	mov    %ecx,%edx
c003467b:	0f 8f 9f 01 00 00    	jg     c0034820 <quorem+0x1c0>
c0034681:	83 e8 01             	sub    $0x1,%eax
c0034684:	83 c7 14             	add    $0x14,%edi
c0034687:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003468a:	c1 e0 02             	shl    $0x2,%eax
c003468d:	83 c2 14             	add    $0x14,%edx
c0034690:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0034693:	01 d0                	add    %edx,%eax
c0034695:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0034698:	8b 13                	mov    (%ebx),%edx
c003469a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c003469d:	8b 00                	mov    (%eax),%eax
c003469f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c00346a2:	8d 4a 01             	lea    0x1(%edx),%ecx
c00346a5:	31 d2                	xor    %edx,%edx
c00346a7:	f7 f1                	div    %ecx
c00346a9:	85 c0                	test   %eax,%eax
c00346ab:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00346ae:	89 45 cc             	mov    %eax,-0x34(%ebp)
c00346b1:	0f 84 b5 00 00 00    	je     c003476c <quorem+0x10c>
c00346b7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00346ba:	31 f6                	xor    %esi,%esi
c00346bc:	89 fa                	mov    %edi,%edx
c00346be:	89 7d c0             	mov    %edi,-0x40(%ebp)
c00346c1:	89 f7                	mov    %esi,%edi
c00346c3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00346ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00346d0:	83 c2 04             	add    $0x4,%edx
c00346d3:	8b 72 fc             	mov    -0x4(%edx),%esi
c00346d6:	83 c0 04             	add    $0x4,%eax
c00346d9:	0f b7 ce             	movzwl %si,%ecx
c00346dc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c00346e0:	03 4d dc             	add    -0x24(%ebp),%ecx
c00346e3:	c1 ee 10             	shr    $0x10,%esi
c00346e6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c00346ea:	89 cb                	mov    %ecx,%ebx
c00346ec:	0f b7 c9             	movzwl %cx,%ecx
c00346ef:	c1 eb 10             	shr    $0x10,%ebx
c00346f2:	29 cf                	sub    %ecx,%edi
c00346f4:	01 f3                	add    %esi,%ebx
c00346f6:	89 de                	mov    %ebx,%esi
c00346f8:	0f b7 db             	movzwl %bx,%ebx
c00346fb:	c1 ee 10             	shr    $0x10,%esi
c00346fe:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0034701:	8b 70 fc             	mov    -0x4(%eax),%esi
c0034704:	0f b7 ce             	movzwl %si,%ecx
c0034707:	01 f9                	add    %edi,%ecx
c0034709:	c1 ee 10             	shr    $0x10,%esi
c003470c:	29 de                	sub    %ebx,%esi
c003470e:	89 cb                	mov    %ecx,%ebx
c0034710:	c1 fb 10             	sar    $0x10,%ebx
c0034713:	0f b7 c9             	movzwl %cx,%ecx
c0034716:	01 de                	add    %ebx,%esi
c0034718:	89 f7                	mov    %esi,%edi
c003471a:	c1 e6 10             	shl    $0x10,%esi
c003471d:	09 ce                	or     %ecx,%esi
c003471f:	c1 ff 10             	sar    $0x10,%edi
c0034722:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034725:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034728:	73 a6                	jae    c00346d0 <quorem+0x70>
c003472a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003472d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034730:	8b 10                	mov    (%eax),%edx
c0034732:	85 d2                	test   %edx,%edx
c0034734:	75 36                	jne    c003476c <quorem+0x10c>
c0034736:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034739:	89 c2                	mov    %eax,%edx
c003473b:	83 e8 04             	sub    $0x4,%eax
c003473e:	39 c1                	cmp    %eax,%ecx
c0034740:	73 21                	jae    c0034763 <quorem+0x103>
c0034742:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034745:	85 f6                	test   %esi,%esi
c0034747:	75 1a                	jne    c0034763 <quorem+0x103>
c0034749:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003474c:	eb 08                	jmp    c0034756 <quorem+0xf6>
c003474e:	66 90                	xchg   %ax,%ax
c0034750:	8b 18                	mov    (%eax),%ebx
c0034752:	85 db                	test   %ebx,%ebx
c0034754:	75 0a                	jne    c0034760 <quorem+0x100>
c0034756:	83 e8 04             	sub    $0x4,%eax
c0034759:	83 ea 01             	sub    $0x1,%edx
c003475c:	39 c1                	cmp    %eax,%ecx
c003475e:	72 f0                	jb     c0034750 <quorem+0xf0>
c0034760:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034763:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034766:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034769:	89 50 10             	mov    %edx,0x10(%eax)
c003476c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003476f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034773:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034776:	89 04 24             	mov    %eax,(%esp)
c0034779:	e8 a2 23 00 00       	call   c0036b20 <__mcmp>
c003477e:	85 c0                	test   %eax,%eax
c0034780:	0f 88 8e 00 00 00    	js     c0034814 <quorem+0x1b4>
c0034786:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034789:	31 f6                	xor    %esi,%esi
c003478b:	83 c0 01             	add    $0x1,%eax
c003478e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034791:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034798:	83 c7 04             	add    $0x4,%edi
c003479b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003479e:	83 c0 04             	add    $0x4,%eax
c00347a1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c00347a4:	0f b7 d1             	movzwl %cx,%edx
c00347a7:	29 d6                	sub    %edx,%esi
c00347a9:	0f b7 d3             	movzwl %bx,%edx
c00347ac:	01 f2                	add    %esi,%edx
c00347ae:	c1 e9 10             	shr    $0x10,%ecx
c00347b1:	c1 eb 10             	shr    $0x10,%ebx
c00347b4:	29 cb                	sub    %ecx,%ebx
c00347b6:	89 d1                	mov    %edx,%ecx
c00347b8:	c1 f9 10             	sar    $0x10,%ecx
c00347bb:	0f b7 d2             	movzwl %dx,%edx
c00347be:	01 cb                	add    %ecx,%ebx
c00347c0:	89 de                	mov    %ebx,%esi
c00347c2:	c1 e3 10             	shl    $0x10,%ebx
c00347c5:	09 d3                	or     %edx,%ebx
c00347c7:	c1 fe 10             	sar    $0x10,%esi
c00347ca:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c00347cd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c00347d0:	73 c6                	jae    c0034798 <quorem+0x138>
c00347d2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00347d5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00347d8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c00347db:	8b 02                	mov    (%edx),%eax
c00347dd:	85 c0                	test   %eax,%eax
c00347df:	75 33                	jne    c0034814 <quorem+0x1b4>
c00347e1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00347e4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00347e7:	39 c1                	cmp    %eax,%ecx
c00347e9:	73 20                	jae    c003480b <quorem+0x1ab>
c00347eb:	8b 72 fc             	mov    -0x4(%edx),%esi
c00347ee:	85 f6                	test   %esi,%esi
c00347f0:	75 19                	jne    c003480b <quorem+0x1ab>
c00347f2:	89 fa                	mov    %edi,%edx
c00347f4:	eb 08                	jmp    c00347fe <quorem+0x19e>
c00347f6:	66 90                	xchg   %ax,%ax
c00347f8:	8b 18                	mov    (%eax),%ebx
c00347fa:	85 db                	test   %ebx,%ebx
c00347fc:	75 0a                	jne    c0034808 <quorem+0x1a8>
c00347fe:	83 e8 04             	sub    $0x4,%eax
c0034801:	83 ea 01             	sub    $0x1,%edx
c0034804:	39 c1                	cmp    %eax,%ecx
c0034806:	72 f0                	jb     c00347f8 <quorem+0x198>
c0034808:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003480b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003480e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034811:	89 78 10             	mov    %edi,0x10(%eax)
c0034814:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034817:	83 c4 3c             	add    $0x3c,%esp
c003481a:	5b                   	pop    %ebx
c003481b:	5e                   	pop    %esi
c003481c:	5f                   	pop    %edi
c003481d:	5d                   	pop    %ebp
c003481e:	c3                   	ret    
c003481f:	90                   	nop
c0034820:	83 c4 3c             	add    $0x3c,%esp
c0034823:	31 c0                	xor    %eax,%eax
c0034825:	5b                   	pop    %ebx
c0034826:	5e                   	pop    %esi
c0034827:	5f                   	pop    %edi
c0034828:	5d                   	pop    %ebp
c0034829:	c3                   	ret    
c003482a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034830 <_dtoa_r>:
c0034830:	55                   	push   %ebp
c0034831:	89 e5                	mov    %esp,%ebp
c0034833:	57                   	push   %edi
c0034834:	56                   	push   %esi
c0034835:	53                   	push   %ebx
c0034836:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003483c:	8b 75 08             	mov    0x8(%ebp),%esi
c003483f:	dd 45 0c             	fldl   0xc(%ebp)
c0034842:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034845:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034848:	8b 46 40             	mov    0x40(%esi),%eax
c003484b:	85 c0                	test   %eax,%eax
c003484d:	74 23                	je     c0034872 <_dtoa_r+0x42>
c003484f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034852:	ba 01 00 00 00       	mov    $0x1,%edx
c0034857:	d3 e2                	shl    %cl,%edx
c0034859:	89 48 04             	mov    %ecx,0x4(%eax)
c003485c:	89 50 08             	mov    %edx,0x8(%eax)
c003485f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034863:	89 34 24             	mov    %esi,(%esp)
c0034866:	e8 95 1b 00 00       	call   c0036400 <_Bfree>
c003486b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034872:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034875:	85 ff                	test   %edi,%edi
c0034877:	0f 88 3b 02 00 00    	js     c0034ab8 <_dtoa_r+0x288>
c003487d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034883:	89 f8                	mov    %edi,%eax
c0034885:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003488a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003488f:	0f 84 e3 01 00 00    	je     c0034a78 <_dtoa_r+0x248>
c0034895:	dd 45 c0             	fldl   -0x40(%ebp)
c0034898:	d9 ee                	fldz   
c003489a:	d9 c9                	fxch   %st(1)
c003489c:	db e9                	fucomi %st(1),%st
c003489e:	dd d9                	fstp   %st(1)
c00348a0:	7a 36                	jp     c00348d8 <_dtoa_r+0xa8>
c00348a2:	75 34                	jne    c00348d8 <_dtoa_r+0xa8>
c00348a4:	dd d8                	fstp   %st(0)
c00348a6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00348a9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00348ac:	85 c9                	test   %ecx,%ecx
c00348ae:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00348b4:	0f 84 4e 02 00 00    	je     c0034b08 <_dtoa_r+0x2d8>
c00348ba:	8b 45 24             	mov    0x24(%ebp),%eax
c00348bd:	c7 00 10 95 03 c0    	movl   $0xc0039510,(%eax)
c00348c3:	b8 0f 95 03 c0       	mov    $0xc003950f,%eax
c00348c8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348ce:	5b                   	pop    %ebx
c00348cf:	5e                   	pop    %esi
c00348d0:	5f                   	pop    %edi
c00348d1:	5d                   	pop    %ebp
c00348d2:	c3                   	ret    
c00348d3:	90                   	nop
c00348d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00348d8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00348db:	89 fb                	mov    %edi,%ebx
c00348dd:	89 44 24 10          	mov    %eax,0x10(%esp)
c00348e1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00348e4:	dd 54 24 04          	fstl   0x4(%esp)
c00348e8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00348ec:	dd 5d b8             	fstpl  -0x48(%ebp)
c00348ef:	89 34 24             	mov    %esi,(%esp)
c00348f2:	c1 eb 14             	shr    $0x14,%ebx
c00348f5:	e8 76 25 00 00       	call   c0036e70 <__d2b>
c00348fa:	85 db                	test   %ebx,%ebx
c00348fc:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00348ff:	0f 85 db 01 00 00    	jne    c0034ae0 <_dtoa_r+0x2b0>
c0034905:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034908:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003490b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003490e:	01 c3                	add    %eax,%ebx
c0034910:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034916:	0f 8c ec 07 00 00    	jl     c0035108 <_dtoa_r+0x8d8>
c003491c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003491f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034924:	89 f8                	mov    %edi,%eax
c0034926:	29 d9                	sub    %ebx,%ecx
c0034928:	d3 e0                	shl    %cl,%eax
c003492a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034930:	d3 ea                	shr    %cl,%edx
c0034932:	09 d0                	or     %edx,%eax
c0034934:	31 d2                	xor    %edx,%edx
c0034936:	83 eb 01             	sub    $0x1,%ebx
c0034939:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003493c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003493f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034942:	df 6d c8             	fildll -0x38(%ebp)
c0034945:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034948:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003494f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034956:	dd 45 b8             	fldl   -0x48(%ebp)
c0034959:	d8 25 a8 96 03 c0    	fsubs  0xc00396a8
c003495f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034962:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034965:	dc 0d c0 96 03 c0    	fmull  0xc00396c0
c003496b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003496f:	b4 0c                	mov    $0xc,%ah
c0034971:	dc 05 c8 96 03 c0    	faddl  0xc00396c8
c0034977:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003497b:	db 45 d4             	fildl  -0x2c(%ebp)
c003497e:	dc 0d d0 96 03 c0    	fmull  0xc00396d0
c0034984:	de c1                	faddp  %st,%st(1)
c0034986:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034989:	db 55 b8             	fistl  -0x48(%ebp)
c003498c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003498f:	d9 ee                	fldz   
c0034991:	df e9                	fucomip %st(1),%st
c0034993:	0f 87 27 07 00 00    	ja     c00350c0 <_dtoa_r+0x890>
c0034999:	dd d8                	fstp   %st(0)
c003499b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003499f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00349a6:	77 24                	ja     c00349cc <_dtoa_r+0x19c>
c00349a8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349ab:	dd 04 c5 80 97 03 c0 	fldl   -0x3ffc6880(,%eax,8)
c00349b2:	dd 45 c0             	fldl   -0x40(%ebp)
c00349b5:	d9 c9                	fxch   %st(1)
c00349b7:	df e9                	fucomip %st(1),%st
c00349b9:	dd d8                	fstp   %st(0)
c00349bb:	0f 86 5f 07 00 00    	jbe    c0035120 <_dtoa_r+0x8f0>
c00349c1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00349c5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00349cc:	89 d0                	mov    %edx,%eax
c00349ce:	29 d8                	sub    %ebx,%eax
c00349d0:	83 e8 01             	sub    $0x1,%eax
c00349d3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00349da:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00349dd:	0f 88 0d 07 00 00    	js     c00350f0 <_dtoa_r+0x8c0>
c00349e3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00349e6:	85 c0                	test   %eax,%eax
c00349e8:	0f 88 ea 06 00 00    	js     c00350d8 <_dtoa_r+0x8a8>
c00349ee:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349f1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00349f4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349fb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00349ff:	0f 87 0b 03 00 00    	ja     c0034d10 <_dtoa_r+0x4e0>
c0034a05:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034a09:	0f 8e 23 10 00 00    	jle    c0035a32 <_dtoa_r+0x1202>
c0034a0f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034a13:	31 c0                	xor    %eax,%eax
c0034a15:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034a19:	0f 84 43 0d 00 00    	je     c0035762 <_dtoa_r+0xf32>
c0034a1f:	0f 8e f3 00 00 00    	jle    c0034b18 <_dtoa_r+0x2e8>
c0034a25:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034a29:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034a30:	0f 84 f3 00 00 00    	je     c0034b29 <_dtoa_r+0x2f9>
c0034a36:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034a3a:	0f 85 d7 02 00 00    	jne    c0034d17 <_dtoa_r+0x4e7>
c0034a40:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034a43:	03 5d 18             	add    0x18(%ebp),%ebx
c0034a46:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034a49:	83 c3 01             	add    $0x1,%ebx
c0034a4c:	83 fb 0e             	cmp    $0xe,%ebx
c0034a4f:	0f 96 c2             	setbe  %dl
c0034a52:	85 db                	test   %ebx,%ebx
c0034a54:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034a57:	0f 8e a7 08 00 00    	jle    c0035304 <_dtoa_r+0xad4>
c0034a5d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034a60:	83 fb 0e             	cmp    $0xe,%ebx
c0034a63:	89 df                	mov    %ebx,%edi
c0034a65:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034a69:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034a6c:	e9 d6 00 00 00       	jmp    c0034b47 <_dtoa_r+0x317>
c0034a71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034a78:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034a7b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0034a7e:	85 d2                	test   %edx,%edx
c0034a80:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034a86:	b8 a1 96 03 c0       	mov    $0xc00396a1,%eax
c0034a8b:	74 43                	je     c0034ad0 <_dtoa_r+0x2a0>
c0034a8d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034a90:	85 db                	test   %ebx,%ebx
c0034a92:	0f 84 30 fe ff ff    	je     c00348c8 <_dtoa_r+0x98>
c0034a98:	8b 75 24             	mov    0x24(%ebp),%esi
c0034a9b:	8d 50 08             	lea    0x8(%eax),%edx
c0034a9e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034aa2:	8d 48 03             	lea    0x3(%eax),%ecx
c0034aa5:	0f 44 d1             	cmove  %ecx,%edx
c0034aa8:	89 16                	mov    %edx,(%esi)
c0034aaa:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034ab0:	5b                   	pop    %ebx
c0034ab1:	5e                   	pop    %esi
c0034ab2:	5f                   	pop    %edi
c0034ab3:	5d                   	pop    %ebp
c0034ab4:	c3                   	ret    
c0034ab5:	8d 76 00             	lea    0x0(%esi),%esi
c0034ab8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c0034abe:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034ac4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034ac7:	e9 b7 fd ff ff       	jmp    c0034883 <_dtoa_r+0x53>
c0034acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ad0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034ad6:	ba 98 96 03 c0       	mov    $0xc0039698,%edx
c0034adb:	0f 44 c2             	cmove  %edx,%eax
c0034ade:	eb ad                	jmp    c0034a8d <_dtoa_r+0x25d>
c0034ae0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034ae3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034ae9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0034aec:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034af3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034af8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c0034afd:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034b00:	e9 51 fe ff ff       	jmp    c0034956 <_dtoa_r+0x126>
c0034b05:	8d 76 00             	lea    0x0(%esi),%esi
c0034b08:	b8 0f 95 03 c0       	mov    $0xc003950f,%eax
c0034b0d:	e9 b6 fd ff ff       	jmp    c00348c8 <_dtoa_r+0x98>
c0034b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b18:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034b1c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034b23:	0f 85 ee 01 00 00    	jne    c0034d17 <_dtoa_r+0x4e7>
c0034b29:	8b 55 18             	mov    0x18(%ebp),%edx
c0034b2c:	85 d2                	test   %edx,%edx
c0034b2e:	0f 8e b6 07 00 00    	jle    c00352ea <_dtoa_r+0xaba>
c0034b34:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034b37:	83 ff 0e             	cmp    $0xe,%edi
c0034b3a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034b3e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034b41:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034b44:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034b47:	83 ff 17             	cmp    $0x17,%edi
c0034b4a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b51:	0f 86 e5 0e 00 00    	jbe    c0035a3c <_dtoa_r+0x120c>
c0034b57:	b9 01 00 00 00       	mov    $0x1,%ecx
c0034b5c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034b61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b68:	01 c0                	add    %eax,%eax
c0034b6a:	89 ca                	mov    %ecx,%edx
c0034b6c:	8d 58 14             	lea    0x14(%eax),%ebx
c0034b6f:	39 fb                	cmp    %edi,%ebx
c0034b71:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034b74:	76 f2                	jbe    c0034b68 <_dtoa_r+0x338>
c0034b76:	89 56 44             	mov    %edx,0x44(%esi)
c0034b79:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034b7d:	89 34 24             	mov    %esi,(%esp)
c0034b80:	e8 db 17 00 00       	call   c0036360 <_Balloc>
c0034b85:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034b89:	89 c7                	mov    %eax,%edi
c0034b8b:	89 46 40             	mov    %eax,0x40(%esi)
c0034b8e:	0f 84 bb 01 00 00    	je     c0034d4f <_dtoa_r+0x51f>
c0034b94:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034b97:	dd 45 c0             	fldl   -0x40(%ebp)
c0034b9a:	85 db                	test   %ebx,%ebx
c0034b9c:	0f 8e de 07 00 00    	jle    c0035380 <_dtoa_r+0xb50>
c0034ba2:	89 d8                	mov    %ebx,%eax
c0034ba4:	83 e0 0f             	and    $0xf,%eax
c0034ba7:	dd 04 c5 80 97 03 c0 	fldl   -0x3ffc6880(,%eax,8)
c0034bae:	89 d8                	mov    %ebx,%eax
c0034bb0:	c1 f8 04             	sar    $0x4,%eax
c0034bb3:	a8 10                	test   $0x10,%al
c0034bb5:	0f 84 cd 05 00 00    	je     c0035188 <_dtoa_r+0x958>
c0034bbb:	dd 05 60 97 03 c0    	fldl   0xc0039760
c0034bc1:	83 e0 0f             	and    $0xf,%eax
c0034bc4:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034bc9:	d8 fa                	fdivr  %st(2),%st
c0034bcb:	85 c0                	test   %eax,%eax
c0034bcd:	74 22                	je     c0034bf1 <_dtoa_r+0x3c1>
c0034bcf:	31 d2                	xor    %edx,%edx
c0034bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034bd8:	a8 01                	test   $0x1,%al
c0034bda:	74 0e                	je     c0034bea <_dtoa_r+0x3ba>
c0034bdc:	d9 c9                	fxch   %st(1)
c0034bde:	dc 0c d5 40 97 03 c0 	fmull  -0x3ffc68c0(,%edx,8)
c0034be5:	d9 c9                	fxch   %st(1)
c0034be7:	83 c1 01             	add    $0x1,%ecx
c0034bea:	83 c2 01             	add    $0x1,%edx
c0034bed:	d1 f8                	sar    %eax
c0034bef:	75 e7                	jne    c0034bd8 <_dtoa_r+0x3a8>
c0034bf1:	de f1                	fdivp  %st,%st(1)
c0034bf3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034bf6:	85 c0                	test   %eax,%eax
c0034bf8:	74 0a                	je     c0034c04 <_dtoa_r+0x3d4>
c0034bfa:	d9 e8                	fld1   
c0034bfc:	df e9                	fucomip %st(1),%st
c0034bfe:	0f 87 92 0b 00 00    	ja     c0035796 <_dtoa_r+0xf66>
c0034c04:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c07:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034c0a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c0d:	d8 c9                	fmul   %st(1),%st
c0034c0f:	d8 05 b4 96 03 c0    	fadds  0xc00396b4
c0034c15:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034c18:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034c1f:	85 c0                	test   %eax,%eax
c0034c21:	0f 84 89 05 00 00    	je     c00351b0 <_dtoa_r+0x980>
c0034c27:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c2a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034c2d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034c30:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034c33:	85 c0                	test   %eax,%eax
c0034c35:	0f 84 b5 07 00 00    	je     c00353f0 <_dtoa_r+0xbc0>
c0034c3b:	d9 05 bc 96 03 c0    	flds   0xc00396bc
c0034c41:	8d 57 01             	lea    0x1(%edi),%edx
c0034c44:	dc 34 cd 78 97 03 c0 	fdivl  -0x3ffc6888(,%ecx,8)
c0034c4b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c4e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c52:	b4 0c                	mov    $0xc,%ah
c0034c54:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c58:	dc 65 c0             	fsubl  -0x40(%ebp)
c0034c5b:	d9 c9                	fxch   %st(1)
c0034c5d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c60:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c63:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c66:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c69:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c6c:	83 c0 30             	add    $0x30,%eax
c0034c6f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c72:	de e9                	fsubrp %st,%st(1)
c0034c74:	d9 c9                	fxch   %st(1)
c0034c76:	88 07                	mov    %al,(%edi)
c0034c78:	db e9                	fucomi %st(1),%st
c0034c7a:	77 7f                	ja     c0034cfb <_dtoa_r+0x4cb>
c0034c7c:	d9 c1                	fld    %st(1)
c0034c7e:	d8 2d ac 96 03 c0    	fsubrs 0xc00396ac
c0034c84:	d9 c9                	fxch   %st(1)
c0034c86:	db e9                	fucomi %st(1),%st
c0034c88:	dd d9                	fstp   %st(1)
c0034c8a:	0f 87 33 0c 00 00    	ja     c00358c3 <_dtoa_r+0x1093>
c0034c90:	83 f9 01             	cmp    $0x1,%ecx
c0034c93:	0f 8e c4 06 00 00    	jle    c003535d <_dtoa_r+0xb2d>
c0034c99:	01 f9                	add    %edi,%ecx
c0034c9b:	d9 05 b0 96 03 c0    	flds   0xc00396b0
c0034ca1:	eb 25                	jmp    c0034cc8 <_dtoa_r+0x498>
c0034ca3:	90                   	nop
c0034ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ca8:	d9 c1                	fld    %st(1)
c0034caa:	d8 2d ac 96 03 c0    	fsubrs 0xc00396ac
c0034cb0:	d9 c9                	fxch   %st(1)
c0034cb2:	db e9                	fucomi %st(1),%st
c0034cb4:	dd d9                	fstp   %st(1)
c0034cb6:	0f 87 14 0c 00 00    	ja     c00358d0 <_dtoa_r+0x10a0>
c0034cbc:	39 ca                	cmp    %ecx,%edx
c0034cbe:	0f 84 a4 06 00 00    	je     c0035368 <_dtoa_r+0xb38>
c0034cc4:	d9 c9                	fxch   %st(1)
c0034cc6:	d9 ca                	fxch   %st(2)
c0034cc8:	dc c9                	fmul   %st,%st(1)
c0034cca:	83 c2 01             	add    $0x1,%edx
c0034ccd:	dc ca                	fmul   %st,%st(2)
c0034ccf:	d9 ca                	fxch   %st(2)
c0034cd1:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034cd4:	db 55 d4             	fistl  -0x2c(%ebp)
c0034cd7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034cda:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034cdd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034ce0:	83 c0 30             	add    $0x30,%eax
c0034ce3:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ce6:	de e9                	fsubrp %st,%st(1)
c0034ce8:	d9 c9                	fxch   %st(1)
c0034cea:	88 42 ff             	mov    %al,-0x1(%edx)
c0034ced:	db e9                	fucomi %st(1),%st
c0034cef:	76 b7                	jbe    c0034ca8 <_dtoa_r+0x478>
c0034cf1:	dd d8                	fstp   %st(0)
c0034cf3:	dd d8                	fstp   %st(0)
c0034cf5:	dd d8                	fstp   %st(0)
c0034cf7:	dd d8                	fstp   %st(0)
c0034cf9:	eb 06                	jmp    c0034d01 <_dtoa_r+0x4d1>
c0034cfb:	dd d8                	fstp   %st(0)
c0034cfd:	dd d8                	fstp   %st(0)
c0034cff:	dd d8                	fstp   %st(0)
c0034d01:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034d04:	89 fb                	mov    %edi,%ebx
c0034d06:	89 d7                	mov    %edx,%edi
c0034d08:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034d0b:	e9 70 03 00 00       	jmp    c0035080 <_dtoa_r+0x850>
c0034d10:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034d17:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034d1e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034d25:	00 
c0034d26:	89 34 24             	mov    %esi,(%esp)
c0034d29:	e8 32 16 00 00       	call   c0036360 <_Balloc>
c0034d2e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034d35:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0034d3c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034d43:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0034d4a:	89 c7                	mov    %eax,%edi
c0034d4c:	89 46 40             	mov    %eax,0x40(%esi)
c0034d4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034d52:	85 c0                	test   %eax,%eax
c0034d54:	0f 88 2e 01 00 00    	js     c0034e88 <_dtoa_r+0x658>
c0034d5a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0034d5e:	0f 8f 24 01 00 00    	jg     c0034e88 <_dtoa_r+0x658>
c0034d64:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034d67:	dd 04 c5 80 97 03 c0 	fldl   -0x3ffc6880(,%eax,8)
c0034d6e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d71:	85 c0                	test   %eax,%eax
c0034d73:	7f 0e                	jg     c0034d83 <_dtoa_r+0x553>
c0034d75:	8b 45 18             	mov    0x18(%ebp),%eax
c0034d78:	c1 e8 1f             	shr    $0x1f,%eax
c0034d7b:	84 c0                	test   %al,%al
c0034d7d:	0f 85 9d 07 00 00    	jne    c0035520 <_dtoa_r+0xcf0>
c0034d83:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d86:	d9 c0                	fld    %st(0)
c0034d88:	d8 f2                	fdiv   %st(2),%st
c0034d8a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034d8d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034d91:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034d95:	b4 0c                	mov    $0xc,%ah
c0034d97:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034d9b:	8d 47 01             	lea    0x1(%edi),%eax
c0034d9e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034da1:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034da4:	db 5d d4             	fistpl -0x2c(%ebp)
c0034da7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034daa:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034dad:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034db0:	8d 42 30             	lea    0x30(%edx),%eax
c0034db3:	db 45 d4             	fildl  -0x2c(%ebp)
c0034db6:	d8 ca                	fmul   %st(2),%st
c0034db8:	88 07                	mov    %al,(%edi)
c0034dba:	de e9                	fsubrp %st,%st(1)
c0034dbc:	74 66                	je     c0034e24 <_dtoa_r+0x5f4>
c0034dbe:	d8 0d b0 96 03 c0    	fmuls  0xc00396b0
c0034dc4:	d9 ee                	fldz   
c0034dc6:	d9 c9                	fxch   %st(1)
c0034dc8:	db e9                	fucomi %st(1),%st
c0034dca:	dd d9                	fstp   %st(1)
c0034dcc:	0f 8b 33 0c 00 00    	jnp    c0035a05 <_dtoa_r+0x11d5>
c0034dd2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034dd5:	8d 47 02             	lea    0x2(%edi),%eax
c0034dd8:	d9 05 b0 96 03 c0    	flds   0xc00396b0
c0034dde:	01 fb                	add    %edi,%ebx
c0034de0:	eb 19                	jmp    c0034dfb <_dtoa_r+0x5cb>
c0034de2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034de8:	dc c9                	fmul   %st,%st(1)
c0034dea:	83 c0 01             	add    $0x1,%eax
c0034ded:	d9 ee                	fldz   
c0034def:	d9 ca                	fxch   %st(2)
c0034df1:	db ea                	fucomi %st(2),%st
c0034df3:	dd da                	fstp   %st(2)
c0034df5:	0f 8b 73 09 00 00    	jnp    c003576e <_dtoa_r+0xf3e>
c0034dfb:	d9 c1                	fld    %st(1)
c0034dfd:	39 d8                	cmp    %ebx,%eax
c0034dff:	d8 f3                	fdiv   %st(3),%st
c0034e01:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034e04:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034e07:	db 5d d4             	fistpl -0x2c(%ebp)
c0034e0a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034e0d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034e10:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034e13:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034e16:	db 45 d4             	fildl  -0x2c(%ebp)
c0034e19:	d8 cb                	fmul   %st(3),%st
c0034e1b:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034e1e:	de ea                	fsubrp %st,%st(2)
c0034e20:	75 c6                	jne    c0034de8 <_dtoa_r+0x5b8>
c0034e22:	dd d8                	fstp   %st(0)
c0034e24:	d8 c0                	fadd   %st(0),%st
c0034e26:	db e9                	fucomi %st(1),%st
c0034e28:	77 1e                	ja     c0034e48 <_dtoa_r+0x618>
c0034e2a:	d9 c9                	fxch   %st(1)
c0034e2c:	df e9                	fucomip %st(1),%st
c0034e2e:	dd d8                	fstp   %st(0)
c0034e30:	0f 8a 44 09 00 00    	jp     c003577a <_dtoa_r+0xf4a>
c0034e36:	0f 85 3e 09 00 00    	jne    c003577a <_dtoa_r+0xf4a>
c0034e3c:	83 e2 01             	and    $0x1,%edx
c0034e3f:	90                   	nop
c0034e40:	0f 84 34 09 00 00    	je     c003577a <_dtoa_r+0xf4a>
c0034e46:	eb 04                	jmp    c0034e4c <_dtoa_r+0x61c>
c0034e48:	dd d8                	fstp   %st(0)
c0034e4a:	dd d8                	fstp   %st(0)
c0034e4c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034e4f:	89 fb                	mov    %edi,%ebx
c0034e51:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034e55:	89 cf                	mov    %ecx,%edi
c0034e57:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c0034e5a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c0034e5d:	eb 0f                	jmp    c0034e6e <_dtoa_r+0x63e>
c0034e5f:	90                   	nop
c0034e60:	39 d3                	cmp    %edx,%ebx
c0034e62:	0f 84 75 09 00 00    	je     c00357dd <_dtoa_r+0xfad>
c0034e68:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034e6c:	89 d7                	mov    %edx,%edi
c0034e6e:	3c 39                	cmp    $0x39,%al
c0034e70:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034e73:	74 eb                	je     c0034e60 <_dtoa_r+0x630>
c0034e75:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e78:	83 c0 01             	add    $0x1,%eax
c0034e7b:	88 02                	mov    %al,(%edx)
c0034e7d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034e80:	e9 fb 01 00 00       	jmp    c0035080 <_dtoa_r+0x850>
c0034e85:	8d 76 00             	lea    0x0(%esi),%esi
c0034e88:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034e8b:	85 c9                	test   %ecx,%ecx
c0034e8d:	0f 85 9d 02 00 00    	jne    c0035130 <_dtoa_r+0x900>
c0034e93:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e96:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034e99:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034ea0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ea3:	85 c0                	test   %eax,%eax
c0034ea5:	7e 14                	jle    c0034ebb <_dtoa_r+0x68b>
c0034ea7:	85 db                	test   %ebx,%ebx
c0034ea9:	7e 10                	jle    c0034ebb <_dtoa_r+0x68b>
c0034eab:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034eae:	39 d8                	cmp    %ebx,%eax
c0034eb0:	0f 4f c3             	cmovg  %ebx,%eax
c0034eb3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034eb6:	29 c3                	sub    %eax,%ebx
c0034eb8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c0034ebb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ebe:	85 c0                	test   %eax,%eax
c0034ec0:	7e 61                	jle    c0034f23 <_dtoa_r+0x6f3>
c0034ec2:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034ec5:	85 c0                	test   %eax,%eax
c0034ec7:	0f 84 72 04 00 00    	je     c003533f <_dtoa_r+0xb0f>
c0034ecd:	85 d2                	test   %edx,%edx
c0034ecf:	7e 47                	jle    c0034f18 <_dtoa_r+0x6e8>
c0034ed1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ed4:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034ed8:	89 34 24             	mov    %esi,(%esp)
c0034edb:	89 55 88             	mov    %edx,-0x78(%ebp)
c0034ede:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ee2:	e8 f9 19 00 00       	call   c00368e0 <__pow5mult>
c0034ee7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034eea:	89 34 24             	mov    %esi,(%esp)
c0034eed:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ef1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ef5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ef8:	e8 13 18 00 00       	call   c0036710 <__multiply>
c0034efd:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034f00:	89 34 24             	mov    %esi,(%esp)
c0034f03:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034f07:	89 45 8c             	mov    %eax,-0x74(%ebp)
c0034f0a:	e8 f1 14 00 00       	call   c0036400 <_Bfree>
c0034f0f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034f12:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034f15:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034f18:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f1b:	29 d0                	sub    %edx,%eax
c0034f1d:	0f 85 1f 04 00 00    	jne    c0035342 <_dtoa_r+0xb12>
c0034f23:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034f2a:	00 
c0034f2b:	89 34 24             	mov    %esi,(%esp)
c0034f2e:	e8 ad 17 00 00       	call   c00366e0 <__i2b>
c0034f33:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034f36:	85 c9                	test   %ecx,%ecx
c0034f38:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f3b:	7e 13                	jle    c0034f50 <_dtoa_r+0x720>
c0034f3d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034f41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f45:	89 34 24             	mov    %esi,(%esp)
c0034f48:	e8 93 19 00 00       	call   c00368e0 <__pow5mult>
c0034f4d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f50:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034f54:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034f5b:	0f 8e f7 05 00 00    	jle    c0035558 <_dtoa_r+0xd28>
c0034f61:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034f64:	ba 01 00 00 00       	mov    $0x1,%edx
c0034f69:	85 c0                	test   %eax,%eax
c0034f6b:	0f 85 27 05 00 00    	jne    c0035498 <_dtoa_r+0xc68>
c0034f71:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f74:	01 d0                	add    %edx,%eax
c0034f76:	83 e0 1f             	and    $0x1f,%eax
c0034f79:	89 c2                	mov    %eax,%edx
c0034f7b:	0f 84 57 03 00 00    	je     c00352d8 <_dtoa_r+0xaa8>
c0034f81:	b8 20 00 00 00       	mov    $0x20,%eax
c0034f86:	29 d0                	sub    %edx,%eax
c0034f88:	83 f8 04             	cmp    $0x4,%eax
c0034f8b:	0f 8e 8c 0a 00 00    	jle    c0035a1d <_dtoa_r+0x11ed>
c0034f91:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034f96:	29 d0                	sub    %edx,%eax
c0034f98:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034f9b:	01 c3                	add    %eax,%ebx
c0034f9d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034fa0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034fa3:	85 c0                	test   %eax,%eax
c0034fa5:	7e 16                	jle    c0034fbd <_dtoa_r+0x78d>
c0034fa7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034fab:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034fae:	89 34 24             	mov    %esi,(%esp)
c0034fb1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fb5:	e8 46 1a 00 00       	call   c0036a00 <__lshift>
c0034fba:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034fbd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034fc0:	85 c0                	test   %eax,%eax
c0034fc2:	7e 16                	jle    c0034fda <_dtoa_r+0x7aa>
c0034fc4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034fc8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034fcb:	89 34 24             	mov    %esi,(%esp)
c0034fce:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fd2:	e8 29 1a 00 00       	call   c0036a00 <__lshift>
c0034fd7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fda:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034fdd:	85 c0                	test   %eax,%eax
c0034fdf:	0f 85 d3 04 00 00    	jne    c00354b8 <_dtoa_r+0xc88>
c0034fe5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034fe9:	0f 8e 11 02 00 00    	jle    c0035200 <_dtoa_r+0x9d0>
c0034fef:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ff2:	85 c0                	test   %eax,%eax
c0034ff4:	0f 8f 06 02 00 00    	jg     c0035200 <_dtoa_r+0x9d0>
c0034ffa:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ffd:	85 c0                	test   %eax,%eax
c0034fff:	0f 85 e0 01 00 00    	jne    c00351e5 <_dtoa_r+0x9b5>
c0035005:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035008:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003500f:	00 
c0035010:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0035017:	00 
c0035018:	89 34 24             	mov    %esi,(%esp)
c003501b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003501f:	e8 fc 13 00 00       	call   c0036420 <__multadd>
c0035024:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0035027:	89 44 24 04          	mov    %eax,0x4(%esp)
c003502b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003502e:	89 04 24             	mov    %eax,(%esp)
c0035031:	e8 ea 1a 00 00       	call   c0036b20 <__mcmp>
c0035036:	85 c0                	test   %eax,%eax
c0035038:	0f 8e a7 01 00 00    	jle    c00351e5 <_dtoa_r+0x9b5>
c003503e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035042:	89 fb                	mov    %edi,%ebx
c0035044:	83 c7 01             	add    $0x1,%edi
c0035047:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003504b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0035052:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035055:	89 34 24             	mov    %esi,(%esp)
c0035058:	89 44 24 04          	mov    %eax,0x4(%esp)
c003505c:	e8 9f 13 00 00       	call   c0036400 <_Bfree>
c0035061:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035064:	85 c0                	test   %eax,%eax
c0035066:	74 18                	je     c0035080 <_dtoa_r+0x850>
c0035068:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003506b:	0f 85 a7 02 00 00    	jne    c0035318 <_dtoa_r+0xae8>
c0035071:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035074:	89 34 24             	mov    %esi,(%esp)
c0035077:	89 44 24 04          	mov    %eax,0x4(%esp)
c003507b:	e8 80 13 00 00       	call   c0036400 <_Bfree>
c0035080:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035083:	89 34 24             	mov    %esi,(%esp)
c0035086:	89 44 24 04          	mov    %eax,0x4(%esp)
c003508a:	e8 71 13 00 00       	call   c0036400 <_Bfree>
c003508f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0035092:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0035095:	c6 07 00             	movb   $0x0,(%edi)
c0035098:	83 c0 01             	add    $0x1,%eax
c003509b:	89 06                	mov    %eax,(%esi)
c003509d:	8b 45 24             	mov    0x24(%ebp),%eax
c00350a0:	85 c0                	test   %eax,%eax
c00350a2:	0f 84 90 02 00 00    	je     c0035338 <_dtoa_r+0xb08>
c00350a8:	8b 45 24             	mov    0x24(%ebp),%eax
c00350ab:	89 38                	mov    %edi,(%eax)
c00350ad:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00350b3:	89 d8                	mov    %ebx,%eax
c00350b5:	5b                   	pop    %ebx
c00350b6:	5e                   	pop    %esi
c00350b7:	5f                   	pop    %edi
c00350b8:	5d                   	pop    %ebp
c00350b9:	c3                   	ret    
c00350ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00350c0:	db 45 b8             	fildl  -0x48(%ebp)
c00350c3:	df e9                	fucomip %st(1),%st
c00350c5:	dd d8                	fstp   %st(0)
c00350c7:	7a 06                	jp     c00350cf <_dtoa_r+0x89f>
c00350c9:	0f 84 cc f8 ff ff    	je     c003499b <_dtoa_r+0x16b>
c00350cf:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00350d3:	e9 c3 f8 ff ff       	jmp    c003499b <_dtoa_r+0x16b>
c00350d8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00350db:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00350de:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00350e5:	f7 d8                	neg    %eax
c00350e7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00350ea:	e9 0c f9 ff ff       	jmp    c00349fb <_dtoa_r+0x1cb>
c00350ef:	90                   	nop
c00350f0:	f7 d8                	neg    %eax
c00350f2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350f5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00350fc:	e9 e2 f8 ff ff       	jmp    c00349e3 <_dtoa_r+0x1b3>
c0035101:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035108:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003510b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0035110:	29 d9                	sub    %ebx,%ecx
c0035112:	d3 e0                	shl    %cl,%eax
c0035114:	e9 1b f8 ff ff       	jmp    c0034934 <_dtoa_r+0x104>
c0035119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035120:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0035127:	e9 a0 f8 ff ff       	jmp    c00349cc <_dtoa_r+0x19c>
c003512c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035130:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0035134:	0f 8e fe 06 00 00    	jle    c0035838 <_dtoa_r+0x1008>
c003513a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003513d:	83 e8 01             	sub    $0x1,%eax
c0035140:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0035143:	0f 8c 3b 06 00 00    	jl     c0035784 <_dtoa_r+0xf54>
c0035149:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003514c:	29 c2                	sub    %eax,%edx
c003514e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0035151:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035154:	85 c9                	test   %ecx,%ecx
c0035156:	89 c8                	mov    %ecx,%eax
c0035158:	0f 88 83 07 00 00    	js     c00358e1 <_dtoa_r+0x10b1>
c003515e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035165:	00 
c0035166:	89 34 24             	mov    %esi,(%esp)
c0035169:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003516c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003516f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0035172:	e8 69 15 00 00       	call   c00366e0 <__i2b>
c0035177:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003517a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003517d:	e9 1e fd ff ff       	jmp    c0034ea0 <_dtoa_r+0x670>
c0035182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035188:	d9 c1                	fld    %st(1)
c003518a:	b9 02 00 00 00       	mov    $0x2,%ecx
c003518f:	e9 37 fa ff ff       	jmp    c0034bcb <_dtoa_r+0x39b>
c0035194:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035197:	db 45 d4             	fildl  -0x2c(%ebp)
c003519a:	d8 c9                	fmul   %st(1),%st
c003519c:	d8 05 b4 96 03 c0    	fadds  0xc00396b4
c00351a2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00351a5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00351ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00351b0:	d8 25 b8 96 03 c0    	fsubs  0xc00396b8
c00351b6:	dd 45 c0             	fldl   -0x40(%ebp)
c00351b9:	d9 c9                	fxch   %st(1)
c00351bb:	db e9                	fucomi %st(1),%st
c00351bd:	0f 87 0d 02 00 00    	ja     c00353d0 <_dtoa_r+0xba0>
c00351c3:	d9 c9                	fxch   %st(1)
c00351c5:	d9 e0                	fchs   
c00351c7:	df e9                	fucomip %st(1),%st
c00351c9:	dd d8                	fstp   %st(0)
c00351cb:	0f 86 a7 01 00 00    	jbe    c0035378 <_dtoa_r+0xb48>
c00351d1:	dd d8                	fstp   %st(0)
c00351d3:	eb 02                	jmp    c00351d7 <_dtoa_r+0x9a7>
c00351d5:	dd d8                	fstp   %st(0)
c00351d7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00351de:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00351e5:	8b 45 18             	mov    0x18(%ebp),%eax
c00351e8:	89 fb                	mov    %edi,%ebx
c00351ea:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00351f1:	f7 d0                	not    %eax
c00351f3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00351f6:	e9 57 fe ff ff       	jmp    c0035052 <_dtoa_r+0x822>
c00351fb:	90                   	nop
c00351fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035200:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035203:	85 c0                	test   %eax,%eax
c0035205:	0f 85 c5 03 00 00    	jne    c00355d0 <_dtoa_r+0xda0>
c003520b:	89 75 08             	mov    %esi,0x8(%ebp)
c003520e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0035213:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0035216:	eb 24                	jmp    c003523c <_dtoa_r+0xa0c>
c0035218:	8b 45 08             	mov    0x8(%ebp),%eax
c003521b:	83 c3 01             	add    $0x1,%ebx
c003521e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0035222:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035229:	00 
c003522a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035231:	00 
c0035232:	89 04 24             	mov    %eax,(%esp)
c0035235:	e8 e6 11 00 00       	call   c0036420 <__multadd>
c003523a:	89 c6                	mov    %eax,%esi
c003523c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003523f:	89 f0                	mov    %esi,%eax
c0035241:	e8 1a f4 ff ff       	call   c0034660 <quorem>
c0035246:	83 c0 30             	add    $0x30,%eax
c0035249:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c003524c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0035250:	7c c6                	jl     c0035218 <_dtoa_r+0x9e8>
c0035252:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035255:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035258:	ba 01 00 00 00       	mov    $0x1,%edx
c003525d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0035260:	8b 75 08             	mov    0x8(%ebp),%esi
c0035263:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c003526a:	85 c0                	test   %eax,%eax
c003526c:	0f 4f d0             	cmovg  %eax,%edx
c003526f:	01 fa                	add    %edi,%edx
c0035271:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035274:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c003527b:	00 
c003527c:	89 34 24             	mov    %esi,(%esp)
c003527f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0035282:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035286:	e8 75 17 00 00       	call   c0036a00 <__lshift>
c003528b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c003528e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035292:	89 04 24             	mov    %eax,(%esp)
c0035295:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035298:	e8 83 18 00 00       	call   c0036b20 <__mcmp>
c003529d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c00352a0:	83 f8 00             	cmp    $0x0,%eax
c00352a3:	0f 8e 41 06 00 00    	jle    c00358ea <_dtoa_r+0x10ba>
c00352a9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c00352ad:	eb 0f                	jmp    c00352be <_dtoa_r+0xa8e>
c00352af:	90                   	nop
c00352b0:	39 c7                	cmp    %eax,%edi
c00352b2:	0f 84 70 05 00 00    	je     c0035828 <_dtoa_r+0xff8>
c00352b8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c00352bc:	89 c2                	mov    %eax,%edx
c00352be:	80 f9 39             	cmp    $0x39,%cl
c00352c1:	8d 42 ff             	lea    -0x1(%edx),%eax
c00352c4:	74 ea                	je     c00352b0 <_dtoa_r+0xa80>
c00352c6:	83 c1 01             	add    $0x1,%ecx
c00352c9:	89 fb                	mov    %edi,%ebx
c00352cb:	88 08                	mov    %cl,(%eax)
c00352cd:	89 d7                	mov    %edx,%edi
c00352cf:	e9 7e fd ff ff       	jmp    c0035052 <_dtoa_r+0x822>
c00352d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00352d8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00352dd:	01 45 a0             	add    %eax,-0x60(%ebp)
c00352e0:	01 c3                	add    %eax,%ebx
c00352e2:	01 45 ac             	add    %eax,-0x54(%ebp)
c00352e5:	e9 b6 fc ff ff       	jmp    c0034fa0 <_dtoa_r+0x770>
c00352ea:	ba 01 00 00 00       	mov    $0x1,%edx
c00352ef:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c00352f6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c00352fd:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0035304:	21 c2                	and    %eax,%edx
c0035306:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0035309:	31 d2                	xor    %edx,%edx
c003530b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0035312:	e9 62 f8 ff ff       	jmp    c0034b79 <_dtoa_r+0x349>
c0035317:	90                   	nop
c0035318:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003531b:	85 d2                	test   %edx,%edx
c003531d:	0f 84 4e fd ff ff    	je     c0035071 <_dtoa_r+0x841>
c0035323:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0035326:	89 34 24             	mov    %esi,(%esp)
c0035329:	89 44 24 04          	mov    %eax,0x4(%esp)
c003532d:	e8 ce 10 00 00       	call   c0036400 <_Bfree>
c0035332:	e9 3a fd ff ff       	jmp    c0035071 <_dtoa_r+0x841>
c0035337:	90                   	nop
c0035338:	89 d8                	mov    %ebx,%eax
c003533a:	e9 89 f5 ff ff       	jmp    c00348c8 <_dtoa_r+0x98>
c003533f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035342:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035346:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035349:	89 34 24             	mov    %esi,(%esp)
c003534c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035350:	e8 8b 15 00 00       	call   c00368e0 <__pow5mult>
c0035355:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035358:	e9 c6 fb ff ff       	jmp    c0034f23 <_dtoa_r+0x6f3>
c003535d:	dd d8                	fstp   %st(0)
c003535f:	dd d8                	fstp   %st(0)
c0035361:	eb 15                	jmp    c0035378 <_dtoa_r+0xb48>
c0035363:	90                   	nop
c0035364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035368:	dd d8                	fstp   %st(0)
c003536a:	dd d8                	fstp   %st(0)
c003536c:	dd d8                	fstp   %st(0)
c003536e:	eb 08                	jmp    c0035378 <_dtoa_r+0xb48>
c0035370:	dd d8                	fstp   %st(0)
c0035372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035378:	dd 5d c0             	fstpl  -0x40(%ebp)
c003537b:	e9 cf f9 ff ff       	jmp    c0034d4f <_dtoa_r+0x51f>
c0035380:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0035383:	f7 d8                	neg    %eax
c0035385:	0f 84 6a 04 00 00    	je     c00357f5 <_dtoa_r+0xfc5>
c003538b:	89 c2                	mov    %eax,%edx
c003538d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0035392:	83 e2 0f             	and    $0xf,%edx
c0035395:	c1 f8 04             	sar    $0x4,%eax
c0035398:	dd 04 d5 80 97 03 c0 	fldl   -0x3ffc6880(,%edx,8)
c003539f:	85 c0                	test   %eax,%eax
c00353a1:	d8 c9                	fmul   %st(1),%st
c00353a3:	0f 84 4a f8 ff ff    	je     c0034bf3 <_dtoa_r+0x3c3>
c00353a9:	31 d2                	xor    %edx,%edx
c00353ab:	90                   	nop
c00353ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00353b0:	a8 01                	test   $0x1,%al
c00353b2:	74 0a                	je     c00353be <_dtoa_r+0xb8e>
c00353b4:	dc 0c d5 40 97 03 c0 	fmull  -0x3ffc68c0(,%edx,8)
c00353bb:	83 c1 01             	add    $0x1,%ecx
c00353be:	83 c2 01             	add    $0x1,%edx
c00353c1:	d1 f8                	sar    %eax
c00353c3:	75 eb                	jne    c00353b0 <_dtoa_r+0xb80>
c00353c5:	e9 29 f8 ff ff       	jmp    c0034bf3 <_dtoa_r+0x3c3>
c00353ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00353d0:	dd d8                	fstp   %st(0)
c00353d2:	dd d8                	fstp   %st(0)
c00353d4:	dd d8                	fstp   %st(0)
c00353d6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00353dd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00353e4:	e9 55 fc ff ff       	jmp    c003503e <_dtoa_r+0x80e>
c00353e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00353f0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00353f3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c00353f6:	dd 45 c0             	fldl   -0x40(%ebp)
c00353f9:	dc 0c c5 80 97 03 c0 	fmull  -0x3ffc6880(,%eax,8)
c0035400:	d9 c9                	fxch   %st(1)
c0035402:	89 45 88             	mov    %eax,-0x78(%ebp)
c0035405:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0035409:	8d 57 01             	lea    0x1(%edi),%edx
c003540c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c003540f:	b4 0c                	mov    $0xc,%ah
c0035411:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0035415:	d9 6d d0             	fldcw  -0x30(%ebp)
c0035418:	db 55 d4             	fistl  -0x2c(%ebp)
c003541b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003541e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0035421:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035424:	83 c0 30             	add    $0x30,%eax
c0035427:	83 f9 01             	cmp    $0x1,%ecx
c003542a:	db 45 d4             	fildl  -0x2c(%ebp)
c003542d:	de e9                	fsubrp %st,%st(1)
c003542f:	88 07                	mov    %al,(%edi)
c0035431:	89 d0                	mov    %edx,%eax
c0035433:	74 37                	je     c003546c <_dtoa_r+0xc3c>
c0035435:	d9 05 b0 96 03 c0    	flds   0xc00396b0
c003543b:	eb 05                	jmp    c0035442 <_dtoa_r+0xc12>
c003543d:	8d 76 00             	lea    0x0(%esi),%esi
c0035440:	d9 c9                	fxch   %st(1)
c0035442:	dc c9                	fmul   %st,%st(1)
c0035444:	d9 c9                	fxch   %st(1)
c0035446:	83 c0 01             	add    $0x1,%eax
c0035449:	d9 6d d0             	fldcw  -0x30(%ebp)
c003544c:	db 55 d4             	fistl  -0x2c(%ebp)
c003544f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0035452:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0035455:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035458:	83 c1 30             	add    $0x30,%ecx
c003545b:	39 d8                	cmp    %ebx,%eax
c003545d:	db 45 d4             	fildl  -0x2c(%ebp)
c0035460:	de e9                	fsubrp %st,%st(1)
c0035462:	88 48 ff             	mov    %cl,-0x1(%eax)
c0035465:	75 d9                	jne    c0035440 <_dtoa_r+0xc10>
c0035467:	dd d9                	fstp   %st(1)
c0035469:	03 55 88             	add    -0x78(%ebp),%edx
c003546c:	d9 05 bc 96 03 c0    	flds   0xc00396bc
c0035472:	d9 c2                	fld    %st(2)
c0035474:	d8 c1                	fadd   %st(1),%st
c0035476:	d9 ca                	fxch   %st(2)
c0035478:	db ea                	fucomi %st(2),%st
c003547a:	dd da                	fstp   %st(2)
c003547c:	0f 86 7f 03 00 00    	jbe    c0035801 <_dtoa_r+0xfd1>
c0035482:	dd d8                	fstp   %st(0)
c0035484:	dd d8                	fstp   %st(0)
c0035486:	dd d8                	fstp   %st(0)
c0035488:	dd d8                	fstp   %st(0)
c003548a:	89 fb                	mov    %edi,%ebx
c003548c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0035490:	89 d7                	mov    %edx,%edi
c0035492:	e9 d7 f9 ff ff       	jmp    c0034e6e <_dtoa_r+0x63e>
c0035497:	90                   	nop
c0035498:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c003549b:	8b 41 10             	mov    0x10(%ecx),%eax
c003549e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c00354a2:	89 04 24             	mov    %eax,(%esp)
c00354a5:	e8 56 11 00 00       	call   c0036600 <__hi0bits>
c00354aa:	ba 20 00 00 00       	mov    $0x20,%edx
c00354af:	29 c2                	sub    %eax,%edx
c00354b1:	e9 bb fa ff ff       	jmp    c0034f71 <_dtoa_r+0x741>
c00354b6:	66 90                	xchg   %ax,%ax
c00354b8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00354bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00354bf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00354c2:	89 04 24             	mov    %eax,(%esp)
c00354c5:	e8 56 16 00 00       	call   c0036b20 <__mcmp>
c00354ca:	85 c0                	test   %eax,%eax
c00354cc:	0f 89 13 fb ff ff    	jns    c0034fe5 <_dtoa_r+0x7b5>
c00354d2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00354d5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00354dc:	00 
c00354dd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00354e4:	00 
c00354e5:	89 34 24             	mov    %esi,(%esp)
c00354e8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00354ec:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00354f0:	e8 2b 0f 00 00       	call   c0036420 <__multadd>
c00354f5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00354f8:	85 c9                	test   %ecx,%ecx
c00354fa:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00354fd:	0f 85 8d 00 00 00    	jne    c0035590 <_dtoa_r+0xd60>
c0035503:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0035507:	8b 45 90             	mov    -0x70(%ebp),%eax
c003550a:	7f 0a                	jg     c0035516 <_dtoa_r+0xce6>
c003550c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0035510:	0f 8f ff 04 00 00    	jg     c0035a15 <_dtoa_r+0x11e5>
c0035516:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035519:	e9 ed fc ff ff       	jmp    c003520b <_dtoa_r+0x9db>
c003551e:	66 90                	xchg   %ax,%ax
c0035520:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0035523:	85 db                	test   %ebx,%ebx
c0035525:	0f 85 aa fc ff ff    	jne    c00351d5 <_dtoa_r+0x9a5>
c003552b:	d8 0d b8 96 03 c0    	fmuls  0xc00396b8
c0035531:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0035538:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c003553f:	dd 45 c0             	fldl   -0x40(%ebp)
c0035542:	d9 c9                	fxch   %st(1)
c0035544:	df e9                	fucomip %st(1),%st
c0035546:	dd d8                	fstp   %st(0)
c0035548:	0f 83 97 fc ff ff    	jae    c00351e5 <_dtoa_r+0x9b5>
c003554e:	e9 eb fa ff ff       	jmp    c003503e <_dtoa_r+0x80e>
c0035553:	90                   	nop
c0035554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035558:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003555b:	85 c0                	test   %eax,%eax
c003555d:	0f 85 fe f9 ff ff    	jne    c0034f61 <_dtoa_r+0x731>
c0035563:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0035566:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c003556b:	0f 85 f0 f9 ff ff    	jne    c0034f61 <_dtoa_r+0x731>
c0035571:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0035576:	0f 84 e5 f9 ff ff    	je     c0034f61 <_dtoa_r+0x731>
c003557c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0035580:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0035584:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c003558b:	e9 d1 f9 ff ff       	jmp    c0034f61 <_dtoa_r+0x731>
c0035590:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035593:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003559a:	00 
c003559b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00355a2:	00 
c00355a3:	89 34 24             	mov    %esi,(%esp)
c00355a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00355aa:	e8 71 0e 00 00       	call   c0036420 <__multadd>
c00355af:	8b 55 90             	mov    -0x70(%ebp),%edx
c00355b2:	85 d2                	test   %edx,%edx
c00355b4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00355b7:	8b 45 90             	mov    -0x70(%ebp),%eax
c00355ba:	7f 0a                	jg     c00355c6 <_dtoa_r+0xd96>
c00355bc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00355c0:	0f 8f 4f 04 00 00    	jg     c0035a15 <_dtoa_r+0x11e5>
c00355c6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00355c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00355d0:	85 db                	test   %ebx,%ebx
c00355d2:	7e 16                	jle    c00355ea <_dtoa_r+0xdba>
c00355d4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00355d7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00355db:	89 34 24             	mov    %esi,(%esp)
c00355de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00355e2:	e8 19 14 00 00       	call   c0036a00 <__lshift>
c00355e7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00355ea:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c00355ed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00355f0:	85 db                	test   %ebx,%ebx
c00355f2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00355f5:	0f 85 11 03 00 00    	jne    c003590c <_dtoa_r+0x10dc>
c00355fb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00355fe:	8d 5f 01             	lea    0x1(%edi),%ebx
c0035601:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0035604:	01 f8                	add    %edi,%eax
c0035606:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0035609:	89 45 90             	mov    %eax,-0x70(%ebp)
c003560c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003560f:	83 e0 01             	and    $0x1,%eax
c0035612:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0035615:	eb 2e                	jmp    c0035645 <_dtoa_r+0xe15>
c0035617:	90                   	nop
c0035618:	e8 03 0e 00 00       	call   c0036420 <__multadd>
c003561d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035624:	00 
c0035625:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003562c:	00 
c003562d:	89 34 24             	mov    %esi,(%esp)
c0035630:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035633:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035636:	89 44 24 04          	mov    %eax,0x4(%esp)
c003563a:	e8 e1 0d 00 00       	call   c0036420 <__multadd>
c003563f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035642:	83 c3 01             	add    $0x1,%ebx
c0035645:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035648:	8d 43 ff             	lea    -0x1(%ebx),%eax
c003564b:	89 45 98             	mov    %eax,-0x68(%ebp)
c003564e:	89 f8                	mov    %edi,%eax
c0035650:	e8 0b f0 ff ff       	call   c0034660 <quorem>
c0035655:	89 3c 24             	mov    %edi,(%esp)
c0035658:	8d 48 30             	lea    0x30(%eax),%ecx
c003565b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c003565e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0035661:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0035664:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035668:	e8 b3 14 00 00       	call   c0036b20 <__mcmp>
c003566d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0035670:	89 34 24             	mov    %esi,(%esp)
c0035673:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0035677:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003567a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003567d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035681:	e8 ea 14 00 00       	call   c0036b70 <__mdiff>
c0035686:	8b 48 0c             	mov    0xc(%eax),%ecx
c0035689:	89 c2                	mov    %eax,%edx
c003568b:	85 c9                	test   %ecx,%ecx
c003568d:	0f 85 c5 00 00 00    	jne    c0035758 <_dtoa_r+0xf28>
c0035693:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035697:	89 3c 24             	mov    %edi,(%esp)
c003569a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003569d:	e8 7e 14 00 00       	call   c0036b20 <__mcmp>
c00356a2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c00356a5:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356a9:	89 34 24             	mov    %esi,(%esp)
c00356ac:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00356af:	e8 4c 0d 00 00       	call   c0036400 <_Bfree>
c00356b4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00356b7:	89 c1                	mov    %eax,%ecx
c00356b9:	0b 4d 14             	or     0x14(%ebp),%ecx
c00356bc:	75 0b                	jne    c00356c9 <_dtoa_r+0xe99>
c00356be:	8b 55 9c             	mov    -0x64(%ebp),%edx
c00356c1:	85 d2                	test   %edx,%edx
c00356c3:	0f 84 fb 02 00 00    	je     c00359c4 <_dtoa_r+0x1194>
c00356c9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00356cc:	85 d2                	test   %edx,%edx
c00356ce:	0f 88 7f 01 00 00    	js     c0035853 <_dtoa_r+0x1023>
c00356d4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00356d7:	0b 4d 14             	or     0x14(%ebp),%ecx
c00356da:	75 0b                	jne    c00356e7 <_dtoa_r+0xeb7>
c00356dc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c00356df:	85 c9                	test   %ecx,%ecx
c00356e1:	0f 84 6c 01 00 00    	je     c0035853 <_dtoa_r+0x1023>
c00356e7:	85 c0                	test   %eax,%eax
c00356e9:	0f 8f 82 02 00 00    	jg     c0035971 <_dtoa_r+0x1141>
c00356ef:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00356f3:	89 da                	mov    %ebx,%edx
c00356f5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c00356f8:	88 43 ff             	mov    %al,-0x1(%ebx)
c00356fb:	0f 84 8d 02 00 00    	je     c003598e <_dtoa_r+0x115e>
c0035701:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0035705:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003570c:	00 
c003570d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035714:	00 
c0035715:	89 34 24             	mov    %esi,(%esp)
c0035718:	e8 03 0d 00 00       	call   c0036420 <__multadd>
c003571d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035724:	00 
c0035725:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003572c:	00 
c003572d:	89 34 24             	mov    %esi,(%esp)
c0035730:	89 c7                	mov    %eax,%edi
c0035732:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035735:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035738:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003573b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003573f:	0f 85 d3 fe ff ff    	jne    c0035618 <_dtoa_r+0xde8>
c0035745:	e8 d6 0c 00 00       	call   c0036420 <__multadd>
c003574a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003574d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035750:	e9 ed fe ff ff       	jmp    c0035642 <_dtoa_r+0xe12>
c0035755:	8d 76 00             	lea    0x0(%esi),%esi
c0035758:	b8 01 00 00 00       	mov    $0x1,%eax
c003575d:	e9 43 ff ff ff       	jmp    c00356a5 <_dtoa_r+0xe75>
c0035762:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035769:	e9 d2 f2 ff ff       	jmp    c0034a40 <_dtoa_r+0x210>
c003576e:	0f 85 87 f6 ff ff    	jne    c0034dfb <_dtoa_r+0x5cb>
c0035774:	dd d8                	fstp   %st(0)
c0035776:	dd d8                	fstp   %st(0)
c0035778:	dd d8                	fstp   %st(0)
c003577a:	89 fb                	mov    %edi,%ebx
c003577c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003577f:	e9 fc f8 ff ff       	jmp    c0035080 <_dtoa_r+0x850>
c0035784:	89 c2                	mov    %eax,%edx
c0035786:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035789:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003578c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003578f:	31 d2                	xor    %edx,%edx
c0035791:	e9 b8 f9 ff ff       	jmp    c003514e <_dtoa_r+0x91e>
c0035796:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035799:	85 c0                	test   %eax,%eax
c003579b:	0f 84 f3 f9 ff ff    	je     c0035194 <_dtoa_r+0x964>
c00357a1:	8b 45 90             	mov    -0x70(%ebp),%eax
c00357a4:	85 c0                	test   %eax,%eax
c00357a6:	0f 8e c4 fb ff ff    	jle    c0035370 <_dtoa_r+0xb40>
c00357ac:	d8 0d b0 96 03 c0    	fmuls  0xc00396b0
c00357b2:	83 c1 01             	add    $0x1,%ecx
c00357b5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00357b8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00357bb:	89 c1                	mov    %eax,%ecx
c00357bd:	83 eb 01             	sub    $0x1,%ebx
c00357c0:	db 45 d4             	fildl  -0x2c(%ebp)
c00357c3:	d8 c9                	fmul   %st(1),%st
c00357c5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c00357c8:	d8 05 b4 96 03 c0    	fadds  0xc00396b4
c00357ce:	dd 5d c0             	fstpl  -0x40(%ebp)
c00357d1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00357d8:	e9 53 f4 ff ff       	jmp    c0034c30 <_dtoa_r+0x400>
c00357dd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00357e0:	c6 03 30             	movb   $0x30,(%ebx)
c00357e3:	83 c0 01             	add    $0x1,%eax
c00357e6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00357e9:	b8 31 00 00 00       	mov    $0x31,%eax
c00357ee:	88 02                	mov    %al,(%edx)
c00357f0:	e9 8b f8 ff ff       	jmp    c0035080 <_dtoa_r+0x850>
c00357f5:	d9 c0                	fld    %st(0)
c00357f7:	b9 02 00 00 00       	mov    $0x2,%ecx
c00357fc:	e9 f2 f3 ff ff       	jmp    c0034bf3 <_dtoa_r+0x3c3>
c0035801:	de e2                	fsubp  %st,%st(2)
c0035803:	d9 c9                	fxch   %st(1)
c0035805:	df e9                	fucomip %st(1),%st
c0035807:	dd d8                	fstp   %st(0)
c0035809:	0f 86 69 fb ff ff    	jbe    c0035378 <_dtoa_r+0xb48>
c003580f:	dd d8                	fstp   %st(0)
c0035811:	eb 07                	jmp    c003581a <_dtoa_r+0xfea>
c0035813:	90                   	nop
c0035814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035818:	89 c2                	mov    %eax,%edx
c003581a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003581e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035821:	74 f5                	je     c0035818 <_dtoa_r+0xfe8>
c0035823:	e9 d9 f4 ff ff       	jmp    c0034d01 <_dtoa_r+0x4d1>
c0035828:	c6 07 31             	movb   $0x31,(%edi)
c003582b:	89 fb                	mov    %edi,%ebx
c003582d:	89 d7                	mov    %edx,%edi
c003582f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035833:	e9 1a f8 ff ff       	jmp    c0035052 <_dtoa_r+0x822>
c0035838:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003583b:	85 d2                	test   %edx,%edx
c003583d:	0f 84 1b 01 00 00    	je     c003595e <_dtoa_r+0x112e>
c0035843:	05 33 04 00 00       	add    $0x433,%eax
c0035848:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003584b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003584e:	e9 0b f9 ff ff       	jmp    c003515e <_dtoa_r+0x92e>
c0035853:	85 c0                	test   %eax,%eax
c0035855:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035858:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003585b:	7e 45                	jle    c00358a2 <_dtoa_r+0x1072>
c003585d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035860:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035867:	00 
c0035868:	89 34 24             	mov    %esi,(%esp)
c003586b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003586f:	e8 8c 11 00 00       	call   c0036a00 <__lshift>
c0035874:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035877:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003587b:	89 04 24             	mov    %eax,(%esp)
c003587e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035881:	e8 9a 12 00 00       	call   c0036b20 <__mcmp>
c0035886:	83 f8 00             	cmp    $0x0,%eax
c0035889:	0f 8e 5b 01 00 00    	jle    c00359ea <_dtoa_r+0x11ba>
c003588f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035893:	0f 84 0c 01 00 00    	je     c00359a5 <_dtoa_r+0x1175>
c0035899:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003589c:	83 c0 31             	add    $0x31,%eax
c003589f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00358a2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00358a5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00358a9:	89 cb                	mov    %ecx,%ebx
c00358ab:	88 03                	mov    %al,(%ebx)
c00358ad:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00358b0:	89 fb                	mov    %edi,%ebx
c00358b2:	8d 79 01             	lea    0x1(%ecx),%edi
c00358b5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00358b8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00358bb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00358be:	e9 8f f7 ff ff       	jmp    c0035052 <_dtoa_r+0x822>
c00358c3:	dd d8                	fstp   %st(0)
c00358c5:	dd d8                	fstp   %st(0)
c00358c7:	dd d8                	fstp   %st(0)
c00358c9:	eb 0d                	jmp    c00358d8 <_dtoa_r+0x10a8>
c00358cb:	90                   	nop
c00358cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00358d0:	dd d8                	fstp   %st(0)
c00358d2:	dd d8                	fstp   %st(0)
c00358d4:	dd d8                	fstp   %st(0)
c00358d6:	dd d8                	fstp   %st(0)
c00358d8:	89 fb                	mov    %edi,%ebx
c00358da:	89 d7                	mov    %edx,%edi
c00358dc:	e9 8d f5 ff ff       	jmp    c0034e6e <_dtoa_r+0x63e>
c00358e1:	29 cb                	sub    %ecx,%ebx
c00358e3:	31 c0                	xor    %eax,%eax
c00358e5:	e9 74 f8 ff ff       	jmp    c003515e <_dtoa_r+0x92e>
c00358ea:	75 0e                	jne    c00358fa <_dtoa_r+0x10ca>
c00358ec:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00358f0:	74 08                	je     c00358fa <_dtoa_r+0x10ca>
c00358f2:	e9 b2 f9 ff ff       	jmp    c00352a9 <_dtoa_r+0xa79>
c00358f7:	90                   	nop
c00358f8:	89 c2                	mov    %eax,%edx
c00358fa:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00358fe:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035901:	74 f5                	je     c00358f8 <_dtoa_r+0x10c8>
c0035903:	89 fb                	mov    %edi,%ebx
c0035905:	89 d7                	mov    %edx,%edi
c0035907:	e9 46 f7 ff ff       	jmp    c0035052 <_dtoa_r+0x822>
c003590c:	8b 40 04             	mov    0x4(%eax),%eax
c003590f:	89 34 24             	mov    %esi,(%esp)
c0035912:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035916:	e8 45 0a 00 00       	call   c0036360 <_Balloc>
c003591b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003591e:	89 c3                	mov    %eax,%ebx
c0035920:	8b 41 10             	mov    0x10(%ecx),%eax
c0035923:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003592a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003592e:	89 c8                	mov    %ecx,%eax
c0035930:	83 c0 0c             	add    $0xc,%eax
c0035933:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035937:	8d 43 0c             	lea    0xc(%ebx),%eax
c003593a:	89 04 24             	mov    %eax,(%esp)
c003593d:	e8 f2 cb ff ff       	call   c0032534 <memcpy>
c0035942:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035949:	00 
c003594a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003594e:	89 34 24             	mov    %esi,(%esp)
c0035951:	e8 aa 10 00 00       	call   c0036a00 <__lshift>
c0035956:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035959:	e9 9d fc ff ff       	jmp    c00355fb <_dtoa_r+0xdcb>
c003595e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035963:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035966:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035969:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003596c:	e9 ed f7 ff ff       	jmp    c003515e <_dtoa_r+0x92e>
c0035971:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035975:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035978:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003597b:	74 28                	je     c00359a5 <_dtoa_r+0x1175>
c003597d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035981:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035984:	83 c0 01             	add    $0x1,%eax
c0035987:	89 cb                	mov    %ecx,%ebx
c0035989:	e9 1d ff ff ff       	jmp    c00358ab <_dtoa_r+0x107b>
c003598e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035991:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035994:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035997:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003599a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003599d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00359a0:	e9 cc f8 ff ff       	jmp    c0035271 <_dtoa_r+0xa41>
c00359a5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00359a8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00359ad:	8d 50 01             	lea    0x1(%eax),%edx
c00359b0:	c6 00 39             	movb   $0x39,(%eax)
c00359b3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00359b6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00359b9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00359bc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00359bf:	e9 fa f8 ff ff       	jmp    c00352be <_dtoa_r+0xa8e>
c00359c4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00359c7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00359ca:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00359cd:	83 fb 39             	cmp    $0x39,%ebx
c00359d0:	74 d3                	je     c00359a5 <_dtoa_r+0x1175>
c00359d2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00359d5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00359d8:	83 c0 31             	add    $0x31,%eax
c00359db:	85 c9                	test   %ecx,%ecx
c00359dd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00359e0:	0f 4e c3             	cmovle %ebx,%eax
c00359e3:	89 cb                	mov    %ecx,%ebx
c00359e5:	e9 c1 fe ff ff       	jmp    c00358ab <_dtoa_r+0x107b>
c00359ea:	0f 85 b2 fe ff ff    	jne    c00358a2 <_dtoa_r+0x1072>
c00359f0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00359f4:	0f 84 a8 fe ff ff    	je     c00358a2 <_dtoa_r+0x1072>
c00359fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035a00:	e9 8a fe ff ff       	jmp    c003588f <_dtoa_r+0x105f>
c0035a05:	0f 85 c7 f3 ff ff    	jne    c0034dd2 <_dtoa_r+0x5a2>
c0035a0b:	dd d8                	fstp   %st(0)
c0035a0d:	dd d8                	fstp   %st(0)
c0035a0f:	90                   	nop
c0035a10:	e9 65 fd ff ff       	jmp    c003577a <_dtoa_r+0xf4a>
c0035a15:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035a18:	e9 dd f5 ff ff       	jmp    c0034ffa <_dtoa_r+0x7ca>
c0035a1d:	8d 76 00             	lea    0x0(%esi),%esi
c0035a20:	0f 84 7a f5 ff ff    	je     c0034fa0 <_dtoa_r+0x770>
c0035a26:	b8 3c 00 00 00       	mov    $0x3c,%eax
c0035a2b:	29 d0                	sub    %edx,%eax
c0035a2d:	e9 ab f8 ff ff       	jmp    c00352dd <_dtoa_r+0xaad>
c0035a32:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a37:	e9 d9 ef ff ff       	jmp    c0034a15 <_dtoa_r+0x1e5>
c0035a3c:	31 d2                	xor    %edx,%edx
c0035a3e:	e9 36 f1 ff ff       	jmp    c0034b79 <_dtoa_r+0x349>
c0035a43:	66 90                	xchg   %ax,%ax
c0035a45:	66 90                	xchg   %ax,%ax
c0035a47:	66 90                	xchg   %ax,%ax
c0035a49:	66 90                	xchg   %ax,%ax
c0035a4b:	66 90                	xchg   %ax,%ax
c0035a4d:	66 90                	xchg   %ax,%ax
c0035a4f:	90                   	nop

c0035a50 <_setlocale_r>:
c0035a50:	55                   	push   %ebp
c0035a51:	89 e5                	mov    %esp,%ebp
c0035a53:	53                   	push   %ebx
c0035a54:	83 ec 14             	sub    $0x14,%esp
c0035a57:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0035a5a:	85 db                	test   %ebx,%ebx
c0035a5c:	74 14                	je     c0035a72 <_setlocale_r+0x22>
c0035a5e:	c7 44 24 04 d8 96 03 	movl   $0xc00396d8,0x4(%esp)
c0035a65:	c0 
c0035a66:	89 1c 24             	mov    %ebx,(%esp)
c0035a69:	e8 a2 cb ff ff       	call   c0032610 <strcmp>
c0035a6e:	85 c0                	test   %eax,%eax
c0035a70:	75 0e                	jne    c0035a80 <_setlocale_r+0x30>
c0035a72:	83 c4 14             	add    $0x14,%esp
c0035a75:	b8 d4 94 03 c0       	mov    $0xc00394d4,%eax
c0035a7a:	5b                   	pop    %ebx
c0035a7b:	5d                   	pop    %ebp
c0035a7c:	c3                   	ret    
c0035a7d:	8d 76 00             	lea    0x0(%esi),%esi
c0035a80:	c7 44 24 04 d4 94 03 	movl   $0xc00394d4,0x4(%esp)
c0035a87:	c0 
c0035a88:	89 1c 24             	mov    %ebx,(%esp)
c0035a8b:	e8 80 cb ff ff       	call   c0032610 <strcmp>
c0035a90:	85 c0                	test   %eax,%eax
c0035a92:	74 de                	je     c0035a72 <_setlocale_r+0x22>
c0035a94:	89 1c 24             	mov    %ebx,(%esp)
c0035a97:	c7 44 24 04 0e 95 03 	movl   $0xc003950e,0x4(%esp)
c0035a9e:	c0 
c0035a9f:	e8 6c cb ff ff       	call   c0032610 <strcmp>
c0035aa4:	89 c2                	mov    %eax,%edx
c0035aa6:	31 c0                	xor    %eax,%eax
c0035aa8:	85 d2                	test   %edx,%edx
c0035aaa:	ba d4 94 03 c0       	mov    $0xc00394d4,%edx
c0035aaf:	0f 44 c2             	cmove  %edx,%eax
c0035ab2:	83 c4 14             	add    $0x14,%esp
c0035ab5:	5b                   	pop    %ebx
c0035ab6:	5d                   	pop    %ebp
c0035ab7:	c3                   	ret    
c0035ab8:	90                   	nop
c0035ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ac0 <__locale_charset>:
c0035ac0:	55                   	push   %ebp
c0035ac1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c0035ac6:	89 e5                	mov    %esp,%ebp
c0035ac8:	5d                   	pop    %ebp
c0035ac9:	c3                   	ret    
c0035aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035ad0 <__locale_mb_cur_max>:
c0035ad0:	55                   	push   %ebp
c0035ad1:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c0035ad6:	89 e5                	mov    %esp,%ebp
c0035ad8:	5d                   	pop    %ebp
c0035ad9:	c3                   	ret    
c0035ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035ae0 <__locale_msgcharset>:
c0035ae0:	55                   	push   %ebp
c0035ae1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c0035ae6:	89 e5                	mov    %esp,%ebp
c0035ae8:	5d                   	pop    %ebp
c0035ae9:	c3                   	ret    
c0035aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035af0 <__locale_cjk_lang>:
c0035af0:	55                   	push   %ebp
c0035af1:	31 c0                	xor    %eax,%eax
c0035af3:	89 e5                	mov    %esp,%ebp
c0035af5:	5d                   	pop    %ebp
c0035af6:	c3                   	ret    
c0035af7:	89 f6                	mov    %esi,%esi
c0035af9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b00 <_localeconv_r>:
c0035b00:	55                   	push   %ebp
c0035b01:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035b06:	89 e5                	mov    %esp,%ebp
c0035b08:	5d                   	pop    %ebp
c0035b09:	c3                   	ret    
c0035b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035b10 <setlocale>:
c0035b10:	55                   	push   %ebp
c0035b11:	89 e5                	mov    %esp,%ebp
c0035b13:	83 ec 18             	sub    $0x18,%esp
c0035b16:	e8 35 cc ff ff       	call   c0032750 <__getreent>
c0035b1b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035b1e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035b22:	8b 55 08             	mov    0x8(%ebp),%edx
c0035b25:	89 04 24             	mov    %eax,(%esp)
c0035b28:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035b2c:	e8 1f ff ff ff       	call   c0035a50 <_setlocale_r>
c0035b31:	c9                   	leave  
c0035b32:	c3                   	ret    
c0035b33:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b40 <localeconv>:
c0035b40:	55                   	push   %ebp
c0035b41:	89 e5                	mov    %esp,%ebp
c0035b43:	83 ec 08             	sub    $0x8,%esp
c0035b46:	e8 05 cc ff ff       	call   c0032750 <__getreent>
c0035b4b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035b50:	c9                   	leave  
c0035b51:	c3                   	ret    
c0035b52:	66 90                	xchg   %ax,%ax
c0035b54:	66 90                	xchg   %ax,%ax
c0035b56:	66 90                	xchg   %ax,%ax
c0035b58:	66 90                	xchg   %ax,%ax
c0035b5a:	66 90                	xchg   %ax,%ax
c0035b5c:	66 90                	xchg   %ax,%ax
c0035b5e:	66 90                	xchg   %ax,%ax

c0035b60 <_malloc_r>:
c0035b60:	55                   	push   %ebp
c0035b61:	89 e5                	mov    %esp,%ebp
c0035b63:	57                   	push   %edi
c0035b64:	56                   	push   %esi
c0035b65:	53                   	push   %ebx
c0035b66:	83 ec 2c             	sub    $0x2c,%esp
c0035b69:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b6c:	8d 50 0b             	lea    0xb(%eax),%edx
c0035b6f:	83 fa 16             	cmp    $0x16,%edx
c0035b72:	76 6c                	jbe    c0035be0 <_malloc_r+0x80>
c0035b74:	89 d7                	mov    %edx,%edi
c0035b76:	83 e7 f8             	and    $0xfffffff8,%edi
c0035b79:	89 fe                	mov    %edi,%esi
c0035b7b:	c1 ee 1f             	shr    $0x1f,%esi
c0035b7e:	39 c7                	cmp    %eax,%edi
c0035b80:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b83:	89 f2                	mov    %esi,%edx
c0035b85:	72 67                	jb     c0035bee <_malloc_r+0x8e>
c0035b87:	84 d2                	test   %dl,%dl
c0035b89:	75 63                	jne    c0035bee <_malloc_r+0x8e>
c0035b8b:	89 04 24             	mov    %eax,(%esp)
c0035b8e:	e8 ad 07 00 00       	call   c0036340 <__malloc_lock>
c0035b93:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035b99:	77 65                	ja     c0035c00 <_malloc_r+0xa0>
c0035b9b:	89 fa                	mov    %edi,%edx
c0035b9d:	c1 ea 03             	shr    $0x3,%edx
c0035ba0:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035ba7:	8b 58 0c             	mov    0xc(%eax),%ebx
c0035baa:	39 c3                	cmp    %eax,%ebx
c0035bac:	0f 84 3e 05 00 00    	je     c00360f0 <_malloc_r+0x590>
c0035bb2:	8b 43 04             	mov    0x4(%ebx),%eax
c0035bb5:	83 e0 fc             	and    $0xfffffffc,%eax
c0035bb8:	8b 53 0c             	mov    0xc(%ebx),%edx
c0035bbb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c0035bbe:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035bc1:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035bc4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035bc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0035bcc:	89 04 24             	mov    %eax,(%esp)
c0035bcf:	e8 7c 07 00 00       	call   c0036350 <__malloc_unlock>
c0035bd4:	8d 43 08             	lea    0x8(%ebx),%eax
c0035bd7:	83 c4 2c             	add    $0x2c,%esp
c0035bda:	5b                   	pop    %ebx
c0035bdb:	5e                   	pop    %esi
c0035bdc:	5f                   	pop    %edi
c0035bdd:	5d                   	pop    %ebp
c0035bde:	c3                   	ret    
c0035bdf:	90                   	nop
c0035be0:	bf 10 00 00 00       	mov    $0x10,%edi
c0035be5:	31 d2                	xor    %edx,%edx
c0035be7:	39 c7                	cmp    %eax,%edi
c0035be9:	8b 45 08             	mov    0x8(%ebp),%eax
c0035bec:	73 99                	jae    c0035b87 <_malloc_r+0x27>
c0035bee:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035bf4:	83 c4 2c             	add    $0x2c,%esp
c0035bf7:	31 c0                	xor    %eax,%eax
c0035bf9:	5b                   	pop    %ebx
c0035bfa:	5e                   	pop    %esi
c0035bfb:	5f                   	pop    %edi
c0035bfc:	5d                   	pop    %ebp
c0035bfd:	c3                   	ret    
c0035bfe:	66 90                	xchg   %ax,%ax
c0035c00:	89 fe                	mov    %edi,%esi
c0035c02:	c1 ee 09             	shr    $0x9,%esi
c0035c05:	85 f6                	test   %esi,%esi
c0035c07:	0f 84 ab 01 00 00    	je     c0035db8 <_malloc_r+0x258>
c0035c0d:	83 fe 04             	cmp    $0x4,%esi
c0035c10:	0f 87 8a 03 00 00    	ja     c0035fa0 <_malloc_r+0x440>
c0035c16:	89 fe                	mov    %edi,%esi
c0035c18:	c1 ee 06             	shr    $0x6,%esi
c0035c1b:	83 c6 38             	add    $0x38,%esi
c0035c1e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035c21:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035c28:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035c2b:	39 d9                	cmp    %ebx,%ecx
c0035c2d:	75 18                	jne    c0035c47 <_malloc_r+0xe7>
c0035c2f:	eb 28                	jmp    c0035c59 <_malloc_r+0xf9>
c0035c31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c38:	85 d2                	test   %edx,%edx
c0035c3a:	0f 89 78 ff ff ff    	jns    c0035bb8 <_malloc_r+0x58>
c0035c40:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035c43:	39 d9                	cmp    %ebx,%ecx
c0035c45:	74 12                	je     c0035c59 <_malloc_r+0xf9>
c0035c47:	8b 43 04             	mov    0x4(%ebx),%eax
c0035c4a:	83 e0 fc             	and    $0xfffffffc,%eax
c0035c4d:	89 c2                	mov    %eax,%edx
c0035c4f:	29 fa                	sub    %edi,%edx
c0035c51:	83 fa 0f             	cmp    $0xf,%edx
c0035c54:	7e e2                	jle    c0035c38 <_malloc_r+0xd8>
c0035c56:	83 ee 01             	sub    $0x1,%esi
c0035c59:	8d 46 01             	lea    0x1(%esi),%eax
c0035c5c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c5f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035c65:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035c6a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035c70:	74 6b                	je     c0035cdd <_malloc_r+0x17d>
c0035c72:	8b 73 04             	mov    0x4(%ebx),%esi
c0035c75:	83 e6 fc             	and    $0xfffffffc,%esi
c0035c78:	89 f0                	mov    %esi,%eax
c0035c7a:	29 f8                	sub    %edi,%eax
c0035c7c:	83 f8 0f             	cmp    $0xf,%eax
c0035c7f:	0f 8f a3 03 00 00    	jg     c0036028 <_malloc_r+0x4c8>
c0035c85:	85 c0                	test   %eax,%eax
c0035c87:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c0035c8e:	c5 03 c0 
c0035c91:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c0035c98:	c5 03 c0 
c0035c9b:	0f 89 27 01 00 00    	jns    c0035dc8 <_malloc_r+0x268>
c0035ca1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035ca7:	0f 87 1b 03 00 00    	ja     c0035fc8 <_malloc_r+0x468>
c0035cad:	c1 ee 03             	shr    $0x3,%esi
c0035cb0:	b8 01 00 00 00       	mov    $0x1,%eax
c0035cb5:	89 f1                	mov    %esi,%ecx
c0035cb7:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c0035cbe:	c1 f9 02             	sar    $0x2,%ecx
c0035cc1:	d3 e0                	shl    %cl,%eax
c0035cc3:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035cc6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035ccc:	89 53 0c             	mov    %edx,0xc(%ebx)
c0035ccf:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035cd2:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035cd7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0035cda:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0035cdd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035ce0:	be 01 00 00 00       	mov    $0x1,%esi
c0035ce5:	c1 f9 02             	sar    $0x2,%ecx
c0035ce8:	d3 e6                	shl    %cl,%esi
c0035cea:	39 c6                	cmp    %eax,%esi
c0035cec:	0f 87 f6 00 00 00    	ja     c0035de8 <_malloc_r+0x288>
c0035cf2:	85 f0                	test   %esi,%eax
c0035cf4:	0f 85 76 03 00 00    	jne    c0036070 <_malloc_r+0x510>
c0035cfa:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0035cfd:	01 f6                	add    %esi,%esi
c0035cff:	83 e2 fc             	and    $0xfffffffc,%edx
c0035d02:	85 f0                	test   %esi,%eax
c0035d04:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035d07:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d0a:	0f 85 60 03 00 00    	jne    c0036070 <_malloc_r+0x510>
c0035d10:	89 ca                	mov    %ecx,%edx
c0035d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035d18:	01 f6                	add    %esi,%esi
c0035d1a:	83 c2 04             	add    $0x4,%edx
c0035d1d:	85 f0                	test   %esi,%eax
c0035d1f:	74 f7                	je     c0035d18 <_malloc_r+0x1b8>
c0035d21:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035d24:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035d27:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035d2a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035d31:	89 f1                	mov    %esi,%ecx
c0035d33:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d36:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035d39:	39 d9                	cmp    %ebx,%ecx
c0035d3b:	75 1e                	jne    c0035d5b <_malloc_r+0x1fb>
c0035d3d:	e9 36 03 00 00       	jmp    c0036078 <_malloc_r+0x518>
c0035d42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035d48:	85 d2                	test   %edx,%edx
c0035d4a:	0f 89 c0 03 00 00    	jns    c0036110 <_malloc_r+0x5b0>
c0035d50:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035d53:	39 d9                	cmp    %ebx,%ecx
c0035d55:	0f 84 1d 03 00 00    	je     c0036078 <_malloc_r+0x518>
c0035d5b:	8b 43 04             	mov    0x4(%ebx),%eax
c0035d5e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035d61:	89 c2                	mov    %eax,%edx
c0035d63:	29 fa                	sub    %edi,%edx
c0035d65:	83 fa 0f             	cmp    $0xf,%edx
c0035d68:	7e de                	jle    c0035d48 <_malloc_r+0x1e8>
c0035d6a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0035d6d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035d70:	83 cf 01             	or     $0x1,%edi
c0035d73:	8b 73 08             	mov    0x8(%ebx),%esi
c0035d76:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035d79:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0035d7c:	89 71 08             	mov    %esi,0x8(%ecx)
c0035d7f:	89 d1                	mov    %edx,%ecx
c0035d81:	83 c9 01             	or     $0x1,%ecx
c0035d84:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035d89:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c0035d8e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035d95:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c0035d9c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035d9f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035da2:	8b 45 08             	mov    0x8(%ebp),%eax
c0035da5:	89 04 24             	mov    %eax,(%esp)
c0035da8:	e8 a3 05 00 00       	call   c0036350 <__malloc_unlock>
c0035dad:	8d 43 08             	lea    0x8(%ebx),%eax
c0035db0:	e9 22 fe ff ff       	jmp    c0035bd7 <_malloc_r+0x77>
c0035db5:	8d 76 00             	lea    0x0(%esi),%esi
c0035db8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c0035dbd:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035dc2:	e9 5a fe ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c0035dc7:	90                   	nop
c0035dc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0035dcb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035dd0:	89 04 24             	mov    %eax,(%esp)
c0035dd3:	e8 78 05 00 00       	call   c0036350 <__malloc_unlock>
c0035dd8:	83 c4 2c             	add    $0x2c,%esp
c0035ddb:	8d 43 08             	lea    0x8(%ebx),%eax
c0035dde:	5b                   	pop    %ebx
c0035ddf:	5e                   	pop    %esi
c0035de0:	5f                   	pop    %edi
c0035de1:	5d                   	pop    %ebp
c0035de2:	c3                   	ret    
c0035de3:	90                   	nop
c0035de4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035de8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035dee:	8b 73 04             	mov    0x4(%ebx),%esi
c0035df1:	83 e6 fc             	and    $0xfffffffc,%esi
c0035df4:	39 f7                	cmp    %esi,%edi
c0035df6:	77 0d                	ja     c0035e05 <_malloc_r+0x2a5>
c0035df8:	89 f0                	mov    %esi,%eax
c0035dfa:	29 f8                	sub    %edi,%eax
c0035dfc:	83 f8 0f             	cmp    $0xf,%eax
c0035dff:	0f 8f 6b 01 00 00    	jg     c0035f70 <_malloc_r+0x410>
c0035e05:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c0035e0b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c0035e0e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035e11:	01 f9                	add    %edi,%ecx
c0035e13:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035e19:	83 c1 10             	add    $0x10,%ecx
c0035e1c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035e21:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035e28:	0f 44 c1             	cmove  %ecx,%eax
c0035e2b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035e2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e32:	8b 45 08             	mov    0x8(%ebp),%eax
c0035e35:	89 04 24             	mov    %eax,(%esp)
c0035e38:	e8 03 13 00 00       	call   c0037140 <_sbrk_r>
c0035e3d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035e40:	89 c1                	mov    %eax,%ecx
c0035e42:	0f 84 17 03 00 00    	je     c003615f <_malloc_r+0x5ff>
c0035e48:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035e4b:	0f 87 02 03 00 00    	ja     c0036153 <_malloc_r+0x5f3>
c0035e51:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035e54:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035e5a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c0035e5d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035e63:	0f 84 a9 03 00 00    	je     c0036212 <_malloc_r+0x6b2>
c0035e69:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035e70:	0f 84 ca 03 00 00    	je     c0036240 <_malloc_r+0x6e0>
c0035e76:	89 c8                	mov    %ecx,%eax
c0035e78:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c0035e7b:	01 d0                	add    %edx,%eax
c0035e7d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035e82:	89 c8                	mov    %ecx,%eax
c0035e84:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035e89:	83 e0 07             	and    $0x7,%eax
c0035e8c:	74 0c                	je     c0035e9a <_malloc_r+0x33a>
c0035e8e:	29 c1                	sub    %eax,%ecx
c0035e90:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035e95:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035e98:	29 c2                	sub    %eax,%edx
c0035e9a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035e9d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035ea0:	01 c8                	add    %ecx,%eax
c0035ea2:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035ea7:	29 c2                	sub    %eax,%edx
c0035ea9:	8b 45 08             	mov    0x8(%ebp),%eax
c0035eac:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035eb0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035eb3:	89 04 24             	mov    %eax,(%esp)
c0035eb6:	e8 85 12 00 00       	call   c0037140 <_sbrk_r>
c0035ebb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035ebe:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035ec1:	0f 84 6d 03 00 00    	je     c0036234 <_malloc_r+0x6d4>
c0035ec7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035eca:	29 c8                	sub    %ecx,%eax
c0035ecc:	01 d0                	add    %edx,%eax
c0035ece:	83 c8 01             	or     $0x1,%eax
c0035ed1:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035ed7:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035edd:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035ee3:	89 41 04             	mov    %eax,0x4(%ecx)
c0035ee6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035eec:	0f 84 f2 02 00 00    	je     c00361e4 <_malloc_r+0x684>
c0035ef2:	83 fe 0f             	cmp    $0xf,%esi
c0035ef5:	0f 86 8d 02 00 00    	jbe    c0036188 <_malloc_r+0x628>
c0035efb:	8b 43 04             	mov    0x4(%ebx),%eax
c0035efe:	83 ee 0c             	sub    $0xc,%esi
c0035f01:	83 e6 f8             	and    $0xfffffff8,%esi
c0035f04:	83 e0 01             	and    $0x1,%eax
c0035f07:	09 f0                	or     %esi,%eax
c0035f09:	83 fe 0f             	cmp    $0xf,%esi
c0035f0c:	89 43 04             	mov    %eax,0x4(%ebx)
c0035f0f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035f14:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c0035f1b:	00 
c0035f1c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035f23:	00 
c0035f24:	0f 87 a2 02 00 00    	ja     c00361cc <_malloc_r+0x66c>
c0035f2a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035f30:	76 06                	jbe    c0035f38 <_malloc_r+0x3d8>
c0035f32:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035f38:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c0035f3e:	76 06                	jbe    c0035f46 <_malloc_r+0x3e6>
c0035f40:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035f46:	8b 50 04             	mov    0x4(%eax),%edx
c0035f49:	89 c3                	mov    %eax,%ebx
c0035f4b:	83 e2 fc             	and    $0xfffffffc,%edx
c0035f4e:	89 d0                	mov    %edx,%eax
c0035f50:	29 f8                	sub    %edi,%eax
c0035f52:	39 d7                	cmp    %edx,%edi
c0035f54:	77 05                	ja     c0035f5b <_malloc_r+0x3fb>
c0035f56:	83 f8 0f             	cmp    $0xf,%eax
c0035f59:	7f 15                	jg     c0035f70 <_malloc_r+0x410>
c0035f5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f5e:	89 04 24             	mov    %eax,(%esp)
c0035f61:	e8 ea 03 00 00       	call   c0036350 <__malloc_unlock>
c0035f66:	31 c0                	xor    %eax,%eax
c0035f68:	e9 6a fc ff ff       	jmp    c0035bd7 <_malloc_r+0x77>
c0035f6d:	8d 76 00             	lea    0x0(%esi),%esi
c0035f70:	89 fa                	mov    %edi,%edx
c0035f72:	83 c8 01             	or     $0x1,%eax
c0035f75:	83 ca 01             	or     $0x1,%edx
c0035f78:	89 53 04             	mov    %edx,0x4(%ebx)
c0035f7b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035f7e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035f84:	89 42 04             	mov    %eax,0x4(%edx)
c0035f87:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f8a:	89 04 24             	mov    %eax,(%esp)
c0035f8d:	e8 be 03 00 00       	call   c0036350 <__malloc_unlock>
c0035f92:	83 c4 2c             	add    $0x2c,%esp
c0035f95:	8d 43 08             	lea    0x8(%ebx),%eax
c0035f98:	5b                   	pop    %ebx
c0035f99:	5e                   	pop    %esi
c0035f9a:	5f                   	pop    %edi
c0035f9b:	5d                   	pop    %ebp
c0035f9c:	c3                   	ret    
c0035f9d:	8d 76 00             	lea    0x0(%esi),%esi
c0035fa0:	83 fe 14             	cmp    $0x14,%esi
c0035fa3:	0f 86 8f 01 00 00    	jbe    c0036138 <_malloc_r+0x5d8>
c0035fa9:	83 fe 54             	cmp    $0x54,%esi
c0035fac:	0f 87 be 01 00 00    	ja     c0036170 <_malloc_r+0x610>
c0035fb2:	89 fe                	mov    %edi,%esi
c0035fb4:	c1 ee 0c             	shr    $0xc,%esi
c0035fb7:	83 c6 6e             	add    $0x6e,%esi
c0035fba:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035fbd:	e9 5f fc ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c0035fc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035fc8:	89 f1                	mov    %esi,%ecx
c0035fca:	c1 e9 09             	shr    $0x9,%ecx
c0035fcd:	83 f9 04             	cmp    $0x4,%ecx
c0035fd0:	0f 86 6d 01 00 00    	jbe    c0036143 <_malloc_r+0x5e3>
c0035fd6:	83 f9 14             	cmp    $0x14,%ecx
c0035fd9:	0f 87 0f 02 00 00    	ja     c00361ee <_malloc_r+0x68e>
c0035fdf:	83 c1 5b             	add    $0x5b,%ecx
c0035fe2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035fe5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c0035fec:	8b 50 08             	mov    0x8(%eax),%edx
c0035fef:	39 c2                	cmp    %eax,%edx
c0035ff1:	0f 84 a1 01 00 00    	je     c0036198 <_malloc_r+0x638>
c0035ff7:	90                   	nop
c0035ff8:	8b 4a 04             	mov    0x4(%edx),%ecx
c0035ffb:	83 e1 fc             	and    $0xfffffffc,%ecx
c0035ffe:	39 ce                	cmp    %ecx,%esi
c0036000:	73 07                	jae    c0036009 <_malloc_r+0x4a9>
c0036002:	8b 52 08             	mov    0x8(%edx),%edx
c0036005:	39 d0                	cmp    %edx,%eax
c0036007:	75 ef                	jne    c0035ff8 <_malloc_r+0x498>
c0036009:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003600c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0036011:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0036014:	89 53 08             	mov    %edx,0x8(%ebx)
c0036017:	89 59 08             	mov    %ebx,0x8(%ecx)
c003601a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003601d:	e9 bb fc ff ff       	jmp    c0035cdd <_malloc_r+0x17d>
c0036022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036028:	89 c1                	mov    %eax,%ecx
c003602a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003602d:	83 c9 01             	or     $0x1,%ecx
c0036030:	83 cf 01             	or     $0x1,%edi
c0036033:	89 7b 04             	mov    %edi,0x4(%ebx)
c0036036:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003603c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0036042:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0036049:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0036050:	89 4a 04             	mov    %ecx,0x4(%edx)
c0036053:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0036056:	8b 45 08             	mov    0x8(%ebp),%eax
c0036059:	89 04 24             	mov    %eax,(%esp)
c003605c:	e8 ef 02 00 00       	call   c0036350 <__malloc_unlock>
c0036061:	8d 43 08             	lea    0x8(%ebx),%eax
c0036064:	e9 6e fb ff ff       	jmp    c0035bd7 <_malloc_r+0x77>
c0036069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036070:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0036073:	e9 af fc ff ff       	jmp    c0035d27 <_malloc_r+0x1c7>
c0036078:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003607c:	83 c1 08             	add    $0x8,%ecx
c003607f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0036083:	0f 85 ad fc ff ff    	jne    c0035d36 <_malloc_r+0x1d6>
c0036089:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003608c:	eb 12                	jmp    c00360a0 <_malloc_r+0x540>
c003608e:	66 90                	xchg   %ax,%ax
c0036090:	8d 56 f8             	lea    -0x8(%esi),%edx
c0036093:	8b 36                	mov    (%esi),%esi
c0036095:	83 e8 01             	sub    $0x1,%eax
c0036098:	39 d6                	cmp    %edx,%esi
c003609a:	0f 85 ea 01 00 00    	jne    c003628a <_malloc_r+0x72a>
c00360a0:	a8 03                	test   $0x3,%al
c00360a2:	75 ec                	jne    c0036090 <_malloc_r+0x530>
c00360a4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00360a7:	f7 d0                	not    %eax
c00360a9:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c00360af:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00360b4:	d1 65 dc             	shll   -0x24(%ebp)
c00360b7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00360ba:	39 c2                	cmp    %eax,%edx
c00360bc:	0f 87 26 fd ff ff    	ja     c0035de8 <_malloc_r+0x288>
c00360c2:	85 d2                	test   %edx,%edx
c00360c4:	0f 84 1e fd ff ff    	je     c0035de8 <_malloc_r+0x288>
c00360ca:	85 c2                	test   %eax,%edx
c00360cc:	0f 85 c2 01 00 00    	jne    c0036294 <_malloc_r+0x734>
c00360d2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00360d5:	89 f1                	mov    %esi,%ecx
c00360d7:	01 d2                	add    %edx,%edx
c00360d9:	83 c1 04             	add    $0x4,%ecx
c00360dc:	85 d0                	test   %edx,%eax
c00360de:	74 f7                	je     c00360d7 <_malloc_r+0x577>
c00360e0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00360e3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00360e6:	e9 3c fc ff ff       	jmp    c0035d27 <_malloc_r+0x1c7>
c00360eb:	90                   	nop
c00360ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00360f0:	8d 43 08             	lea    0x8(%ebx),%eax
c00360f3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00360f6:	39 d8                	cmp    %ebx,%eax
c00360f8:	0f 85 b4 fa ff ff    	jne    c0035bb2 <_malloc_r+0x52>
c00360fe:	8d 42 02             	lea    0x2(%edx),%eax
c0036101:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036104:	e9 56 fb ff ff       	jmp    c0035c5f <_malloc_r+0xff>
c0036109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036110:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0036115:	8b 53 08             	mov    0x8(%ebx),%edx
c0036118:	8b 43 0c             	mov    0xc(%ebx),%eax
c003611b:	89 42 0c             	mov    %eax,0xc(%edx)
c003611e:	89 50 08             	mov    %edx,0x8(%eax)
c0036121:	8b 45 08             	mov    0x8(%ebp),%eax
c0036124:	89 04 24             	mov    %eax,(%esp)
c0036127:	e8 24 02 00 00       	call   c0036350 <__malloc_unlock>
c003612c:	8d 43 08             	lea    0x8(%ebx),%eax
c003612f:	e9 a3 fa ff ff       	jmp    c0035bd7 <_malloc_r+0x77>
c0036134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036138:	83 c6 5b             	add    $0x5b,%esi
c003613b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003613e:	e9 de fa ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c0036143:	89 f1                	mov    %esi,%ecx
c0036145:	c1 e9 06             	shr    $0x6,%ecx
c0036148:	83 c1 38             	add    $0x38,%ecx
c003614b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003614e:	e9 92 fe ff ff       	jmp    c0035fe5 <_malloc_r+0x485>
c0036153:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0036159:	0f 84 f2 fc ff ff    	je     c0035e51 <_malloc_r+0x2f1>
c003615f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0036165:	8b 53 04             	mov    0x4(%ebx),%edx
c0036168:	83 e2 fc             	and    $0xfffffffc,%edx
c003616b:	e9 de fd ff ff       	jmp    c0035f4e <_malloc_r+0x3ee>
c0036170:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0036176:	77 3c                	ja     c00361b4 <_malloc_r+0x654>
c0036178:	89 fe                	mov    %edi,%esi
c003617a:	c1 ee 0f             	shr    $0xf,%esi
c003617d:	83 c6 77             	add    $0x77,%esi
c0036180:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0036183:	e9 99 fa ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c0036188:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c003618f:	89 cb                	mov    %ecx,%ebx
c0036191:	31 d2                	xor    %edx,%edx
c0036193:	e9 b6 fd ff ff       	jmp    c0035f4e <_malloc_r+0x3ee>
c0036198:	c1 f9 02             	sar    $0x2,%ecx
c003619b:	b8 01 00 00 00       	mov    $0x1,%eax
c00361a0:	d3 e0                	shl    %cl,%eax
c00361a2:	89 d1                	mov    %edx,%ecx
c00361a4:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00361aa:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00361af:	e9 5d fe ff ff       	jmp    c0036011 <_malloc_r+0x4b1>
c00361b4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00361ba:	77 47                	ja     c0036203 <_malloc_r+0x6a3>
c00361bc:	89 fe                	mov    %edi,%esi
c00361be:	c1 ee 12             	shr    $0x12,%esi
c00361c1:	83 c6 7c             	add    $0x7c,%esi
c00361c4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00361c7:	e9 55 fa ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c00361cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00361cf:	83 c3 08             	add    $0x8,%ebx
c00361d2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00361d6:	89 04 24             	mov    %eax,(%esp)
c00361d9:	e8 52 22 00 00       	call   c0038430 <_free_r>
c00361de:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c00361e4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00361e9:	e9 3c fd ff ff       	jmp    c0035f2a <_malloc_r+0x3ca>
c00361ee:	83 f9 54             	cmp    $0x54,%ecx
c00361f1:	77 58                	ja     c003624b <_malloc_r+0x6eb>
c00361f3:	89 f1                	mov    %esi,%ecx
c00361f5:	c1 e9 0c             	shr    $0xc,%ecx
c00361f8:	83 c1 6e             	add    $0x6e,%ecx
c00361fb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00361fe:	e9 e2 fd ff ff       	jmp    c0035fe5 <_malloc_r+0x485>
c0036203:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0036208:	be 7e 00 00 00       	mov    $0x7e,%esi
c003620d:	e9 0f fa ff ff       	jmp    c0035c21 <_malloc_r+0xc1>
c0036212:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0036219:	0f 85 4a fc ff ff    	jne    c0035e69 <_malloc_r+0x309>
c003621f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036222:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0036227:	01 f1                	add    %esi,%ecx
c0036229:	83 c9 01             	or     $0x1,%ecx
c003622c:	89 48 04             	mov    %ecx,0x4(%eax)
c003622f:	e9 f6 fc ff ff       	jmp    c0035f2a <_malloc_r+0x3ca>
c0036234:	b8 01 00 00 00       	mov    $0x1,%eax
c0036239:	31 d2                	xor    %edx,%edx
c003623b:	e9 91 fc ff ff       	jmp    c0035ed1 <_malloc_r+0x371>
c0036240:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0036246:	e9 37 fc ff ff       	jmp    c0035e82 <_malloc_r+0x322>
c003624b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0036251:	77 10                	ja     c0036263 <_malloc_r+0x703>
c0036253:	89 f1                	mov    %esi,%ecx
c0036255:	c1 e9 0f             	shr    $0xf,%ecx
c0036258:	83 c1 77             	add    $0x77,%ecx
c003625b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003625e:	e9 82 fd ff ff       	jmp    c0035fe5 <_malloc_r+0x485>
c0036263:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0036269:	77 10                	ja     c003627b <_malloc_r+0x71b>
c003626b:	89 f1                	mov    %esi,%ecx
c003626d:	c1 e9 12             	shr    $0x12,%ecx
c0036270:	83 c1 7c             	add    $0x7c,%ecx
c0036273:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0036276:	e9 6a fd ff ff       	jmp    c0035fe5 <_malloc_r+0x485>
c003627b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0036280:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0036285:	e9 5b fd ff ff       	jmp    c0035fe5 <_malloc_r+0x485>
c003628a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003628f:	e9 20 fe ff ff       	jmp    c00360b4 <_malloc_r+0x554>
c0036294:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036297:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003629a:	e9 88 fa ff ff       	jmp    c0035d27 <_malloc_r+0x1c7>
c003629f:	90                   	nop

c00362a0 <memchr>:
c00362a0:	55                   	push   %ebp
c00362a1:	89 e5                	mov    %esp,%ebp
c00362a3:	57                   	push   %edi
c00362a4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c00362a8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00362ab:	8b 7d 08             	mov    0x8(%ebp),%edi
c00362ae:	31 d2                	xor    %edx,%edx
c00362b0:	85 c9                	test   %ecx,%ecx
c00362b2:	74 79                	je     c003632d <L20>
c00362b4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00362ba:	74 28                	je     c00362e4 <L5>
c00362bc:	3a 07                	cmp    (%edi),%al
c00362be:	74 6a                	je     c003632a <L15>
c00362c0:	47                   	inc    %edi
c00362c1:	49                   	dec    %ecx
c00362c2:	74 69                	je     c003632d <L20>
c00362c4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00362ca:	74 18                	je     c00362e4 <L5>
c00362cc:	3a 07                	cmp    (%edi),%al
c00362ce:	74 5a                	je     c003632a <L15>
c00362d0:	47                   	inc    %edi
c00362d1:	49                   	dec    %ecx
c00362d2:	74 59                	je     c003632d <L20>
c00362d4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00362da:	74 08                	je     c00362e4 <L5>
c00362dc:	3a 07                	cmp    (%edi),%al
c00362de:	74 4a                	je     c003632a <L15>
c00362e0:	47                   	inc    %edi
c00362e1:	49                   	dec    %ecx
c00362e2:	74 49                	je     c003632d <L20>

c00362e4 <L5>:
c00362e4:	88 c4                	mov    %al,%ah
c00362e6:	89 c2                	mov    %eax,%edx
c00362e8:	c1 e2 10             	shl    $0x10,%edx
c00362eb:	09 d0                	or     %edx,%eax
c00362ed:	53                   	push   %ebx
c00362ee:	66 90                	xchg   %ax,%ax

c00362f0 <L8>:
c00362f0:	83 e9 04             	sub    $0x4,%ecx
c00362f3:	72 1c                	jb     c0036311 <L9>
c00362f5:	8b 17                	mov    (%edi),%edx
c00362f7:	83 c7 04             	add    $0x4,%edi
c00362fa:	31 c2                	xor    %eax,%edx
c00362fc:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0036302:	f7 d2                	not    %edx
c0036304:	21 d3                	and    %edx,%ebx
c0036306:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c003630c:	74 e2                	je     c00362f0 <L8>
c003630e:	83 ef 04             	sub    $0x4,%edi

c0036311 <L9>:
c0036311:	5b                   	pop    %ebx
c0036312:	31 d2                	xor    %edx,%edx
c0036314:	83 c1 04             	add    $0x4,%ecx
c0036317:	74 14                	je     c003632d <L20>
c0036319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036320 <L10>:
c0036320:	3a 07                	cmp    (%edi),%al
c0036322:	74 06                	je     c003632a <L15>
c0036324:	47                   	inc    %edi
c0036325:	49                   	dec    %ecx
c0036326:	75 f8                	jne    c0036320 <L10>
c0036328:	31 ff                	xor    %edi,%edi

c003632a <L15>:
c003632a:	4a                   	dec    %edx
c003632b:	21 fa                	and    %edi,%edx

c003632d <L20>:
c003632d:	89 d0                	mov    %edx,%eax
c003632f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036332:	5f                   	pop    %edi
c0036333:	c9                   	leave  
c0036334:	c3                   	ret    
c0036335:	66 90                	xchg   %ax,%ax
c0036337:	66 90                	xchg   %ax,%ax
c0036339:	66 90                	xchg   %ax,%ax
c003633b:	66 90                	xchg   %ax,%ax
c003633d:	66 90                	xchg   %ax,%ax
c003633f:	90                   	nop

c0036340 <__malloc_lock>:
c0036340:	55                   	push   %ebp
c0036341:	89 e5                	mov    %esp,%ebp
c0036343:	5d                   	pop    %ebp
c0036344:	c3                   	ret    
c0036345:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036350 <__malloc_unlock>:
c0036350:	55                   	push   %ebp
c0036351:	89 e5                	mov    %esp,%ebp
c0036353:	5d                   	pop    %ebp
c0036354:	c3                   	ret    
c0036355:	66 90                	xchg   %ax,%ax
c0036357:	66 90                	xchg   %ax,%ax
c0036359:	66 90                	xchg   %ax,%ax
c003635b:	66 90                	xchg   %ax,%ax
c003635d:	66 90                	xchg   %ax,%ax
c003635f:	90                   	nop

c0036360 <_Balloc>:
c0036360:	55                   	push   %ebp
c0036361:	89 e5                	mov    %esp,%ebp
c0036363:	57                   	push   %edi
c0036364:	56                   	push   %esi
c0036365:	53                   	push   %ebx
c0036366:	83 ec 1c             	sub    $0x1c,%esp
c0036369:	8b 75 08             	mov    0x8(%ebp),%esi
c003636c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003636f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0036372:	85 c0                	test   %eax,%eax
c0036374:	74 2a                	je     c00363a0 <_Balloc+0x40>
c0036376:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0036379:	8b 02                	mov    (%edx),%eax
c003637b:	85 c0                	test   %eax,%eax
c003637d:	74 49                	je     c00363c8 <_Balloc+0x68>
c003637f:	8b 08                	mov    (%eax),%ecx
c0036381:	89 0a                	mov    %ecx,(%edx)
c0036383:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c003638a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0036391:	83 c4 1c             	add    $0x1c,%esp
c0036394:	5b                   	pop    %ebx
c0036395:	5e                   	pop    %esi
c0036396:	5f                   	pop    %edi
c0036397:	5d                   	pop    %ebp
c0036398:	c3                   	ret    
c0036399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00363a0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c00363a7:	00 
c00363a8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c00363af:	00 
c00363b0:	89 34 24             	mov    %esi,(%esp)
c00363b3:	e8 c8 1e 00 00       	call   c0038280 <_calloc_r>
c00363b8:	85 c0                	test   %eax,%eax
c00363ba:	89 46 4c             	mov    %eax,0x4c(%esi)
c00363bd:	75 b7                	jne    c0036376 <_Balloc+0x16>
c00363bf:	31 c0                	xor    %eax,%eax
c00363c1:	eb ce                	jmp    c0036391 <_Balloc+0x31>
c00363c3:	90                   	nop
c00363c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363c8:	89 d9                	mov    %ebx,%ecx
c00363ca:	bf 01 00 00 00       	mov    $0x1,%edi
c00363cf:	d3 e7                	shl    %cl,%edi
c00363d1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c00363d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00363dc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00363e3:	00 
c00363e4:	89 34 24             	mov    %esi,(%esp)
c00363e7:	e8 94 1e 00 00       	call   c0038280 <_calloc_r>
c00363ec:	85 c0                	test   %eax,%eax
c00363ee:	74 cf                	je     c00363bf <_Balloc+0x5f>
c00363f0:	89 58 04             	mov    %ebx,0x4(%eax)
c00363f3:	89 78 08             	mov    %edi,0x8(%eax)
c00363f6:	eb 8b                	jmp    c0036383 <_Balloc+0x23>
c00363f8:	90                   	nop
c00363f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036400 <_Bfree>:
c0036400:	55                   	push   %ebp
c0036401:	89 e5                	mov    %esp,%ebp
c0036403:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036406:	85 c0                	test   %eax,%eax
c0036408:	74 12                	je     c003641c <_Bfree+0x1c>
c003640a:	8b 55 08             	mov    0x8(%ebp),%edx
c003640d:	8b 48 04             	mov    0x4(%eax),%ecx
c0036410:	8b 52 4c             	mov    0x4c(%edx),%edx
c0036413:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0036416:	8b 0a                	mov    (%edx),%ecx
c0036418:	89 08                	mov    %ecx,(%eax)
c003641a:	89 02                	mov    %eax,(%edx)
c003641c:	5d                   	pop    %ebp
c003641d:	c3                   	ret    
c003641e:	66 90                	xchg   %ax,%ax

c0036420 <__multadd>:
c0036420:	55                   	push   %ebp
c0036421:	89 e5                	mov    %esp,%ebp
c0036423:	57                   	push   %edi
c0036424:	56                   	push   %esi
c0036425:	53                   	push   %ebx
c0036426:	83 ec 2c             	sub    $0x2c,%esp
c0036429:	8b 45 0c             	mov    0xc(%ebp),%eax
c003642c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c003642f:	8b 40 10             	mov    0x10(%eax),%eax
c0036432:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036435:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036438:	8d 78 14             	lea    0x14(%eax),%edi
c003643b:	31 c0                	xor    %eax,%eax
c003643d:	8d 76 00             	lea    0x0(%esi),%esi
c0036440:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0036443:	0f b7 d1             	movzwl %cx,%edx
c0036446:	0f af 55 10          	imul   0x10(%ebp),%edx
c003644a:	c1 e9 10             	shr    $0x10,%ecx
c003644d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0036451:	01 da                	add    %ebx,%edx
c0036453:	89 d3                	mov    %edx,%ebx
c0036455:	0f b7 d2             	movzwl %dx,%edx
c0036458:	c1 eb 10             	shr    $0x10,%ebx
c003645b:	01 d9                	add    %ebx,%ecx
c003645d:	89 ce                	mov    %ecx,%esi
c003645f:	c1 e1 10             	shl    $0x10,%ecx
c0036462:	01 d1                	add    %edx,%ecx
c0036464:	c1 ee 10             	shr    $0x10,%esi
c0036467:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c003646a:	83 c0 01             	add    $0x1,%eax
c003646d:	89 f3                	mov    %esi,%ebx
c003646f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036472:	7f cc                	jg     c0036440 <__multadd+0x20>
c0036474:	85 f6                	test   %esi,%esi
c0036476:	74 1b                	je     c0036493 <__multadd+0x73>
c0036478:	8b 45 0c             	mov    0xc(%ebp),%eax
c003647b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c003647e:	3b 78 08             	cmp    0x8(%eax),%edi
c0036481:	7d 1d                	jge    c00364a0 <__multadd+0x80>
c0036483:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036486:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0036489:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c003648d:	83 c0 01             	add    $0x1,%eax
c0036490:	89 47 10             	mov    %eax,0x10(%edi)
c0036493:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036496:	83 c4 2c             	add    $0x2c,%esp
c0036499:	5b                   	pop    %ebx
c003649a:	5e                   	pop    %esi
c003649b:	5f                   	pop    %edi
c003649c:	5d                   	pop    %ebp
c003649d:	c3                   	ret    
c003649e:	66 90                	xchg   %ax,%ax
c00364a0:	8b 40 04             	mov    0x4(%eax),%eax
c00364a3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00364a6:	83 c0 01             	add    $0x1,%eax
c00364a9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00364ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00364b0:	89 04 24             	mov    %eax,(%esp)
c00364b3:	e8 a8 fe ff ff       	call   c0036360 <_Balloc>
c00364b8:	89 c3                	mov    %eax,%ebx
c00364ba:	8b 45 0c             	mov    0xc(%ebp),%eax
c00364bd:	8b 40 10             	mov    0x10(%eax),%eax
c00364c0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00364c7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00364cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00364ce:	83 c0 0c             	add    $0xc,%eax
c00364d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00364d5:	8d 43 0c             	lea    0xc(%ebx),%eax
c00364d8:	89 04 24             	mov    %eax,(%esp)
c00364db:	e8 54 c0 ff ff       	call   c0032534 <memcpy>
c00364e0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00364e3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00364e6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00364e9:	8b 50 04             	mov    0x4(%eax),%edx
c00364ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00364ef:	8b 40 4c             	mov    0x4c(%eax),%eax
c00364f2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00364f5:	8b 10                	mov    (%eax),%edx
c00364f7:	89 17                	mov    %edx,(%edi)
c00364f9:	89 38                	mov    %edi,(%eax)
c00364fb:	eb 86                	jmp    c0036483 <__multadd+0x63>
c00364fd:	8d 76 00             	lea    0x0(%esi),%esi

c0036500 <__s2b>:
c0036500:	55                   	push   %ebp
c0036501:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0036506:	89 e5                	mov    %esp,%ebp
c0036508:	57                   	push   %edi
c0036509:	56                   	push   %esi
c003650a:	53                   	push   %ebx
c003650b:	83 ec 2c             	sub    $0x2c,%esp
c003650e:	8b 45 14             	mov    0x14(%ebp),%eax
c0036511:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036514:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036517:	8d 48 08             	lea    0x8(%eax),%ecx
c003651a:	89 c8                	mov    %ecx,%eax
c003651c:	f7 ea                	imul   %edx
c003651e:	c1 f9 1f             	sar    $0x1f,%ecx
c0036521:	d1 fa                	sar    %edx
c0036523:	29 ca                	sub    %ecx,%edx
c0036525:	83 fa 01             	cmp    $0x1,%edx
c0036528:	0f 8e be 00 00 00    	jle    c00365ec <__s2b+0xec>
c003652e:	b8 01 00 00 00       	mov    $0x1,%eax
c0036533:	31 c9                	xor    %ecx,%ecx
c0036535:	8d 76 00             	lea    0x0(%esi),%esi
c0036538:	01 c0                	add    %eax,%eax
c003653a:	83 c1 01             	add    $0x1,%ecx
c003653d:	39 c2                	cmp    %eax,%edx
c003653f:	7f f7                	jg     c0036538 <__s2b+0x38>
c0036541:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036545:	89 1c 24             	mov    %ebx,(%esp)
c0036548:	e8 13 fe ff ff       	call   c0036360 <_Balloc>
c003654d:	8b 55 18             	mov    0x18(%ebp),%edx
c0036550:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0036554:	89 50 14             	mov    %edx,0x14(%eax)
c0036557:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c003655e:	0f 8e 7c 00 00 00    	jle    c00365e0 <__s2b+0xe0>
c0036564:	8d 4e 09             	lea    0x9(%esi),%ecx
c0036567:	03 75 10             	add    0x10(%ebp),%esi
c003656a:	89 cf                	mov    %ecx,%edi
c003656c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003656f:	90                   	nop
c0036570:	83 c7 01             	add    $0x1,%edi
c0036573:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0036577:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003657e:	00 
c003657f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036583:	89 1c 24             	mov    %ebx,(%esp)
c0036586:	83 ea 30             	sub    $0x30,%edx
c0036589:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003658d:	e8 8e fe ff ff       	call   c0036420 <__multadd>
c0036592:	39 f7                	cmp    %esi,%edi
c0036594:	75 da                	jne    c0036570 <__s2b+0x70>
c0036596:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036599:	8b 7d 10             	mov    0x10(%ebp),%edi
c003659c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c00365a0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00365a3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c00365a6:	7e 2e                	jle    c00365d6 <__s2b+0xd6>
c00365a8:	8b 7d 14             	mov    0x14(%ebp),%edi
c00365ab:	29 cf                	sub    %ecx,%edi
c00365ad:	01 f7                	add    %esi,%edi
c00365af:	90                   	nop
c00365b0:	83 c6 01             	add    $0x1,%esi
c00365b3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c00365b7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00365be:	00 
c00365bf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00365c3:	89 1c 24             	mov    %ebx,(%esp)
c00365c6:	83 ea 30             	sub    $0x30,%edx
c00365c9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00365cd:	e8 4e fe ff ff       	call   c0036420 <__multadd>
c00365d2:	39 fe                	cmp    %edi,%esi
c00365d4:	75 da                	jne    c00365b0 <__s2b+0xb0>
c00365d6:	83 c4 2c             	add    $0x2c,%esp
c00365d9:	5b                   	pop    %ebx
c00365da:	5e                   	pop    %esi
c00365db:	5f                   	pop    %edi
c00365dc:	5d                   	pop    %ebp
c00365dd:	c3                   	ret    
c00365de:	66 90                	xchg   %ax,%ax
c00365e0:	83 c6 0a             	add    $0xa,%esi
c00365e3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c00365ea:	eb b4                	jmp    c00365a0 <__s2b+0xa0>
c00365ec:	31 c9                	xor    %ecx,%ecx
c00365ee:	e9 4e ff ff ff       	jmp    c0036541 <__s2b+0x41>
c00365f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00365f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036600 <__hi0bits>:
c0036600:	55                   	push   %ebp
c0036601:	31 c9                	xor    %ecx,%ecx
c0036603:	89 e5                	mov    %esp,%ebp
c0036605:	8b 55 08             	mov    0x8(%ebp),%edx
c0036608:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c003660e:	75 05                	jne    c0036615 <__hi0bits+0x15>
c0036610:	c1 e2 10             	shl    $0x10,%edx
c0036613:	b1 10                	mov    $0x10,%cl
c0036615:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c003661b:	75 06                	jne    c0036623 <__hi0bits+0x23>
c003661d:	83 c1 08             	add    $0x8,%ecx
c0036620:	c1 e2 08             	shl    $0x8,%edx
c0036623:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0036629:	75 06                	jne    c0036631 <__hi0bits+0x31>
c003662b:	83 c1 04             	add    $0x4,%ecx
c003662e:	c1 e2 04             	shl    $0x4,%edx
c0036631:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0036637:	75 06                	jne    c003663f <__hi0bits+0x3f>
c0036639:	83 c1 02             	add    $0x2,%ecx
c003663c:	c1 e2 02             	shl    $0x2,%edx
c003663f:	85 d2                	test   %edx,%edx
c0036641:	89 c8                	mov    %ecx,%eax
c0036643:	78 0d                	js     c0036652 <__hi0bits+0x52>
c0036645:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c003664b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036650:	75 06                	jne    c0036658 <__hi0bits+0x58>
c0036652:	5d                   	pop    %ebp
c0036653:	c3                   	ret    
c0036654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036658:	8d 41 01             	lea    0x1(%ecx),%eax
c003665b:	5d                   	pop    %ebp
c003665c:	c3                   	ret    
c003665d:	8d 76 00             	lea    0x0(%esi),%esi

c0036660 <__lo0bits>:
c0036660:	55                   	push   %ebp
c0036661:	89 e5                	mov    %esp,%ebp
c0036663:	53                   	push   %ebx
c0036664:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036667:	8b 13                	mov    (%ebx),%edx
c0036669:	f6 c2 07             	test   $0x7,%dl
c003666c:	74 1a                	je     c0036688 <__lo0bits+0x28>
c003666e:	31 c0                	xor    %eax,%eax
c0036670:	f6 c2 01             	test   $0x1,%dl
c0036673:	75 0f                	jne    c0036684 <__lo0bits+0x24>
c0036675:	f6 c2 02             	test   $0x2,%dl
c0036678:	75 56                	jne    c00366d0 <__lo0bits+0x70>
c003667a:	c1 ea 02             	shr    $0x2,%edx
c003667d:	b8 02 00 00 00       	mov    $0x2,%eax
c0036682:	89 13                	mov    %edx,(%ebx)
c0036684:	5b                   	pop    %ebx
c0036685:	5d                   	pop    %ebp
c0036686:	c3                   	ret    
c0036687:	90                   	nop
c0036688:	31 c9                	xor    %ecx,%ecx
c003668a:	66 85 d2             	test   %dx,%dx
c003668d:	75 05                	jne    c0036694 <__lo0bits+0x34>
c003668f:	c1 ea 10             	shr    $0x10,%edx
c0036692:	b1 10                	mov    $0x10,%cl
c0036694:	84 d2                	test   %dl,%dl
c0036696:	75 06                	jne    c003669e <__lo0bits+0x3e>
c0036698:	83 c1 08             	add    $0x8,%ecx
c003669b:	c1 ea 08             	shr    $0x8,%edx
c003669e:	f6 c2 0f             	test   $0xf,%dl
c00366a1:	75 06                	jne    c00366a9 <__lo0bits+0x49>
c00366a3:	83 c1 04             	add    $0x4,%ecx
c00366a6:	c1 ea 04             	shr    $0x4,%edx
c00366a9:	f6 c2 03             	test   $0x3,%dl
c00366ac:	75 06                	jne    c00366b4 <__lo0bits+0x54>
c00366ae:	83 c1 02             	add    $0x2,%ecx
c00366b1:	c1 ea 02             	shr    $0x2,%edx
c00366b4:	f6 c2 01             	test   $0x1,%dl
c00366b7:	75 0c                	jne    c00366c5 <__lo0bits+0x65>
c00366b9:	d1 ea                	shr    %edx
c00366bb:	b8 20 00 00 00       	mov    $0x20,%eax
c00366c0:	74 c2                	je     c0036684 <__lo0bits+0x24>
c00366c2:	83 c1 01             	add    $0x1,%ecx
c00366c5:	89 13                	mov    %edx,(%ebx)
c00366c7:	89 c8                	mov    %ecx,%eax
c00366c9:	5b                   	pop    %ebx
c00366ca:	5d                   	pop    %ebp
c00366cb:	c3                   	ret    
c00366cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00366d0:	d1 ea                	shr    %edx
c00366d2:	b0 01                	mov    $0x1,%al
c00366d4:	89 13                	mov    %edx,(%ebx)
c00366d6:	5b                   	pop    %ebx
c00366d7:	5d                   	pop    %ebp
c00366d8:	c3                   	ret    
c00366d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00366e0 <__i2b>:
c00366e0:	55                   	push   %ebp
c00366e1:	89 e5                	mov    %esp,%ebp
c00366e3:	83 ec 18             	sub    $0x18,%esp
c00366e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00366e9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366f0:	00 
c00366f1:	89 04 24             	mov    %eax,(%esp)
c00366f4:	e8 67 fc ff ff       	call   c0036360 <_Balloc>
c00366f9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00366fc:	89 50 14             	mov    %edx,0x14(%eax)
c00366ff:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036706:	c9                   	leave  
c0036707:	c3                   	ret    
c0036708:	90                   	nop
c0036709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036710 <__multiply>:
c0036710:	55                   	push   %ebp
c0036711:	89 e5                	mov    %esp,%ebp
c0036713:	57                   	push   %edi
c0036714:	56                   	push   %esi
c0036715:	53                   	push   %ebx
c0036716:	83 ec 3c             	sub    $0x3c,%esp
c0036719:	8b 75 0c             	mov    0xc(%ebp),%esi
c003671c:	8b 45 10             	mov    0x10(%ebp),%eax
c003671f:	8b 7e 10             	mov    0x10(%esi),%edi
c0036722:	8b 58 10             	mov    0x10(%eax),%ebx
c0036725:	39 df                	cmp    %ebx,%edi
c0036727:	7d 0e                	jge    c0036737 <__multiply+0x27>
c0036729:	89 f8                	mov    %edi,%eax
c003672b:	89 df                	mov    %ebx,%edi
c003672d:	89 c3                	mov    %eax,%ebx
c003672f:	89 f0                	mov    %esi,%eax
c0036731:	8b 75 10             	mov    0x10(%ebp),%esi
c0036734:	89 45 10             	mov    %eax,0x10(%ebp)
c0036737:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003673a:	3b 46 08             	cmp    0x8(%esi),%eax
c003673d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036740:	0f 9f c0             	setg   %al
c0036743:	0f b6 c0             	movzbl %al,%eax
c0036746:	03 46 04             	add    0x4(%esi),%eax
c0036749:	89 44 24 04          	mov    %eax,0x4(%esp)
c003674d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036750:	89 04 24             	mov    %eax,(%esp)
c0036753:	e8 08 fc ff ff       	call   c0036360 <_Balloc>
c0036758:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003675b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003675e:	8d 40 14             	lea    0x14(%eax),%eax
c0036761:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036764:	89 d1                	mov    %edx,%ecx
c0036766:	39 c8                	cmp    %ecx,%eax
c0036768:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003676b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003676e:	73 15                	jae    c0036785 <__multiply+0x75>
c0036770:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036773:	90                   	nop
c0036774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036778:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003677e:	83 c0 04             	add    $0x4,%eax
c0036781:	39 c2                	cmp    %eax,%edx
c0036783:	77 f3                	ja     c0036778 <__multiply+0x68>
c0036785:	8d 46 14             	lea    0x14(%esi),%eax
c0036788:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003678b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003678e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036791:	8b 45 10             	mov    0x10(%ebp),%eax
c0036794:	83 c0 14             	add    $0x14,%eax
c0036797:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003679a:	39 f8                	cmp    %edi,%eax
c003679c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003679f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c00367a2:	0f 83 e8 00 00 00    	jae    c0036890 <__multiply+0x180>
c00367a8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00367ab:	8b 00                	mov    (%eax),%eax
c00367ad:	0f b7 f8             	movzwl %ax,%edi
c00367b0:	85 ff                	test   %edi,%edi
c00367b2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00367b5:	74 5a                	je     c0036811 <__multiply+0x101>
c00367b7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00367ba:	31 db                	xor    %ebx,%ebx
c00367bc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c00367bf:	eb 09                	jmp    c00367ca <__multiply+0xba>
c00367c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367c8:	89 fa                	mov    %edi,%edx
c00367ca:	8b 0e                	mov    (%esi),%ecx
c00367cc:	83 c6 04             	add    $0x4,%esi
c00367cf:	0f b7 3a             	movzwl (%edx),%edi
c00367d2:	0f b7 c1             	movzwl %cx,%eax
c00367d5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c00367d9:	c1 e9 10             	shr    $0x10,%ecx
c00367dc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00367e0:	01 f8                	add    %edi,%eax
c00367e2:	01 d8                	add    %ebx,%eax
c00367e4:	8b 1a                	mov    (%edx),%ebx
c00367e6:	8d 7a 04             	lea    0x4(%edx),%edi
c00367e9:	c1 eb 10             	shr    $0x10,%ebx
c00367ec:	01 d9                	add    %ebx,%ecx
c00367ee:	89 c3                	mov    %eax,%ebx
c00367f0:	c1 eb 10             	shr    $0x10,%ebx
c00367f3:	0f b7 c0             	movzwl %ax,%eax
c00367f6:	01 d9                	add    %ebx,%ecx
c00367f8:	89 cb                	mov    %ecx,%ebx
c00367fa:	c1 e1 10             	shl    $0x10,%ecx
c00367fd:	09 c1                	or     %eax,%ecx
c00367ff:	c1 eb 10             	shr    $0x10,%ebx
c0036802:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036805:	89 0a                	mov    %ecx,(%edx)
c0036807:	77 bf                	ja     c00367c8 <__multiply+0xb8>
c0036809:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003680c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003680f:	8b 00                	mov    (%eax),%eax
c0036811:	c1 e8 10             	shr    $0x10,%eax
c0036814:	85 c0                	test   %eax,%eax
c0036816:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036819:	74 61                	je     c003687c <__multiply+0x16c>
c003681b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003681e:	31 ff                	xor    %edi,%edi
c0036820:	89 fe                	mov    %edi,%esi
c0036822:	8b 10                	mov    (%eax),%edx
c0036824:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036827:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003682a:	89 d3                	mov    %edx,%ebx
c003682c:	eb 05                	jmp    c0036833 <__multiply+0x123>
c003682e:	66 90                	xchg   %ax,%ax
c0036830:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036833:	0f b7 08             	movzwl (%eax),%ecx
c0036836:	c1 eb 10             	shr    $0x10,%ebx
c0036839:	0f b7 d2             	movzwl %dx,%edx
c003683c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036840:	83 c0 04             	add    $0x4,%eax
c0036843:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036846:	01 f7                	add    %esi,%edi
c0036848:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003684b:	89 fb                	mov    %edi,%ebx
c003684d:	c1 e3 10             	shl    $0x10,%ebx
c0036850:	09 d3                	or     %edx,%ebx
c0036852:	89 1e                	mov    %ebx,(%esi)
c0036854:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036857:	8d 4e 04             	lea    0x4(%esi),%ecx
c003685a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003685e:	c1 ef 10             	shr    $0x10,%edi
c0036861:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036865:	0f b7 f3             	movzwl %bx,%esi
c0036868:	01 f2                	add    %esi,%edx
c003686a:	01 fa                	add    %edi,%edx
c003686c:	89 d6                	mov    %edx,%esi
c003686e:	c1 ee 10             	shr    $0x10,%esi
c0036871:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036874:	77 ba                	ja     c0036830 <__multiply+0x120>
c0036876:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036879:	89 50 04             	mov    %edx,0x4(%eax)
c003687c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036880:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036883:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036887:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003688a:	0f 87 18 ff ff ff    	ja     c00367a8 <__multiply+0x98>
c0036890:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036893:	85 f6                	test   %esi,%esi
c0036895:	7e 29                	jle    c00368c0 <__multiply+0x1b0>
c0036897:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003689a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003689d:	85 db                	test   %ebx,%ebx
c003689f:	75 1f                	jne    c00368c0 <__multiply+0x1b0>
c00368a1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00368a4:	89 d0                	mov    %edx,%eax
c00368a6:	c1 e0 02             	shl    $0x2,%eax
c00368a9:	29 c7                	sub    %eax,%edi
c00368ab:	89 f8                	mov    %edi,%eax
c00368ad:	eb 09                	jmp    c00368b8 <__multiply+0x1a8>
c00368af:	90                   	nop
c00368b0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00368b4:	85 c9                	test   %ecx,%ecx
c00368b6:	75 05                	jne    c00368bd <__multiply+0x1ad>
c00368b8:	83 ea 01             	sub    $0x1,%edx
c00368bb:	75 f3                	jne    c00368b0 <__multiply+0x1a0>
c00368bd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00368c0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00368c3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00368c6:	89 78 10             	mov    %edi,0x10(%eax)
c00368c9:	83 c4 3c             	add    $0x3c,%esp
c00368cc:	5b                   	pop    %ebx
c00368cd:	5e                   	pop    %esi
c00368ce:	5f                   	pop    %edi
c00368cf:	5d                   	pop    %ebp
c00368d0:	c3                   	ret    
c00368d1:	eb 0d                	jmp    c00368e0 <__pow5mult>
c00368d3:	90                   	nop
c00368d4:	90                   	nop
c00368d5:	90                   	nop
c00368d6:	90                   	nop
c00368d7:	90                   	nop
c00368d8:	90                   	nop
c00368d9:	90                   	nop
c00368da:	90                   	nop
c00368db:	90                   	nop
c00368dc:	90                   	nop
c00368dd:	90                   	nop
c00368de:	90                   	nop
c00368df:	90                   	nop

c00368e0 <__pow5mult>:
c00368e0:	55                   	push   %ebp
c00368e1:	89 e5                	mov    %esp,%ebp
c00368e3:	57                   	push   %edi
c00368e4:	56                   	push   %esi
c00368e5:	53                   	push   %ebx
c00368e6:	83 ec 2c             	sub    $0x2c,%esp
c00368e9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00368ec:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00368ef:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00368f2:	89 d8                	mov    %ebx,%eax
c00368f4:	83 e0 03             	and    $0x3,%eax
c00368f7:	0f 85 a3 00 00 00    	jne    c00369a0 <__pow5mult+0xc0>
c00368fd:	c1 fb 02             	sar    $0x2,%ebx
c0036900:	85 db                	test   %ebx,%ebx
c0036902:	74 5c                	je     c0036960 <__pow5mult+0x80>
c0036904:	8b 71 48             	mov    0x48(%ecx),%esi
c0036907:	85 f6                	test   %esi,%esi
c0036909:	0f 84 bd 00 00 00    	je     c00369cc <__pow5mult+0xec>
c003690f:	f6 c3 01             	test   $0x1,%bl
c0036912:	75 15                	jne    c0036929 <__pow5mult+0x49>
c0036914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036918:	d1 fb                	sar    %ebx
c003691a:	74 44                	je     c0036960 <__pow5mult+0x80>
c003691c:	8b 06                	mov    (%esi),%eax
c003691e:	85 c0                	test   %eax,%eax
c0036920:	74 4e                	je     c0036970 <__pow5mult+0x90>
c0036922:	89 c6                	mov    %eax,%esi
c0036924:	f6 c3 01             	test   $0x1,%bl
c0036927:	74 ef                	je     c0036918 <__pow5mult+0x38>
c0036929:	89 0c 24             	mov    %ecx,(%esp)
c003692c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036930:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036934:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036937:	e8 d4 fd ff ff       	call   c0036710 <__multiply>
c003693c:	85 ff                	test   %edi,%edi
c003693e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036941:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036944:	74 52                	je     c0036998 <__pow5mult+0xb8>
c0036946:	8b 57 04             	mov    0x4(%edi),%edx
c0036949:	d1 fb                	sar    %ebx
c003694b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003694e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036951:	8b 10                	mov    (%eax),%edx
c0036953:	89 17                	mov    %edx,(%edi)
c0036955:	89 38                	mov    %edi,(%eax)
c0036957:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003695a:	75 c0                	jne    c003691c <__pow5mult+0x3c>
c003695c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036960:	83 c4 2c             	add    $0x2c,%esp
c0036963:	89 f8                	mov    %edi,%eax
c0036965:	5b                   	pop    %ebx
c0036966:	5e                   	pop    %esi
c0036967:	5f                   	pop    %edi
c0036968:	5d                   	pop    %ebp
c0036969:	c3                   	ret    
c003696a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036970:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036974:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036978:	89 0c 24             	mov    %ecx,(%esp)
c003697b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003697e:	e8 8d fd ff ff       	call   c0036710 <__multiply>
c0036983:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036986:	89 06                	mov    %eax,(%esi)
c0036988:	89 c6                	mov    %eax,%esi
c003698a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036990:	eb 92                	jmp    c0036924 <__pow5mult+0x44>
c0036992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036998:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003699b:	e9 78 ff ff ff       	jmp    c0036918 <__pow5mult+0x38>
c00369a0:	8b 04 85 dc 96 03 c0 	mov    -0x3ffc6924(,%eax,4),%eax
c00369a7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00369ab:	89 0c 24             	mov    %ecx,(%esp)
c00369ae:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00369b5:	00 
c00369b6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00369ba:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00369bd:	e8 5e fa ff ff       	call   c0036420 <__multadd>
c00369c2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00369c5:	89 c7                	mov    %eax,%edi
c00369c7:	e9 31 ff ff ff       	jmp    c00368fd <__pow5mult+0x1d>
c00369cc:	89 0c 24             	mov    %ecx,(%esp)
c00369cf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00369d6:	00 
c00369d7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00369da:	e8 81 f9 ff ff       	call   c0036360 <_Balloc>
c00369df:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00369e2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00369e9:	89 c6                	mov    %eax,%esi
c00369eb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00369f2:	89 41 48             	mov    %eax,0x48(%ecx)
c00369f5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00369fb:	e9 0f ff ff ff       	jmp    c003690f <__pow5mult+0x2f>

c0036a00 <__lshift>:
c0036a00:	55                   	push   %ebp
c0036a01:	89 e5                	mov    %esp,%ebp
c0036a03:	57                   	push   %edi
c0036a04:	56                   	push   %esi
c0036a05:	53                   	push   %ebx
c0036a06:	83 ec 2c             	sub    $0x2c,%esp
c0036a09:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a0c:	8b 75 10             	mov    0x10(%ebp),%esi
c0036a0f:	89 c7                	mov    %eax,%edi
c0036a11:	8b 50 04             	mov    0x4(%eax),%edx
c0036a14:	8b 40 10             	mov    0x10(%eax),%eax
c0036a17:	89 f3                	mov    %esi,%ebx
c0036a19:	c1 fb 05             	sar    $0x5,%ebx
c0036a1c:	01 d8                	add    %ebx,%eax
c0036a1e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036a21:	83 c0 01             	add    $0x1,%eax
c0036a24:	89 c1                	mov    %eax,%ecx
c0036a26:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036a29:	8b 47 08             	mov    0x8(%edi),%eax
c0036a2c:	39 c1                	cmp    %eax,%ecx
c0036a2e:	7e 09                	jle    c0036a39 <__lshift+0x39>
c0036a30:	01 c0                	add    %eax,%eax
c0036a32:	83 c2 01             	add    $0x1,%edx
c0036a35:	39 c1                	cmp    %eax,%ecx
c0036a37:	7f f7                	jg     c0036a30 <__lshift+0x30>
c0036a39:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a3c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036a40:	89 04 24             	mov    %eax,(%esp)
c0036a43:	e8 18 f9 ff ff       	call   c0036360 <_Balloc>
c0036a48:	85 db                	test   %ebx,%ebx
c0036a4a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036a4d:	8d 50 14             	lea    0x14(%eax),%edx
c0036a50:	7e 17                	jle    c0036a69 <__lshift+0x69>
c0036a52:	31 c0                	xor    %eax,%eax
c0036a54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a58:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c0036a5f:	83 c0 01             	add    $0x1,%eax
c0036a62:	39 d8                	cmp    %ebx,%eax
c0036a64:	75 f2                	jne    c0036a58 <__lshift+0x58>
c0036a66:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036a69:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036a6c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036a6f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036a72:	83 c0 14             	add    $0x14,%eax
c0036a75:	83 e6 1f             	and    $0x1f,%esi
c0036a78:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0036a7b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c0036a7e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036a81:	74 7d                	je     c0036b00 <__lshift+0x100>
c0036a83:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c0036a8a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c0036a8d:	31 f6                	xor    %esi,%esi
c0036a8f:	eb 09                	jmp    c0036a9a <__lshift+0x9a>
c0036a91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036a98:	89 fa                	mov    %edi,%edx
c0036a9a:	8b 18                	mov    (%eax),%ebx
c0036a9c:	83 c0 04             	add    $0x4,%eax
c0036a9f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036aa3:	8d 7a 04             	lea    0x4(%edx),%edi
c0036aa6:	d3 e3                	shl    %cl,%ebx
c0036aa8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c0036aac:	09 f3                	or     %esi,%ebx
c0036aae:	89 1a                	mov    %ebx,(%edx)
c0036ab0:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036ab3:	d3 ee                	shr    %cl,%esi
c0036ab5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036ab8:	77 de                	ja     c0036a98 <__lshift+0x98>
c0036aba:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036abd:	89 72 04             	mov    %esi,0x4(%edx)
c0036ac0:	83 c0 02             	add    $0x2,%eax
c0036ac3:	85 f6                	test   %esi,%esi
c0036ac5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036ac9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036acc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036acf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036ad2:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036ad5:	83 e8 01             	sub    $0x1,%eax
c0036ad8:	89 47 10             	mov    %eax,0x10(%edi)
c0036adb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036ade:	8b 50 04             	mov    0x4(%eax),%edx
c0036ae1:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ae4:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036ae7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036aea:	8b 10                	mov    (%eax),%edx
c0036aec:	89 16                	mov    %edx,(%esi)
c0036aee:	89 30                	mov    %esi,(%eax)
c0036af0:	83 c4 2c             	add    $0x2c,%esp
c0036af3:	89 f8                	mov    %edi,%eax
c0036af5:	5b                   	pop    %ebx
c0036af6:	5e                   	pop    %esi
c0036af7:	5f                   	pop    %edi
c0036af8:	5d                   	pop    %ebp
c0036af9:	c3                   	ret    
c0036afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036b00:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036b03:	90                   	nop
c0036b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b08:	83 c0 04             	add    $0x4,%eax
c0036b0b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c0036b0e:	83 c2 04             	add    $0x4,%edx
c0036b11:	39 c3                	cmp    %eax,%ebx
c0036b13:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036b16:	77 f0                	ja     c0036b08 <__lshift+0x108>
c0036b18:	eb b2                	jmp    c0036acc <__lshift+0xcc>
c0036b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036b20 <__mcmp>:
c0036b20:	55                   	push   %ebp
c0036b21:	89 e5                	mov    %esp,%ebp
c0036b23:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036b26:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036b29:	53                   	push   %ebx
c0036b2a:	8b 41 10             	mov    0x10(%ecx),%eax
c0036b2d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036b30:	29 d8                	sub    %ebx,%eax
c0036b32:	85 c0                	test   %eax,%eax
c0036b34:	75 27                	jne    c0036b5d <__mcmp+0x3d>
c0036b36:	c1 e3 02             	shl    $0x2,%ebx
c0036b39:	83 c1 14             	add    $0x14,%ecx
c0036b3c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c0036b3f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036b43:	eb 07                	jmp    c0036b4c <__mcmp+0x2c>
c0036b45:	8d 76 00             	lea    0x0(%esi),%esi
c0036b48:	39 c1                	cmp    %eax,%ecx
c0036b4a:	73 14                	jae    c0036b60 <__mcmp+0x40>
c0036b4c:	83 ea 04             	sub    $0x4,%edx
c0036b4f:	83 e8 04             	sub    $0x4,%eax
c0036b52:	8b 1a                	mov    (%edx),%ebx
c0036b54:	39 18                	cmp    %ebx,(%eax)
c0036b56:	74 f0                	je     c0036b48 <__mcmp+0x28>
c0036b58:	19 c0                	sbb    %eax,%eax
c0036b5a:	83 c8 01             	or     $0x1,%eax
c0036b5d:	5b                   	pop    %ebx
c0036b5e:	5d                   	pop    %ebp
c0036b5f:	c3                   	ret    
c0036b60:	31 c0                	xor    %eax,%eax
c0036b62:	5b                   	pop    %ebx
c0036b63:	5d                   	pop    %ebp
c0036b64:	c3                   	ret    
c0036b65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036b70 <__mdiff>:
c0036b70:	55                   	push   %ebp
c0036b71:	89 e5                	mov    %esp,%ebp
c0036b73:	57                   	push   %edi
c0036b74:	56                   	push   %esi
c0036b75:	53                   	push   %ebx
c0036b76:	83 ec 2c             	sub    $0x2c,%esp
c0036b79:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036b7c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036b7f:	89 34 24             	mov    %esi,(%esp)
c0036b82:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036b86:	e8 95 ff ff ff       	call   c0036b20 <__mcmp>
c0036b8b:	85 c0                	test   %eax,%eax
c0036b8d:	0f 84 25 01 00 00    	je     c0036cb8 <__mdiff+0x148>
c0036b93:	0f 88 0f 01 00 00    	js     c0036ca8 <__mdiff+0x138>
c0036b99:	31 ff                	xor    %edi,%edi
c0036b9b:	8b 46 04             	mov    0x4(%esi),%eax
c0036b9e:	83 c6 14             	add    $0x14,%esi
c0036ba1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ba5:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ba8:	89 04 24             	mov    %eax,(%esp)
c0036bab:	e8 b0 f7 ff ff       	call   c0036360 <_Balloc>
c0036bb0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036bb3:	89 c2                	mov    %eax,%edx
c0036bb5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036bb8:	89 78 0c             	mov    %edi,0xc(%eax)
c0036bbb:	8b 46 fc             	mov    -0x4(%esi),%eax
c0036bbe:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036bc1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036bc4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036bc7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036bca:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bcd:	31 db                	xor    %ebx,%ebx
c0036bcf:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036bd2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bd5:	89 d0                	mov    %edx,%eax
c0036bd7:	83 c0 14             	add    $0x14,%eax
c0036bda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036be0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036be3:	83 c0 04             	add    $0x4,%eax
c0036be6:	83 c1 04             	add    $0x4,%ecx
c0036be9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c0036bed:	8b 3e                	mov    (%esi),%edi
c0036bef:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036bf2:	0f b7 d7             	movzwl %di,%edx
c0036bf5:	01 da                	add    %ebx,%edx
c0036bf7:	0f b7 de             	movzwl %si,%ebx
c0036bfa:	29 da                	sub    %ebx,%edx
c0036bfc:	c1 ef 10             	shr    $0x10,%edi
c0036bff:	89 d3                	mov    %edx,%ebx
c0036c01:	c1 ee 10             	shr    $0x10,%esi
c0036c04:	0f b7 d2             	movzwl %dx,%edx
c0036c07:	c1 fb 10             	sar    $0x10,%ebx
c0036c0a:	29 f7                	sub    %esi,%edi
c0036c0c:	01 df                	add    %ebx,%edi
c0036c0e:	89 fb                	mov    %edi,%ebx
c0036c10:	c1 e7 10             	shl    $0x10,%edi
c0036c13:	09 d7                	or     %edx,%edi
c0036c15:	c1 fb 10             	sar    $0x10,%ebx
c0036c18:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c0036c1b:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036c1e:	77 c0                	ja     c0036be0 <__mdiff+0x70>
c0036c20:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036c23:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036c26:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036c29:	89 75 e0             	mov    %esi,-0x20(%ebp)
c0036c2c:	39 f1                	cmp    %esi,%ecx
c0036c2e:	76 3f                	jbe    c0036c6f <__mdiff+0xff>
c0036c30:	8b 3e                	mov    (%esi),%edi
c0036c32:	83 c6 04             	add    $0x4,%esi
c0036c35:	83 c0 04             	add    $0x4,%eax
c0036c38:	0f b7 d7             	movzwl %di,%edx
c0036c3b:	01 da                	add    %ebx,%edx
c0036c3d:	89 d3                	mov    %edx,%ebx
c0036c3f:	0f b7 d2             	movzwl %dx,%edx
c0036c42:	c1 fb 10             	sar    $0x10,%ebx
c0036c45:	c1 ef 10             	shr    $0x10,%edi
c0036c48:	01 df                	add    %ebx,%edi
c0036c4a:	89 fb                	mov    %edi,%ebx
c0036c4c:	c1 e7 10             	shl    $0x10,%edi
c0036c4f:	09 d7                	or     %edx,%edi
c0036c51:	c1 fb 10             	sar    $0x10,%ebx
c0036c54:	39 f1                	cmp    %esi,%ecx
c0036c56:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036c59:	77 d5                	ja     c0036c30 <__mdiff+0xc0>
c0036c5b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036c5e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036c61:	f7 d0                	not    %eax
c0036c63:	01 c8                	add    %ecx,%eax
c0036c65:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c68:	c1 e8 02             	shr    $0x2,%eax
c0036c6b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c0036c6f:	85 ff                	test   %edi,%edi
c0036c71:	75 23                	jne    c0036c96 <__mdiff+0x126>
c0036c73:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036c76:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c0036c7d:	29 d0                	sub    %edx,%eax
c0036c7f:	89 ca                	mov    %ecx,%edx
c0036c81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c88:	83 ea 01             	sub    $0x1,%edx
c0036c8b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036c8f:	85 c9                	test   %ecx,%ecx
c0036c91:	74 f5                	je     c0036c88 <__mdiff+0x118>
c0036c93:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c96:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036c99:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036c9c:	89 48 10             	mov    %ecx,0x10(%eax)
c0036c9f:	83 c4 2c             	add    $0x2c,%esp
c0036ca2:	5b                   	pop    %ebx
c0036ca3:	5e                   	pop    %esi
c0036ca4:	5f                   	pop    %edi
c0036ca5:	5d                   	pop    %ebp
c0036ca6:	c3                   	ret    
c0036ca7:	90                   	nop
c0036ca8:	89 f0                	mov    %esi,%eax
c0036caa:	bf 01 00 00 00       	mov    $0x1,%edi
c0036caf:	89 de                	mov    %ebx,%esi
c0036cb1:	89 c3                	mov    %eax,%ebx
c0036cb3:	e9 e3 fe ff ff       	jmp    c0036b9b <__mdiff+0x2b>
c0036cb8:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cbb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036cc2:	00 
c0036cc3:	89 04 24             	mov    %eax,(%esp)
c0036cc6:	e8 95 f6 ff ff       	call   c0036360 <_Balloc>
c0036ccb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036cd2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036cd9:	83 c4 2c             	add    $0x2c,%esp
c0036cdc:	5b                   	pop    %ebx
c0036cdd:	5e                   	pop    %esi
c0036cde:	5f                   	pop    %edi
c0036cdf:	5d                   	pop    %ebp
c0036ce0:	c3                   	ret    
c0036ce1:	eb 0d                	jmp    c0036cf0 <__ulp>
c0036ce3:	90                   	nop
c0036ce4:	90                   	nop
c0036ce5:	90                   	nop
c0036ce6:	90                   	nop
c0036ce7:	90                   	nop
c0036ce8:	90                   	nop
c0036ce9:	90                   	nop
c0036cea:	90                   	nop
c0036ceb:	90                   	nop
c0036cec:	90                   	nop
c0036ced:	90                   	nop
c0036cee:	90                   	nop
c0036cef:	90                   	nop

c0036cf0 <__ulp>:
c0036cf0:	55                   	push   %ebp
c0036cf1:	89 e5                	mov    %esp,%ebp
c0036cf3:	83 ec 08             	sub    $0x8,%esp
c0036cf6:	dd 45 08             	fldl   0x8(%ebp)
c0036cf9:	dd 5d f8             	fstpl  -0x8(%ebp)
c0036cfc:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0036cff:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036d05:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0036d0b:	85 c9                	test   %ecx,%ecx
c0036d0d:	7e 11                	jle    c0036d20 <__ulp+0x30>
c0036d0f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036d12:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036d19:	dd 45 f8             	fldl   -0x8(%ebp)
c0036d1c:	c9                   	leave  
c0036d1d:	c3                   	ret    
c0036d1e:	66 90                	xchg   %ax,%ax
c0036d20:	f7 d9                	neg    %ecx
c0036d22:	c1 f9 14             	sar    $0x14,%ecx
c0036d25:	83 f9 13             	cmp    $0x13,%ecx
c0036d28:	7e 26                	jle    c0036d50 <__ulp+0x60>
c0036d2a:	83 f9 32             	cmp    $0x32,%ecx
c0036d2d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036d32:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036d39:	7f 0b                	jg     c0036d46 <__ulp+0x56>
c0036d3b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036d40:	29 ca                	sub    %ecx,%edx
c0036d42:	89 d1                	mov    %edx,%ecx
c0036d44:	d3 e0                	shl    %cl,%eax
c0036d46:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036d49:	dd 45 f8             	fldl   -0x8(%ebp)
c0036d4c:	c9                   	leave  
c0036d4d:	c3                   	ret    
c0036d4e:	66 90                	xchg   %ax,%ax
c0036d50:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036d55:	d3 f8                	sar    %cl,%eax
c0036d57:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0036d5a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036d61:	dd 45 f8             	fldl   -0x8(%ebp)
c0036d64:	c9                   	leave  
c0036d65:	c3                   	ret    
c0036d66:	8d 76 00             	lea    0x0(%esi),%esi
c0036d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036d70 <__b2d>:
c0036d70:	55                   	push   %ebp
c0036d71:	89 e5                	mov    %esp,%ebp
c0036d73:	57                   	push   %edi
c0036d74:	56                   	push   %esi
c0036d75:	53                   	push   %ebx
c0036d76:	83 ec 18             	sub    $0x18,%esp
c0036d79:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d7c:	8d 78 14             	lea    0x14(%eax),%edi
c0036d7f:	8b 40 10             	mov    0x10(%eax),%eax
c0036d82:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036d85:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036d88:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036d8b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036d8e:	89 34 24             	mov    %esi,(%esp)
c0036d91:	e8 6a f8 ff ff       	call   c0036600 <__hi0bits>
c0036d96:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036d99:	ba 20 00 00 00       	mov    $0x20,%edx
c0036d9e:	29 c2                	sub    %eax,%edx
c0036da0:	83 f8 0a             	cmp    $0xa,%eax
c0036da3:	89 11                	mov    %edx,(%ecx)
c0036da5:	7f 41                	jg     c0036de8 <__b2d+0x78>
c0036da7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c0036dac:	89 f2                	mov    %esi,%edx
c0036dae:	29 c1                	sub    %eax,%ecx
c0036db0:	d3 ea                	shr    %cl,%edx
c0036db2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036db8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0036dbb:	31 d2                	xor    %edx,%edx
c0036dbd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036dc0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036dc7:	73 05                	jae    c0036dce <__b2d+0x5e>
c0036dc9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036dcc:	d3 ea                	shr    %cl,%edx
c0036dce:	8d 48 15             	lea    0x15(%eax),%ecx
c0036dd1:	d3 e6                	shl    %cl,%esi
c0036dd3:	09 f2                	or     %esi,%edx
c0036dd5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036dd8:	dd 45 e8             	fldl   -0x18(%ebp)
c0036ddb:	83 c4 18             	add    $0x18,%esp
c0036dde:	5b                   	pop    %ebx
c0036ddf:	5e                   	pop    %esi
c0036de0:	5f                   	pop    %edi
c0036de1:	5d                   	pop    %ebp
c0036de2:	c3                   	ret    
c0036de3:	90                   	nop
c0036de4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036de8:	31 d2                	xor    %edx,%edx
c0036dea:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036ded:	73 09                	jae    c0036df8 <__b2d+0x88>
c0036def:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036df2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036df5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036df8:	89 c3                	mov    %eax,%ebx
c0036dfa:	83 eb 0b             	sub    $0xb,%ebx
c0036dfd:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036e00:	74 4e                	je     c0036e50 <__b2d+0xe0>
c0036e02:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036e06:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0036e0b:	29 c3                	sub    %eax,%ebx
c0036e0d:	89 d0                	mov    %edx,%eax
c0036e0f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036e16:	d3 e6                	shl    %cl,%esi
c0036e18:	89 d9                	mov    %ebx,%ecx
c0036e1a:	d3 e8                	shr    %cl,%eax
c0036e1c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036e1f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036e25:	09 c6                	or     %eax,%esi
c0036e27:	31 c0                	xor    %eax,%eax
c0036e29:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036e2c:	39 f9                	cmp    %edi,%ecx
c0036e2e:	76 07                	jbe    c0036e37 <__b2d+0xc7>
c0036e30:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036e33:	89 d9                	mov    %ebx,%ecx
c0036e35:	d3 e8                	shr    %cl,%eax
c0036e37:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036e3b:	d3 e2                	shl    %cl,%edx
c0036e3d:	09 d0                	or     %edx,%eax
c0036e3f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036e42:	dd 45 e8             	fldl   -0x18(%ebp)
c0036e45:	83 c4 18             	add    $0x18,%esp
c0036e48:	5b                   	pop    %ebx
c0036e49:	5e                   	pop    %esi
c0036e4a:	5f                   	pop    %edi
c0036e4b:	5d                   	pop    %ebp
c0036e4c:	c3                   	ret    
c0036e4d:	8d 76 00             	lea    0x0(%esi),%esi
c0036e50:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036e56:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036e59:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036e5c:	dd 45 e8             	fldl   -0x18(%ebp)
c0036e5f:	83 c4 18             	add    $0x18,%esp
c0036e62:	5b                   	pop    %ebx
c0036e63:	5e                   	pop    %esi
c0036e64:	5f                   	pop    %edi
c0036e65:	5d                   	pop    %ebp
c0036e66:	c3                   	ret    
c0036e67:	89 f6                	mov    %esi,%esi
c0036e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036e70 <__d2b>:
c0036e70:	55                   	push   %ebp
c0036e71:	89 e5                	mov    %esp,%ebp
c0036e73:	57                   	push   %edi
c0036e74:	56                   	push   %esi
c0036e75:	53                   	push   %ebx
c0036e76:	83 ec 2c             	sub    $0x2c,%esp
c0036e79:	8b 45 08             	mov    0x8(%ebp),%eax
c0036e7c:	dd 45 0c             	fldl   0xc(%ebp)
c0036e7f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036e86:	00 
c0036e87:	dd 5d d0             	fstpl  -0x30(%ebp)
c0036e8a:	89 04 24             	mov    %eax,(%esp)
c0036e8d:	e8 ce f4 ff ff       	call   c0036360 <_Balloc>
c0036e92:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036e95:	89 c6                	mov    %eax,%esi
c0036e97:	89 d8                	mov    %ebx,%eax
c0036e99:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c0036e9f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036ea4:	c1 eb 14             	shr    $0x14,%ebx
c0036ea7:	85 db                	test   %ebx,%ebx
c0036ea9:	74 05                	je     c0036eb0 <__d2b+0x40>
c0036eab:	0d 00 00 10 00       	or     $0x100000,%eax
c0036eb0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036eb3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036eb6:	85 c0                	test   %eax,%eax
c0036eb8:	74 56                	je     c0036f10 <__d2b+0xa0>
c0036eba:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036ebd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036ec0:	89 04 24             	mov    %eax,(%esp)
c0036ec3:	e8 98 f7 ff ff       	call   c0036660 <__lo0bits>
c0036ec8:	85 c0                	test   %eax,%eax
c0036eca:	0f 85 90 00 00 00    	jne    c0036f60 <__d2b+0xf0>
c0036ed0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036ed3:	89 56 14             	mov    %edx,0x14(%esi)
c0036ed6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036ed9:	83 fa 01             	cmp    $0x1,%edx
c0036edc:	19 ff                	sbb    %edi,%edi
c0036ede:	83 c7 02             	add    $0x2,%edi
c0036ee1:	85 db                	test   %ebx,%ebx
c0036ee3:	89 56 18             	mov    %edx,0x18(%esi)
c0036ee6:	89 7e 10             	mov    %edi,0x10(%esi)
c0036ee9:	74 49                	je     c0036f34 <__d2b+0xc4>
c0036eeb:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036eee:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036ef5:	89 11                	mov    %edx,(%ecx)
c0036ef7:	ba 35 00 00 00       	mov    $0x35,%edx
c0036efc:	29 c2                	sub    %eax,%edx
c0036efe:	8b 45 18             	mov    0x18(%ebp),%eax
c0036f01:	89 10                	mov    %edx,(%eax)
c0036f03:	83 c4 2c             	add    $0x2c,%esp
c0036f06:	89 f0                	mov    %esi,%eax
c0036f08:	5b                   	pop    %ebx
c0036f09:	5e                   	pop    %esi
c0036f0a:	5f                   	pop    %edi
c0036f0b:	5d                   	pop    %ebp
c0036f0c:	c3                   	ret    
c0036f0d:	8d 76 00             	lea    0x0(%esi),%esi
c0036f10:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036f13:	bf 01 00 00 00       	mov    $0x1,%edi
c0036f18:	89 04 24             	mov    %eax,(%esp)
c0036f1b:	e8 40 f7 ff ff       	call   c0036660 <__lo0bits>
c0036f20:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036f23:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c0036f2a:	89 56 14             	mov    %edx,0x14(%esi)
c0036f2d:	83 c0 20             	add    $0x20,%eax
c0036f30:	85 db                	test   %ebx,%ebx
c0036f32:	75 b7                	jne    c0036eeb <__d2b+0x7b>
c0036f34:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036f37:	2d 32 04 00 00       	sub    $0x432,%eax
c0036f3c:	89 01                	mov    %eax,(%ecx)
c0036f3e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036f42:	c1 e7 05             	shl    $0x5,%edi
c0036f45:	89 04 24             	mov    %eax,(%esp)
c0036f48:	e8 b3 f6 ff ff       	call   c0036600 <__hi0bits>
c0036f4d:	29 c7                	sub    %eax,%edi
c0036f4f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036f52:	89 38                	mov    %edi,(%eax)
c0036f54:	83 c4 2c             	add    $0x2c,%esp
c0036f57:	89 f0                	mov    %esi,%eax
c0036f59:	5b                   	pop    %ebx
c0036f5a:	5e                   	pop    %esi
c0036f5b:	5f                   	pop    %edi
c0036f5c:	5d                   	pop    %ebp
c0036f5d:	c3                   	ret    
c0036f5e:	66 90                	xchg   %ax,%ax
c0036f60:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036f63:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036f68:	29 c1                	sub    %eax,%ecx
c0036f6a:	89 d7                	mov    %edx,%edi
c0036f6c:	d3 e7                	shl    %cl,%edi
c0036f6e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036f71:	09 f9                	or     %edi,%ecx
c0036f73:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036f76:	89 c1                	mov    %eax,%ecx
c0036f78:	d3 ea                	shr    %cl,%edx
c0036f7a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036f7d:	e9 57 ff ff ff       	jmp    c0036ed9 <__d2b+0x69>
c0036f82:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036f89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036f90 <__ratio>:
c0036f90:	55                   	push   %ebp
c0036f91:	89 e5                	mov    %esp,%ebp
c0036f93:	56                   	push   %esi
c0036f94:	53                   	push   %ebx
c0036f95:	83 ec 30             	sub    $0x30,%esp
c0036f98:	8b 75 08             	mov    0x8(%ebp),%esi
c0036f9b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0036f9e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036fa1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036fa5:	89 34 24             	mov    %esi,(%esp)
c0036fa8:	e8 c3 fd ff ff       	call   c0036d70 <__b2d>
c0036fad:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036fb0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036fb4:	89 1c 24             	mov    %ebx,(%esp)
c0036fb7:	dd 55 e0             	fstl   -0x20(%ebp)
c0036fba:	dd 5d d8             	fstpl  -0x28(%ebp)
c0036fbd:	e8 ae fd ff ff       	call   c0036d70 <__b2d>
c0036fc2:	8b 46 10             	mov    0x10(%esi),%eax
c0036fc5:	2b 43 10             	sub    0x10(%ebx),%eax
c0036fc8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036fcb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0036fce:	c1 e0 05             	shl    $0x5,%eax
c0036fd1:	01 d0                	add    %edx,%eax
c0036fd3:	dd 55 d0             	fstl   -0x30(%ebp)
c0036fd6:	85 c0                	test   %eax,%eax
c0036fd8:	dd 45 d8             	fldl   -0x28(%ebp)
c0036fdb:	7e 1b                	jle    c0036ff8 <__ratio+0x68>
c0036fdd:	dd d8                	fstp   %st(0)
c0036fdf:	c1 e0 14             	shl    $0x14,%eax
c0036fe2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036fe5:	dd 45 e0             	fldl   -0x20(%ebp)
c0036fe8:	83 c4 30             	add    $0x30,%esp
c0036feb:	5b                   	pop    %ebx
c0036fec:	de f1                	fdivp  %st,%st(1)
c0036fee:	5e                   	pop    %esi
c0036fef:	5d                   	pop    %ebp
c0036ff0:	c3                   	ret    
c0036ff1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ff8:	dd d9                	fstp   %st(1)
c0036ffa:	c1 e0 14             	shl    $0x14,%eax
c0036ffd:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0037000:	dd 45 d0             	fldl   -0x30(%ebp)
c0037003:	83 c4 30             	add    $0x30,%esp
c0037006:	5b                   	pop    %ebx
c0037007:	de f9                	fdivrp %st,%st(1)
c0037009:	5e                   	pop    %esi
c003700a:	5d                   	pop    %ebp
c003700b:	c3                   	ret    
c003700c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0037010 <_mprec_log10>:
c0037010:	55                   	push   %ebp
c0037011:	89 e5                	mov    %esp,%ebp
c0037013:	8b 45 08             	mov    0x8(%ebp),%eax
c0037016:	83 f8 17             	cmp    $0x17,%eax
c0037019:	7e 1d                	jle    c0037038 <_mprec_log10+0x28>
c003701b:	d9 e8                	fld1   
c003701d:	d9 05 b0 96 03 c0    	flds   0xc00396b0
c0037023:	90                   	nop
c0037024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037028:	83 e8 01             	sub    $0x1,%eax
c003702b:	dc c9                	fmul   %st,%st(1)
c003702d:	75 f9                	jne    c0037028 <_mprec_log10+0x18>
c003702f:	dd d8                	fstp   %st(0)
c0037031:	5d                   	pop    %ebp
c0037032:	c3                   	ret    
c0037033:	90                   	nop
c0037034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037038:	dd 04 c5 80 97 03 c0 	fldl   -0x3ffc6880(,%eax,8)
c003703f:	5d                   	pop    %ebp
c0037040:	c3                   	ret    
c0037041:	eb 0d                	jmp    c0037050 <__copybits>
c0037043:	90                   	nop
c0037044:	90                   	nop
c0037045:	90                   	nop
c0037046:	90                   	nop
c0037047:	90                   	nop
c0037048:	90                   	nop
c0037049:	90                   	nop
c003704a:	90                   	nop
c003704b:	90                   	nop
c003704c:	90                   	nop
c003704d:	90                   	nop
c003704e:	90                   	nop
c003704f:	90                   	nop

c0037050 <__copybits>:
c0037050:	55                   	push   %ebp
c0037051:	89 e5                	mov    %esp,%ebp
c0037053:	57                   	push   %edi
c0037054:	8b 7d 10             	mov    0x10(%ebp),%edi
c0037057:	56                   	push   %esi
c0037058:	8b 75 0c             	mov    0xc(%ebp),%esi
c003705b:	8b 45 08             	mov    0x8(%ebp),%eax
c003705e:	53                   	push   %ebx
c003705f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0037062:	8d 56 ff             	lea    -0x1(%esi),%edx
c0037065:	c1 fa 05             	sar    $0x5,%edx
c0037068:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003706c:	8d 57 14             	lea    0x14(%edi),%edx
c003706f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0037072:	39 da                	cmp    %ebx,%edx
c0037074:	73 34                	jae    c00370aa <__copybits+0x5a>
c0037076:	89 c1                	mov    %eax,%ecx
c0037078:	83 c2 04             	add    $0x4,%edx
c003707b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003707e:	83 c1 04             	add    $0x4,%ecx
c0037081:	39 d3                	cmp    %edx,%ebx
c0037083:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0037086:	77 f0                	ja     c0037078 <__copybits+0x28>
c0037088:	8b 45 08             	mov    0x8(%ebp),%eax
c003708b:	29 fb                	sub    %edi,%ebx
c003708d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0037090:	c1 ea 02             	shr    $0x2,%edx
c0037093:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0037097:	39 c6                	cmp    %eax,%esi
c0037099:	76 13                	jbe    c00370ae <__copybits+0x5e>
c003709b:	90                   	nop
c003709c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00370a0:	83 c0 04             	add    $0x4,%eax
c00370a3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00370aa:	39 c6                	cmp    %eax,%esi
c00370ac:	77 f2                	ja     c00370a0 <__copybits+0x50>
c00370ae:	5b                   	pop    %ebx
c00370af:	5e                   	pop    %esi
c00370b0:	5f                   	pop    %edi
c00370b1:	5d                   	pop    %ebp
c00370b2:	c3                   	ret    
c00370b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00370b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00370c0 <__any_on>:
c00370c0:	55                   	push   %ebp
c00370c1:	89 e5                	mov    %esp,%ebp
c00370c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00370c6:	57                   	push   %edi
c00370c7:	56                   	push   %esi
c00370c8:	53                   	push   %ebx
c00370c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00370cc:	8d 50 14             	lea    0x14(%eax),%edx
c00370cf:	8b 40 10             	mov    0x10(%eax),%eax
c00370d2:	c1 fb 05             	sar    $0x5,%ebx
c00370d5:	39 d8                	cmp    %ebx,%eax
c00370d7:	7d 2f                	jge    c0037108 <__any_on+0x48>
c00370d9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00370dc:	39 da                	cmp    %ebx,%edx
c00370de:	73 1d                	jae    c00370fd <__any_on+0x3d>
c00370e0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00370e3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00370e6:	85 db                	test   %ebx,%ebx
c00370e8:	74 0f                	je     c00370f9 <__any_on+0x39>
c00370ea:	eb 44                	jmp    c0037130 <__any_on+0x70>
c00370ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00370f0:	83 e8 04             	sub    $0x4,%eax
c00370f3:	8b 08                	mov    (%eax),%ecx
c00370f5:	85 c9                	test   %ecx,%ecx
c00370f7:	75 37                	jne    c0037130 <__any_on+0x70>
c00370f9:	39 c2                	cmp    %eax,%edx
c00370fb:	72 f3                	jb     c00370f0 <__any_on+0x30>
c00370fd:	31 c0                	xor    %eax,%eax
c00370ff:	5b                   	pop    %ebx
c0037100:	5e                   	pop    %esi
c0037101:	5f                   	pop    %edi
c0037102:	5d                   	pop    %ebp
c0037103:	c3                   	ret    
c0037104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037108:	7e 1e                	jle    c0037128 <__any_on+0x68>
c003710a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003710d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0037110:	83 e1 1f             	and    $0x1f,%ecx
c0037113:	74 c7                	je     c00370dc <__any_on+0x1c>
c0037115:	8b 3b                	mov    (%ebx),%edi
c0037117:	b8 01 00 00 00       	mov    $0x1,%eax
c003711c:	89 fe                	mov    %edi,%esi
c003711e:	d3 ee                	shr    %cl,%esi
c0037120:	d3 e6                	shl    %cl,%esi
c0037122:	39 fe                	cmp    %edi,%esi
c0037124:	75 d9                	jne    c00370ff <__any_on+0x3f>
c0037126:	eb b4                	jmp    c00370dc <__any_on+0x1c>
c0037128:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003712b:	eb af                	jmp    c00370dc <__any_on+0x1c>
c003712d:	8d 76 00             	lea    0x0(%esi),%esi
c0037130:	5b                   	pop    %ebx
c0037131:	b8 01 00 00 00       	mov    $0x1,%eax
c0037136:	5e                   	pop    %esi
c0037137:	5f                   	pop    %edi
c0037138:	5d                   	pop    %ebp
c0037139:	c3                   	ret    
c003713a:	66 90                	xchg   %ax,%ax
c003713c:	66 90                	xchg   %ax,%ax
c003713e:	66 90                	xchg   %ax,%ax

c0037140 <_sbrk_r>:
c0037140:	55                   	push   %ebp
c0037141:	89 e5                	mov    %esp,%ebp
c0037143:	83 ec 18             	sub    $0x18,%esp
c0037146:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037149:	c7 05 04 40 09 c0 00 	movl   $0x0,0xc0094004
c0037150:	00 00 00 
c0037153:	89 04 24             	mov    %eax,(%esp)
c0037156:	e8 97 90 ff ff       	call   c00301f2 <sbrk>
c003715b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003715e:	74 08                	je     c0037168 <_sbrk_r+0x28>
c0037160:	c9                   	leave  
c0037161:	c3                   	ret    
c0037162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037168:	8b 15 04 40 09 c0    	mov    0xc0094004,%edx
c003716e:	85 d2                	test   %edx,%edx
c0037170:	74 ee                	je     c0037160 <_sbrk_r+0x20>
c0037172:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0037175:	89 11                	mov    %edx,(%ecx)
c0037177:	c9                   	leave  
c0037178:	c3                   	ret    
c0037179:	66 90                	xchg   %ax,%ax
c003717b:	66 90                	xchg   %ax,%ax
c003717d:	66 90                	xchg   %ax,%ax
c003717f:	90                   	nop

c0037180 <__fpclassifyd>:
c0037180:	55                   	push   %ebp
c0037181:	b8 02 00 00 00       	mov    $0x2,%eax
c0037186:	89 e5                	mov    %esp,%ebp
c0037188:	53                   	push   %ebx
c0037189:	83 ec 0c             	sub    $0xc,%esp
c003718c:	dd 45 08             	fldl   0x8(%ebp)
c003718f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0037192:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0037195:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0037198:	89 d3                	mov    %edx,%ebx
c003719a:	09 cb                	or     %ecx,%ebx
c003719c:	75 0a                	jne    c00371a8 <__fpclassifyd+0x28>
c003719e:	83 c4 0c             	add    $0xc,%esp
c00371a1:	5b                   	pop    %ebx
c00371a2:	5d                   	pop    %ebp
c00371a3:	c3                   	ret    
c00371a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00371a8:	85 d2                	test   %edx,%edx
c00371aa:	0f 94 c2             	sete   %dl
c00371ad:	75 08                	jne    c00371b7 <__fpclassifyd+0x37>
c00371af:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00371b5:	74 e7                	je     c003719e <__fpclassifyd+0x1e>
c00371b7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00371bd:	b8 04 00 00 00       	mov    $0x4,%eax
c00371c2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00371c8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00371ce:	76 ce                	jbe    c003719e <__fpclassifyd+0x1e>
c00371d0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00371d6:	b0 03                	mov    $0x3,%al
c00371d8:	76 c4                	jbe    c003719e <__fpclassifyd+0x1e>
c00371da:	31 c0                	xor    %eax,%eax
c00371dc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c00371e2:	0f 94 c0             	sete   %al
c00371e5:	21 d0                	and    %edx,%eax
c00371e7:	eb b5                	jmp    c003719e <__fpclassifyd+0x1e>
c00371e9:	66 90                	xchg   %ax,%ax
c00371eb:	66 90                	xchg   %ax,%ax
c00371ed:	66 90                	xchg   %ax,%ax
c00371ef:	90                   	nop

c00371f0 <strlen>:
c00371f0:	55                   	push   %ebp
c00371f1:	89 e5                	mov    %esp,%ebp
c00371f3:	57                   	push   %edi
c00371f4:	8b 55 08             	mov    0x8(%ebp),%edx
c00371f7:	89 d7                	mov    %edx,%edi
c00371f9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00371ff:	74 25                	je     c0037226 <L5>
c0037201:	8a 0f                	mov    (%edi),%cl
c0037203:	47                   	inc    %edi
c0037204:	84 c9                	test   %cl,%cl
c0037206:	74 56                	je     c003725e <L15>
c0037208:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003720e:	74 16                	je     c0037226 <L5>
c0037210:	8a 0f                	mov    (%edi),%cl
c0037212:	47                   	inc    %edi
c0037213:	84 c9                	test   %cl,%cl
c0037215:	74 47                	je     c003725e <L15>
c0037217:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003721d:	74 07                	je     c0037226 <L5>
c003721f:	8a 0f                	mov    (%edi),%cl
c0037221:	47                   	inc    %edi
c0037222:	84 c9                	test   %cl,%cl
c0037224:	74 38                	je     c003725e <L15>

c0037226 <L5>:
c0037226:	83 ef 04             	sub    $0x4,%edi
c0037229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0037230 <L10>:
c0037230:	83 c7 04             	add    $0x4,%edi
c0037233:	8b 0f                	mov    (%edi),%ecx
c0037235:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c003723b:	f7 d1                	not    %ecx
c003723d:	21 c8                	and    %ecx,%eax
c003723f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0037244:	74 ea                	je     c0037230 <L10>
c0037246:	f7 d1                	not    %ecx
c0037248:	47                   	inc    %edi
c0037249:	84 c9                	test   %cl,%cl
c003724b:	74 11                	je     c003725e <L15>
c003724d:	47                   	inc    %edi
c003724e:	c1 e9 08             	shr    $0x8,%ecx
c0037251:	84 c9                	test   %cl,%cl
c0037253:	74 09                	je     c003725e <L15>
c0037255:	47                   	inc    %edi
c0037256:	c1 e9 08             	shr    $0x8,%ecx
c0037259:	84 c9                	test   %cl,%cl
c003725b:	74 01                	je     c003725e <L15>
c003725d:	47                   	inc    %edi

c003725e <L15>:
c003725e:	29 d7                	sub    %edx,%edi
c0037260:	8d 47 ff             	lea    -0x1(%edi),%eax
c0037263:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0037266:	5f                   	pop    %edi
c0037267:	c9                   	leave  
c0037268:	c3                   	ret    
c0037269:	66 90                	xchg   %ax,%ax
c003726b:	66 90                	xchg   %ax,%ax
c003726d:	66 90                	xchg   %ax,%ax
c003726f:	90                   	nop

c0037270 <__ssprint_r>:
c0037270:	55                   	push   %ebp
c0037271:	89 e5                	mov    %esp,%ebp
c0037273:	57                   	push   %edi
c0037274:	56                   	push   %esi
c0037275:	53                   	push   %ebx
c0037276:	83 ec 2c             	sub    $0x2c,%esp
c0037279:	8b 45 10             	mov    0x10(%ebp),%eax
c003727c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003727f:	8b 00                	mov    (%eax),%eax
c0037281:	89 c7                	mov    %eax,%edi
c0037283:	8b 45 10             	mov    0x10(%ebp),%eax
c0037286:	8b 40 08             	mov    0x8(%eax),%eax
c0037289:	85 c0                	test   %eax,%eax
c003728b:	0f 84 af 01 00 00    	je     c0037440 <__ssprint_r+0x1d0>
c0037291:	31 c9                	xor    %ecx,%ecx
c0037293:	31 d2                	xor    %edx,%edx
c0037295:	8b 03                	mov    (%ebx),%eax
c0037297:	89 ce                	mov    %ecx,%esi
c0037299:	85 f6                	test   %esi,%esi
c003729b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003729e:	0f 84 ec 00 00 00    	je     c0037390 <__ssprint_r+0x120>
c00372a4:	8b 53 08             	mov    0x8(%ebx),%edx
c00372a7:	39 d6                	cmp    %edx,%esi
c00372a9:	0f 82 fc 00 00 00    	jb     c00373ab <__ssprint_r+0x13b>
c00372af:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c00372b3:	66 f7 c1 80 04       	test   $0x480,%cx
c00372b8:	0f 84 fa 00 00 00    	je     c00373b8 <__ssprint_r+0x148>
c00372be:	8b 53 10             	mov    0x10(%ebx),%edx
c00372c1:	29 d0                	sub    %edx,%eax
c00372c3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00372c6:	8b 43 14             	mov    0x14(%ebx),%eax
c00372c9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00372cc:	8d 04 40             	lea    (%eax,%eax,2),%eax
c00372cf:	89 c2                	mov    %eax,%edx
c00372d1:	c1 ea 1f             	shr    $0x1f,%edx
c00372d4:	01 d0                	add    %edx,%eax
c00372d6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00372d9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00372dc:	d1 7d e0             	sarl   -0x20(%ebp)
c00372df:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c00372e3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c00372e6:	0f 83 34 01 00 00    	jae    c0037420 <__ssprint_r+0x1b0>
c00372ec:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00372ef:	80 e5 04             	and    $0x4,%ch
c00372f2:	0f 84 c8 00 00 00    	je     c00373c0 <__ssprint_r+0x150>
c00372f8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00372fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00372ff:	89 04 24             	mov    %eax,(%esp)
c0037302:	e8 59 e8 ff ff       	call   c0035b60 <_malloc_r>
c0037307:	85 c0                	test   %eax,%eax
c0037309:	89 c2                	mov    %eax,%edx
c003730b:	0f 84 e1 00 00 00    	je     c00373f2 <__ssprint_r+0x182>
c0037311:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0037314:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0037317:	89 44 24 08          	mov    %eax,0x8(%esp)
c003731b:	8b 43 10             	mov    0x10(%ebx),%eax
c003731e:	89 14 24             	mov    %edx,(%esp)
c0037321:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037325:	e8 0a b2 ff ff       	call   c0032534 <memcpy>
c003732a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c003732e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0037331:	66 25 7f fb          	and    $0xfb7f,%ax
c0037335:	0c 80                	or     $0x80,%al
c0037337:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c003733b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003733e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0037341:	89 53 10             	mov    %edx,0x10(%ebx)
c0037344:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0037347:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c003734a:	01 d0                	add    %edx,%eax
c003734c:	89 03                	mov    %eax,(%ebx)
c003734e:	89 f2                	mov    %esi,%edx
c0037350:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0037353:	89 f1                	mov    %esi,%ecx
c0037355:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0037359:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c003735c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003735f:	89 04 24             	mov    %eax,(%esp)
c0037362:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0037365:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0037369:	e8 22 13 00 00       	call   c0038690 <memmove>
c003736e:	8b 03                	mov    (%ebx),%eax
c0037370:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037373:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0037376:	29 53 08             	sub    %edx,0x8(%ebx)
c0037379:	01 c8                	add    %ecx,%eax
c003737b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003737e:	89 03                	mov    %eax,(%ebx)
c0037380:	8b 51 08             	mov    0x8(%ecx),%edx
c0037383:	29 f2                	sub    %esi,%edx
c0037385:	85 d2                	test   %edx,%edx
c0037387:	89 51 08             	mov    %edx,0x8(%ecx)
c003738a:	0f 84 98 00 00 00    	je     c0037428 <__ssprint_r+0x1b8>
c0037390:	8b 77 04             	mov    0x4(%edi),%esi
c0037393:	83 c7 08             	add    $0x8,%edi
c0037396:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0037399:	85 f6                	test   %esi,%esi
c003739b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003739e:	74 f0                	je     c0037390 <__ssprint_r+0x120>
c00373a0:	8b 53 08             	mov    0x8(%ebx),%edx
c00373a3:	39 d6                	cmp    %edx,%esi
c00373a5:	0f 83 04 ff ff ff    	jae    c00372af <__ssprint_r+0x3f>
c00373ab:	89 f2                	mov    %esi,%edx
c00373ad:	89 f1                	mov    %esi,%ecx
c00373af:	eb a4                	jmp    c0037355 <__ssprint_r+0xe5>
c00373b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00373b8:	89 d1                	mov    %edx,%ecx
c00373ba:	eb 99                	jmp    c0037355 <__ssprint_r+0xe5>
c00373bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00373c0:	89 44 24 08          	mov    %eax,0x8(%esp)
c00373c4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00373c7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00373cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00373ce:	89 04 24             	mov    %eax,(%esp)
c00373d1:	e8 4a 13 00 00       	call   c0038720 <_realloc_r>
c00373d6:	85 c0                	test   %eax,%eax
c00373d8:	89 c2                	mov    %eax,%edx
c00373da:	0f 85 5b ff ff ff    	jne    c003733b <__ssprint_r+0xcb>
c00373e0:	8b 43 10             	mov    0x10(%ebx),%eax
c00373e3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00373e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00373ea:	89 04 24             	mov    %eax,(%esp)
c00373ed:	e8 3e 10 00 00       	call   c0038430 <_free_r>
c00373f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00373f5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00373fb:	8b 45 10             	mov    0x10(%ebp),%eax
c00373fe:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0037403:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c003740a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0037411:	83 c4 2c             	add    $0x2c,%esp
c0037414:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037419:	5b                   	pop    %ebx
c003741a:	5e                   	pop    %esi
c003741b:	5f                   	pop    %edi
c003741c:	5d                   	pop    %ebp
c003741d:	c3                   	ret    
c003741e:	66 90                	xchg   %ax,%ax
c0037420:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0037423:	e9 c7 fe ff ff       	jmp    c00372ef <__ssprint_r+0x7f>
c0037428:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c003742f:	83 c4 2c             	add    $0x2c,%esp
c0037432:	31 c0                	xor    %eax,%eax
c0037434:	5b                   	pop    %ebx
c0037435:	5e                   	pop    %esi
c0037436:	5f                   	pop    %edi
c0037437:	5d                   	pop    %ebp
c0037438:	c3                   	ret    
c0037439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037440:	8b 45 10             	mov    0x10(%ebp),%eax
c0037443:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c003744a:	83 c4 2c             	add    $0x2c,%esp
c003744d:	31 c0                	xor    %eax,%eax
c003744f:	5b                   	pop    %ebx
c0037450:	5e                   	pop    %esi
c0037451:	5f                   	pop    %edi
c0037452:	5d                   	pop    %ebp
c0037453:	c3                   	ret    
c0037454:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c003745a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0037460 <_svfiprintf_r>:
c0037460:	55                   	push   %ebp
c0037461:	89 e5                	mov    %esp,%ebp
c0037463:	57                   	push   %edi
c0037464:	56                   	push   %esi
c0037465:	53                   	push   %ebx
c0037466:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c003746c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003746f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0037473:	74 0b                	je     c0037480 <_svfiprintf_r+0x20>
c0037475:	8b 50 10             	mov    0x10(%eax),%edx
c0037478:	85 d2                	test   %edx,%edx
c003747a:	0f 84 1c 0d 00 00    	je     c003819c <_svfiprintf_r+0xd3c>
c0037480:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037483:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037486:	89 c6                	mov    %eax,%esi
c0037488:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003748e:	29 d8                	sub    %ebx,%eax
c0037490:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0037497:	00 00 00 
c003749a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00374a1:	00 00 00 
c00374a4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00374ab:	00 00 00 
c00374ae:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c00374b5:	00 00 00 
c00374b8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c00374be:	8b 45 10             	mov    0x10(%ebp),%eax
c00374c1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00374c4:	0f b6 00             	movzbl (%eax),%eax
c00374c7:	84 c0                	test   %al,%al
c00374c9:	74 58                	je     c0037523 <_svfiprintf_r+0xc3>
c00374cb:	3c 25                	cmp    $0x25,%al
c00374cd:	75 13                	jne    c00374e2 <_svfiprintf_r+0x82>
c00374cf:	eb 52                	jmp    c0037523 <_svfiprintf_r+0xc3>
c00374d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374d8:	84 c0                	test   %al,%al
c00374da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00374e0:	74 0a                	je     c00374ec <_svfiprintf_r+0x8c>
c00374e2:	83 c3 01             	add    $0x1,%ebx
c00374e5:	0f b6 03             	movzbl (%ebx),%eax
c00374e8:	3c 25                	cmp    $0x25,%al
c00374ea:	75 ec                	jne    c00374d8 <_svfiprintf_r+0x78>
c00374ec:	89 df                	mov    %ebx,%edi
c00374ee:	2b 7d 10             	sub    0x10(%ebp),%edi
c00374f1:	74 30                	je     c0037523 <_svfiprintf_r+0xc3>
c00374f3:	8b 45 10             	mov    0x10(%ebp),%eax
c00374f6:	83 c6 08             	add    $0x8,%esi
c00374f9:	89 7e fc             	mov    %edi,-0x4(%esi)
c00374fc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0037502:	89 46 f8             	mov    %eax,-0x8(%esi)
c0037505:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003750b:	83 c0 01             	add    $0x1,%eax
c003750e:	83 f8 07             	cmp    $0x7,%eax
c0037511:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037517:	0f 8f eb 0a 00 00    	jg     c0038008 <_svfiprintf_r+0xba8>
c003751d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0037523:	80 3b 00             	cmpb   $0x0,(%ebx)
c0037526:	0f 84 11 09 00 00    	je     c0037e3d <_svfiprintf_r+0x9dd>
c003752c:	8d 43 01             	lea    0x1(%ebx),%eax
c003752f:	31 ff                	xor    %edi,%edi
c0037531:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037538:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c003753f:	ff ff ff 
c0037542:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0037549:	00 00 00 
c003754c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0037553:	00 00 00 
c0037556:	8d 50 01             	lea    0x1(%eax),%edx
c0037559:	0f be 00             	movsbl (%eax),%eax
c003755c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003755f:	83 f9 58             	cmp    $0x58,%ecx
c0037562:	0f 87 63 03 00 00    	ja     c00378cb <_svfiprintf_r+0x46b>
c0037568:	ff 24 8d 48 98 03 c0 	jmp    *-0x3ffc67b8(,%ecx,4)
c003756f:	90                   	nop
c0037570:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037577:	89 d0                	mov    %edx,%eax
c0037579:	eb db                	jmp    c0037556 <_svfiprintf_r+0xf6>
c003757b:	8b 45 14             	mov    0x14(%ebp),%eax
c003757e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037581:	8b 00                	mov    (%eax),%eax
c0037583:	83 c3 04             	add    $0x4,%ebx
c0037586:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037589:	85 c0                	test   %eax,%eax
c003758b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0037591:	79 e4                	jns    c0037577 <_svfiprintf_r+0x117>
c0037593:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0037599:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c00375a0:	89 d0                	mov    %edx,%eax
c00375a2:	eb b2                	jmp    c0037556 <_svfiprintf_r+0xf6>
c00375a4:	bf 2b 00 00 00       	mov    $0x2b,%edi
c00375a9:	89 d0                	mov    %edx,%eax
c00375ab:	eb a9                	jmp    c0037556 <_svfiprintf_r+0xf6>
c00375ad:	8b 45 14             	mov    0x14(%ebp),%eax
c00375b0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00375b7:	89 55 10             	mov    %edx,0x10(%ebp)
c00375ba:	ba 02 00 00 00       	mov    $0x2,%edx
c00375bf:	8b 08                	mov    (%eax),%ecx
c00375c1:	83 c0 04             	add    $0x4,%eax
c00375c4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00375cb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c00375d2:	89 45 14             	mov    %eax,0x14(%ebp)
c00375d5:	c7 85 44 ff ff ff f7 	movl   $0xc00394f7,-0xbc(%ebp)
c00375dc:	94 03 c0 
c00375df:	90                   	nop
c00375e0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00375e7:	31 ff                	xor    %edi,%edi
c00375e9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c00375ef:	89 d8                	mov    %ebx,%eax
c00375f1:	24 7f                	and    $0x7f,%al
c00375f3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c00375fa:	0f 48 c3             	cmovs  %ebx,%eax
c00375fd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0037603:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037609:	85 c0                	test   %eax,%eax
c003760b:	75 08                	jne    c0037615 <_svfiprintf_r+0x1b5>
c003760d:	85 c9                	test   %ecx,%ecx
c003760f:	0f 84 03 08 00 00    	je     c0037e18 <_svfiprintf_r+0x9b8>
c0037615:	80 fa 01             	cmp    $0x1,%dl
c0037618:	0f 84 8a 0a 00 00    	je     c00380a8 <_svfiprintf_r+0xc48>
c003761e:	80 fa 02             	cmp    $0x2,%dl
c0037621:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037624:	0f 85 86 01 00 00    	jne    c00377b0 <_svfiprintf_r+0x350>
c003762a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0037630:	89 c8                	mov    %ecx,%eax
c0037632:	83 eb 01             	sub    $0x1,%ebx
c0037635:	83 e0 0f             	and    $0xf,%eax
c0037638:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c003763c:	c1 e9 04             	shr    $0x4,%ecx
c003763f:	85 c9                	test   %ecx,%ecx
c0037641:	88 03                	mov    %al,(%ebx)
c0037643:	75 eb                	jne    c0037630 <_svfiprintf_r+0x1d0>
c0037645:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037648:	29 d8                	sub    %ebx,%eax
c003764a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037650:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037656:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c003765c:	39 c1                	cmp    %eax,%ecx
c003765e:	0f 4d c1             	cmovge %ecx,%eax
c0037661:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0037667:	89 f8                	mov    %edi,%eax
c0037669:	3c 01                	cmp    $0x1,%al
c003766b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0037672:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037678:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c003767e:	89 d0                	mov    %edx,%eax
c0037680:	89 cf                	mov    %ecx,%edi
c0037682:	83 c0 02             	add    $0x2,%eax
c0037685:	83 e7 02             	and    $0x2,%edi
c0037688:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c003768e:	89 cf                	mov    %ecx,%edi
c0037690:	0f 44 c2             	cmove  %edx,%eax
c0037693:	81 e7 84 00 00 00    	and    $0x84,%edi
c0037699:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c003769f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00376a5:	0f 85 cd 04 00 00    	jne    c0037b78 <_svfiprintf_r+0x718>
c00376ab:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00376b1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00376b7:	85 ff                	test   %edi,%edi
c00376b9:	0f 8e b9 04 00 00    	jle    c0037b78 <_svfiprintf_r+0x718>
c00376bf:	83 ff 10             	cmp    $0x10,%edi
c00376c2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376c8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ce:	7e 7c                	jle    c003774c <_svfiprintf_r+0x2ec>
c00376d0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c00376d6:	89 f1                	mov    %esi,%ecx
c00376d8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00376db:	8b 75 0c             	mov    0xc(%ebp),%esi
c00376de:	eb 08                	jmp    c00376e8 <_svfiprintf_r+0x288>
c00376e0:	83 ef 10             	sub    $0x10,%edi
c00376e3:	83 ff 10             	cmp    $0x10,%edi
c00376e6:	7e 5c                	jle    c0037744 <_svfiprintf_r+0x2e4>
c00376e8:	83 c0 01             	add    $0x1,%eax
c00376eb:	83 c2 10             	add    $0x10,%edx
c00376ee:	c7 01 bc 99 03 c0    	movl   $0xc00399bc,(%ecx)
c00376f4:	83 c1 08             	add    $0x8,%ecx
c00376f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00376fe:	83 f8 07             	cmp    $0x7,%eax
c0037701:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037707:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003770d:	7e d1                	jle    c00376e0 <_svfiprintf_r+0x280>
c003770f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037715:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037719:	89 74 24 04          	mov    %esi,0x4(%esp)
c003771d:	89 1c 24             	mov    %ebx,(%esp)
c0037720:	e8 4b fb ff ff       	call   c0037270 <__ssprint_r>
c0037725:	85 c0                	test   %eax,%eax
c0037727:	0f 85 3b 07 00 00    	jne    c0037e68 <_svfiprintf_r+0xa08>
c003772d:	83 ef 10             	sub    $0x10,%edi
c0037730:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037736:	83 ff 10             	cmp    $0x10,%edi
c0037739:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003773f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037742:	7f a4                	jg     c00376e8 <_svfiprintf_r+0x288>
c0037744:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003774a:	89 ce                	mov    %ecx,%esi
c003774c:	83 c0 01             	add    $0x1,%eax
c003774f:	01 fa                	add    %edi,%edx
c0037751:	c7 06 bc 99 03 c0    	movl   $0xc00399bc,(%esi)
c0037757:	83 c6 08             	add    $0x8,%esi
c003775a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003775d:	83 f8 07             	cmp    $0x7,%eax
c0037760:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037766:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003776c:	0f 8e 12 04 00 00    	jle    c0037b84 <_svfiprintf_r+0x724>
c0037772:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037778:	89 44 24 08          	mov    %eax,0x8(%esp)
c003777c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003777f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037783:	8b 45 08             	mov    0x8(%ebp),%eax
c0037786:	89 04 24             	mov    %eax,(%esp)
c0037789:	e8 e2 fa ff ff       	call   c0037270 <__ssprint_r>
c003778e:	85 c0                	test   %eax,%eax
c0037790:	0f 85 d2 06 00 00    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037796:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003779c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003779f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377a5:	e9 da 03 00 00       	jmp    c0037b84 <_svfiprintf_r+0x724>
c00377aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00377b0:	89 c8                	mov    %ecx,%eax
c00377b2:	83 eb 01             	sub    $0x1,%ebx
c00377b5:	83 e0 07             	and    $0x7,%eax
c00377b8:	c1 e9 03             	shr    $0x3,%ecx
c00377bb:	83 c0 30             	add    $0x30,%eax
c00377be:	85 c9                	test   %ecx,%ecx
c00377c0:	88 03                	mov    %al,(%ebx)
c00377c2:	75 ec                	jne    c00377b0 <_svfiprintf_r+0x350>
c00377c4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00377cb:	89 da                	mov    %ebx,%edx
c00377cd:	0f 84 72 fe ff ff    	je     c0037645 <_svfiprintf_r+0x1e5>
c00377d3:	3c 30                	cmp    $0x30,%al
c00377d5:	0f 84 6a fe ff ff    	je     c0037645 <_svfiprintf_r+0x1e5>
c00377db:	83 eb 01             	sub    $0x1,%ebx
c00377de:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00377e1:	29 d8                	sub    %ebx,%eax
c00377e3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00377e7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00377ed:	e9 5e fe ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c00377f2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00377f9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037800:	89 55 10             	mov    %edx,0x10(%ebp)
c0037803:	8b 45 14             	mov    0x14(%ebp),%eax
c0037806:	0f 85 48 01 00 00    	jne    c0037954 <_svfiprintf_r+0x4f4>
c003780c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037813:	0f 84 3b 01 00 00    	je     c0037954 <_svfiprintf_r+0x4f4>
c0037819:	0f b7 08             	movzwl (%eax),%ecx
c003781c:	83 c0 04             	add    $0x4,%eax
c003781f:	31 d2                	xor    %edx,%edx
c0037821:	89 45 14             	mov    %eax,0x14(%ebp)
c0037824:	e9 b7 fd ff ff       	jmp    c00375e0 <_svfiprintf_r+0x180>
c0037829:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037830:	89 f8                	mov    %edi,%eax
c0037832:	89 55 10             	mov    %edx,0x10(%ebp)
c0037835:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003783b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037842:	8b 45 14             	mov    0x14(%ebp),%eax
c0037845:	75 0d                	jne    c0037854 <_svfiprintf_r+0x3f4>
c0037847:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003784e:	0f 85 f2 08 00 00    	jne    c0038146 <_svfiprintf_r+0xce6>
c0037854:	8b 08                	mov    (%eax),%ecx
c0037856:	83 c0 04             	add    $0x4,%eax
c0037859:	89 45 14             	mov    %eax,0x14(%ebp)
c003785c:	85 c9                	test   %ecx,%ecx
c003785e:	0f 88 f3 08 00 00    	js     c0038157 <_svfiprintf_r+0xcf7>
c0037864:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003786b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037870:	e9 74 fd ff ff       	jmp    c00375e9 <_svfiprintf_r+0x189>
c0037875:	0f be 02             	movsbl (%edx),%eax
c0037878:	8d 5a 01             	lea    0x1(%edx),%ebx
c003787b:	83 f8 2a             	cmp    $0x2a,%eax
c003787e:	0f 84 af 09 00 00    	je     c0038233 <_svfiprintf_r+0xdd3>
c0037884:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037887:	31 d2                	xor    %edx,%edx
c0037889:	83 f9 09             	cmp    $0x9,%ecx
c003788c:	0f 87 90 09 00 00    	ja     c0038222 <_svfiprintf_r+0xdc2>
c0037892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037898:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003789b:	83 c3 01             	add    $0x1,%ebx
c003789e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c00378a1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c00378a5:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00378a8:	83 f9 09             	cmp    $0x9,%ecx
c00378ab:	76 eb                	jbe    c0037898 <_svfiprintf_r+0x438>
c00378ad:	85 d2                	test   %edx,%edx
c00378af:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00378b4:	0f 48 d1             	cmovs  %ecx,%edx
c00378b7:	8d 48 e0             	lea    -0x20(%eax),%ecx
c00378ba:	83 f9 58             	cmp    $0x58,%ecx
c00378bd:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00378c3:	89 da                	mov    %ebx,%edx
c00378c5:	0f 86 9d fc ff ff    	jbe    c0037568 <_svfiprintf_r+0x108>
c00378cb:	89 fb                	mov    %edi,%ebx
c00378cd:	85 c0                	test   %eax,%eax
c00378cf:	89 55 10             	mov    %edx,0x10(%ebp)
c00378d2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00378d8:	0f 84 5f 05 00 00    	je     c0037e3d <_svfiprintf_r+0x9dd>
c00378de:	88 45 80             	mov    %al,-0x80(%ebp)
c00378e1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00378e4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00378eb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00378f2:	00 00 00 
c00378f5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00378fc:	00 00 00 
c00378ff:	e9 5a 01 00 00       	jmp    c0037a5e <_svfiprintf_r+0x5fe>
c0037904:	31 db                	xor    %ebx,%ebx
c0037906:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037910:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037913:	83 c2 01             	add    $0x1,%edx
c0037916:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037919:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003791d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037920:	83 f9 09             	cmp    $0x9,%ecx
c0037923:	76 eb                	jbe    c0037910 <_svfiprintf_r+0x4b0>
c0037925:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003792b:	e9 2c fc ff ff       	jmp    c003755c <_svfiprintf_r+0xfc>
c0037930:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037937:	00 00 00 
c003793a:	89 d0                	mov    %edx,%eax
c003793c:	e9 15 fc ff ff       	jmp    c0037556 <_svfiprintf_r+0xf6>
c0037941:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037948:	89 55 10             	mov    %edx,0x10(%ebp)
c003794b:	8b 45 14             	mov    0x14(%ebp),%eax
c003794e:	0f 84 b8 fe ff ff    	je     c003780c <_svfiprintf_r+0x3ac>
c0037954:	8b 08                	mov    (%eax),%ecx
c0037956:	83 c0 04             	add    $0x4,%eax
c0037959:	31 d2                	xor    %edx,%edx
c003795b:	89 45 14             	mov    %eax,0x14(%ebp)
c003795e:	e9 7d fc ff ff       	jmp    c00375e0 <_svfiprintf_r+0x180>
c0037963:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003796a:	89 f8                	mov    %edi,%eax
c003796c:	89 55 10             	mov    %edx,0x10(%ebp)
c003796f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037975:	0f 85 a2 07 00 00    	jne    c003811d <_svfiprintf_r+0xcbd>
c003797b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037982:	0f 84 95 07 00 00    	je     c003811d <_svfiprintf_r+0xcbd>
c0037988:	8b 45 14             	mov    0x14(%ebp),%eax
c003798b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037992:	8b 00                	mov    (%eax),%eax
c0037994:	66 89 18             	mov    %bx,(%eax)
c0037997:	8b 45 14             	mov    0x14(%ebp),%eax
c003799a:	83 c0 04             	add    $0x4,%eax
c003799d:	89 45 14             	mov    %eax,0x14(%ebp)
c00379a0:	e9 19 fb ff ff       	jmp    c00374be <_svfiprintf_r+0x5e>
c00379a5:	89 fb                	mov    %edi,%ebx
c00379a7:	89 55 10             	mov    %edx,0x10(%ebp)
c00379aa:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00379b0:	c7 85 44 ff ff ff f7 	movl   $0xc00394f7,-0xbc(%ebp)
c00379b7:	94 03 c0 
c00379ba:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00379c1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00379c4:	75 0d                	jne    c00379d3 <_svfiprintf_r+0x573>
c00379c6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00379cd:	0f 85 65 07 00 00    	jne    c0038138 <_svfiprintf_r+0xcd8>
c00379d3:	8b 0b                	mov    (%ebx),%ecx
c00379d5:	83 c3 04             	add    $0x4,%ebx
c00379d8:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379db:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00379e2:	ba 02 00 00 00       	mov    $0x2,%edx
c00379e7:	0f 84 f3 fb ff ff    	je     c00375e0 <_svfiprintf_r+0x180>
c00379ed:	85 c9                	test   %ecx,%ecx
c00379ef:	0f 84 eb fb ff ff    	je     c00375e0 <_svfiprintf_r+0x180>
c00379f5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00379fc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037a02:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037a09:	e9 d2 fb ff ff       	jmp    c00375e0 <_svfiprintf_r+0x180>
c0037a0e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037a15:	89 d0                	mov    %edx,%eax
c0037a17:	e9 3a fb ff ff       	jmp    c0037556 <_svfiprintf_r+0xf6>
c0037a1c:	89 f8                	mov    %edi,%eax
c0037a1e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a21:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037a27:	e9 0f fe ff ff       	jmp    c003783b <_svfiprintf_r+0x3db>
c0037a2c:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a2f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037a32:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a35:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037a3c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037a43:	00 00 00 
c0037a46:	8b 00                	mov    (%eax),%eax
c0037a48:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c0037a4f:	00 00 00 
c0037a52:	88 45 80             	mov    %al,-0x80(%ebp)
c0037a55:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a58:	83 c0 04             	add    $0x4,%eax
c0037a5b:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a5e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a65:	00 00 00 
c0037a68:	e9 05 fc ff ff       	jmp    c0037672 <_svfiprintf_r+0x212>
c0037a6d:	89 fb                	mov    %edi,%ebx
c0037a6f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a72:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037a78:	c7 85 44 ff ff ff e6 	movl   $0xc00394e6,-0xbc(%ebp)
c0037a7f:	94 03 c0 
c0037a82:	e9 33 ff ff ff       	jmp    c00379ba <_svfiprintf_r+0x55a>
c0037a87:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037a8e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037a95:	89 55 10             	mov    %edx,0x10(%ebp)
c0037a98:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a9b:	75 39                	jne    c0037ad6 <_svfiprintf_r+0x676>
c0037a9d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037aa4:	74 30                	je     c0037ad6 <_svfiprintf_r+0x676>
c0037aa6:	0f b7 08             	movzwl (%eax),%ecx
c0037aa9:	83 c0 04             	add    $0x4,%eax
c0037aac:	ba 01 00 00 00       	mov    $0x1,%edx
c0037ab1:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ab4:	e9 27 fb ff ff       	jmp    c00375e0 <_svfiprintf_r+0x180>
c0037ab9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037ac0:	89 d0                	mov    %edx,%eax
c0037ac2:	e9 8f fa ff ff       	jmp    c0037556 <_svfiprintf_r+0xf6>
c0037ac7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037ace:	89 55 10             	mov    %edx,0x10(%ebp)
c0037ad1:	8b 45 14             	mov    0x14(%ebp),%eax
c0037ad4:	74 c7                	je     c0037a9d <_svfiprintf_r+0x63d>
c0037ad6:	8b 08                	mov    (%eax),%ecx
c0037ad8:	83 c0 04             	add    $0x4,%eax
c0037adb:	ba 01 00 00 00       	mov    $0x1,%edx
c0037ae0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ae3:	e9 f8 fa ff ff       	jmp    c00375e0 <_svfiprintf_r+0x180>
c0037ae8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aeb:	89 55 10             	mov    %edx,0x10(%ebp)
c0037aee:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037af5:	8b 18                	mov    (%eax),%ebx
c0037af7:	8d 50 04             	lea    0x4(%eax),%edx
c0037afa:	85 db                	test   %ebx,%ebx
c0037afc:	0f 84 cc 06 00 00    	je     c00381ce <_svfiprintf_r+0xd6e>
c0037b02:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037b08:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c0037b0e:	85 ff                	test   %edi,%edi
c0037b10:	0f 88 59 06 00 00    	js     c003816f <_svfiprintf_r+0xd0f>
c0037b16:	89 7c 24 08          	mov    %edi,0x8(%esp)
c0037b1a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037b21:	00 
c0037b22:	89 1c 24             	mov    %ebx,(%esp)
c0037b25:	e8 76 e7 ff ff       	call   c00362a0 <memchr>
c0037b2a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037b30:	85 c0                	test   %eax,%eax
c0037b32:	0f 84 c5 06 00 00    	je     c00381fd <_svfiprintf_r+0xd9d>
c0037b38:	29 d8                	sub    %ebx,%eax
c0037b3a:	39 f8                	cmp    %edi,%eax
c0037b3c:	0f 4f c7             	cmovg  %edi,%eax
c0037b3f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037b46:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b4c:	89 55 14             	mov    %edx,0x14(%ebp)
c0037b4f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b56:	00 00 00 
c0037b59:	e9 f2 fa ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c0037b5e:	89 f8                	mov    %edi,%eax
c0037b60:	84 c0                	test   %al,%al
c0037b62:	b8 20 00 00 00       	mov    $0x20,%eax
c0037b67:	0f 44 f8             	cmove  %eax,%edi
c0037b6a:	89 d0                	mov    %edx,%eax
c0037b6c:	e9 e5 f9 ff ff       	jmp    c0037556 <_svfiprintf_r+0xf6>
c0037b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037b78:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037b7e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037b84:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c0037b8b:	74 2e                	je     c0037bbb <_svfiprintf_r+0x75b>
c0037b8d:	83 c0 01             	add    $0x1,%eax
c0037b90:	83 c2 01             	add    $0x1,%edx
c0037b93:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037b99:	83 c6 08             	add    $0x8,%esi
c0037b9c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037b9f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037ba6:	83 f8 07             	cmp    $0x7,%eax
c0037ba9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037baf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037bb5:	0f 8f b5 04 00 00    	jg     c0038070 <_svfiprintf_r+0xc10>
c0037bbb:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037bc1:	85 c9                	test   %ecx,%ecx
c0037bc3:	74 2e                	je     c0037bf3 <_svfiprintf_r+0x793>
c0037bc5:	83 c0 01             	add    $0x1,%eax
c0037bc8:	83 c2 02             	add    $0x2,%edx
c0037bcb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037bd1:	83 c6 08             	add    $0x8,%esi
c0037bd4:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037bd7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c0037bde:	83 f8 07             	cmp    $0x7,%eax
c0037be1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037be7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037bed:	0f 8f 45 04 00 00    	jg     c0038038 <_svfiprintf_r+0xbd8>
c0037bf3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c0037bfa:	00 00 00 
c0037bfd:	0f 84 9d 02 00 00    	je     c0037ea0 <_svfiprintf_r+0xa40>
c0037c03:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037c09:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c0037c0f:	85 ff                	test   %edi,%edi
c0037c11:	0f 8e e1 00 00 00    	jle    c0037cf8 <_svfiprintf_r+0x898>
c0037c17:	83 ff 10             	cmp    $0x10,%edi
c0037c1a:	0f 8e 7c 00 00 00    	jle    c0037c9c <_svfiprintf_r+0x83c>
c0037c20:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037c26:	89 f1                	mov    %esi,%ecx
c0037c28:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037c2b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037c2e:	eb 08                	jmp    c0037c38 <_svfiprintf_r+0x7d8>
c0037c30:	83 ef 10             	sub    $0x10,%edi
c0037c33:	83 ff 10             	cmp    $0x10,%edi
c0037c36:	7e 5c                	jle    c0037c94 <_svfiprintf_r+0x834>
c0037c38:	83 c0 01             	add    $0x1,%eax
c0037c3b:	83 c2 10             	add    $0x10,%edx
c0037c3e:	c7 01 ac 99 03 c0    	movl   $0xc00399ac,(%ecx)
c0037c44:	83 c1 08             	add    $0x8,%ecx
c0037c47:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037c4e:	83 f8 07             	cmp    $0x7,%eax
c0037c51:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037c57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037c5d:	7e d1                	jle    c0037c30 <_svfiprintf_r+0x7d0>
c0037c5f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c65:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c69:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037c6d:	89 1c 24             	mov    %ebx,(%esp)
c0037c70:	e8 fb f5 ff ff       	call   c0037270 <__ssprint_r>
c0037c75:	85 c0                	test   %eax,%eax
c0037c77:	0f 85 eb 01 00 00    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037c7d:	83 ef 10             	sub    $0x10,%edi
c0037c80:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037c86:	83 ff 10             	cmp    $0x10,%edi
c0037c89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037c8f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037c92:	7f a4                	jg     c0037c38 <_svfiprintf_r+0x7d8>
c0037c94:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0037c9a:	89 ce                	mov    %ecx,%esi
c0037c9c:	83 c0 01             	add    $0x1,%eax
c0037c9f:	01 fa                	add    %edi,%edx
c0037ca1:	c7 06 ac 99 03 c0    	movl   $0xc00399ac,(%esi)
c0037ca7:	83 c6 08             	add    $0x8,%esi
c0037caa:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037cad:	83 f8 07             	cmp    $0x7,%eax
c0037cb0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037cb6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037cbc:	7e 3a                	jle    c0037cf8 <_svfiprintf_r+0x898>
c0037cbe:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037cc4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037cc8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037ccb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ccf:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cd2:	89 04 24             	mov    %eax,(%esp)
c0037cd5:	e8 96 f5 ff ff       	call   c0037270 <__ssprint_r>
c0037cda:	85 c0                	test   %eax,%eax
c0037cdc:	0f 85 86 01 00 00    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037ce2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037ce8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037ceb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037cf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037cf8:	89 1e                	mov    %ebx,(%esi)
c0037cfa:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037d00:	83 c0 01             	add    $0x1,%eax
c0037d03:	83 c6 08             	add    $0x8,%esi
c0037d06:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037d0c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0037d0f:	01 da                	add    %ebx,%edx
c0037d11:	83 f8 07             	cmp    $0x7,%eax
c0037d14:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037d1a:	0f 8f 80 02 00 00    	jg     c0037fa0 <_svfiprintf_r+0xb40>
c0037d20:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037d27:	0f 84 b9 00 00 00    	je     c0037de6 <_svfiprintf_r+0x986>
c0037d2d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037d33:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037d39:	85 ff                	test   %edi,%edi
c0037d3b:	0f 8e a5 00 00 00    	jle    c0037de6 <_svfiprintf_r+0x986>
c0037d41:	83 ff 10             	cmp    $0x10,%edi
c0037d44:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037d4a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037d50:	7e 71                	jle    c0037dc3 <_svfiprintf_r+0x963>
c0037d52:	89 f1                	mov    %esi,%ecx
c0037d54:	8b 75 08             	mov    0x8(%ebp),%esi
c0037d57:	eb 0f                	jmp    c0037d68 <_svfiprintf_r+0x908>
c0037d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037d60:	83 ef 10             	sub    $0x10,%edi
c0037d63:	83 ff 10             	cmp    $0x10,%edi
c0037d66:	7e 59                	jle    c0037dc1 <_svfiprintf_r+0x961>
c0037d68:	83 c0 01             	add    $0x1,%eax
c0037d6b:	83 c2 10             	add    $0x10,%edx
c0037d6e:	c7 01 bc 99 03 c0    	movl   $0xc00399bc,(%ecx)
c0037d74:	83 c1 08             	add    $0x8,%ecx
c0037d77:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037d7e:	83 f8 07             	cmp    $0x7,%eax
c0037d81:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037d87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037d8d:	7e d1                	jle    c0037d60 <_svfiprintf_r+0x900>
c0037d8f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037d92:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037d96:	89 34 24             	mov    %esi,(%esp)
c0037d99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d9d:	e8 ce f4 ff ff       	call   c0037270 <__ssprint_r>
c0037da2:	85 c0                	test   %eax,%eax
c0037da4:	0f 85 be 00 00 00    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037daa:	83 ef 10             	sub    $0x10,%edi
c0037dad:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037db3:	83 ff 10             	cmp    $0x10,%edi
c0037db6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037dbc:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037dbf:	7f a7                	jg     c0037d68 <_svfiprintf_r+0x908>
c0037dc1:	89 ce                	mov    %ecx,%esi
c0037dc3:	83 c0 01             	add    $0x1,%eax
c0037dc6:	01 fa                	add    %edi,%edx
c0037dc8:	83 f8 07             	cmp    $0x7,%eax
c0037dcb:	c7 06 bc 99 03 c0    	movl   $0xc00399bc,(%esi)
c0037dd1:	89 7e 04             	mov    %edi,0x4(%esi)
c0037dd4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037dda:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037de0:	0f 8f ee 02 00 00    	jg     c00380d4 <_svfiprintf_r+0xc74>
c0037de6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c0037dec:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037df2:	39 c6                	cmp    %eax,%esi
c0037df4:	0f 4d c6             	cmovge %esi,%eax
c0037df7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c0037dfd:	85 d2                	test   %edx,%edx
c0037dff:	0f 85 d3 01 00 00    	jne    c0037fd8 <_svfiprintf_r+0xb78>
c0037e05:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0037e0c:	00 00 00 
c0037e0f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037e12:	e9 a7 f6 ff ff       	jmp    c00374be <_svfiprintf_r+0x5e>
c0037e17:	90                   	nop
c0037e18:	84 d2                	test   %dl,%dl
c0037e1a:	75 6c                	jne    c0037e88 <_svfiprintf_r+0xa28>
c0037e1c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037e23:	74 63                	je     c0037e88 <_svfiprintf_r+0xa28>
c0037e25:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037e2b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037e2e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037e32:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037e38:	e9 13 f8 ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c0037e3d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037e43:	85 c0                	test   %eax,%eax
c0037e45:	74 21                	je     c0037e68 <_svfiprintf_r+0xa08>
c0037e47:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037e4d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037e51:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037e54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e58:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e5b:	89 04 24             	mov    %eax,(%esp)
c0037e5e:	e8 0d f4 ff ff       	call   c0037270 <__ssprint_r>
c0037e63:	90                   	nop
c0037e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e68:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037e6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037e70:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037e74:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c0037e7b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037e81:	5b                   	pop    %ebx
c0037e82:	5e                   	pop    %esi
c0037e83:	5f                   	pop    %edi
c0037e84:	5d                   	pop    %ebp
c0037e85:	c3                   	ret    
c0037e86:	66 90                	xchg   %ax,%ax
c0037e88:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c0037e8f:	00 00 00 
c0037e92:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037e95:	e9 b6 f7 ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c0037e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ea0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037ea6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037eac:	85 ff                	test   %edi,%edi
c0037eae:	0f 8e 4f fd ff ff    	jle    c0037c03 <_svfiprintf_r+0x7a3>
c0037eb4:	83 ff 10             	cmp    $0x10,%edi
c0037eb7:	0f 8e 7f 00 00 00    	jle    c0037f3c <_svfiprintf_r+0xadc>
c0037ebd:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037ec3:	89 f1                	mov    %esi,%ecx
c0037ec5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037ec8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037ecb:	eb 0b                	jmp    c0037ed8 <_svfiprintf_r+0xa78>
c0037ecd:	8d 76 00             	lea    0x0(%esi),%esi
c0037ed0:	83 ef 10             	sub    $0x10,%edi
c0037ed3:	83 ff 10             	cmp    $0x10,%edi
c0037ed6:	7e 5c                	jle    c0037f34 <_svfiprintf_r+0xad4>
c0037ed8:	83 c0 01             	add    $0x1,%eax
c0037edb:	83 c2 10             	add    $0x10,%edx
c0037ede:	c7 01 ac 99 03 c0    	movl   $0xc00399ac,(%ecx)
c0037ee4:	83 c1 08             	add    $0x8,%ecx
c0037ee7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037eee:	83 f8 07             	cmp    $0x7,%eax
c0037ef1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037ef7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037efd:	7e d1                	jle    c0037ed0 <_svfiprintf_r+0xa70>
c0037eff:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037f05:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037f09:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037f0d:	89 1c 24             	mov    %ebx,(%esp)
c0037f10:	e8 5b f3 ff ff       	call   c0037270 <__ssprint_r>
c0037f15:	85 c0                	test   %eax,%eax
c0037f17:	0f 85 4b ff ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037f1d:	83 ef 10             	sub    $0x10,%edi
c0037f20:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037f26:	83 ff 10             	cmp    $0x10,%edi
c0037f29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037f2f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037f32:	7f a4                	jg     c0037ed8 <_svfiprintf_r+0xa78>
c0037f34:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c0037f3a:	89 ce                	mov    %ecx,%esi
c0037f3c:	83 c0 01             	add    $0x1,%eax
c0037f3f:	01 fa                	add    %edi,%edx
c0037f41:	c7 06 ac 99 03 c0    	movl   $0xc00399ac,(%esi)
c0037f47:	83 c6 08             	add    $0x8,%esi
c0037f4a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037f4d:	83 f8 07             	cmp    $0x7,%eax
c0037f50:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037f56:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037f5c:	0f 8e a1 fc ff ff    	jle    c0037c03 <_svfiprintf_r+0x7a3>
c0037f62:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037f68:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037f6c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037f6f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f73:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f76:	89 04 24             	mov    %eax,(%esp)
c0037f79:	e8 f2 f2 ff ff       	call   c0037270 <__ssprint_r>
c0037f7e:	85 c0                	test   %eax,%eax
c0037f80:	0f 85 e2 fe ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037f86:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037f8c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037f8f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037f95:	e9 69 fc ff ff       	jmp    c0037c03 <_svfiprintf_r+0x7a3>
c0037f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037fa0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037fa6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037faa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037fad:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037fb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fb4:	89 04 24             	mov    %eax,(%esp)
c0037fb7:	e8 b4 f2 ff ff       	call   c0037270 <__ssprint_r>
c0037fbc:	85 c0                	test   %eax,%eax
c0037fbe:	0f 85 a4 fe ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0037fc4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037fca:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037fcd:	e9 4e fd ff ff       	jmp    c0037d20 <_svfiprintf_r+0x8c0>
c0037fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037fd8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037fde:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037fe2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037fe5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037fe9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fec:	89 04 24             	mov    %eax,(%esp)
c0037fef:	e8 7c f2 ff ff       	call   c0037270 <__ssprint_r>
c0037ff4:	85 c0                	test   %eax,%eax
c0037ff6:	0f 84 09 fe ff ff    	je     c0037e05 <_svfiprintf_r+0x9a5>
c0037ffc:	e9 67 fe ff ff       	jmp    c0037e68 <_svfiprintf_r+0xa08>
c0038001:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038008:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003800e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0038012:	8b 45 0c             	mov    0xc(%ebp),%eax
c0038015:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038019:	8b 45 08             	mov    0x8(%ebp),%eax
c003801c:	89 04 24             	mov    %eax,(%esp)
c003801f:	e8 4c f2 ff ff       	call   c0037270 <__ssprint_r>
c0038024:	85 c0                	test   %eax,%eax
c0038026:	0f 85 3c fe ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c003802c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003802f:	e9 e9 f4 ff ff       	jmp    c003751d <_svfiprintf_r+0xbd>
c0038034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038038:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003803e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0038042:	8b 45 0c             	mov    0xc(%ebp),%eax
c0038045:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038049:	8b 45 08             	mov    0x8(%ebp),%eax
c003804c:	89 04 24             	mov    %eax,(%esp)
c003804f:	e8 1c f2 ff ff       	call   c0037270 <__ssprint_r>
c0038054:	85 c0                	test   %eax,%eax
c0038056:	0f 85 0c fe ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c003805c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0038062:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0038065:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003806b:	e9 83 fb ff ff       	jmp    c0037bf3 <_svfiprintf_r+0x793>
c0038070:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0038076:	89 44 24 08          	mov    %eax,0x8(%esp)
c003807a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003807d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038081:	8b 45 08             	mov    0x8(%ebp),%eax
c0038084:	89 04 24             	mov    %eax,(%esp)
c0038087:	e8 e4 f1 ff ff       	call   c0037270 <__ssprint_r>
c003808c:	85 c0                	test   %eax,%eax
c003808e:	0f 85 d4 fd ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c0038094:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003809a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003809d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00380a3:	e9 13 fb ff ff       	jmp    c0037bbb <_svfiprintf_r+0x75b>
c00380a8:	83 f9 09             	cmp    $0x9,%ecx
c00380ab:	76 56                	jbe    c0038103 <_svfiprintf_r+0xca3>
c00380ad:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00380b0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c00380b5:	83 eb 01             	sub    $0x1,%ebx
c00380b8:	f7 e1                	mul    %ecx
c00380ba:	c1 ea 03             	shr    $0x3,%edx
c00380bd:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00380c0:	01 c0                	add    %eax,%eax
c00380c2:	29 c1                	sub    %eax,%ecx
c00380c4:	83 c1 30             	add    $0x30,%ecx
c00380c7:	85 d2                	test   %edx,%edx
c00380c9:	88 0b                	mov    %cl,(%ebx)
c00380cb:	89 d1                	mov    %edx,%ecx
c00380cd:	75 e1                	jne    c00380b0 <_svfiprintf_r+0xc50>
c00380cf:	e9 71 f5 ff ff       	jmp    c0037645 <_svfiprintf_r+0x1e5>
c00380d4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00380da:	89 44 24 08          	mov    %eax,0x8(%esp)
c00380de:	8b 45 0c             	mov    0xc(%ebp),%eax
c00380e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00380e5:	8b 45 08             	mov    0x8(%ebp),%eax
c00380e8:	89 04 24             	mov    %eax,(%esp)
c00380eb:	e8 80 f1 ff ff       	call   c0037270 <__ssprint_r>
c00380f0:	85 c0                	test   %eax,%eax
c00380f2:	0f 85 70 fd ff ff    	jne    c0037e68 <_svfiprintf_r+0xa08>
c00380f8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00380fe:	e9 e3 fc ff ff       	jmp    c0037de6 <_svfiprintf_r+0x986>
c0038103:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0038109:	83 c1 30             	add    $0x30,%ecx
c003810c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003810f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0038112:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0038118:	e9 33 f5 ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c003811d:	8b 45 14             	mov    0x14(%ebp),%eax
c0038120:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0038126:	8b 00                	mov    (%eax),%eax
c0038128:	89 18                	mov    %ebx,(%eax)
c003812a:	8b 45 14             	mov    0x14(%ebp),%eax
c003812d:	83 c0 04             	add    $0x4,%eax
c0038130:	89 45 14             	mov    %eax,0x14(%ebp)
c0038133:	e9 86 f3 ff ff       	jmp    c00374be <_svfiprintf_r+0x5e>
c0038138:	0f b7 0b             	movzwl (%ebx),%ecx
c003813b:	83 c3 04             	add    $0x4,%ebx
c003813e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0038141:	e9 95 f8 ff ff       	jmp    c00379db <_svfiprintf_r+0x57b>
c0038146:	0f bf 08             	movswl (%eax),%ecx
c0038149:	83 c0 04             	add    $0x4,%eax
c003814c:	89 45 14             	mov    %eax,0x14(%ebp)
c003814f:	85 c9                	test   %ecx,%ecx
c0038151:	0f 89 0d f7 ff ff    	jns    c0037864 <_svfiprintf_r+0x404>
c0038157:	f7 d9                	neg    %ecx
c0038159:	bf 2d 00 00 00       	mov    $0x2d,%edi
c003815e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0038165:	ba 01 00 00 00       	mov    $0x1,%edx
c003816a:	e9 7a f4 ff ff       	jmp    c00375e9 <_svfiprintf_r+0x189>
c003816f:	89 1c 24             	mov    %ebx,(%esp)
c0038172:	e8 79 f0 ff ff       	call   c00371f0 <strlen>
c0038177:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c003817d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0038184:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c003818b:	00 00 00 
c003818e:	89 55 14             	mov    %edx,0x14(%ebp)
c0038191:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0038197:	e9 b4 f4 ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c003819c:	8b 45 08             	mov    0x8(%ebp),%eax
c003819f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c00381a6:	00 
c00381a7:	89 04 24             	mov    %eax,(%esp)
c00381aa:	e8 b1 d9 ff ff       	call   c0035b60 <_malloc_r>
c00381af:	8b 75 0c             	mov    0xc(%ebp),%esi
c00381b2:	85 c0                	test   %eax,%eax
c00381b4:	89 06                	mov    %eax,(%esi)
c00381b6:	89 46 10             	mov    %eax,0x10(%esi)
c00381b9:	0f 84 a3 00 00 00    	je     c0038262 <_svfiprintf_r+0xe02>
c00381bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00381c2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c00381c9:	e9 b2 f2 ff ff       	jmp    c0037480 <_svfiprintf_r+0x20>
c00381ce:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00381d4:	b8 06 00 00 00       	mov    $0x6,%eax
c00381d9:	89 55 14             	mov    %edx,0x14(%ebp)
c00381dc:	83 ff 06             	cmp    $0x6,%edi
c00381df:	0f 46 c7             	cmovbe %edi,%eax
c00381e2:	85 c0                	test   %eax,%eax
c00381e4:	0f 49 d8             	cmovns %eax,%ebx
c00381e7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c00381ed:	bb 08 95 03 c0       	mov    $0xc0039508,%ebx
c00381f2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00381f8:	e9 61 f8 ff ff       	jmp    c0037a5e <_svfiprintf_r+0x5fe>
c00381fd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0038203:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003820a:	89 55 14             	mov    %edx,0x14(%ebp)
c003820d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0038214:	00 00 00 
c0038217:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003821d:	e9 2e f4 ff ff       	jmp    c0037650 <_svfiprintf_r+0x1f0>
c0038222:	89 da                	mov    %ebx,%edx
c0038224:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c003822b:	00 00 00 
c003822e:	e9 29 f3 ff ff       	jmp    c003755c <_svfiprintf_r+0xfc>
c0038233:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0038236:	89 da                	mov    %ebx,%edx
c0038238:	8b 45 14             	mov    0x14(%ebp),%eax
c003823b:	8b 09                	mov    (%ecx),%ecx
c003823d:	83 c0 04             	add    $0x4,%eax
c0038240:	89 45 14             	mov    %eax,0x14(%ebp)
c0038243:	85 c9                	test   %ecx,%ecx
c0038245:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c003824b:	0f 89 26 f3 ff ff    	jns    c0037577 <_svfiprintf_r+0x117>
c0038251:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0038258:	ff ff ff 
c003825b:	89 d0                	mov    %edx,%eax
c003825d:	e9 f4 f2 ff ff       	jmp    c0037556 <_svfiprintf_r+0xf6>
c0038262:	8b 45 08             	mov    0x8(%ebp),%eax
c0038265:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c003826b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0038270:	e9 06 fc ff ff       	jmp    c0037e7b <_svfiprintf_r+0xa1b>
c0038275:	66 90                	xchg   %ax,%ax
c0038277:	66 90                	xchg   %ax,%ax
c0038279:	66 90                	xchg   %ax,%ax
c003827b:	66 90                	xchg   %ax,%ax
c003827d:	66 90                	xchg   %ax,%ax
c003827f:	90                   	nop

c0038280 <_calloc_r>:
c0038280:	55                   	push   %ebp
c0038281:	89 e5                	mov    %esp,%ebp
c0038283:	53                   	push   %ebx
c0038284:	83 ec 14             	sub    $0x14,%esp
c0038287:	8b 45 10             	mov    0x10(%ebp),%eax
c003828a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c003828e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038292:	8b 45 08             	mov    0x8(%ebp),%eax
c0038295:	89 04 24             	mov    %eax,(%esp)
c0038298:	e8 c3 d8 ff ff       	call   c0035b60 <_malloc_r>
c003829d:	85 c0                	test   %eax,%eax
c003829f:	89 c3                	mov    %eax,%ebx
c00382a1:	0f 84 91 00 00 00    	je     c0038338 <_calloc_r+0xb8>
c00382a7:	8b 40 fc             	mov    -0x4(%eax),%eax
c00382aa:	83 e0 fc             	and    $0xfffffffc,%eax
c00382ad:	83 e8 04             	sub    $0x4,%eax
c00382b0:	83 f8 24             	cmp    $0x24,%eax
c00382b3:	77 63                	ja     c0038318 <_calloc_r+0x98>
c00382b5:	83 f8 13             	cmp    $0x13,%eax
c00382b8:	89 da                	mov    %ebx,%edx
c00382ba:	77 1c                	ja     c00382d8 <_calloc_r+0x58>
c00382bc:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c00382c2:	89 d8                	mov    %ebx,%eax
c00382c4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c00382cb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c00382d2:	83 c4 14             	add    $0x14,%esp
c00382d5:	5b                   	pop    %ebx
c00382d6:	5d                   	pop    %ebp
c00382d7:	c3                   	ret    
c00382d8:	83 f8 1b             	cmp    $0x1b,%eax
c00382db:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00382e1:	8d 53 08             	lea    0x8(%ebx),%edx
c00382e4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c00382eb:	76 cf                	jbe    c00382bc <_calloc_r+0x3c>
c00382ed:	83 f8 24             	cmp    $0x24,%eax
c00382f0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c00382f7:	8d 53 10             	lea    0x10(%ebx),%edx
c00382fa:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0038301:	75 b9                	jne    c00382bc <_calloc_r+0x3c>
c0038303:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c003830a:	8d 53 18             	lea    0x18(%ebx),%edx
c003830d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0038314:	eb a6                	jmp    c00382bc <_calloc_r+0x3c>
c0038316:	66 90                	xchg   %ax,%ax
c0038318:	89 1c 24             	mov    %ebx,(%esp)
c003831b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003831f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0038326:	00 
c0038327:	e8 50 a2 ff ff       	call   c003257c <memset>
c003832c:	83 c4 14             	add    $0x14,%esp
c003832f:	89 d8                	mov    %ebx,%eax
c0038331:	5b                   	pop    %ebx
c0038332:	5d                   	pop    %ebp
c0038333:	c3                   	ret    
c0038334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038338:	31 c0                	xor    %eax,%eax
c003833a:	eb 96                	jmp    c00382d2 <_calloc_r+0x52>
c003833c:	66 90                	xchg   %ax,%ax
c003833e:	66 90                	xchg   %ax,%ax

c0038340 <_malloc_trim_r>:
c0038340:	55                   	push   %ebp
c0038341:	89 e5                	mov    %esp,%ebp
c0038343:	57                   	push   %edi
c0038344:	56                   	push   %esi
c0038345:	53                   	push   %ebx
c0038346:	83 ec 1c             	sub    $0x1c,%esp
c0038349:	8b 75 08             	mov    0x8(%ebp),%esi
c003834c:	89 34 24             	mov    %esi,(%esp)
c003834f:	e8 ec df ff ff       	call   c0036340 <__malloc_lock>
c0038354:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0038359:	8b 58 04             	mov    0x4(%eax),%ebx
c003835c:	83 e3 fc             	and    $0xfffffffc,%ebx
c003835f:	89 d8                	mov    %ebx,%eax
c0038361:	2b 45 0c             	sub    0xc(%ebp),%eax
c0038364:	05 ef 0f 00 00       	add    $0xfef,%eax
c0038369:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003836e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0038374:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c003837a:	7e 1c                	jle    c0038398 <_malloc_trim_r+0x58>
c003837c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0038383:	00 
c0038384:	89 34 24             	mov    %esi,(%esp)
c0038387:	e8 b4 ed ff ff       	call   c0037140 <_sbrk_r>
c003838c:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0038392:	01 da                	add    %ebx,%edx
c0038394:	39 d0                	cmp    %edx,%eax
c0038396:	74 18                	je     c00383b0 <_malloc_trim_r+0x70>
c0038398:	89 34 24             	mov    %esi,(%esp)
c003839b:	e8 b0 df ff ff       	call   c0036350 <__malloc_unlock>
c00383a0:	83 c4 1c             	add    $0x1c,%esp
c00383a3:	31 c0                	xor    %eax,%eax
c00383a5:	5b                   	pop    %ebx
c00383a6:	5e                   	pop    %esi
c00383a7:	5f                   	pop    %edi
c00383a8:	5d                   	pop    %ebp
c00383a9:	c3                   	ret    
c00383aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00383b0:	89 f8                	mov    %edi,%eax
c00383b2:	f7 d8                	neg    %eax
c00383b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00383b8:	89 34 24             	mov    %esi,(%esp)
c00383bb:	e8 80 ed ff ff       	call   c0037140 <_sbrk_r>
c00383c0:	83 f8 ff             	cmp    $0xffffffff,%eax
c00383c3:	74 2b                	je     c00383f0 <_malloc_trim_r+0xb0>
c00383c5:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00383ca:	29 fb                	sub    %edi,%ebx
c00383cc:	83 cb 01             	or     $0x1,%ebx
c00383cf:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c00383d5:	89 58 04             	mov    %ebx,0x4(%eax)
c00383d8:	89 34 24             	mov    %esi,(%esp)
c00383db:	e8 70 df ff ff       	call   c0036350 <__malloc_unlock>
c00383e0:	83 c4 1c             	add    $0x1c,%esp
c00383e3:	b8 01 00 00 00       	mov    $0x1,%eax
c00383e8:	5b                   	pop    %ebx
c00383e9:	5e                   	pop    %esi
c00383ea:	5f                   	pop    %edi
c00383eb:	5d                   	pop    %ebp
c00383ec:	c3                   	ret    
c00383ed:	8d 76 00             	lea    0x0(%esi),%esi
c00383f0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00383f7:	00 
c00383f8:	89 34 24             	mov    %esi,(%esp)
c00383fb:	e8 40 ed ff ff       	call   c0037140 <_sbrk_r>
c0038400:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0038406:	89 c1                	mov    %eax,%ecx
c0038408:	29 d1                	sub    %edx,%ecx
c003840a:	83 f9 0f             	cmp    $0xf,%ecx
c003840d:	7e 89                	jle    c0038398 <_malloc_trim_r+0x58>
c003840f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0038415:	83 c9 01             	or     $0x1,%ecx
c0038418:	89 4a 04             	mov    %ecx,0x4(%edx)
c003841b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0038420:	e9 73 ff ff ff       	jmp    c0038398 <_malloc_trim_r+0x58>
c0038425:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0038430 <_free_r>:
c0038430:	55                   	push   %ebp
c0038431:	89 e5                	mov    %esp,%ebp
c0038433:	57                   	push   %edi
c0038434:	56                   	push   %esi
c0038435:	53                   	push   %ebx
c0038436:	83 ec 1c             	sub    $0x1c,%esp
c0038439:	8b 75 0c             	mov    0xc(%ebp),%esi
c003843c:	8b 45 08             	mov    0x8(%ebp),%eax
c003843f:	85 f6                	test   %esi,%esi
c0038441:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038444:	0f 84 fe 00 00 00    	je     c0038548 <_free_r+0x118>
c003844a:	89 04 24             	mov    %eax,(%esp)
c003844d:	e8 ee de ff ff       	call   c0036340 <__malloc_lock>
c0038452:	8b 7e fc             	mov    -0x4(%esi),%edi
c0038455:	8d 56 f8             	lea    -0x8(%esi),%edx
c0038458:	89 f8                	mov    %edi,%eax
c003845a:	83 e0 fe             	and    $0xfffffffe,%eax
c003845d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0038460:	8b 59 04             	mov    0x4(%ecx),%ebx
c0038463:	83 e3 fc             	and    $0xfffffffc,%ebx
c0038466:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c003846c:	0f 84 0e 01 00 00    	je     c0038580 <_free_r+0x150>
c0038472:	83 e7 01             	and    $0x1,%edi
c0038475:	89 59 04             	mov    %ebx,0x4(%ecx)
c0038478:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c003847f:	75 1f                	jne    c00384a0 <_free_r+0x70>
c0038481:	8b 76 f8             	mov    -0x8(%esi),%esi
c0038484:	29 f2                	sub    %esi,%edx
c0038486:	01 f0                	add    %esi,%eax
c0038488:	8b 72 08             	mov    0x8(%edx),%esi
c003848b:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0038491:	0f 84 39 01 00 00    	je     c00385d0 <_free_r+0x1a0>
c0038497:	8b 7a 0c             	mov    0xc(%edx),%edi
c003849a:	89 7e 0c             	mov    %edi,0xc(%esi)
c003849d:	89 77 08             	mov    %esi,0x8(%edi)
c00384a0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c00384a5:	75 21                	jne    c00384c8 <_free_r+0x98>
c00384a7:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00384aa:	01 d8                	add    %ebx,%eax
c00384ac:	8b 59 08             	mov    0x8(%ecx),%ebx
c00384af:	85 f6                	test   %esi,%esi
c00384b1:	75 0c                	jne    c00384bf <_free_r+0x8f>
c00384b3:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c00384b9:	0f 84 21 01 00 00    	je     c00385e0 <_free_r+0x1b0>
c00384bf:	8b 49 0c             	mov    0xc(%ecx),%ecx
c00384c2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c00384c5:	89 59 08             	mov    %ebx,0x8(%ecx)
c00384c8:	89 c1                	mov    %eax,%ecx
c00384ca:	83 c9 01             	or     $0x1,%ecx
c00384cd:	89 4a 04             	mov    %ecx,0x4(%edx)
c00384d0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384d3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00384d6:	85 c9                	test   %ecx,%ecx
c00384d8:	75 56                	jne    c0038530 <_free_r+0x100>
c00384da:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c00384df:	76 6f                	jbe    c0038550 <_free_r+0x120>
c00384e1:	89 c1                	mov    %eax,%ecx
c00384e3:	c1 e9 09             	shr    $0x9,%ecx
c00384e6:	83 f9 04             	cmp    $0x4,%ecx
c00384e9:	0f 87 21 01 00 00    	ja     c0038610 <_free_r+0x1e0>
c00384ef:	89 c1                	mov    %eax,%ecx
c00384f1:	c1 e9 06             	shr    $0x6,%ecx
c00384f4:	83 c1 38             	add    $0x38,%ecx
c00384f7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00384fa:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0038501:	8b 5e 08             	mov    0x8(%esi),%ebx
c0038504:	39 f3                	cmp    %esi,%ebx
c0038506:	0f 84 14 01 00 00    	je     c0038620 <_free_r+0x1f0>
c003850c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038510:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0038513:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038516:	39 c8                	cmp    %ecx,%eax
c0038518:	73 07                	jae    c0038521 <_free_r+0xf1>
c003851a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c003851d:	39 de                	cmp    %ebx,%esi
c003851f:	75 ef                	jne    c0038510 <_free_r+0xe0>
c0038521:	8b 43 0c             	mov    0xc(%ebx),%eax
c0038524:	89 42 0c             	mov    %eax,0xc(%edx)
c0038527:	89 5a 08             	mov    %ebx,0x8(%edx)
c003852a:	89 50 08             	mov    %edx,0x8(%eax)
c003852d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0038530:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038533:	89 45 08             	mov    %eax,0x8(%ebp)
c0038536:	83 c4 1c             	add    $0x1c,%esp
c0038539:	5b                   	pop    %ebx
c003853a:	5e                   	pop    %esi
c003853b:	5f                   	pop    %edi
c003853c:	5d                   	pop    %ebp
c003853d:	e9 0e de ff ff       	jmp    c0036350 <__malloc_unlock>
c0038542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038548:	83 c4 1c             	add    $0x1c,%esp
c003854b:	5b                   	pop    %ebx
c003854c:	5e                   	pop    %esi
c003854d:	5f                   	pop    %edi
c003854e:	5d                   	pop    %ebp
c003854f:	c3                   	ret    
c0038550:	c1 e8 03             	shr    $0x3,%eax
c0038553:	bb 01 00 00 00       	mov    $0x1,%ebx
c0038558:	89 c1                	mov    %eax,%ecx
c003855a:	c1 f9 02             	sar    $0x2,%ecx
c003855d:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0038564:	d3 e3                	shl    %cl,%ebx
c0038566:	8b 48 08             	mov    0x8(%eax),%ecx
c0038569:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c003856f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038572:	89 4a 08             	mov    %ecx,0x8(%edx)
c0038575:	89 50 08             	mov    %edx,0x8(%eax)
c0038578:	89 51 0c             	mov    %edx,0xc(%ecx)
c003857b:	eb b3                	jmp    c0038530 <_free_r+0x100>
c003857d:	8d 76 00             	lea    0x0(%esi),%esi
c0038580:	01 d8                	add    %ebx,%eax
c0038582:	83 e7 01             	and    $0x1,%edi
c0038585:	75 13                	jne    c003859a <_free_r+0x16a>
c0038587:	8b 4e f8             	mov    -0x8(%esi),%ecx
c003858a:	29 ca                	sub    %ecx,%edx
c003858c:	01 c8                	add    %ecx,%eax
c003858e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0038591:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0038594:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0038597:	89 59 08             	mov    %ebx,0x8(%ecx)
c003859a:	89 c1                	mov    %eax,%ecx
c003859c:	83 c9 01             	or     $0x1,%ecx
c003859f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c00385a5:	89 4a 04             	mov    %ecx,0x4(%edx)
c00385a8:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c00385ae:	72 80                	jb     c0038530 <_free_r+0x100>
c00385b0:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c00385b5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00385bc:	89 04 24             	mov    %eax,(%esp)
c00385bf:	e8 7c fd ff ff       	call   c0038340 <_malloc_trim_r>
c00385c4:	e9 67 ff ff ff       	jmp    c0038530 <_free_r+0x100>
c00385c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385d0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c00385d7:	e9 c4 fe ff ff       	jmp    c00384a0 <_free_r+0x70>
c00385dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385e0:	89 c1                	mov    %eax,%ecx
c00385e2:	83 c9 01             	or     $0x1,%ecx
c00385e5:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c00385eb:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c00385f1:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c00385f8:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c00385ff:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038602:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0038605:	e9 26 ff ff ff       	jmp    c0038530 <_free_r+0x100>
c003860a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038610:	83 f9 14             	cmp    $0x14,%ecx
c0038613:	77 23                	ja     c0038638 <_free_r+0x208>
c0038615:	83 c1 5b             	add    $0x5b,%ecx
c0038618:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c003861b:	e9 da fe ff ff       	jmp    c00384fa <_free_r+0xca>
c0038620:	c1 f9 02             	sar    $0x2,%ecx
c0038623:	b8 01 00 00 00       	mov    $0x1,%eax
c0038628:	d3 e0                	shl    %cl,%eax
c003862a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0038630:	89 d8                	mov    %ebx,%eax
c0038632:	e9 ed fe ff ff       	jmp    c0038524 <_free_r+0xf4>
c0038637:	90                   	nop
c0038638:	83 f9 54             	cmp    $0x54,%ecx
c003863b:	77 10                	ja     c003864d <_free_r+0x21d>
c003863d:	89 c1                	mov    %eax,%ecx
c003863f:	c1 e9 0c             	shr    $0xc,%ecx
c0038642:	83 c1 6e             	add    $0x6e,%ecx
c0038645:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038648:	e9 ad fe ff ff       	jmp    c00384fa <_free_r+0xca>
c003864d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0038653:	77 10                	ja     c0038665 <_free_r+0x235>
c0038655:	89 c1                	mov    %eax,%ecx
c0038657:	c1 e9 0f             	shr    $0xf,%ecx
c003865a:	83 c1 77             	add    $0x77,%ecx
c003865d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038660:	e9 95 fe ff ff       	jmp    c00384fa <_free_r+0xca>
c0038665:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c003866b:	77 10                	ja     c003867d <_free_r+0x24d>
c003866d:	89 c1                	mov    %eax,%ecx
c003866f:	c1 e9 12             	shr    $0x12,%ecx
c0038672:	83 c1 7c             	add    $0x7c,%ecx
c0038675:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038678:	e9 7d fe ff ff       	jmp    c00384fa <_free_r+0xca>
c003867d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0038682:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0038687:	e9 6e fe ff ff       	jmp    c00384fa <_free_r+0xca>
c003868c:	66 90                	xchg   %ax,%ax
c003868e:	66 90                	xchg   %ax,%ax

c0038690 <memmove>:
c0038690:	55                   	push   %ebp
c0038691:	89 e5                	mov    %esp,%ebp
c0038693:	56                   	push   %esi
c0038694:	57                   	push   %edi
c0038695:	53                   	push   %ebx
c0038696:	8b 7d 08             	mov    0x8(%ebp),%edi
c0038699:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003869c:	8b 75 0c             	mov    0xc(%ebp),%esi
c003869f:	fc                   	cld    
c00386a0:	39 fe                	cmp    %edi,%esi
c00386a2:	73 43                	jae    c00386e7 <memmove+0x57>
c00386a4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c00386a8:	39 df                	cmp    %ebx,%edi
c00386aa:	77 3b                	ja     c00386e7 <memmove+0x57>
c00386ac:	01 ce                	add    %ecx,%esi
c00386ae:	01 cf                	add    %ecx,%edi
c00386b0:	fd                   	std    
c00386b1:	83 f9 08             	cmp    $0x8,%ecx
c00386b4:	76 2b                	jbe    c00386e1 <memmove+0x51>
c00386b6:	89 fa                	mov    %edi,%edx
c00386b8:	89 cb                	mov    %ecx,%ebx
c00386ba:	83 e2 03             	and    $0x3,%edx
c00386bd:	74 0c                	je     c00386cb <memmove+0x3b>
c00386bf:	89 d1                	mov    %edx,%ecx
c00386c1:	4e                   	dec    %esi
c00386c2:	4f                   	dec    %edi
c00386c3:	29 cb                	sub    %ecx,%ebx
c00386c5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00386c7:	89 d9                	mov    %ebx,%ecx
c00386c9:	46                   	inc    %esi
c00386ca:	47                   	inc    %edi
c00386cb:	c1 e9 02             	shr    $0x2,%ecx
c00386ce:	83 ee 04             	sub    $0x4,%esi
c00386d1:	83 ef 04             	sub    $0x4,%edi
c00386d4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c00386d6:	83 c6 04             	add    $0x4,%esi
c00386d9:	83 c7 04             	add    $0x4,%edi
c00386dc:	89 d9                	mov    %ebx,%ecx
c00386de:	83 e1 03             	and    $0x3,%ecx
c00386e1:	4e                   	dec    %esi
c00386e2:	4f                   	dec    %edi
c00386e3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00386e5:	eb 2a                	jmp    c0038711 <memmove+0x81>
c00386e7:	83 f9 08             	cmp    $0x8,%ecx
c00386ea:	76 23                	jbe    c003870f <memmove+0x7f>
c00386ec:	89 fa                	mov    %edi,%edx
c00386ee:	89 cb                	mov    %ecx,%ebx
c00386f0:	83 e2 03             	and    $0x3,%edx
c00386f3:	74 10                	je     c0038705 <memmove+0x75>
c00386f5:	b9 04 00 00 00       	mov    $0x4,%ecx
c00386fa:	29 d1                	sub    %edx,%ecx
c00386fc:	83 e1 03             	and    $0x3,%ecx
c00386ff:	29 cb                	sub    %ecx,%ebx
c0038701:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038703:	89 d9                	mov    %ebx,%ecx
c0038705:	c1 e9 02             	shr    $0x2,%ecx
c0038708:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003870a:	89 d9                	mov    %ebx,%ecx
c003870c:	83 e1 03             	and    $0x3,%ecx
c003870f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038711:	8b 45 08             	mov    0x8(%ebp),%eax
c0038714:	fc                   	cld    
c0038715:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038718:	5b                   	pop    %ebx
c0038719:	5f                   	pop    %edi
c003871a:	5e                   	pop    %esi
c003871b:	c9                   	leave  
c003871c:	c3                   	ret    
c003871d:	66 90                	xchg   %ax,%ax
c003871f:	90                   	nop

c0038720 <_realloc_r>:
c0038720:	55                   	push   %ebp
c0038721:	89 e5                	mov    %esp,%ebp
c0038723:	57                   	push   %edi
c0038724:	56                   	push   %esi
c0038725:	53                   	push   %ebx
c0038726:	83 ec 3c             	sub    $0x3c,%esp
c0038729:	8b 45 08             	mov    0x8(%ebp),%eax
c003872c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003872f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038732:	8b 45 10             	mov    0x10(%ebp),%eax
c0038735:	85 ff                	test   %edi,%edi
c0038737:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003873a:	0f 84 50 02 00 00    	je     c0038990 <_realloc_r+0x270>
c0038740:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038743:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038746:	89 04 24             	mov    %eax,(%esp)
c0038749:	e8 f2 db ff ff       	call   c0036340 <__malloc_lock>
c003874e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038751:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038754:	89 c3                	mov    %eax,%ebx
c0038756:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038759:	83 e3 fc             	and    $0xfffffffc,%ebx
c003875c:	83 fa 16             	cmp    $0x16,%edx
c003875f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038762:	0f 87 00 01 00 00    	ja     c0038868 <_realloc_r+0x148>
c0038768:	31 d2                	xor    %edx,%edx
c003876a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038771:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038778:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003877b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003877e:	0f 82 1c 02 00 00    	jb     c00389a0 <_realloc_r+0x280>
c0038784:	84 d2                	test   %dl,%dl
c0038786:	0f 85 14 02 00 00    	jne    c00389a0 <_realloc_r+0x280>
c003878c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003878f:	0f 8d eb 00 00 00    	jge    c0038880 <_realloc_r+0x160>
c0038795:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003879b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003879e:	39 d1                	cmp    %edx,%ecx
c00387a0:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c00387a3:	0f 84 6f 02 00 00    	je     c0038a18 <_realloc_r+0x2f8>
c00387a9:	8b 4a 04             	mov    0x4(%edx),%ecx
c00387ac:	89 c8                	mov    %ecx,%eax
c00387ae:	83 e0 fe             	and    $0xfffffffe,%eax
c00387b1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c00387b6:	0f 84 f4 00 00 00    	je     c00388b0 <_realloc_r+0x190>
c00387bc:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00387c3:	31 d2                	xor    %edx,%edx
c00387c5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00387c9:	0f 85 39 01 00 00    	jne    c0038908 <_realloc_r+0x1e8>
c00387cf:	89 f1                	mov    %esi,%ecx
c00387d1:	2b 4f f8             	sub    -0x8(%edi),%ecx
c00387d4:	8b 41 04             	mov    0x4(%ecx),%eax
c00387d7:	83 e0 fc             	and    $0xfffffffc,%eax
c00387da:	85 d2                	test   %edx,%edx
c00387dc:	0f 84 f6 02 00 00    	je     c0038ad8 <_realloc_r+0x3b8>
c00387e2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00387e5:	0f 84 f5 02 00 00    	je     c0038ae0 <_realloc_r+0x3c0>
c00387eb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00387ee:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00387f1:	01 d8                	add    %ebx,%eax
c00387f3:	01 c2                	add    %eax,%edx
c00387f5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00387f8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00387fb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00387fe:	0f 8c ac 01 00 00    	jl     c00389b0 <_realloc_r+0x290>
c0038804:	8b 42 0c             	mov    0xc(%edx),%eax
c0038807:	83 eb 04             	sub    $0x4,%ebx
c003880a:	8b 52 08             	mov    0x8(%edx),%edx
c003880d:	83 fb 24             	cmp    $0x24,%ebx
c0038810:	8d 71 08             	lea    0x8(%ecx),%esi
c0038813:	89 42 0c             	mov    %eax,0xc(%edx)
c0038816:	89 50 08             	mov    %edx,0x8(%eax)
c0038819:	8b 41 0c             	mov    0xc(%ecx),%eax
c003881c:	8b 51 08             	mov    0x8(%ecx),%edx
c003881f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038822:	89 50 08             	mov    %edx,0x8(%eax)
c0038825:	0f 87 85 03 00 00    	ja     c0038bb0 <_realloc_r+0x490>
c003882b:	83 fb 13             	cmp    $0x13,%ebx
c003882e:	89 f0                	mov    %esi,%eax
c0038830:	76 1a                	jbe    c003884c <_realloc_r+0x12c>
c0038832:	8b 07                	mov    (%edi),%eax
c0038834:	83 fb 1b             	cmp    $0x1b,%ebx
c0038837:	89 41 08             	mov    %eax,0x8(%ecx)
c003883a:	8b 47 04             	mov    0x4(%edi),%eax
c003883d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038840:	0f 87 8f 03 00 00    	ja     c0038bd5 <_realloc_r+0x4b5>
c0038846:	8d 41 10             	lea    0x10(%ecx),%eax
c0038849:	83 c7 08             	add    $0x8,%edi
c003884c:	8b 17                	mov    (%edi),%edx
c003884e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038851:	89 10                	mov    %edx,(%eax)
c0038853:	8b 57 04             	mov    0x4(%edi),%edx
c0038856:	89 50 04             	mov    %edx,0x4(%eax)
c0038859:	8b 57 08             	mov    0x8(%edi),%edx
c003885c:	89 f7                	mov    %esi,%edi
c003885e:	89 ce                	mov    %ecx,%esi
c0038860:	89 50 08             	mov    %edx,0x8(%eax)
c0038863:	8b 41 04             	mov    0x4(%ecx),%eax
c0038866:	eb 1b                	jmp    c0038883 <_realloc_r+0x163>
c0038868:	83 e2 f8             	and    $0xfffffff8,%edx
c003886b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003886e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038871:	c1 ea 1f             	shr    $0x1f,%edx
c0038874:	e9 ff fe ff ff       	jmp    c0038778 <_realloc_r+0x58>
c0038879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038880:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038883:	89 da                	mov    %ebx,%edx
c0038885:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038888:	83 fa 0f             	cmp    $0xf,%edx
c003888b:	77 4b                	ja     c00388d8 <_realloc_r+0x1b8>
c003888d:	83 e0 01             	and    $0x1,%eax
c0038890:	09 d8                	or     %ebx,%eax
c0038892:	89 46 04             	mov    %eax,0x4(%esi)
c0038895:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003889a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003889d:	89 04 24             	mov    %eax,(%esp)
c00388a0:	e8 ab da ff ff       	call   c0036350 <__malloc_unlock>
c00388a5:	89 f8                	mov    %edi,%eax
c00388a7:	83 c4 3c             	add    $0x3c,%esp
c00388aa:	5b                   	pop    %ebx
c00388ab:	5e                   	pop    %esi
c00388ac:	5f                   	pop    %edi
c00388ad:	5d                   	pop    %ebp
c00388ae:	c3                   	ret    
c00388af:	90                   	nop
c00388b0:	83 e1 fc             	and    $0xfffffffc,%ecx
c00388b3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00388b6:	01 d9                	add    %ebx,%ecx
c00388b8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c00388bb:	0f 8c 04 ff ff ff    	jl     c00387c5 <_realloc_r+0xa5>
c00388c1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00388c4:	8b 52 08             	mov    0x8(%edx),%edx
c00388c7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00388ca:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00388cd:	89 53 08             	mov    %edx,0x8(%ebx)
c00388d0:	89 cb                	mov    %ecx,%ebx
c00388d2:	eb af                	jmp    c0038883 <_realloc_r+0x163>
c00388d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00388d8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00388db:	83 e0 01             	and    $0x1,%eax
c00388de:	09 d8                	or     %ebx,%eax
c00388e0:	89 46 04             	mov    %eax,0x4(%esi)
c00388e3:	89 d0                	mov    %edx,%eax
c00388e5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00388e8:	83 c8 01             	or     $0x1,%eax
c00388eb:	89 41 04             	mov    %eax,0x4(%ecx)
c00388ee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00388f1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00388f6:	83 c1 08             	add    $0x8,%ecx
c00388f9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00388fd:	89 04 24             	mov    %eax,(%esp)
c0038900:	e8 2b fb ff ff       	call   c0038430 <_free_r>
c0038905:	eb 93                	jmp    c003889a <_realloc_r+0x17a>
c0038907:	90                   	nop
c0038908:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003890b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003890f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038912:	89 04 24             	mov    %eax,(%esp)
c0038915:	e8 46 d2 ff ff       	call   c0035b60 <_malloc_r>
c003891a:	85 c0                	test   %eax,%eax
c003891c:	89 c1                	mov    %eax,%ecx
c003891e:	0f 84 65 03 00 00    	je     c0038c89 <_realloc_r+0x569>
c0038924:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038927:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003892a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003892d:	89 c2                	mov    %eax,%edx
c003892f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038932:	01 f2                	add    %esi,%edx
c0038934:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038937:	0f 84 63 02 00 00    	je     c0038ba0 <_realloc_r+0x480>
c003893d:	83 eb 04             	sub    $0x4,%ebx
c0038940:	83 fb 24             	cmp    $0x24,%ebx
c0038943:	0f 87 6f 01 00 00    	ja     c0038ab8 <_realloc_r+0x398>
c0038949:	83 fb 13             	cmp    $0x13,%ebx
c003894c:	0f 87 ee 00 00 00    	ja     c0038a40 <_realloc_r+0x320>
c0038952:	89 c8                	mov    %ecx,%eax
c0038954:	89 fa                	mov    %edi,%edx
c0038956:	8b 1a                	mov    (%edx),%ebx
c0038958:	89 18                	mov    %ebx,(%eax)
c003895a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003895d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038960:	8b 52 08             	mov    0x8(%edx),%edx
c0038963:	89 50 08             	mov    %edx,0x8(%eax)
c0038966:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038969:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003896d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038970:	89 34 24             	mov    %esi,(%esp)
c0038973:	e8 b8 fa ff ff       	call   c0038430 <_free_r>
c0038978:	89 34 24             	mov    %esi,(%esp)
c003897b:	e8 d0 d9 ff ff       	call   c0036350 <__malloc_unlock>
c0038980:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038983:	83 c4 3c             	add    $0x3c,%esp
c0038986:	5b                   	pop    %ebx
c0038987:	5e                   	pop    %esi
c0038988:	5f                   	pop    %edi
c0038989:	89 c8                	mov    %ecx,%eax
c003898b:	5d                   	pop    %ebp
c003898c:	c3                   	ret    
c003898d:	8d 76 00             	lea    0x0(%esi),%esi
c0038990:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038993:	83 c4 3c             	add    $0x3c,%esp
c0038996:	5b                   	pop    %ebx
c0038997:	5e                   	pop    %esi
c0038998:	5f                   	pop    %edi
c0038999:	5d                   	pop    %ebp
c003899a:	e9 c1 d1 ff ff       	jmp    c0035b60 <_malloc_r>
c003899f:	90                   	nop
c00389a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00389a3:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00389a9:	31 c0                	xor    %eax,%eax
c00389ab:	e9 f7 fe ff ff       	jmp    c00388a7 <_realloc_r+0x187>
c00389b0:	89 c2                	mov    %eax,%edx
c00389b2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00389b5:	0f 8c 4d ff ff ff    	jl     c0038908 <_realloc_r+0x1e8>
c00389bb:	8b 71 08             	mov    0x8(%ecx),%esi
c00389be:	83 eb 04             	sub    $0x4,%ebx
c00389c1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00389c4:	83 fb 24             	cmp    $0x24,%ebx
c00389c7:	89 46 0c             	mov    %eax,0xc(%esi)
c00389ca:	89 70 08             	mov    %esi,0x8(%eax)
c00389cd:	8d 71 08             	lea    0x8(%ecx),%esi
c00389d0:	0f 87 88 00 00 00    	ja     c0038a5e <_realloc_r+0x33e>
c00389d6:	83 fb 13             	cmp    $0x13,%ebx
c00389d9:	89 f0                	mov    %esi,%eax
c00389db:	76 1a                	jbe    c00389f7 <_realloc_r+0x2d7>
c00389dd:	8b 07                	mov    (%edi),%eax
c00389df:	83 fb 1b             	cmp    $0x1b,%ebx
c00389e2:	89 41 08             	mov    %eax,0x8(%ecx)
c00389e5:	8b 47 04             	mov    0x4(%edi),%eax
c00389e8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00389eb:	0f 87 17 02 00 00    	ja     c0038c08 <_realloc_r+0x4e8>
c00389f1:	8d 41 10             	lea    0x10(%ecx),%eax
c00389f4:	83 c7 08             	add    $0x8,%edi
c00389f7:	8b 1f                	mov    (%edi),%ebx
c00389f9:	89 18                	mov    %ebx,(%eax)
c00389fb:	8b 5f 04             	mov    0x4(%edi),%ebx
c00389fe:	89 58 04             	mov    %ebx,0x4(%eax)
c0038a01:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038a04:	89 f7                	mov    %esi,%edi
c0038a06:	89 ce                	mov    %ecx,%esi
c0038a08:	89 58 08             	mov    %ebx,0x8(%eax)
c0038a0b:	89 d3                	mov    %edx,%ebx
c0038a0d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038a10:	e9 6e fe ff ff       	jmp    c0038883 <_realloc_r+0x163>
c0038a15:	8d 76 00             	lea    0x0(%esi),%esi
c0038a18:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0038a1b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0038a1e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038a21:	83 c2 10             	add    $0x10,%edx
c0038a24:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038a27:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c0038a2b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c0038a2e:	01 d9                	add    %ebx,%ecx
c0038a30:	39 d1                	cmp    %edx,%ecx
c0038a32:	7d 54                	jge    c0038a88 <_realloc_r+0x368>
c0038a34:	89 c2                	mov    %eax,%edx
c0038a36:	e9 8a fd ff ff       	jmp    c00387c5 <_realloc_r+0xa5>
c0038a3b:	90                   	nop
c0038a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038a40:	8b 07                	mov    (%edi),%eax
c0038a42:	83 fb 1b             	cmp    $0x1b,%ebx
c0038a45:	89 01                	mov    %eax,(%ecx)
c0038a47:	8b 47 04             	mov    0x4(%edi),%eax
c0038a4a:	89 41 04             	mov    %eax,0x4(%ecx)
c0038a4d:	0f 87 2d 01 00 00    	ja     c0038b80 <_realloc_r+0x460>
c0038a53:	8d 41 08             	lea    0x8(%ecx),%eax
c0038a56:	8d 57 08             	lea    0x8(%edi),%edx
c0038a59:	e9 f8 fe ff ff       	jmp    c0038956 <_realloc_r+0x236>
c0038a5e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038a62:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038a66:	89 f7                	mov    %esi,%edi
c0038a68:	89 34 24             	mov    %esi,(%esp)
c0038a6b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038a6e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038a71:	e8 1a fc ff ff       	call   c0038690 <memmove>
c0038a76:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038a79:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0038a7c:	8b 41 04             	mov    0x4(%ecx),%eax
c0038a7f:	89 ce                	mov    %ecx,%esi
c0038a81:	89 d3                	mov    %edx,%ebx
c0038a83:	e9 fb fd ff ff       	jmp    c0038883 <_realloc_r+0x163>
c0038a88:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038a8b:	29 d9                	sub    %ebx,%ecx
c0038a8d:	01 de                	add    %ebx,%esi
c0038a8f:	83 c9 01             	or     $0x1,%ecx
c0038a92:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038a98:	89 4e 04             	mov    %ecx,0x4(%esi)
c0038a9b:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038a9e:	83 e0 01             	and    $0x1,%eax
c0038aa1:	09 d8                	or     %ebx,%eax
c0038aa3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038aa6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038aa9:	89 04 24             	mov    %eax,(%esp)
c0038aac:	e8 9f d8 ff ff       	call   c0036350 <__malloc_unlock>
c0038ab1:	89 f8                	mov    %edi,%eax
c0038ab3:	e9 ef fd ff ff       	jmp    c00388a7 <_realloc_r+0x187>
c0038ab8:	89 0c 24             	mov    %ecx,(%esp)
c0038abb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038abf:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038ac3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038ac6:	e8 c5 fb ff ff       	call   c0038690 <memmove>
c0038acb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038ace:	e9 93 fe ff ff       	jmp    c0038966 <_realloc_r+0x246>
c0038ad3:	90                   	nop
c0038ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038ad8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038adb:	e9 d2 fe ff ff       	jmp    c00389b2 <_realloc_r+0x292>
c0038ae0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038ae3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038ae6:	01 d0                	add    %edx,%eax
c0038ae8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038aeb:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0038aee:	83 c0 10             	add    $0x10,%eax
c0038af1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038af4:	0f 8c b8 fe ff ff    	jl     c00389b2 <_realloc_r+0x292>
c0038afa:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038afd:	83 eb 04             	sub    $0x4,%ebx
c0038b00:	8b 51 08             	mov    0x8(%ecx),%edx
c0038b03:	83 fb 24             	cmp    $0x24,%ebx
c0038b06:	8d 71 08             	lea    0x8(%ecx),%esi
c0038b09:	89 42 0c             	mov    %eax,0xc(%edx)
c0038b0c:	89 50 08             	mov    %edx,0x8(%eax)
c0038b0f:	0f 87 3d 01 00 00    	ja     c0038c52 <_realloc_r+0x532>
c0038b15:	83 fb 13             	cmp    $0x13,%ebx
c0038b18:	89 f0                	mov    %esi,%eax
c0038b1a:	76 1a                	jbe    c0038b36 <_realloc_r+0x416>
c0038b1c:	8b 07                	mov    (%edi),%eax
c0038b1e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038b21:	89 41 08             	mov    %eax,0x8(%ecx)
c0038b24:	8b 47 04             	mov    0x4(%edi),%eax
c0038b27:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038b2a:	0f 87 3d 01 00 00    	ja     c0038c6d <_realloc_r+0x54d>
c0038b30:	8d 41 10             	lea    0x10(%ecx),%eax
c0038b33:	83 c7 08             	add    $0x8,%edi
c0038b36:	8b 17                	mov    (%edi),%edx
c0038b38:	89 10                	mov    %edx,(%eax)
c0038b3a:	8b 57 04             	mov    0x4(%edi),%edx
c0038b3d:	89 50 04             	mov    %edx,0x4(%eax)
c0038b40:	8b 57 08             	mov    0x8(%edi),%edx
c0038b43:	89 50 08             	mov    %edx,0x8(%eax)
c0038b46:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038b49:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0038b4c:	89 d8                	mov    %ebx,%eax
c0038b4e:	29 df                	sub    %ebx,%edi
c0038b50:	01 c8                	add    %ecx,%eax
c0038b52:	83 cf 01             	or     $0x1,%edi
c0038b55:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c0038b5a:	89 78 04             	mov    %edi,0x4(%eax)
c0038b5d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038b60:	83 e0 01             	and    $0x1,%eax
c0038b63:	09 d8                	or     %ebx,%eax
c0038b65:	89 41 04             	mov    %eax,0x4(%ecx)
c0038b68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038b6b:	89 04 24             	mov    %eax,(%esp)
c0038b6e:	e8 dd d7 ff ff       	call   c0036350 <__malloc_unlock>
c0038b73:	89 f0                	mov    %esi,%eax
c0038b75:	e9 2d fd ff ff       	jmp    c00388a7 <_realloc_r+0x187>
c0038b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038b80:	8b 47 08             	mov    0x8(%edi),%eax
c0038b83:	83 fb 24             	cmp    $0x24,%ebx
c0038b86:	89 41 08             	mov    %eax,0x8(%ecx)
c0038b89:	8b 47 0c             	mov    0xc(%edi),%eax
c0038b8c:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038b8f:	74 60                	je     c0038bf1 <_realloc_r+0x4d1>
c0038b91:	8d 41 10             	lea    0x10(%ecx),%eax
c0038b94:	8d 57 10             	lea    0x10(%edi),%edx
c0038b97:	e9 ba fd ff ff       	jmp    c0038956 <_realloc_r+0x236>
c0038b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038ba0:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038ba3:	83 e2 fc             	and    $0xfffffffc,%edx
c0038ba6:	01 d3                	add    %edx,%ebx
c0038ba8:	e9 d6 fc ff ff       	jmp    c0038883 <_realloc_r+0x163>
c0038bad:	8d 76 00             	lea    0x0(%esi),%esi
c0038bb0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038bb4:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038bb8:	89 f7                	mov    %esi,%edi
c0038bba:	89 34 24             	mov    %esi,(%esp)
c0038bbd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038bc0:	e8 cb fa ff ff       	call   c0038690 <memmove>
c0038bc5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038bc8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038bcb:	8b 41 04             	mov    0x4(%ecx),%eax
c0038bce:	89 ce                	mov    %ecx,%esi
c0038bd0:	e9 ae fc ff ff       	jmp    c0038883 <_realloc_r+0x163>
c0038bd5:	8b 47 08             	mov    0x8(%edi),%eax
c0038bd8:	83 fb 24             	cmp    $0x24,%ebx
c0038bdb:	89 41 10             	mov    %eax,0x10(%ecx)
c0038bde:	8b 47 0c             	mov    0xc(%edi),%eax
c0038be1:	89 41 14             	mov    %eax,0x14(%ecx)
c0038be4:	74 3e                	je     c0038c24 <_realloc_r+0x504>
c0038be6:	8d 41 18             	lea    0x18(%ecx),%eax
c0038be9:	83 c7 10             	add    $0x10,%edi
c0038bec:	e9 5b fc ff ff       	jmp    c003884c <_realloc_r+0x12c>
c0038bf1:	8b 47 10             	mov    0x10(%edi),%eax
c0038bf4:	8d 57 18             	lea    0x18(%edi),%edx
c0038bf7:	89 41 10             	mov    %eax,0x10(%ecx)
c0038bfa:	8b 5f 14             	mov    0x14(%edi),%ebx
c0038bfd:	8d 41 18             	lea    0x18(%ecx),%eax
c0038c00:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038c03:	e9 4e fd ff ff       	jmp    c0038956 <_realloc_r+0x236>
c0038c08:	8b 47 08             	mov    0x8(%edi),%eax
c0038c0b:	83 fb 24             	cmp    $0x24,%ebx
c0038c0e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038c11:	8b 47 0c             	mov    0xc(%edi),%eax
c0038c14:	89 41 14             	mov    %eax,0x14(%ecx)
c0038c17:	74 22                	je     c0038c3b <_realloc_r+0x51b>
c0038c19:	8d 41 18             	lea    0x18(%ecx),%eax
c0038c1c:	83 c7 10             	add    $0x10,%edi
c0038c1f:	e9 d3 fd ff ff       	jmp    c00389f7 <_realloc_r+0x2d7>
c0038c24:	8b 47 10             	mov    0x10(%edi),%eax
c0038c27:	83 c7 18             	add    $0x18,%edi
c0038c2a:	89 41 18             	mov    %eax,0x18(%ecx)
c0038c2d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038c30:	8d 41 20             	lea    0x20(%ecx),%eax
c0038c33:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038c36:	e9 11 fc ff ff       	jmp    c003884c <_realloc_r+0x12c>
c0038c3b:	8b 47 10             	mov    0x10(%edi),%eax
c0038c3e:	83 c7 18             	add    $0x18,%edi
c0038c41:	89 41 18             	mov    %eax,0x18(%ecx)
c0038c44:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038c47:	8d 41 20             	lea    0x20(%ecx),%eax
c0038c4a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c0038c4d:	e9 a5 fd ff ff       	jmp    c00389f7 <_realloc_r+0x2d7>
c0038c52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038c56:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038c5a:	89 34 24             	mov    %esi,(%esp)
c0038c5d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038c60:	e8 2b fa ff ff       	call   c0038690 <memmove>
c0038c65:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038c68:	e9 d9 fe ff ff       	jmp    c0038b46 <_realloc_r+0x426>
c0038c6d:	8b 47 08             	mov    0x8(%edi),%eax
c0038c70:	83 fb 24             	cmp    $0x24,%ebx
c0038c73:	89 41 10             	mov    %eax,0x10(%ecx)
c0038c76:	8b 47 0c             	mov    0xc(%edi),%eax
c0038c79:	89 41 14             	mov    %eax,0x14(%ecx)
c0038c7c:	74 1d                	je     c0038c9b <_realloc_r+0x57b>
c0038c7e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038c81:	83 c7 10             	add    $0x10,%edi
c0038c84:	e9 ad fe ff ff       	jmp    c0038b36 <_realloc_r+0x416>
c0038c89:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038c8c:	89 04 24             	mov    %eax,(%esp)
c0038c8f:	e8 bc d6 ff ff       	call   c0036350 <__malloc_unlock>
c0038c94:	31 c0                	xor    %eax,%eax
c0038c96:	e9 0c fc ff ff       	jmp    c00388a7 <_realloc_r+0x187>
c0038c9b:	8b 47 10             	mov    0x10(%edi),%eax
c0038c9e:	83 c7 18             	add    $0x18,%edi
c0038ca1:	89 41 18             	mov    %eax,0x18(%ecx)
c0038ca4:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038ca7:	8d 41 20             	lea    0x20(%ecx),%eax
c0038caa:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038cad:	e9 84 fe ff ff       	jmp    c0038b36 <_realloc_r+0x416>
c0038cb2:	66 90                	xchg   %ax,%ax
c0038cb4:	66 90                	xchg   %ax,%ax
c0038cb6:	66 90                	xchg   %ax,%ax
c0038cb8:	66 90                	xchg   %ax,%ax
c0038cba:	66 90                	xchg   %ax,%ax
c0038cbc:	66 90                	xchg   %ax,%ax
c0038cbe:	66 90                	xchg   %ax,%ax

c0038cc0 <cleanup_glue>:
c0038cc0:	55                   	push   %ebp
c0038cc1:	89 e5                	mov    %esp,%ebp
c0038cc3:	56                   	push   %esi
c0038cc4:	53                   	push   %ebx
c0038cc5:	83 ec 10             	sub    $0x10,%esp
c0038cc8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0038ccb:	8b 75 08             	mov    0x8(%ebp),%esi
c0038cce:	8b 03                	mov    (%ebx),%eax
c0038cd0:	85 c0                	test   %eax,%eax
c0038cd2:	74 0c                	je     c0038ce0 <cleanup_glue+0x20>
c0038cd4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038cd8:	89 34 24             	mov    %esi,(%esp)
c0038cdb:	e8 e0 ff ff ff       	call   c0038cc0 <cleanup_glue>
c0038ce0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038ce3:	89 75 08             	mov    %esi,0x8(%ebp)
c0038ce6:	83 c4 10             	add    $0x10,%esp
c0038ce9:	5b                   	pop    %ebx
c0038cea:	5e                   	pop    %esi
c0038ceb:	5d                   	pop    %ebp
c0038cec:	e9 3f f7 ff ff       	jmp    c0038430 <_free_r>
c0038cf1:	eb 0d                	jmp    c0038d00 <_reclaim_reent>
c0038cf3:	90                   	nop
c0038cf4:	90                   	nop
c0038cf5:	90                   	nop
c0038cf6:	90                   	nop
c0038cf7:	90                   	nop
c0038cf8:	90                   	nop
c0038cf9:	90                   	nop
c0038cfa:	90                   	nop
c0038cfb:	90                   	nop
c0038cfc:	90                   	nop
c0038cfd:	90                   	nop
c0038cfe:	90                   	nop
c0038cff:	90                   	nop

c0038d00 <_reclaim_reent>:
c0038d00:	55                   	push   %ebp
c0038d01:	89 e5                	mov    %esp,%ebp
c0038d03:	57                   	push   %edi
c0038d04:	56                   	push   %esi
c0038d05:	53                   	push   %ebx
c0038d06:	83 ec 1c             	sub    $0x1c,%esp
c0038d09:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0038d0c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038d12:	0f 84 a6 00 00 00    	je     c0038dbe <_reclaim_reent+0xbe>
c0038d18:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038d1b:	85 d2                	test   %edx,%edx
c0038d1d:	74 46                	je     c0038d65 <_reclaim_reent+0x65>
c0038d1f:	31 c0                	xor    %eax,%eax
c0038d21:	31 f6                	xor    %esi,%esi
c0038d23:	90                   	nop
c0038d24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038d28:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0038d2b:	85 c0                	test   %eax,%eax
c0038d2d:	75 0b                	jne    c0038d3a <_reclaim_reent+0x3a>
c0038d2f:	eb 1e                	jmp    c0038d4f <_reclaim_reent+0x4f>
c0038d31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038d38:	89 f8                	mov    %edi,%eax
c0038d3a:	8b 38                	mov    (%eax),%edi
c0038d3c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d40:	89 1c 24             	mov    %ebx,(%esp)
c0038d43:	e8 e8 f6 ff ff       	call   c0038430 <_free_r>
c0038d48:	85 ff                	test   %edi,%edi
c0038d4a:	75 ec                	jne    c0038d38 <_reclaim_reent+0x38>
c0038d4c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038d4f:	83 c6 01             	add    $0x1,%esi
c0038d52:	83 fe 20             	cmp    $0x20,%esi
c0038d55:	89 f0                	mov    %esi,%eax
c0038d57:	75 cf                	jne    c0038d28 <_reclaim_reent+0x28>
c0038d59:	89 54 24 04          	mov    %edx,0x4(%esp)
c0038d5d:	89 1c 24             	mov    %ebx,(%esp)
c0038d60:	e8 cb f6 ff ff       	call   c0038430 <_free_r>
c0038d65:	8b 43 40             	mov    0x40(%ebx),%eax
c0038d68:	85 c0                	test   %eax,%eax
c0038d6a:	74 0c                	je     c0038d78 <_reclaim_reent+0x78>
c0038d6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d70:	89 1c 24             	mov    %ebx,(%esp)
c0038d73:	e8 b8 f6 ff ff       	call   c0038430 <_free_r>
c0038d78:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0038d7e:	85 c0                	test   %eax,%eax
c0038d80:	74 22                	je     c0038da4 <_reclaim_reent+0xa4>
c0038d82:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038d88:	39 f0                	cmp    %esi,%eax
c0038d8a:	75 06                	jne    c0038d92 <_reclaim_reent+0x92>
c0038d8c:	eb 16                	jmp    c0038da4 <_reclaim_reent+0xa4>
c0038d8e:	66 90                	xchg   %ax,%ax
c0038d90:	89 f8                	mov    %edi,%eax
c0038d92:	8b 38                	mov    (%eax),%edi
c0038d94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038d98:	89 1c 24             	mov    %ebx,(%esp)
c0038d9b:	e8 90 f6 ff ff       	call   c0038430 <_free_r>
c0038da0:	39 fe                	cmp    %edi,%esi
c0038da2:	75 ec                	jne    c0038d90 <_reclaim_reent+0x90>
c0038da4:	8b 43 54             	mov    0x54(%ebx),%eax
c0038da7:	85 c0                	test   %eax,%eax
c0038da9:	74 0c                	je     c0038db7 <_reclaim_reent+0xb7>
c0038dab:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038daf:	89 1c 24             	mov    %ebx,(%esp)
c0038db2:	e8 79 f6 ff ff       	call   c0038430 <_free_r>
c0038db7:	8b 43 38             	mov    0x38(%ebx),%eax
c0038dba:	85 c0                	test   %eax,%eax
c0038dbc:	75 08                	jne    c0038dc6 <_reclaim_reent+0xc6>
c0038dbe:	83 c4 1c             	add    $0x1c,%esp
c0038dc1:	5b                   	pop    %ebx
c0038dc2:	5e                   	pop    %esi
c0038dc3:	5f                   	pop    %edi
c0038dc4:	5d                   	pop    %ebp
c0038dc5:	c3                   	ret    
c0038dc6:	89 1c 24             	mov    %ebx,(%esp)
c0038dc9:	ff 53 3c             	call   *0x3c(%ebx)
c0038dcc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038dd2:	85 c0                	test   %eax,%eax
c0038dd4:	74 e8                	je     c0038dbe <_reclaim_reent+0xbe>
c0038dd6:	89 1c 24             	mov    %ebx,(%esp)
c0038dd9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038ddd:	e8 de fe ff ff       	call   c0038cc0 <cleanup_glue>
c0038de2:	83 c4 1c             	add    $0x1c,%esp
c0038de5:	5b                   	pop    %ebx
c0038de6:	5e                   	pop    %esi
c0038de7:	5f                   	pop    %edi
c0038de8:	5d                   	pop    %ebp
c0038de9:	c3                   	ret    
