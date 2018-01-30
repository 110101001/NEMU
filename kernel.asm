
kernel/kernel:     file format elf32-i386


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
c003002f:	e9 35 15 00 00       	jmp    c0031569 <init>

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
c00300cc:	e8 2f 0d 00 00       	call   c0030e00 <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <fs_open>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	53                   	push   %ebx
c00300dd:	83 ec 14             	sub    $0x14,%esp
c00300e0:	e8 4b 04 00 00       	call   c0030530 <__x86.get_pc_thunk.bx>
c00300e5:	81 c3 1b bf 00 00    	add    $0xbf1b,%ebx
c00300eb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00300f2:	eb 68                	jmp    c003015c <fs_open+0x83>
c00300f4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00300f7:	8d 8b c0 fe ff ff    	lea    -0x140(%ebx),%ecx
c00300fd:	89 d0                	mov    %edx,%eax
c00300ff:	01 c0                	add    %eax,%eax
c0030101:	01 d0                	add    %edx,%eax
c0030103:	c1 e0 02             	shl    $0x2,%eax
c0030106:	01 c8                	add    %ecx,%eax
c0030108:	8b 00                	mov    (%eax),%eax
c003010a:	83 ec 08             	sub    $0x8,%esp
c003010d:	ff 75 08             	pushl  0x8(%ebp)
c0030110:	50                   	push   %eax
c0030111:	e8 da 20 00 00       	call   c00321f0 <strcmp>
c0030116:	83 c4 10             	add    $0x10,%esp
c0030119:	85 c0                	test   %eax,%eax
c003011b:	75 3c                	jne    c0030159 <fs_open+0x80>
c003011d:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030123:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030126:	89 d0                	mov    %edx,%eax
c0030128:	01 c0                	add    %eax,%eax
c003012a:	01 d0                	add    %edx,%eax
c003012c:	c1 e0 02             	shl    $0x2,%eax
c003012f:	01 c8                	add    %ecx,%eax
c0030131:	c6 00 01             	movb   $0x1,(%eax)
c0030134:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003013a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003013d:	89 d0                	mov    %edx,%eax
c003013f:	01 c0                	add    %eax,%eax
c0030141:	01 d0                	add    %edx,%eax
c0030143:	c1 e0 02             	shl    $0x2,%eax
c0030146:	01 c8                	add    %ecx,%eax
c0030148:	83 c0 08             	add    $0x8,%eax
c003014b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0030151:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030154:	83 c0 03             	add    $0x3,%eax
c0030157:	eb 3f                	jmp    c0030198 <fs_open+0xbf>
c0030159:	ff 45 f4             	incl   -0xc(%ebp)
c003015c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003015f:	83 f8 18             	cmp    $0x18,%eax
c0030162:	76 90                	jbe    c00300f4 <fs_open+0x1b>
c0030164:	83 ec 0c             	sub    $0xc,%esp
c0030167:	8d 83 a3 ca ff ff    	lea    -0x355d(%ebx),%eax
c003016d:	50                   	push   %eax
c003016e:	8d 83 10 cb ff ff    	lea    -0x34f0(%ebx),%eax
c0030174:	50                   	push   %eax
c0030175:	6a 36                	push   $0x36
c0030177:	8d 83 a5 ca ff ff    	lea    -0x355b(%ebx),%eax
c003017d:	50                   	push   %eax
c003017e:	8d 83 b4 ca ff ff    	lea    -0x354c(%ebx),%eax
c0030184:	50                   	push   %eax
c0030185:	e8 ce 14 00 00       	call   c0031658 <printk>
c003018a:	83 c4 20             	add    $0x20,%esp
c003018d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030192:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0030199:	5d                   	pop    %ebp
c003019a:	fc                   	cld    
c003019b:	c9                   	leave  
c003019c:	c3                   	ret    

c003019d <fs_read>:
c003019d:	55                   	push   %ebp
c003019e:	89 e5                	mov    %esp,%ebp
c00301a0:	56                   	push   %esi
c00301a1:	53                   	push   %ebx
c00301a2:	e8 89 03 00 00       	call   c0030530 <__x86.get_pc_thunk.bx>
c00301a7:	81 c3 59 be 00 00    	add    $0xbe59,%ebx
c00301ad:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00301b1:	7f 2f                	jg     c00301e2 <fs_read+0x45>
c00301b3:	83 ec 0c             	sub    $0xc,%esp
c00301b6:	8d 83 fe ca ff ff    	lea    -0x3502(%ebx),%eax
c00301bc:	50                   	push   %eax
c00301bd:	8d 83 18 cb ff ff    	lea    -0x34e8(%ebx),%eax
c00301c3:	50                   	push   %eax
c00301c4:	6a 3b                	push   $0x3b
c00301c6:	8d 83 a5 ca ff ff    	lea    -0x355b(%ebx),%eax
c00301cc:	50                   	push   %eax
c00301cd:	8d 83 b4 ca ff ff    	lea    -0x354c(%ebx),%eax
c00301d3:	50                   	push   %eax
c00301d4:	e8 7f 14 00 00       	call   c0031658 <printk>
c00301d9:	83 c4 20             	add    $0x20,%esp
c00301dc:	b8 01 00 00 00       	mov    $0x1,%eax
c00301e1:	82 f1 c7             	xor    $0xc7,%cl
c00301e4:	c1 60 f0 06          	shll   $0x6,-0x10(%eax)
c00301e8:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00301ef:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00301f2:	c1 e0 02             	shl    $0x2,%eax
c00301f5:	01 c8                	add    %ecx,%eax
c00301f7:	83 c0 08             	add    $0x8,%eax
c00301fa:	8b 10                	mov    (%eax),%edx
c00301fc:	8b 45 10             	mov    0x10(%ebp),%eax
c00301ff:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030202:	8b 45 08             	mov    0x8(%ebp),%eax
c0030205:	8d 48 fd             	lea    -0x3(%eax),%ecx
c0030208:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c003020e:	89 c8                	mov    %ecx,%eax
c0030210:	01 c0                	add    %eax,%eax
c0030212:	01 c8                	add    %ecx,%eax
c0030214:	c1 e0 02             	shl    $0x2,%eax
c0030217:	01 d0                	add    %edx,%eax
c0030219:	8b 00                	mov    (%eax),%eax
c003021b:	39 c6                	cmp    %eax,%esi
c003021d:	0f 87 86 00 00 00    	ja     c00302a9 <fs_read+0x10c>
c0030223:	8b 45 08             	mov    0x8(%ebp),%eax
c0030226:	8d 48 fd             	lea    -0x3(%eax),%ecx
c0030229:	8d 93 c8 fe ff ff    	lea    -0x138(%ebx),%edx
c003022f:	89 c8                	mov    %ecx,%eax
c0030231:	01 c0                	add    %eax,%eax
c0030233:	01 c8                	add    %ecx,%eax
c0030235:	c1 e0 02             	shl    $0x2,%eax
c0030238:	01 d0                	add    %edx,%eax
c003023a:	8b 08                	mov    (%eax),%ecx
c003023c:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030242:	8b 55 08             	mov    0x8(%ebp),%edx
c0030245:	89 d0                	mov    %edx,%eax
c0030247:	01 c0                	add    %eax,%eax
c0030249:	01 d0                	add    %edx,%eax
c003024b:	c1 e0 02             	shl    $0x2,%eax
c003024e:	01 f0                	add    %esi,%eax
c0030250:	83 c0 08             	add    $0x8,%eax
c0030253:	8b 00                	mov    (%eax),%eax
c0030255:	01 c8                	add    %ecx,%eax
c0030257:	83 ec 04             	sub    $0x4,%esp
c003025a:	ff 75 10             	pushl  0x10(%ebp)
c003025d:	50                   	push   %eax
c003025e:	ff 75 0c             	pushl  0xc(%ebp)
c0030261:	e8 3a 16 00 00       	call   c00318a0 <ide_read>
c0030266:	83 c4 10             	add    $0x10,%esp
c0030269:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003026f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030272:	89 d0                	mov    %edx,%eax
c0030274:	01 c0                	add    %eax,%eax
c0030276:	01 d0                	add    %edx,%eax
c0030278:	c1 e0 02             	shl    $0x2,%eax
c003027b:	01 c8                	add    %ecx,%eax
c003027d:	83 c0 08             	add    $0x8,%eax
c0030280:	8b 10                	mov    (%eax),%edx
c0030282:	8b 45 10             	mov    0x10(%ebp),%eax
c0030285:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0030288:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c003028e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030291:	89 d0                	mov    %edx,%eax
c0030293:	01 c0                	add    %eax,%eax
c0030295:	01 d0                	add    %edx,%eax
c0030297:	c1 e0 02             	shl    $0x2,%eax
c003029a:	01 d8                	add    %ebx,%eax
c003029c:	83 c0 08             	add    $0x8,%eax
c003029f:	89 08                	mov    %ecx,(%eax)
c00302a1:	8b 45 10             	mov    0x10(%ebp),%eax
c00302a4:	e9 ba 00 00 00       	jmp    c0030363 <fs_read+0x1c6>
c00302a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00302ac:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00302af:	8d 93 c4 fe ff ff    	lea    -0x13c(%ebx),%edx
c00302b5:	89 c8                	mov    %ecx,%eax
c00302b7:	01 c0                	add    %eax,%eax
c00302b9:	01 c8                	add    %ecx,%eax
c00302bb:	c1 e0 02             	shl    $0x2,%eax
c00302be:	01 d0                	add    %edx,%eax
c00302c0:	8b 08                	mov    (%eax),%ecx
c00302c2:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00302c8:	8b 55 08             	mov    0x8(%ebp),%edx
c00302cb:	89 d0                	mov    %edx,%eax
c00302cd:	01 c0                	add    %eax,%eax
c00302cf:	01 d0                	add    %edx,%eax
c00302d1:	c1 e0 02             	shl    $0x2,%eax
c00302d4:	01 f0                	add    %esi,%eax
c00302d6:	83 c0 08             	add    $0x8,%eax
c00302d9:	8b 00                	mov    (%eax),%eax
c00302db:	29 c1                	sub    %eax,%ecx
c00302dd:	89 c8                	mov    %ecx,%eax
c00302df:	89 45 10             	mov    %eax,0x10(%ebp)
c00302e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00302e5:	8d 48 fd             	lea    -0x3(%eax),%ecx
c00302e8:	8d 93 c8 fe ff ff    	lea    -0x138(%ebx),%edx
c00302ee:	89 c8                	mov    %ecx,%eax
c00302f0:	01 c0                	add    %eax,%eax
c00302f2:	01 c8                	add    %ecx,%eax
c00302f4:	c1 e0 02             	shl    $0x2,%eax
c00302f7:	01 d0                	add    %edx,%eax
c00302f9:	8b 08                	mov    (%eax),%ecx
c00302fb:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030301:	8b 55 08             	mov    0x8(%ebp),%edx
c0030304:	89 d0                	mov    %edx,%eax
c0030306:	01 c0                	add    %eax,%eax
c0030308:	01 d0                	add    %edx,%eax
c003030a:	c1 e0 02             	shl    $0x2,%eax
c003030d:	01 f0                	add    %esi,%eax
c003030f:	83 c0 08             	add    $0x8,%eax
c0030312:	8b 00                	mov    (%eax),%eax
c0030314:	01 c8                	add    %ecx,%eax
c0030316:	83 ec 04             	sub    $0x4,%esp
c0030319:	ff 75 10             	pushl  0x10(%ebp)
c003031c:	50                   	push   %eax
c003031d:	ff 75 0c             	pushl  0xc(%ebp)
c0030320:	e8 7b 15 00 00       	call   c00318a0 <ide_read>
c0030325:	83 c4 10             	add    $0x10,%esp
c0030328:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003032e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030331:	89 d0                	mov    %edx,%eax
c0030333:	01 c0                	add    %eax,%eax
c0030335:	01 d0                	add    %edx,%eax
c0030337:	c1 e0 02             	shl    $0x2,%eax
c003033a:	01 c8                	add    %ecx,%eax
c003033c:	83 c0 08             	add    $0x8,%eax
c003033f:	8b 10                	mov    (%eax),%edx
c0030341:	8b 45 10             	mov    0x10(%ebp),%eax
c0030344:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0030347:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c003034d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030350:	89 d0                	mov    %edx,%eax
c0030352:	01 c0                	add    %eax,%eax
c0030354:	01 d0                	add    %edx,%eax
c0030356:	c1 e0 02             	shl    $0x2,%eax
c0030359:	01 d8                	add    %ebx,%eax
c003035b:	83 c0 08             	add    $0x8,%eax
c003035e:	89 08                	mov    %ecx,(%eax)
c0030360:	8b 45 10             	mov    0x10(%ebp),%eax
c0030363:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030366:	5b                   	pop    %ebx
c0030367:	5e                   	pop    %esi
c0030368:	5d                   	pop    %ebp
c0030369:	c3                   	ret    

c003036a <fs_write>:
c003036a:	55                   	push   %ebp
c003036b:	89 e5                	mov    %esp,%ebp
c003036d:	53                   	push   %ebx
c003036e:	83 ec 14             	sub    $0x14,%esp
c0030371:	e8 ba 01 00 00       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030376:	81 c3 8a bc 00 00    	add    $0xbc8a,%ebx
c003037c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030380:	7e 2f                	jle    c00303b1 <fs_write+0x47>
c0030382:	83 ec 0c             	sub    $0xc,%esp
c0030385:	8d 83 05 cb ff ff    	lea    -0x34fb(%ebx),%eax
c003038b:	50                   	push   %eax
c003038c:	8d 83 20 cb ff ff    	lea    -0x34e0(%ebx),%eax
c0030392:	50                   	push   %eax
c0030393:	6a 4e                	push   $0x4e
c0030395:	8d 83 a5 ca ff ff    	lea    -0x355b(%ebx),%eax
c003039b:	50                   	push   %eax
c003039c:	8d 83 b4 ca ff ff    	lea    -0x354c(%ebx),%eax
c00303a2:	50                   	push   %eax
c00303a3:	e8 b0 12 00 00       	call   c0031658 <printk>
c00303a8:	83 c4 20             	add    $0x20,%esp
c00303ab:	b8 01 00 00 00       	mov    $0x1,%eax
c00303b0:	82 c7 45             	add    $0x45,%bh
c00303b3:	f4                   	hlt    
c00303b4:	00 00                	add    %al,(%eax)
c00303b6:	00 00                	add    %al,(%eax)
c00303b8:	eb 1c                	jmp    c00303d6 <fs_write+0x6c>
c00303ba:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00303bd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00303c0:	01 d0                	add    %edx,%eax
c00303c2:	8a 00                	mov    (%eax),%al
c00303c4:	0f be c0             	movsbl %al,%eax
c00303c7:	83 ec 0c             	sub    $0xc,%esp
c00303ca:	50                   	push   %eax
c00303cb:	e8 62 13 00 00       	call   c0031732 <serial_printc>
c00303d0:	83 c4 10             	add    $0x10,%esp
c00303d3:	ff 45 f4             	incl   -0xc(%ebp)
c00303d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303d9:	3b 45 10             	cmp    0x10(%ebp),%eax
c00303dc:	72 dc                	jb     c00303ba <fs_write+0x50>
c00303de:	8b 45 10             	mov    0x10(%ebp),%eax
c00303e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00303e4:	c9                   	leave  
c00303e5:	c3                   	ret    

c00303e6 <fs_lseek>:
c00303e6:	55                   	push   %ebp
c00303e7:	89 e5                	mov    %esp,%ebp
c00303e9:	56                   	push   %esi
c00303ea:	53                   	push   %ebx
c00303eb:	e8 38 01 00 00       	call   c0030528 <__x86.get_pc_thunk.ax>
c00303f0:	05 10 bc 00 00       	add    $0xbc10,%eax
c00303f5:	8b 55 10             	mov    0x10(%ebp),%edx
c00303f8:	83 fa 01             	cmp    $0x1,%edx
c00303fb:	74 31                	je     c003042e <fs_lseek+0x48>
c00303fd:	83 fa 02             	cmp    $0x2,%edx
c0030400:	74 7f                	je     c0030481 <fs_lseek+0x9b>
c0030402:	85 d2                	test   %edx,%edx
c0030404:	0f 85 ca 00 00 00    	jne    c00304d4 <fs_lseek+0xee>
c003040a:	8b 55 0c             	mov    0xc(%ebp),%edx
c003040d:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c0030413:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030416:	89 c8                	mov    %ecx,%eax
c0030418:	01 c0                	add    %eax,%eax
c003041a:	01 c8                	add    %ecx,%eax
c003041c:	c1 e0 02             	shl    $0x2,%eax
c003041f:	01 d8                	add    %ebx,%eax
c0030421:	83 c0 08             	add    $0x8,%eax
c0030424:	89 10                	mov    %edx,(%eax)
c0030426:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030429:	e9 ab 00 00 00       	jmp    c00304d9 <fs_lseek+0xf3>
c003042e:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c0030434:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030437:	89 ca                	mov    %ecx,%edx
c0030439:	01 d2                	add    %edx,%edx
c003043b:	01 ca                	add    %ecx,%edx
c003043d:	c1 e2 02             	shl    $0x2,%edx
c0030440:	01 da                	add    %ebx,%edx
c0030442:	83 c2 08             	add    $0x8,%edx
c0030445:	8b 0a                	mov    (%edx),%ecx
c0030447:	8b 55 0c             	mov    0xc(%ebp),%edx
c003044a:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
c003044d:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030453:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030456:	89 ca                	mov    %ecx,%edx
c0030458:	01 d2                	add    %edx,%edx
c003045a:	01 ca                	add    %ecx,%edx
c003045c:	c1 e2 02             	shl    $0x2,%edx
c003045f:	01 f2                	add    %esi,%edx
c0030461:	83 c2 08             	add    $0x8,%edx
c0030464:	89 1a                	mov    %ebx,(%edx)
c0030466:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c003046c:	8b 55 08             	mov    0x8(%ebp),%edx
c003046f:	89 d0                	mov    %edx,%eax
c0030471:	01 c0                	add    %eax,%eax
c0030473:	01 d0                	add    %edx,%eax
c0030475:	c1 e0 02             	shl    $0x2,%eax
c0030478:	01 c8                	add    %ecx,%eax
c003047a:	83 c0 08             	add    $0x8,%eax
c003047d:	8b 00                	mov    (%eax),%eax
c003047f:	eb 58                	jmp    c00304d9 <fs_lseek+0xf3>
c0030481:	8b 55 08             	mov    0x8(%ebp),%edx
c0030484:	8d 5a fd             	lea    -0x3(%edx),%ebx
c0030487:	8d 88 c4 fe ff ff    	lea    -0x13c(%eax),%ecx
c003048d:	89 da                	mov    %ebx,%edx
c003048f:	01 d2                	add    %edx,%edx
c0030491:	01 da                	add    %ebx,%edx
c0030493:	c1 e2 02             	shl    $0x2,%edx
c0030496:	01 ca                	add    %ecx,%edx
c0030498:	8b 0a                	mov    (%edx),%ecx
c003049a:	8b 55 0c             	mov    0xc(%ebp),%edx
c003049d:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
c00304a0:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00304a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00304a9:	89 ca                	mov    %ecx,%edx
c00304ab:	01 d2                	add    %edx,%edx
c00304ad:	01 ca                	add    %ecx,%edx
c00304af:	c1 e2 02             	shl    $0x2,%edx
c00304b2:	01 f2                	add    %esi,%edx
c00304b4:	83 c2 08             	add    $0x8,%edx
c00304b7:	89 1a                	mov    %ebx,(%edx)
c00304b9:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00304bf:	8b 55 08             	mov    0x8(%ebp),%edx
c00304c2:	89 d0                	mov    %edx,%eax
c00304c4:	01 c0                	add    %eax,%eax
c00304c6:	01 d0                	add    %edx,%eax
c00304c8:	c1 e0 02             	shl    $0x2,%eax
c00304cb:	01 c8                	add    %ecx,%eax
c00304cd:	83 c0 08             	add    $0x8,%eax
c00304d0:	8b 00                	mov    (%eax),%eax
c00304d2:	eb 05                	jmp    c00304d9 <fs_lseek+0xf3>
c00304d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00304d9:	5b                   	pop    %ebx
c00304da:	5e                   	pop    %esi
c00304db:	5d                   	pop    %ebp
c00304dc:	c3                   	ret    

c00304dd <fs_close>:
c00304dd:	55                   	push   %ebp
c00304de:	89 e5                	mov    %esp,%ebp
c00304e0:	53                   	push   %ebx
c00304e1:	e8 46 00 00 00       	call   c003052c <__x86.get_pc_thunk.dx>
c00304e6:	81 c2 1a bb 00 00    	add    $0xbb1a,%edx
c00304ec:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c00304f2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00304f5:	89 c8                	mov    %ecx,%eax
c00304f7:	01 c0                	add    %eax,%eax
c00304f9:	01 c8                	add    %ecx,%eax
c00304fb:	c1 e0 02             	shl    $0x2,%eax
c00304fe:	01 d8                	add    %ebx,%eax
c0030500:	c6 00 00             	movb   $0x0,(%eax)
c0030503:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030509:	8b 55 08             	mov    0x8(%ebp),%edx
c003050c:	89 d0                	mov    %edx,%eax
c003050e:	01 c0                	add    %eax,%eax
c0030510:	01 d0                	add    %edx,%eax
c0030512:	c1 e0 02             	shl    $0x2,%eax
c0030515:	01 c8                	add    %ecx,%eax
c0030517:	83 c0 08             	add    $0x8,%eax
c003051a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0030520:	b8 00 00 00 00       	mov    $0x0,%eax
c0030525:	5b                   	pop    %ebx
c0030526:	5d                   	pop    %ebp
c0030527:	c3                   	ret    

c0030528 <__x86.get_pc_thunk.ax>:
c0030528:	8b 04 24             	mov    (%esp),%eax
c003052b:	c3                   	ret    

c003052c <__x86.get_pc_thunk.dx>:
c003052c:	8b 14 24             	mov    (%esp),%edx
c003052f:	c3                   	ret    

c0030530 <__x86.get_pc_thunk.bx>:
c0030530:	8b 1c 24             	mov    (%esp),%ebx
c0030533:	c3                   	ret    

c0030534 <write_cr3>:
c0030534:	55                   	push   %ebp
c0030535:	89 e5                	mov    %esp,%ebp
c0030537:	e8 ec ff ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c003053c:	05 c4 ba 00 00       	add    $0xbac4,%eax
c0030541:	8b 45 08             	mov    0x8(%ebp),%eax
c0030544:	0f 22 d8             	mov    %eax,%cr3
c0030547:	90                   	nop
c0030548:	5d                   	pop    %ebp
c0030549:	c3                   	ret    

c003054a <loader>:
c003054a:	55                   	push   %ebp
c003054b:	89 e5                	mov    %esp,%ebp
c003054d:	53                   	push   %ebx
c003054e:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c0030554:	e8 d7 ff ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030559:	81 c3 a7 ba 00 00    	add    $0xbaa7,%ebx
c003055f:	83 ec 04             	sub    $0x4,%esp
c0030562:	68 00 10 00 00       	push   $0x1000
c0030567:	6a 00                	push   $0x0
c0030569:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c003056f:	50                   	push   %eax
c0030570:	e8 2b 13 00 00       	call   c00318a0 <ide_read>
c0030575:	83 c4 10             	add    $0x10,%esp
c0030578:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c003057e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030581:	8d 83 78 cb ff ff    	lea    -0x3488(%ebx),%eax
c0030587:	50                   	push   %eax
c0030588:	6a 19                	push   $0x19
c003058a:	8d 83 2c cb ff ff    	lea    -0x34d4(%ebx),%eax
c0030590:	50                   	push   %eax
c0030591:	8d 83 3c cb ff ff    	lea    -0x34c4(%ebx),%eax
c0030597:	50                   	push   %eax
c0030598:	e8 bb 10 00 00       	call   c0031658 <printk>
c003059d:	83 c4 10             	add    $0x10,%esp
c00305a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305a3:	8b 50 1c             	mov    0x1c(%eax),%edx
c00305a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305a9:	01 d0                	add    %edx,%eax
c00305ab:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305b1:	8b 40 2c             	mov    0x2c(%eax),%eax
c00305b4:	0f b7 c0             	movzwl %ax,%eax
c00305b7:	c1 e0 05             	shl    $0x5,%eax
c00305ba:	89 c2                	mov    %eax,%edx
c00305bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305bf:	01 d0                	add    %edx,%eax
c00305c1:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00305c4:	e9 af 00 00 00       	jmp    c0030678 <loader+0x12e>
c00305c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305cc:	8b 00                	mov    (%eax),%eax
c00305ce:	83 f8 01             	cmp    $0x1,%eax
c00305d1:	0f 85 9d 00 00 00    	jne    c0030674 <loader+0x12a>
c00305d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305da:	8b 40 14             	mov    0x14(%eax),%eax
c00305dd:	89 c2                	mov    %eax,%edx
c00305df:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305e2:	8b 40 08             	mov    0x8(%eax),%eax
c00305e5:	83 ec 08             	sub    $0x8,%esp
c00305e8:	52                   	push   %edx
c00305e9:	50                   	push   %eax
c00305ea:	e8 91 18 00 00       	call   c0031e80 <mm_malloc>
c00305ef:	83 c4 10             	add    $0x10,%esp
c00305f2:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00305f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305f8:	8b 48 10             	mov    0x10(%eax),%ecx
c00305fb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305fe:	8b 50 04             	mov    0x4(%eax),%edx
c0030601:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030604:	83 ec 04             	sub    $0x4,%esp
c0030607:	51                   	push   %ecx
c0030608:	52                   	push   %edx
c0030609:	50                   	push   %eax
c003060a:	e8 91 12 00 00       	call   c00318a0 <ide_read>
c003060f:	83 c4 10             	add    $0x10,%esp
c0030612:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030615:	8b 50 14             	mov    0x14(%eax),%edx
c0030618:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003061b:	8b 40 10             	mov    0x10(%eax),%eax
c003061e:	39 c2                	cmp    %eax,%edx
c0030620:	76 28                	jbe    c003064a <loader+0x100>
c0030622:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030625:	8b 50 14             	mov    0x14(%eax),%edx
c0030628:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003062b:	8b 40 10             	mov    0x10(%eax),%eax
c003062e:	29 c2                	sub    %eax,%edx
c0030630:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030633:	8b 48 10             	mov    0x10(%eax),%ecx
c0030636:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030639:	01 c8                	add    %ecx,%eax
c003063b:	83 ec 04             	sub    $0x4,%esp
c003063e:	52                   	push   %edx
c003063f:	6a 00                	push   $0x0
c0030641:	50                   	push   %eax
c0030642:	e8 15 1b 00 00       	call   c003215c <memset>
c0030647:	83 c4 10             	add    $0x10,%esp
c003064a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003064d:	8b 50 08             	mov    0x8(%eax),%edx
c0030650:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030653:	8b 40 14             	mov    0x14(%eax),%eax
c0030656:	01 d0                	add    %edx,%eax
c0030658:	48                   	dec    %eax
c0030659:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003065c:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c0030662:	8b 00                	mov    (%eax),%eax
c0030664:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0030667:	73 0b                	jae    c0030674 <loader+0x12a>
c0030669:	c7 c0 08 d0 03 c0    	mov    $0xc003d008,%eax
c003066f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0030672:	89 10                	mov    %edx,(%eax)
c0030674:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030678:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003067b:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c003067e:	0f 82 45 ff ff ff    	jb     c00305c9 <loader+0x7f>
c0030684:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030687:	8b 40 18             	mov    0x18(%eax),%eax
c003068a:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c0030690:	83 ec 08             	sub    $0x8,%esp
c0030693:	68 00 00 10 00       	push   $0x100000
c0030698:	68 00 00 f0 bf       	push   $0xbff00000
c003069d:	e8 de 17 00 00       	call   c0031e80 <mm_malloc>
c00306a2:	83 c4 10             	add    $0x10,%esp
c00306a5:	e8 1c 00 00 00       	call   c00306c6 <create_video_mapping>
c00306aa:	e8 ac 04 00 00       	call   c0030b5b <get_ucr3>
c00306af:	83 ec 0c             	sub    $0xc,%esp
c00306b2:	50                   	push   %eax
c00306b3:	e8 7c fe ff ff       	call   c0030534 <write_cr3>
c00306b8:	83 c4 10             	add    $0x10,%esp
c00306bb:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c00306c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00306c4:	c9                   	leave  
c00306c5:	c3                   	ret    

c00306c6 <create_video_mapping>:
c00306c6:	55                   	push   %ebp
c00306c7:	89 e5                	mov    %esp,%ebp
c00306c9:	56                   	push   %esi
c00306ca:	53                   	push   %ebx
c00306cb:	83 ec 10             	sub    $0x10,%esp
c00306ce:	e8 5d fe ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00306d3:	81 c3 2d b9 00 00    	add    $0xb92d,%ebx
c00306d9:	e8 68 04 00 00       	call   c0030b46 <get_updir>
c00306de:	05 00 00 00 40       	add    $0x40000000,%eax
c00306e3:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00306e6:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00306ec:	05 00 00 00 40       	add    $0x40000000,%eax
c00306f1:	c1 e8 0c             	shr    $0xc,%eax
c00306f4:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00306f9:	89 c2                	mov    %eax,%edx
c00306fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00306fe:	89 d1                	mov    %edx,%ecx
c0030700:	c1 e1 0c             	shl    $0xc,%ecx
c0030703:	8b 10                	mov    (%eax),%edx
c0030705:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c003070b:	09 ca                	or     %ecx,%edx
c003070d:	89 10                	mov    %edx,(%eax)
c003070f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030712:	8a 10                	mov    (%eax),%dl
c0030714:	83 ca 01             	or     $0x1,%edx
c0030717:	88 10                	mov    %dl,(%eax)
c0030719:	c7 45 f4 a0 00 00 00 	movl   $0xa0,-0xc(%ebp)
c0030720:	eb 3b                	jmp    c003075d <create_video_mapping+0x97>
c0030722:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030725:	25 ff ff 0f 00       	and    $0xfffff,%eax
c003072a:	89 c1                	mov    %eax,%ecx
c003072c:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0030732:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030735:	89 ce                	mov    %ecx,%esi
c0030737:	c1 e6 0c             	shl    $0xc,%esi
c003073a:	8b 0c 90             	mov    (%eax,%edx,4),%ecx
c003073d:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
c0030743:	09 f1                	or     %esi,%ecx
c0030745:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
c0030748:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c003074e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030751:	8a 0c 90             	mov    (%eax,%edx,4),%cl
c0030754:	83 c9 01             	or     $0x1,%ecx
c0030757:	88 0c 90             	mov    %cl,(%eax,%edx,4)
c003075a:	ff 45 f4             	incl   -0xc(%ebp)
c003075d:	81 7d f4 af 00 00 00 	cmpl   $0xaf,-0xc(%ebp)
c0030764:	7e bc                	jle    c0030722 <create_video_mapping+0x5c>
c0030766:	90                   	nop
c0030767:	83 c4 10             	add    $0x10,%esp
c003076a:	5b                   	pop    %ebx
c003076b:	5e                   	pop    %esi
c003076c:	5d                   	pop    %ebp
c003076d:	c3                   	ret    

c003076e <video_mapping_write_test>:
c003076e:	55                   	push   %ebp
c003076f:	89 e5                	mov    %esp,%ebp
c0030771:	83 ec 10             	sub    $0x10,%esp
c0030774:	e8 af fd ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030779:	05 87 b8 00 00       	add    $0xb887,%eax
c003077e:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0030785:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003078c:	eb 17                	jmp    c00307a5 <video_mapping_write_test+0x37>
c003078e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030791:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030798:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003079b:	01 c2                	add    %eax,%edx
c003079d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00307a0:	89 02                	mov    %eax,(%edx)
c00307a2:	ff 45 fc             	incl   -0x4(%ebp)
c00307a5:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00307ac:	7e e0                	jle    c003078e <video_mapping_write_test+0x20>
c00307ae:	90                   	nop
c00307af:	c9                   	leave  
c00307b0:	c3                   	ret    

c00307b1 <video_mapping_read_test>:
c00307b1:	55                   	push   %ebp
c00307b2:	89 e5                	mov    %esp,%ebp
c00307b4:	53                   	push   %ebx
c00307b5:	83 ec 14             	sub    $0x14,%esp
c00307b8:	e8 73 fd ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00307bd:	81 c3 43 b8 00 00    	add    $0xb843,%ebx
c00307c3:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00307ca:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00307d1:	eb 4a                	jmp    c003081d <video_mapping_read_test+0x6c>
c00307d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307d6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00307dd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00307e0:	01 d0                	add    %edx,%eax
c00307e2:	8b 10                	mov    (%eax),%edx
c00307e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307e7:	39 c2                	cmp    %eax,%edx
c00307e9:	74 2f                	je     c003081a <video_mapping_read_test+0x69>
c00307eb:	83 ec 0c             	sub    $0xc,%esp
c00307ee:	8d 83 80 cb ff ff    	lea    -0x3480(%ebx),%eax
c00307f4:	50                   	push   %eax
c00307f5:	8d 83 ec cb ff ff    	lea    -0x3414(%ebx),%eax
c00307fb:	50                   	push   %eax
c00307fc:	6a 2d                	push   $0x2d
c00307fe:	8d 83 8c cb ff ff    	lea    -0x3474(%ebx),%eax
c0030804:	50                   	push   %eax
c0030805:	8d 83 a0 cb ff ff    	lea    -0x3460(%ebx),%eax
c003080b:	50                   	push   %eax
c003080c:	e8 47 0e 00 00       	call   c0031658 <printk>
c0030811:	83 c4 20             	add    $0x20,%esp
c0030814:	b8 01 00 00 00       	mov    $0x1,%eax
c0030819:	82 ff 45             	cmp    $0x45,%bh
c003081c:	f4                   	hlt    
c003081d:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0030824:	7e ad                	jle    c00307d3 <video_mapping_read_test+0x22>
c0030826:	90                   	nop
c0030827:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003082a:	c9                   	leave  
c003082b:	c3                   	ret    

c003082c <video_mapping_clear>:
c003082c:	55                   	push   %ebp
c003082d:	89 e5                	mov    %esp,%ebp
c003082f:	53                   	push   %ebx
c0030830:	83 ec 04             	sub    $0x4,%esp
c0030833:	e8 f0 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030838:	05 c8 b7 00 00       	add    $0xb7c8,%eax
c003083d:	83 ec 04             	sub    $0x4,%esp
c0030840:	68 00 fa 00 00       	push   $0xfa00
c0030845:	6a 00                	push   $0x0
c0030847:	68 00 00 0a 00       	push   $0xa0000
c003084c:	89 c3                	mov    %eax,%ebx
c003084e:	e8 09 19 00 00       	call   c003215c <memset>
c0030853:	83 c4 10             	add    $0x10,%esp
c0030856:	90                   	nop
c0030857:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003085a:	c9                   	leave  
c003085b:	c3                   	ret    

c003085c <read_cr0>:
c003085c:	55                   	push   %ebp
c003085d:	89 e5                	mov    %esp,%ebp
c003085f:	83 ec 10             	sub    $0x10,%esp
c0030862:	e8 c1 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030867:	05 99 b7 00 00       	add    $0xb799,%eax
c003086c:	0f 20 c0             	mov    %cr0,%eax
c003086f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030872:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030875:	c9                   	leave  
c0030876:	c3                   	ret    

c0030877 <write_cr0>:
c0030877:	55                   	push   %ebp
c0030878:	89 e5                	mov    %esp,%ebp
c003087a:	e8 a9 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c003087f:	05 81 b7 00 00       	add    $0xb781,%eax
c0030884:	8b 45 08             	mov    0x8(%ebp),%eax
c0030887:	0f 22 c0             	mov    %eax,%cr0
c003088a:	90                   	nop
c003088b:	5d                   	pop    %ebp
c003088c:	c3                   	ret    

c003088d <write_cr3>:
c003088d:	55                   	push   %ebp
c003088e:	89 e5                	mov    %esp,%ebp
c0030890:	e8 93 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030895:	05 6b b7 00 00       	add    $0xb76b,%eax
c003089a:	8b 45 08             	mov    0x8(%ebp),%eax
c003089d:	0f 22 d8             	mov    %eax,%cr3
c00308a0:	90                   	nop
c00308a1:	5d                   	pop    %ebp
c00308a2:	c3                   	ret    

c00308a3 <write_gdtr>:
c00308a3:	55                   	push   %ebp
c00308a4:	89 e5                	mov    %esp,%ebp
c00308a6:	e8 7d fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00308ab:	05 55 b7 00 00       	add    $0xb755,%eax
c00308b0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00308b3:	4a                   	dec    %edx
c00308b4:	66 89 90 00 10 00 00 	mov    %dx,0x1000(%eax)
c00308bb:	8b 55 08             	mov    0x8(%ebp),%edx
c00308be:	66 89 90 02 10 00 00 	mov    %dx,0x1002(%eax)
c00308c5:	8b 55 08             	mov    0x8(%ebp),%edx
c00308c8:	c1 ea 10             	shr    $0x10,%edx
c00308cb:	66 89 90 04 10 00 00 	mov    %dx,0x1004(%eax)
c00308d2:	8d 80 00 10 00 00    	lea    0x1000(%eax),%eax
c00308d8:	0f 01 10             	lgdtl  (%eax)
c00308db:	90                   	nop
c00308dc:	5d                   	pop    %ebp
c00308dd:	c3                   	ret    

c00308de <get_kpdir>:
c00308de:	55                   	push   %ebp
c00308df:	89 e5                	mov    %esp,%ebp
c00308e1:	e8 42 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00308e6:	05 1a b7 00 00       	add    $0xb71a,%eax
c00308eb:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c00308f1:	5d                   	pop    %ebp
c00308f2:	c3                   	ret    

c00308f3 <init_page>:
c00308f3:	55                   	push   %ebp
c00308f4:	89 e5                	mov    %esp,%ebp
c00308f6:	53                   	push   %ebx
c00308f7:	83 ec 24             	sub    $0x24,%esp
c00308fa:	e8 29 fc ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00308ff:	05 01 b7 00 00       	add    $0xb701,%eax
c0030904:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c003090a:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030910:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0030913:	c7 c2 00 30 07 c0    	mov    $0xc0073000,%edx
c0030919:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003091f:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0030922:	83 ec 04             	sub    $0x4,%esp
c0030925:	68 00 10 00 00       	push   $0x1000
c003092a:	6a 00                	push   $0x0
c003092c:	ff 75 e4             	pushl  -0x1c(%ebp)
c003092f:	89 c3                	mov    %eax,%ebx
c0030931:	e8 26 18 00 00       	call   c003215c <memset>
c0030936:	83 c4 10             	add    $0x10,%esp
c0030939:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0030940:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0030947:	eb 6e                	jmp    c00309b7 <init_page+0xc4>
c0030949:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003094c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030953:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0030956:	01 d0                	add    %edx,%eax
c0030958:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003095b:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0030961:	83 ca 07             	or     $0x7,%edx
c0030964:	89 10                	mov    %edx,(%eax)
c0030966:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030969:	05 00 03 00 00       	add    $0x300,%eax
c003096e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030975:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0030978:	01 d0                	add    %edx,%eax
c003097a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003097d:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0030983:	83 ca 07             	or     $0x7,%edx
c0030986:	89 10                	mov    %edx,(%eax)
c0030988:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c003098f:	eb 1a                	jmp    c00309ab <init_page+0xb8>
c0030991:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030994:	c1 e0 0c             	shl    $0xc,%eax
c0030997:	83 c8 07             	or     $0x7,%eax
c003099a:	89 c2                	mov    %eax,%edx
c003099c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003099f:	89 10                	mov    %edx,(%eax)
c00309a1:	ff 45 e8             	incl   -0x18(%ebp)
c00309a4:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00309a8:	ff 45 ec             	incl   -0x14(%ebp)
c00309ab:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00309b2:	76 dd                	jbe    c0030991 <init_page+0x9e>
c00309b4:	ff 45 f0             	incl   -0x10(%ebp)
c00309b7:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00309bb:	76 8c                	jbe    c0030949 <init_page+0x56>
c00309bd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00309c4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00309c7:	c1 e8 0c             	shr    $0xc,%eax
c00309ca:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00309cf:	c1 e0 0c             	shl    $0xc,%eax
c00309d2:	89 c2                	mov    %eax,%edx
c00309d4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00309d7:	25 ff 0f 00 00       	and    $0xfff,%eax
c00309dc:	09 d0                	or     %edx,%eax
c00309de:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00309e1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00309e4:	83 ec 0c             	sub    $0xc,%esp
c00309e7:	50                   	push   %eax
c00309e8:	e8 a0 fe ff ff       	call   c003088d <write_cr3>
c00309ed:	83 c4 10             	add    $0x10,%esp
c00309f0:	e8 67 fe ff ff       	call   c003085c <read_cr0>
c00309f5:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00309f8:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00309fb:	83 c8 80             	or     $0xffffff80,%eax
c00309fe:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0030a01:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0030a04:	83 ec 0c             	sub    $0xc,%esp
c0030a07:	50                   	push   %eax
c0030a08:	e8 6a fe ff ff       	call   c0030877 <write_cr0>
c0030a0d:	83 c4 10             	add    $0x10,%esp
c0030a10:	90                   	nop
c0030a11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a14:	c9                   	leave  
c0030a15:	c3                   	ret    

c0030a16 <set_segment>:
c0030a16:	55                   	push   %ebp
c0030a17:	89 e5                	mov    %esp,%ebp
c0030a19:	e8 0a fb ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030a1e:	05 e2 b5 00 00       	add    $0xb5e2,%eax
c0030a23:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a26:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0030a2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a2e:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0030a34:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a37:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030a3b:	8b 45 10             	mov    0x10(%ebp),%eax
c0030a3e:	83 e0 0f             	and    $0xf,%eax
c0030a41:	88 c2                	mov    %al,%dl
c0030a43:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a46:	88 d1                	mov    %dl,%cl
c0030a48:	83 e1 0f             	and    $0xf,%ecx
c0030a4b:	8a 50 05             	mov    0x5(%eax),%dl
c0030a4e:	83 e2 f0             	and    $0xfffffff0,%edx
c0030a51:	09 ca                	or     %ecx,%edx
c0030a53:	88 50 05             	mov    %dl,0x5(%eax)
c0030a56:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a59:	8a 50 05             	mov    0x5(%eax),%dl
c0030a5c:	83 ca 10             	or     $0x10,%edx
c0030a5f:	88 50 05             	mov    %dl,0x5(%eax)
c0030a62:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030a65:	83 e0 03             	and    $0x3,%eax
c0030a68:	88 c2                	mov    %al,%dl
c0030a6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a6d:	83 e2 03             	and    $0x3,%edx
c0030a70:	88 d1                	mov    %dl,%cl
c0030a72:	c1 e1 05             	shl    $0x5,%ecx
c0030a75:	8a 50 05             	mov    0x5(%eax),%dl
c0030a78:	83 e2 9f             	and    $0xffffff9f,%edx
c0030a7b:	09 ca                	or     %ecx,%edx
c0030a7d:	88 50 05             	mov    %dl,0x5(%eax)
c0030a80:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a83:	8a 50 05             	mov    0x5(%eax),%dl
c0030a86:	83 ca 80             	or     $0xffffff80,%edx
c0030a89:	88 50 05             	mov    %dl,0x5(%eax)
c0030a8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a8f:	8a 50 06             	mov    0x6(%eax),%dl
c0030a92:	83 ca 0f             	or     $0xf,%edx
c0030a95:	88 50 06             	mov    %dl,0x6(%eax)
c0030a98:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a9b:	8a 50 06             	mov    0x6(%eax),%dl
c0030a9e:	83 e2 ef             	and    $0xffffffef,%edx
c0030aa1:	88 50 06             	mov    %dl,0x6(%eax)
c0030aa4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030aa7:	8a 50 06             	mov    0x6(%eax),%dl
c0030aaa:	83 e2 df             	and    $0xffffffdf,%edx
c0030aad:	88 50 06             	mov    %dl,0x6(%eax)
c0030ab0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ab3:	8a 50 06             	mov    0x6(%eax),%dl
c0030ab6:	83 ca 40             	or     $0x40,%edx
c0030ab9:	88 50 06             	mov    %dl,0x6(%eax)
c0030abc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030abf:	8a 50 06             	mov    0x6(%eax),%dl
c0030ac2:	83 ca 80             	or     $0xffffff80,%edx
c0030ac5:	88 50 06             	mov    %dl,0x6(%eax)
c0030ac8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030acb:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0030acf:	90                   	nop
c0030ad0:	5d                   	pop    %ebp
c0030ad1:	c3                   	ret    

c0030ad2 <init_segment>:
c0030ad2:	55                   	push   %ebp
c0030ad3:	89 e5                	mov    %esp,%ebp
c0030ad5:	53                   	push   %ebx
c0030ad6:	83 ec 04             	sub    $0x4,%esp
c0030ad9:	e8 52 fa ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030ade:	81 c3 22 b5 00 00    	add    $0xb522,%ebx
c0030ae4:	83 ec 04             	sub    $0x4,%esp
c0030ae7:	6a 18                	push   $0x18
c0030ae9:	6a 00                	push   $0x0
c0030aeb:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0030af1:	50                   	push   %eax
c0030af2:	e8 65 16 00 00       	call   c003215c <memset>
c0030af7:	83 c4 10             	add    $0x10,%esp
c0030afa:	83 ec 04             	sub    $0x4,%esp
c0030afd:	6a 0a                	push   $0xa
c0030aff:	6a 00                	push   $0x0
c0030b01:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0030b07:	8d 40 08             	lea    0x8(%eax),%eax
c0030b0a:	50                   	push   %eax
c0030b0b:	e8 06 ff ff ff       	call   c0030a16 <set_segment>
c0030b10:	83 c4 10             	add    $0x10,%esp
c0030b13:	83 ec 04             	sub    $0x4,%esp
c0030b16:	6a 02                	push   $0x2
c0030b18:	6a 00                	push   $0x0
c0030b1a:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0030b20:	8d 40 10             	lea    0x10(%eax),%eax
c0030b23:	50                   	push   %eax
c0030b24:	e8 ed fe ff ff       	call   c0030a16 <set_segment>
c0030b29:	83 c4 10             	add    $0x10,%esp
c0030b2c:	83 ec 08             	sub    $0x8,%esp
c0030b2f:	6a 18                	push   $0x18
c0030b31:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0030b37:	50                   	push   %eax
c0030b38:	e8 66 fd ff ff       	call   c00308a3 <write_gdtr>
c0030b3d:	83 c4 10             	add    $0x10,%esp
c0030b40:	90                   	nop
c0030b41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b44:	c9                   	leave  
c0030b45:	c3                   	ret    

c0030b46 <get_updir>:
c0030b46:	55                   	push   %ebp
c0030b47:	89 e5                	mov    %esp,%ebp
c0030b49:	e8 da f9 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030b4e:	05 b2 b4 00 00       	add    $0xb4b2,%eax
c0030b53:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030b59:	5d                   	pop    %ebp
c0030b5a:	c3                   	ret    

c0030b5b <get_ucr3>:
c0030b5b:	55                   	push   %ebp
c0030b5c:	89 e5                	mov    %esp,%ebp
c0030b5e:	e8 c5 f9 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030b63:	05 9d b4 00 00       	add    $0xb49d,%eax
c0030b68:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0030b6e:	8b 00                	mov    (%eax),%eax
c0030b70:	5d                   	pop    %ebp
c0030b71:	c3                   	ret    

c0030b72 <mm_brk>:
c0030b72:	55                   	push   %ebp
c0030b73:	89 e5                	mov    %esp,%ebp
c0030b75:	53                   	push   %ebx
c0030b76:	83 ec 04             	sub    $0x4,%esp
c0030b79:	e8 b2 f9 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030b7e:	81 c3 82 b4 00 00    	add    $0xb482,%ebx
c0030b84:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030b8a:	39 45 08             	cmp    %eax,0x8(%ebp)
c0030b8d:	76 22                	jbe    c0030bb1 <mm_brk+0x3f>
c0030b8f:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030b95:	8b 55 08             	mov    0x8(%ebp),%edx
c0030b98:	29 c2                	sub    %eax,%edx
c0030b9a:	89 d0                	mov    %edx,%eax
c0030b9c:	89 c2                	mov    %eax,%edx
c0030b9e:	8b 83 08 10 00 00    	mov    0x1008(%ebx),%eax
c0030ba4:	83 ec 08             	sub    $0x8,%esp
c0030ba7:	52                   	push   %edx
c0030ba8:	50                   	push   %eax
c0030ba9:	e8 d2 12 00 00       	call   c0031e80 <mm_malloc>
c0030bae:	83 c4 10             	add    $0x10,%esp
c0030bb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bb4:	89 83 08 10 00 00    	mov    %eax,0x1008(%ebx)
c0030bba:	90                   	nop
c0030bbb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030bbe:	c9                   	leave  
c0030bbf:	c3                   	ret    

c0030bc0 <init_mm>:
c0030bc0:	55                   	push   %ebp
c0030bc1:	89 e5                	mov    %esp,%ebp
c0030bc3:	53                   	push   %ebx
c0030bc4:	83 ec 14             	sub    $0x14,%esp
c0030bc7:	e8 64 f9 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030bcc:	81 c3 34 b4 00 00    	add    $0xb434,%ebx
c0030bd2:	e8 07 fd ff ff       	call   c00308de <get_kpdir>
c0030bd7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bda:	83 ec 04             	sub    $0x4,%esp
c0030bdd:	68 00 10 00 00       	push   $0x1000
c0030be2:	6a 00                	push   $0x0
c0030be4:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030bea:	50                   	push   %eax
c0030beb:	e8 6c 15 00 00       	call   c003215c <memset>
c0030bf0:	83 c4 10             	add    $0x10,%esp
c0030bf3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bf6:	05 00 0c 00 00       	add    $0xc00,%eax
c0030bfb:	83 ec 04             	sub    $0x4,%esp
c0030bfe:	68 80 00 00 00       	push   $0x80
c0030c03:	50                   	push   %eax
c0030c04:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030c0a:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0030c10:	50                   	push   %eax
c0030c11:	e8 fe 14 00 00       	call   c0032114 <memcpy>
c0030c16:	83 c4 10             	add    $0x10,%esp
c0030c19:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0030c1f:	05 00 00 00 40       	add    $0x40000000,%eax
c0030c24:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0030c29:	89 c2                	mov    %eax,%edx
c0030c2b:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0030c31:	89 10                	mov    %edx,(%eax)
c0030c33:	90                   	nop
c0030c34:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c37:	c9                   	leave  
c0030c38:	c3                   	ret    

c0030c39 <out_byte>:
c0030c39:	55                   	push   %ebp
c0030c3a:	89 e5                	mov    %esp,%ebp
c0030c3c:	83 ec 08             	sub    $0x8,%esp
c0030c3f:	e8 e4 f8 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030c44:	05 bc b3 00 00       	add    $0xb3bc,%eax
c0030c49:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c4c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c4f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030c53:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030c56:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030c59:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030c5c:	ee                   	out    %al,(%dx)
c0030c5d:	90                   	nop
c0030c5e:	c9                   	leave  
c0030c5f:	c3                   	ret    

c0030c60 <init_i8259>:
c0030c60:	55                   	push   %ebp
c0030c61:	89 e5                	mov    %esp,%ebp
c0030c63:	e8 c0 f8 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030c68:	05 98 b3 00 00       	add    $0xb398,%eax
c0030c6d:	68 ff 00 00 00       	push   $0xff
c0030c72:	6a 21                	push   $0x21
c0030c74:	e8 c0 ff ff ff       	call   c0030c39 <out_byte>
c0030c79:	83 c4 08             	add    $0x8,%esp
c0030c7c:	68 ff 00 00 00       	push   $0xff
c0030c81:	68 a1 00 00 00       	push   $0xa1
c0030c86:	e8 ae ff ff ff       	call   c0030c39 <out_byte>
c0030c8b:	83 c4 08             	add    $0x8,%esp
c0030c8e:	6a 11                	push   $0x11
c0030c90:	6a 20                	push   $0x20
c0030c92:	e8 a2 ff ff ff       	call   c0030c39 <out_byte>
c0030c97:	83 c4 08             	add    $0x8,%esp
c0030c9a:	6a 20                	push   $0x20
c0030c9c:	6a 21                	push   $0x21
c0030c9e:	e8 96 ff ff ff       	call   c0030c39 <out_byte>
c0030ca3:	83 c4 08             	add    $0x8,%esp
c0030ca6:	6a 04                	push   $0x4
c0030ca8:	6a 21                	push   $0x21
c0030caa:	e8 8a ff ff ff       	call   c0030c39 <out_byte>
c0030caf:	83 c4 08             	add    $0x8,%esp
c0030cb2:	6a 03                	push   $0x3
c0030cb4:	6a 21                	push   $0x21
c0030cb6:	e8 7e ff ff ff       	call   c0030c39 <out_byte>
c0030cbb:	83 c4 08             	add    $0x8,%esp
c0030cbe:	6a 11                	push   $0x11
c0030cc0:	68 a0 00 00 00       	push   $0xa0
c0030cc5:	e8 6f ff ff ff       	call   c0030c39 <out_byte>
c0030cca:	83 c4 08             	add    $0x8,%esp
c0030ccd:	6a 28                	push   $0x28
c0030ccf:	68 a1 00 00 00       	push   $0xa1
c0030cd4:	e8 60 ff ff ff       	call   c0030c39 <out_byte>
c0030cd9:	83 c4 08             	add    $0x8,%esp
c0030cdc:	6a 02                	push   $0x2
c0030cde:	68 a1 00 00 00       	push   $0xa1
c0030ce3:	e8 51 ff ff ff       	call   c0030c39 <out_byte>
c0030ce8:	83 c4 08             	add    $0x8,%esp
c0030ceb:	6a 03                	push   $0x3
c0030ced:	68 a1 00 00 00       	push   $0xa1
c0030cf2:	e8 42 ff ff ff       	call   c0030c39 <out_byte>
c0030cf7:	83 c4 08             	add    $0x8,%esp
c0030cfa:	6a 68                	push   $0x68
c0030cfc:	6a 20                	push   $0x20
c0030cfe:	e8 36 ff ff ff       	call   c0030c39 <out_byte>
c0030d03:	83 c4 08             	add    $0x8,%esp
c0030d06:	6a 0a                	push   $0xa
c0030d08:	6a 20                	push   $0x20
c0030d0a:	e8 2a ff ff ff       	call   c0030c39 <out_byte>
c0030d0f:	83 c4 08             	add    $0x8,%esp
c0030d12:	6a 68                	push   $0x68
c0030d14:	68 a0 00 00 00       	push   $0xa0
c0030d19:	e8 1b ff ff ff       	call   c0030c39 <out_byte>
c0030d1e:	83 c4 08             	add    $0x8,%esp
c0030d21:	6a 0a                	push   $0xa
c0030d23:	68 a0 00 00 00       	push   $0xa0
c0030d28:	e8 0c ff ff ff       	call   c0030c39 <out_byte>
c0030d2d:	83 c4 08             	add    $0x8,%esp
c0030d30:	90                   	nop
c0030d31:	c9                   	leave  
c0030d32:	c3                   	ret    

c0030d33 <add_irq_handle>:
c0030d33:	55                   	push   %ebp
c0030d34:	89 e5                	mov    %esp,%ebp
c0030d36:	53                   	push   %ebx
c0030d37:	83 ec 14             	sub    $0x14,%esp
c0030d3a:	e8 f1 f7 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030d3f:	81 c3 c1 b2 00 00    	add    $0xb2c1,%ebx
c0030d45:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030d49:	7e 2f                	jle    c0030d7a <add_irq_handle+0x47>
c0030d4b:	83 ec 0c             	sub    $0xc,%esp
c0030d4e:	8d 83 04 cc ff ff    	lea    -0x33fc(%ebx),%eax
c0030d54:	50                   	push   %eax
c0030d55:	8d 83 50 cd ff ff    	lea    -0x32b0(%ebx),%eax
c0030d5b:	50                   	push   %eax
c0030d5c:	6a 16                	push   $0x16
c0030d5e:	8d 83 17 cc ff ff    	lea    -0x33e9(%ebx),%eax
c0030d64:	50                   	push   %eax
c0030d65:	8d 83 2c cc ff ff    	lea    -0x33d4(%ebx),%eax
c0030d6b:	50                   	push   %eax
c0030d6c:	e8 e7 08 00 00       	call   c0031658 <printk>
c0030d71:	83 c4 20             	add    $0x20,%esp
c0030d74:	b8 01 00 00 00       	mov    $0x1,%eax
c0030d79:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030d80:	83 f8 20             	cmp    $0x20,%eax
c0030d83:	7e 2f                	jle    c0030db4 <add_irq_handle+0x81>
c0030d85:	83 ec 0c             	sub    $0xc,%esp
c0030d88:	8d 83 76 cc ff ff    	lea    -0x338a(%ebx),%eax
c0030d8e:	50                   	push   %eax
c0030d8f:	8d 83 50 cd ff ff    	lea    -0x32b0(%ebx),%eax
c0030d95:	50                   	push   %eax
c0030d96:	6a 17                	push   $0x17
c0030d98:	8d 83 17 cc ff ff    	lea    -0x33e9(%ebx),%eax
c0030d9e:	50                   	push   %eax
c0030d9f:	8d 83 2c cc ff ff    	lea    -0x33d4(%ebx),%eax
c0030da5:	50                   	push   %eax
c0030da6:	e8 ad 08 00 00       	call   c0031658 <printk>
c0030dab:	83 c4 20             	add    $0x20,%esp
c0030dae:	b8 01 00 00 00       	mov    $0x1,%eax
c0030db3:	82 8b 83 60 11 00 00 	orb    $0x0,0x116083(%ebx)
c0030dba:	8d 50 01             	lea    0x1(%eax),%edx
c0030dbd:	89 93 60 11 00 00    	mov    %edx,0x1160(%ebx)
c0030dc3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030dca:	8d 83 20 10 00 00    	lea    0x1020(%ebx),%eax
c0030dd0:	01 d0                	add    %edx,%eax
c0030dd2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030dd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030dd8:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030ddb:	89 10                	mov    %edx,(%eax)
c0030ddd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030de0:	8b 94 83 20 11 00 00 	mov    0x1120(%ebx,%eax,4),%edx
c0030de7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030dea:	89 50 04             	mov    %edx,0x4(%eax)
c0030ded:	8b 45 08             	mov    0x8(%ebp),%eax
c0030df0:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030df3:	89 94 83 20 11 00 00 	mov    %edx,0x1120(%ebx,%eax,4)
c0030dfa:	90                   	nop
c0030dfb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030dfe:	c9                   	leave  
c0030dff:	c3                   	ret    

c0030e00 <irq_handle>:
c0030e00:	55                   	push   %ebp
c0030e01:	89 e5                	mov    %esp,%ebp
c0030e03:	53                   	push   %ebx
c0030e04:	83 ec 14             	sub    $0x14,%esp
c0030e07:	e8 24 f7 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0030e0c:	81 c3 f4 b1 00 00    	add    $0xb1f4,%ebx
c0030e12:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e15:	8b 40 20             	mov    0x20(%eax),%eax
c0030e18:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030e1b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030e1f:	79 2a                	jns    c0030e4b <irq_handle+0x4b>
c0030e21:	8d 83 60 cd ff ff    	lea    -0x32a0(%ebx),%eax
c0030e27:	50                   	push   %eax
c0030e28:	6a 24                	push   $0x24
c0030e2a:	8d 83 17 cc ff ff    	lea    -0x33e9(%ebx),%eax
c0030e30:	50                   	push   %eax
c0030e31:	8d 83 94 cc ff ff    	lea    -0x336c(%ebx),%eax
c0030e37:	50                   	push   %eax
c0030e38:	e8 1b 08 00 00       	call   c0031658 <printk>
c0030e3d:	83 c4 10             	add    $0x10,%esp
c0030e40:	b8 01 00 00 00       	mov    $0x1,%eax
c0030e45:	82 e9 c7             	sub    $0xc7,%cl
c0030e48:	00 00                	add    %al,(%eax)
c0030e4a:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0030e50:	00 00                	add    %al,(%eax)
c0030e52:	75 13                	jne    c0030e67 <irq_handle+0x67>
c0030e54:	83 ec 0c             	sub    $0xc,%esp
c0030e57:	ff 75 08             	pushl  0x8(%ebp)
c0030e5a:	e8 0b 06 00 00       	call   c003146a <do_syscall>
c0030e5f:	83 c4 10             	add    $0x10,%esp
c0030e62:	e9 ab 00 00 00       	jmp    c0030f12 <irq_handle+0x112>
c0030e67:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030e6e:	7f 34                	jg     c0030ea4 <irq_handle+0xa4>
c0030e70:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e73:	8b 40 28             	mov    0x28(%eax),%eax
c0030e76:	83 ec 08             	sub    $0x8,%esp
c0030e79:	50                   	push   %eax
c0030e7a:	ff 75 f0             	pushl  -0x10(%ebp)
c0030e7d:	8d 83 60 cd ff ff    	lea    -0x32a0(%ebx),%eax
c0030e83:	50                   	push   %eax
c0030e84:	6a 28                	push   $0x28
c0030e86:	8d 83 17 cc ff ff    	lea    -0x33e9(%ebx),%eax
c0030e8c:	50                   	push   %eax
c0030e8d:	8d 83 e0 cc ff ff    	lea    -0x3320(%ebx),%eax
c0030e93:	50                   	push   %eax
c0030e94:	e8 bf 07 00 00       	call   c0031658 <printk>
c0030e99:	83 c4 20             	add    $0x20,%esp
c0030e9c:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ea1:	82 eb 6e             	sub    $0x6e,%bl
c0030ea4:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030eab:	7e 65                	jle    c0030f12 <irq_handle+0x112>
c0030ead:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030eb0:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030eb5:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030eb8:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030ebc:	7e 2f                	jle    c0030eed <irq_handle+0xed>
c0030ebe:	83 ec 0c             	sub    $0xc,%esp
c0030ec1:	8d 83 3a cd ff ff    	lea    -0x32c6(%ebx),%eax
c0030ec7:	50                   	push   %eax
c0030ec8:	8d 83 60 cd ff ff    	lea    -0x32a0(%ebx),%eax
c0030ece:	50                   	push   %eax
c0030ecf:	6a 2b                	push   $0x2b
c0030ed1:	8d 83 17 cc ff ff    	lea    -0x33e9(%ebx),%eax
c0030ed7:	50                   	push   %eax
c0030ed8:	8d 83 2c cc ff ff    	lea    -0x33d4(%ebx),%eax
c0030ede:	50                   	push   %eax
c0030edf:	e8 74 07 00 00       	call   c0031658 <printk>
c0030ee4:	83 c4 20             	add    $0x20,%esp
c0030ee7:	b8 01 00 00 00       	mov    $0x1,%eax
c0030eec:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c0030ef3:	20 11                	and    %dl,(%ecx)
c0030ef5:	00 00                	add    %al,(%eax)
c0030ef7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030efa:	eb 10                	jmp    c0030f0c <irq_handle+0x10c>
c0030efc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030eff:	8b 00                	mov    (%eax),%eax
c0030f01:	ff d0                	call   *%eax
c0030f03:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f06:	8b 40 04             	mov    0x4(%eax),%eax
c0030f09:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030f0c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030f10:	75 ea                	jne    c0030efc <irq_handle+0xfc>
c0030f12:	90                   	nop
c0030f13:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030f16:	c9                   	leave  
c0030f17:	c3                   	ret    

c0030f18 <write_idtr>:
c0030f18:	55                   	push   %ebp
c0030f19:	89 e5                	mov    %esp,%ebp
c0030f1b:	e8 08 f6 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030f20:	05 e0 b0 00 00       	add    $0xb0e0,%eax
c0030f25:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030f28:	4a                   	dec    %edx
c0030f29:	66 89 90 80 19 00 00 	mov    %dx,0x1980(%eax)
c0030f30:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f33:	66 89 90 82 19 00 00 	mov    %dx,0x1982(%eax)
c0030f3a:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f3d:	c1 ea 10             	shr    $0x10,%edx
c0030f40:	66 89 90 84 19 00 00 	mov    %dx,0x1984(%eax)
c0030f47:	8d 80 80 19 00 00    	lea    0x1980(%eax),%eax
c0030f4d:	0f 01 18             	lidtl  (%eax)
c0030f50:	90                   	nop
c0030f51:	5d                   	pop    %ebp
c0030f52:	c3                   	ret    

c0030f53 <sti>:
c0030f53:	55                   	push   %ebp
c0030f54:	89 e5                	mov    %esp,%ebp
c0030f56:	e8 cd f5 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030f5b:	05 a5 b0 00 00       	add    $0xb0a5,%eax
c0030f60:	fb                   	sti    
c0030f61:	90                   	nop
c0030f62:	5d                   	pop    %ebp
c0030f63:	c3                   	ret    

c0030f64 <set_intr>:
c0030f64:	55                   	push   %ebp
c0030f65:	89 e5                	mov    %esp,%ebp
c0030f67:	e8 bc f5 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030f6c:	05 94 b0 00 00       	add    $0xb094,%eax
c0030f71:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f74:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f77:	66 89 02             	mov    %ax,(%edx)
c0030f7a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f7d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f80:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030f84:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f87:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030f8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f8e:	8a 50 05             	mov    0x5(%eax),%dl
c0030f91:	83 e2 f0             	and    $0xfffffff0,%edx
c0030f94:	83 ca 0e             	or     $0xe,%edx
c0030f97:	88 50 05             	mov    %dl,0x5(%eax)
c0030f9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f9d:	8a 50 05             	mov    0x5(%eax),%dl
c0030fa0:	83 e2 ef             	and    $0xffffffef,%edx
c0030fa3:	88 50 05             	mov    %dl,0x5(%eax)
c0030fa6:	8b 45 14             	mov    0x14(%ebp),%eax
c0030fa9:	83 e0 03             	and    $0x3,%eax
c0030fac:	88 c2                	mov    %al,%dl
c0030fae:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fb1:	83 e2 03             	and    $0x3,%edx
c0030fb4:	88 d1                	mov    %dl,%cl
c0030fb6:	c1 e1 05             	shl    $0x5,%ecx
c0030fb9:	8a 50 05             	mov    0x5(%eax),%dl
c0030fbc:	83 e2 9f             	and    $0xffffff9f,%edx
c0030fbf:	09 ca                	or     %ecx,%edx
c0030fc1:	88 50 05             	mov    %dl,0x5(%eax)
c0030fc4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fc7:	8a 50 05             	mov    0x5(%eax),%dl
c0030fca:	83 ca 80             	or     $0xffffff80,%edx
c0030fcd:	88 50 05             	mov    %dl,0x5(%eax)
c0030fd0:	8b 45 10             	mov    0x10(%ebp),%eax
c0030fd3:	c1 e8 10             	shr    $0x10,%eax
c0030fd6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030fd9:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030fdd:	90                   	nop
c0030fde:	5d                   	pop    %ebp
c0030fdf:	c3                   	ret    

c0030fe0 <set_trap>:
c0030fe0:	55                   	push   %ebp
c0030fe1:	89 e5                	mov    %esp,%ebp
c0030fe3:	e8 40 f5 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0030fe8:	05 18 b0 00 00       	add    $0xb018,%eax
c0030fed:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ff0:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ff3:	66 89 02             	mov    %ax,(%edx)
c0030ff6:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ff9:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ffc:	66 89 42 02          	mov    %ax,0x2(%edx)
c0031000:	8b 45 08             	mov    0x8(%ebp),%eax
c0031003:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031007:	8b 45 08             	mov    0x8(%ebp),%eax
c003100a:	8a 50 05             	mov    0x5(%eax),%dl
c003100d:	83 ca 0f             	or     $0xf,%edx
c0031010:	88 50 05             	mov    %dl,0x5(%eax)
c0031013:	8b 45 08             	mov    0x8(%ebp),%eax
c0031016:	8a 50 05             	mov    0x5(%eax),%dl
c0031019:	83 e2 ef             	and    $0xffffffef,%edx
c003101c:	88 50 05             	mov    %dl,0x5(%eax)
c003101f:	8b 45 14             	mov    0x14(%ebp),%eax
c0031022:	83 e0 03             	and    $0x3,%eax
c0031025:	88 c2                	mov    %al,%dl
c0031027:	8b 45 08             	mov    0x8(%ebp),%eax
c003102a:	83 e2 03             	and    $0x3,%edx
c003102d:	88 d1                	mov    %dl,%cl
c003102f:	c1 e1 05             	shl    $0x5,%ecx
c0031032:	8a 50 05             	mov    0x5(%eax),%dl
c0031035:	83 e2 9f             	and    $0xffffff9f,%edx
c0031038:	09 ca                	or     %ecx,%edx
c003103a:	88 50 05             	mov    %dl,0x5(%eax)
c003103d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031040:	8a 50 05             	mov    0x5(%eax),%dl
c0031043:	83 ca 80             	or     $0xffffff80,%edx
c0031046:	88 50 05             	mov    %dl,0x5(%eax)
c0031049:	8b 45 10             	mov    0x10(%ebp),%eax
c003104c:	c1 e8 10             	shr    $0x10,%eax
c003104f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031052:	66 89 42 06          	mov    %ax,0x6(%edx)
c0031056:	90                   	nop
c0031057:	5d                   	pop    %ebp
c0031058:	c3                   	ret    

c0031059 <init_idt>:
c0031059:	55                   	push   %ebp
c003105a:	89 e5                	mov    %esp,%ebp
c003105c:	53                   	push   %ebx
c003105d:	83 ec 10             	sub    $0x10,%esp
c0031060:	e8 cb f4 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031065:	81 c3 9b af 00 00    	add    $0xaf9b,%ebx
c003106b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0031072:	eb 2b                	jmp    c003109f <init_idt+0x46>
c0031074:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c003107a:	89 c2                	mov    %eax,%edx
c003107c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003107f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0031086:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c003108c:	01 c8                	add    %ecx,%eax
c003108e:	6a 00                	push   $0x0
c0031090:	52                   	push   %edx
c0031091:	6a 08                	push   $0x8
c0031093:	50                   	push   %eax
c0031094:	e8 47 ff ff ff       	call   c0030fe0 <set_trap>
c0031099:	83 c4 10             	add    $0x10,%esp
c003109c:	ff 45 f8             	incl   -0x8(%ebp)
c003109f:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c00310a6:	7e cc                	jle    c0031074 <init_idt+0x1b>
c00310a8:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c00310ae:	6a 00                	push   $0x0
c00310b0:	50                   	push   %eax
c00310b1:	6a 08                	push   $0x8
c00310b3:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c00310b9:	50                   	push   %eax
c00310ba:	e8 21 ff ff ff       	call   c0030fe0 <set_trap>
c00310bf:	83 c4 10             	add    $0x10,%esp
c00310c2:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c00310c8:	89 c2                	mov    %eax,%edx
c00310ca:	8d 83 88 11 00 00    	lea    0x1188(%ebx),%eax
c00310d0:	6a 00                	push   $0x0
c00310d2:	52                   	push   %edx
c00310d3:	6a 08                	push   $0x8
c00310d5:	50                   	push   %eax
c00310d6:	e8 05 ff ff ff       	call   c0030fe0 <set_trap>
c00310db:	83 c4 10             	add    $0x10,%esp
c00310de:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00310e4:	89 c2                	mov    %eax,%edx
c00310e6:	8d 83 90 11 00 00    	lea    0x1190(%ebx),%eax
c00310ec:	6a 00                	push   $0x0
c00310ee:	52                   	push   %edx
c00310ef:	6a 08                	push   $0x8
c00310f1:	50                   	push   %eax
c00310f2:	e8 e9 fe ff ff       	call   c0030fe0 <set_trap>
c00310f7:	83 c4 10             	add    $0x10,%esp
c00310fa:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0031100:	89 c2                	mov    %eax,%edx
c0031102:	8d 83 98 11 00 00    	lea    0x1198(%ebx),%eax
c0031108:	6a 00                	push   $0x0
c003110a:	52                   	push   %edx
c003110b:	6a 08                	push   $0x8
c003110d:	50                   	push   %eax
c003110e:	e8 cd fe ff ff       	call   c0030fe0 <set_trap>
c0031113:	83 c4 10             	add    $0x10,%esp
c0031116:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c003111c:	89 c2                	mov    %eax,%edx
c003111e:	8d 83 a0 11 00 00    	lea    0x11a0(%ebx),%eax
c0031124:	6a 00                	push   $0x0
c0031126:	52                   	push   %edx
c0031127:	6a 08                	push   $0x8
c0031129:	50                   	push   %eax
c003112a:	e8 b1 fe ff ff       	call   c0030fe0 <set_trap>
c003112f:	83 c4 10             	add    $0x10,%esp
c0031132:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0031138:	89 c2                	mov    %eax,%edx
c003113a:	8d 83 a8 11 00 00    	lea    0x11a8(%ebx),%eax
c0031140:	6a 00                	push   $0x0
c0031142:	52                   	push   %edx
c0031143:	6a 08                	push   $0x8
c0031145:	50                   	push   %eax
c0031146:	e8 95 fe ff ff       	call   c0030fe0 <set_trap>
c003114b:	83 c4 10             	add    $0x10,%esp
c003114e:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031154:	89 c2                	mov    %eax,%edx
c0031156:	8d 83 b0 11 00 00    	lea    0x11b0(%ebx),%eax
c003115c:	6a 00                	push   $0x0
c003115e:	52                   	push   %edx
c003115f:	6a 08                	push   $0x8
c0031161:	50                   	push   %eax
c0031162:	e8 79 fe ff ff       	call   c0030fe0 <set_trap>
c0031167:	83 c4 10             	add    $0x10,%esp
c003116a:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0031170:	89 c2                	mov    %eax,%edx
c0031172:	8d 83 b8 11 00 00    	lea    0x11b8(%ebx),%eax
c0031178:	6a 00                	push   $0x0
c003117a:	52                   	push   %edx
c003117b:	6a 08                	push   $0x8
c003117d:	50                   	push   %eax
c003117e:	e8 5d fe ff ff       	call   c0030fe0 <set_trap>
c0031183:	83 c4 10             	add    $0x10,%esp
c0031186:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c003118c:	89 c2                	mov    %eax,%edx
c003118e:	8d 83 c0 11 00 00    	lea    0x11c0(%ebx),%eax
c0031194:	6a 00                	push   $0x0
c0031196:	52                   	push   %edx
c0031197:	6a 08                	push   $0x8
c0031199:	50                   	push   %eax
c003119a:	e8 41 fe ff ff       	call   c0030fe0 <set_trap>
c003119f:	83 c4 10             	add    $0x10,%esp
c00311a2:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00311a8:	89 c2                	mov    %eax,%edx
c00311aa:	8d 83 c8 11 00 00    	lea    0x11c8(%ebx),%eax
c00311b0:	6a 00                	push   $0x0
c00311b2:	52                   	push   %edx
c00311b3:	6a 08                	push   $0x8
c00311b5:	50                   	push   %eax
c00311b6:	e8 25 fe ff ff       	call   c0030fe0 <set_trap>
c00311bb:	83 c4 10             	add    $0x10,%esp
c00311be:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00311c4:	89 c2                	mov    %eax,%edx
c00311c6:	8d 83 d0 11 00 00    	lea    0x11d0(%ebx),%eax
c00311cc:	6a 00                	push   $0x0
c00311ce:	52                   	push   %edx
c00311cf:	6a 08                	push   $0x8
c00311d1:	50                   	push   %eax
c00311d2:	e8 09 fe ff ff       	call   c0030fe0 <set_trap>
c00311d7:	83 c4 10             	add    $0x10,%esp
c00311da:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00311e0:	89 c2                	mov    %eax,%edx
c00311e2:	8d 83 d8 11 00 00    	lea    0x11d8(%ebx),%eax
c00311e8:	6a 00                	push   $0x0
c00311ea:	52                   	push   %edx
c00311eb:	6a 08                	push   $0x8
c00311ed:	50                   	push   %eax
c00311ee:	e8 ed fd ff ff       	call   c0030fe0 <set_trap>
c00311f3:	83 c4 10             	add    $0x10,%esp
c00311f6:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c00311fc:	89 c2                	mov    %eax,%edx
c00311fe:	8d 83 e0 11 00 00    	lea    0x11e0(%ebx),%eax
c0031204:	6a 00                	push   $0x0
c0031206:	52                   	push   %edx
c0031207:	6a 08                	push   $0x8
c0031209:	50                   	push   %eax
c003120a:	e8 d1 fd ff ff       	call   c0030fe0 <set_trap>
c003120f:	83 c4 10             	add    $0x10,%esp
c0031212:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031218:	89 c2                	mov    %eax,%edx
c003121a:	8d 83 e8 11 00 00    	lea    0x11e8(%ebx),%eax
c0031220:	6a 00                	push   $0x0
c0031222:	52                   	push   %edx
c0031223:	6a 08                	push   $0x8
c0031225:	50                   	push   %eax
c0031226:	e8 b5 fd ff ff       	call   c0030fe0 <set_trap>
c003122b:	83 c4 10             	add    $0x10,%esp
c003122e:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031234:	89 c2                	mov    %eax,%edx
c0031236:	8d 83 f0 11 00 00    	lea    0x11f0(%ebx),%eax
c003123c:	6a 00                	push   $0x0
c003123e:	52                   	push   %edx
c003123f:	6a 08                	push   $0x8
c0031241:	50                   	push   %eax
c0031242:	e8 99 fd ff ff       	call   c0030fe0 <set_trap>
c0031247:	83 c4 10             	add    $0x10,%esp
c003124a:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031250:	89 c2                	mov    %eax,%edx
c0031252:	8d 83 80 15 00 00    	lea    0x1580(%ebx),%eax
c0031258:	6a 03                	push   $0x3
c003125a:	52                   	push   %edx
c003125b:	6a 08                	push   $0x8
c003125d:	50                   	push   %eax
c003125e:	e8 7d fd ff ff       	call   c0030fe0 <set_trap>
c0031263:	83 c4 10             	add    $0x10,%esp
c0031266:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c003126c:	89 c2                	mov    %eax,%edx
c003126e:	8d 83 80 12 00 00    	lea    0x1280(%ebx),%eax
c0031274:	6a 00                	push   $0x0
c0031276:	52                   	push   %edx
c0031277:	6a 08                	push   $0x8
c0031279:	50                   	push   %eax
c003127a:	e8 e5 fc ff ff       	call   c0030f64 <set_intr>
c003127f:	83 c4 10             	add    $0x10,%esp
c0031282:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0031288:	89 c2                	mov    %eax,%edx
c003128a:	8d 83 88 12 00 00    	lea    0x1288(%ebx),%eax
c0031290:	6a 00                	push   $0x0
c0031292:	52                   	push   %edx
c0031293:	6a 08                	push   $0x8
c0031295:	50                   	push   %eax
c0031296:	e8 c9 fc ff ff       	call   c0030f64 <set_intr>
c003129b:	83 c4 10             	add    $0x10,%esp
c003129e:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00312a4:	89 c2                	mov    %eax,%edx
c00312a6:	8d 83 f0 12 00 00    	lea    0x12f0(%ebx),%eax
c00312ac:	6a 00                	push   $0x0
c00312ae:	52                   	push   %edx
c00312af:	6a 08                	push   $0x8
c00312b1:	50                   	push   %eax
c00312b2:	e8 ad fc ff ff       	call   c0030f64 <set_intr>
c00312b7:	83 c4 10             	add    $0x10,%esp
c00312ba:	68 00 08 00 00       	push   $0x800
c00312bf:	8d 83 80 11 00 00    	lea    0x1180(%ebx),%eax
c00312c5:	50                   	push   %eax
c00312c6:	e8 4d fc ff ff       	call   c0030f18 <write_idtr>
c00312cb:	83 c4 08             	add    $0x8,%esp
c00312ce:	e8 80 fc ff ff       	call   c0030f53 <sti>
c00312d3:	90                   	nop
c00312d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312d7:	c9                   	leave  
c00312d8:	c3                   	ret    

c00312d9 <sti>:
c00312d9:	55                   	push   %ebp
c00312da:	89 e5                	mov    %esp,%ebp
c00312dc:	e8 47 f2 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00312e1:	05 1f ad 00 00       	add    $0xad1f,%eax
c00312e6:	fb                   	sti    
c00312e7:	90                   	nop
c00312e8:	5d                   	pop    %ebp
c00312e9:	c3                   	ret    

c00312ea <cli>:
c00312ea:	55                   	push   %ebp
c00312eb:	89 e5                	mov    %esp,%ebp
c00312ed:	e8 36 f2 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00312f2:	05 0e ad 00 00       	add    $0xad0e,%eax
c00312f7:	fa                   	cli    
c00312f8:	90                   	nop
c00312f9:	5d                   	pop    %ebp
c00312fa:	c3                   	ret    

c00312fb <sys_brk>:
c00312fb:	55                   	push   %ebp
c00312fc:	89 e5                	mov    %esp,%ebp
c00312fe:	53                   	push   %ebx
c00312ff:	83 ec 04             	sub    $0x4,%esp
c0031302:	e8 21 f2 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031307:	05 f9 ac 00 00       	add    $0xacf9,%eax
c003130c:	8b 55 08             	mov    0x8(%ebp),%edx
c003130f:	8b 52 10             	mov    0x10(%edx),%edx
c0031312:	83 ec 0c             	sub    $0xc,%esp
c0031315:	52                   	push   %edx
c0031316:	89 c3                	mov    %eax,%ebx
c0031318:	e8 55 f8 ff ff       	call   c0030b72 <mm_brk>
c003131d:	83 c4 10             	add    $0x10,%esp
c0031320:	8b 45 08             	mov    0x8(%ebp),%eax
c0031323:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003132a:	90                   	nop
c003132b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003132e:	c9                   	leave  
c003132f:	c3                   	ret    

c0031330 <sys_open>:
c0031330:	55                   	push   %ebp
c0031331:	89 e5                	mov    %esp,%ebp
c0031333:	53                   	push   %ebx
c0031334:	83 ec 04             	sub    $0x4,%esp
c0031337:	e8 ec f1 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c003133c:	05 c4 ac 00 00       	add    $0xacc4,%eax
c0031341:	8b 55 08             	mov    0x8(%ebp),%edx
c0031344:	8b 52 18             	mov    0x18(%edx),%edx
c0031347:	89 d1                	mov    %edx,%ecx
c0031349:	8b 55 08             	mov    0x8(%ebp),%edx
c003134c:	8b 52 10             	mov    0x10(%edx),%edx
c003134f:	83 ec 08             	sub    $0x8,%esp
c0031352:	51                   	push   %ecx
c0031353:	52                   	push   %edx
c0031354:	89 c3                	mov    %eax,%ebx
c0031356:	e8 7e ed ff ff       	call   c00300d9 <fs_open>
c003135b:	83 c4 10             	add    $0x10,%esp
c003135e:	89 c2                	mov    %eax,%edx
c0031360:	8b 45 08             	mov    0x8(%ebp),%eax
c0031363:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031366:	90                   	nop
c0031367:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003136a:	c9                   	leave  
c003136b:	c3                   	ret    

c003136c <sys_read>:
c003136c:	55                   	push   %ebp
c003136d:	89 e5                	mov    %esp,%ebp
c003136f:	53                   	push   %ebx
c0031370:	83 ec 04             	sub    $0x4,%esp
c0031373:	e8 b0 f1 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031378:	05 88 ac 00 00       	add    $0xac88,%eax
c003137d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031380:	8b 52 14             	mov    0x14(%edx),%edx
c0031383:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031386:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031389:	89 cb                	mov    %ecx,%ebx
c003138b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003138e:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031391:	83 ec 04             	sub    $0x4,%esp
c0031394:	52                   	push   %edx
c0031395:	53                   	push   %ebx
c0031396:	51                   	push   %ecx
c0031397:	89 c3                	mov    %eax,%ebx
c0031399:	e8 ff ed ff ff       	call   c003019d <fs_read>
c003139e:	83 c4 10             	add    $0x10,%esp
c00313a1:	89 c2                	mov    %eax,%edx
c00313a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00313a6:	89 50 1c             	mov    %edx,0x1c(%eax)
c00313a9:	90                   	nop
c00313aa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313ad:	c9                   	leave  
c00313ae:	c3                   	ret    

c00313af <sys_write>:
c00313af:	55                   	push   %ebp
c00313b0:	89 e5                	mov    %esp,%ebp
c00313b2:	53                   	push   %ebx
c00313b3:	83 ec 04             	sub    $0x4,%esp
c00313b6:	e8 6d f1 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00313bb:	05 45 ac 00 00       	add    $0xac45,%eax
c00313c0:	8b 55 08             	mov    0x8(%ebp),%edx
c00313c3:	8b 52 14             	mov    0x14(%edx),%edx
c00313c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00313c9:	8b 49 18             	mov    0x18(%ecx),%ecx
c00313cc:	89 cb                	mov    %ecx,%ebx
c00313ce:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00313d1:	8b 49 10             	mov    0x10(%ecx),%ecx
c00313d4:	83 ec 04             	sub    $0x4,%esp
c00313d7:	52                   	push   %edx
c00313d8:	53                   	push   %ebx
c00313d9:	51                   	push   %ecx
c00313da:	89 c3                	mov    %eax,%ebx
c00313dc:	e8 89 ef ff ff       	call   c003036a <fs_write>
c00313e1:	83 c4 10             	add    $0x10,%esp
c00313e4:	89 c2                	mov    %eax,%edx
c00313e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00313e9:	89 50 1c             	mov    %edx,0x1c(%eax)
c00313ec:	90                   	nop
c00313ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313f0:	c9                   	leave  
c00313f1:	c3                   	ret    

c00313f2 <sys_lseek>:
c00313f2:	55                   	push   %ebp
c00313f3:	89 e5                	mov    %esp,%ebp
c00313f5:	53                   	push   %ebx
c00313f6:	83 ec 04             	sub    $0x4,%esp
c00313f9:	e8 2a f1 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00313fe:	05 02 ac 00 00       	add    $0xac02,%eax
c0031403:	8b 55 08             	mov    0x8(%ebp),%edx
c0031406:	8b 52 14             	mov    0x14(%edx),%edx
c0031409:	89 d3                	mov    %edx,%ebx
c003140b:	8b 55 08             	mov    0x8(%ebp),%edx
c003140e:	8b 52 18             	mov    0x18(%edx),%edx
c0031411:	89 d1                	mov    %edx,%ecx
c0031413:	8b 55 08             	mov    0x8(%ebp),%edx
c0031416:	8b 52 10             	mov    0x10(%edx),%edx
c0031419:	83 ec 04             	sub    $0x4,%esp
c003141c:	53                   	push   %ebx
c003141d:	51                   	push   %ecx
c003141e:	52                   	push   %edx
c003141f:	89 c3                	mov    %eax,%ebx
c0031421:	e8 c0 ef ff ff       	call   c00303e6 <fs_lseek>
c0031426:	83 c4 10             	add    $0x10,%esp
c0031429:	89 c2                	mov    %eax,%edx
c003142b:	8b 45 08             	mov    0x8(%ebp),%eax
c003142e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031431:	90                   	nop
c0031432:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031435:	c9                   	leave  
c0031436:	c3                   	ret    

c0031437 <sys_close>:
c0031437:	55                   	push   %ebp
c0031438:	89 e5                	mov    %esp,%ebp
c003143a:	53                   	push   %ebx
c003143b:	83 ec 04             	sub    $0x4,%esp
c003143e:	e8 e5 f0 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031443:	05 bd ab 00 00       	add    $0xabbd,%eax
c0031448:	8b 55 08             	mov    0x8(%ebp),%edx
c003144b:	8b 52 10             	mov    0x10(%edx),%edx
c003144e:	83 ec 0c             	sub    $0xc,%esp
c0031451:	52                   	push   %edx
c0031452:	89 c3                	mov    %eax,%ebx
c0031454:	e8 84 f0 ff ff       	call   c00304dd <fs_close>
c0031459:	83 c4 10             	add    $0x10,%esp
c003145c:	89 c2                	mov    %eax,%edx
c003145e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031461:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031464:	90                   	nop
c0031465:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031468:	c9                   	leave  
c0031469:	c3                   	ret    

c003146a <do_syscall>:
c003146a:	55                   	push   %ebp
c003146b:	89 e5                	mov    %esp,%ebp
c003146d:	53                   	push   %ebx
c003146e:	83 ec 04             	sub    $0x4,%esp
c0031471:	e8 ba f0 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031476:	81 c3 8a ab 00 00    	add    $0xab8a,%ebx
c003147c:	8b 45 08             	mov    0x8(%ebp),%eax
c003147f:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031482:	83 f8 2d             	cmp    $0x2d,%eax
c0031485:	0f 87 98 00 00 00    	ja     c0031523 <.L10>
c003148b:	c1 e0 02             	shl    $0x2,%eax
c003148e:	8b 84 18 dc cd ff ff 	mov    -0x3224(%eax,%ebx,1),%eax
c0031495:	01 d8                	add    %ebx,%eax
c0031497:	ff e0                	jmp    *%eax

c0031499 <.L11>:
c0031499:	e8 4c fe ff ff       	call   c00312ea <cli>
c003149e:	8b 45 08             	mov    0x8(%ebp),%eax
c00314a1:	8b 40 18             	mov    0x18(%eax),%eax
c00314a4:	89 c2                	mov    %eax,%edx
c00314a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00314a9:	8b 40 10             	mov    0x10(%eax),%eax
c00314ac:	83 ec 08             	sub    $0x8,%esp
c00314af:	52                   	push   %edx
c00314b0:	50                   	push   %eax
c00314b1:	e8 7d f8 ff ff       	call   c0030d33 <add_irq_handle>
c00314b6:	83 c4 10             	add    $0x10,%esp
c00314b9:	e8 1b fe ff ff       	call   c00312d9 <sti>
c00314be:	e9 8f 00 00 00       	jmp    c0031552 <.L10+0x2f>

c00314c3 <.L18>:
c00314c3:	83 ec 0c             	sub    $0xc,%esp
c00314c6:	ff 75 08             	pushl  0x8(%ebp)
c00314c9:	e8 2d fe ff ff       	call   c00312fb <sys_brk>
c00314ce:	83 c4 10             	add    $0x10,%esp
c00314d1:	eb 7f                	jmp    c0031552 <.L10+0x2f>

c00314d3 <.L15>:
c00314d3:	83 ec 0c             	sub    $0xc,%esp
c00314d6:	ff 75 08             	pushl  0x8(%ebp)
c00314d9:	e8 52 fe ff ff       	call   c0031330 <sys_open>
c00314de:	83 c4 10             	add    $0x10,%esp
c00314e1:	eb 6f                	jmp    c0031552 <.L10+0x2f>

c00314e3 <.L13>:
c00314e3:	83 ec 0c             	sub    $0xc,%esp
c00314e6:	ff 75 08             	pushl  0x8(%ebp)
c00314e9:	e8 7e fe ff ff       	call   c003136c <sys_read>
c00314ee:	83 c4 10             	add    $0x10,%esp
c00314f1:	eb 5f                	jmp    c0031552 <.L10+0x2f>

c00314f3 <.L14>:
c00314f3:	83 ec 0c             	sub    $0xc,%esp
c00314f6:	ff 75 08             	pushl  0x8(%ebp)
c00314f9:	e8 b1 fe ff ff       	call   c00313af <sys_write>
c00314fe:	83 c4 10             	add    $0x10,%esp
c0031501:	eb 4f                	jmp    c0031552 <.L10+0x2f>

c0031503 <.L17>:
c0031503:	83 ec 0c             	sub    $0xc,%esp
c0031506:	ff 75 08             	pushl  0x8(%ebp)
c0031509:	e8 e4 fe ff ff       	call   c00313f2 <sys_lseek>
c003150e:	83 c4 10             	add    $0x10,%esp
c0031511:	eb 3f                	jmp    c0031552 <.L10+0x2f>

c0031513 <.L16>:
c0031513:	83 ec 0c             	sub    $0xc,%esp
c0031516:	ff 75 08             	pushl  0x8(%ebp)
c0031519:	e8 19 ff ff ff       	call   c0031437 <sys_close>
c003151e:	83 c4 10             	add    $0x10,%esp
c0031521:	eb 2f                	jmp    c0031552 <.L10+0x2f>

c0031523 <.L10>:
c0031523:	8b 45 08             	mov    0x8(%ebp),%eax
c0031526:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031529:	83 ec 0c             	sub    $0xc,%esp
c003152c:	50                   	push   %eax
c003152d:	8d 83 94 ce ff ff    	lea    -0x316c(%ebx),%eax
c0031533:	50                   	push   %eax
c0031534:	6a 35                	push   $0x35
c0031536:	8d 83 6c cd ff ff    	lea    -0x3294(%ebx),%eax
c003153c:	50                   	push   %eax
c003153d:	8d 83 88 cd ff ff    	lea    -0x3278(%ebx),%eax
c0031543:	50                   	push   %eax
c0031544:	e8 0f 01 00 00       	call   c0031658 <printk>
c0031549:	83 c4 20             	add    $0x20,%esp
c003154c:	b8 01 00 00 00       	mov    $0x1,%eax
c0031551:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0031558 <sti>:
c0031558:	55                   	push   %ebp
c0031559:	89 e5                	mov    %esp,%ebp
c003155b:	e8 c8 ef ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031560:	05 a0 aa 00 00       	add    $0xaaa0,%eax
c0031565:	fb                   	sti    
c0031566:	90                   	nop
c0031567:	5d                   	pop    %ebp
c0031568:	c3                   	ret    

c0031569 <init>:
c0031569:	55                   	push   %ebp
c003156a:	89 e5                	mov    %esp,%ebp
c003156c:	53                   	push   %ebx
c003156d:	83 ec 04             	sub    $0x4,%esp
c0031570:	e8 bb ef ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031575:	81 c3 8b aa 00 00    	add    $0xaa8b,%ebx
c003157b:	e8 73 f3 ff ff       	call   c00308f3 <init_page>
c0031580:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0031586:	8d 83 9b 55 ff bf    	lea    -0x4000aa65(%ebx),%eax
c003158c:	ff e0                	jmp    *%eax
c003158e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031593:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c003159a:	c3                   	ret    

c003159b <init_cond>:
c003159b:	55                   	push   %ebp
c003159c:	89 e5                	mov    %esp,%ebp
c003159e:	53                   	push   %ebx
c003159f:	83 ec 14             	sub    $0x14,%esp
c00315a2:	e8 89 ef ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00315a7:	81 c3 59 aa 00 00    	add    $0xaa59,%ebx
c00315ad:	e8 20 f5 ff ff       	call   c0030ad2 <init_segment>
c00315b2:	e8 a2 fa ff ff       	call   c0031059 <init_idt>
c00315b7:	e8 9c ff ff ff       	call   c0031558 <sti>
c00315bc:	e8 1d 04 00 00       	call   c00319de <init_ide>
c00315c1:	e8 fa f5 ff ff       	call   c0030bc0 <init_mm>
c00315c6:	8d 83 e0 ce ff ff    	lea    -0x3120(%ebx),%eax
c00315cc:	50                   	push   %eax
c00315cd:	6a 4b                	push   $0x4b
c00315cf:	8d 83 a0 ce ff ff    	lea    -0x3160(%ebx),%eax
c00315d5:	50                   	push   %eax
c00315d6:	8d 83 ac ce ff ff    	lea    -0x3154(%ebx),%eax
c00315dc:	50                   	push   %eax
c00315dd:	e8 76 00 00 00       	call   c0031658 <printk>
c00315e2:	83 c4 10             	add    $0x10,%esp
c00315e5:	e8 84 f1 ff ff       	call   c003076e <video_mapping_write_test>
c00315ea:	e8 5b ef ff ff       	call   c003054a <loader>
c00315ef:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00315f2:	e8 ba f1 ff ff       	call   c00307b1 <video_mapping_read_test>
c00315f7:	e8 30 f2 ff ff       	call   c003082c <video_mapping_clear>
c00315fc:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0031601:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031604:	ff d0                	call   *%eax
c0031606:	90                   	nop
c0031607:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003160a:	c9                   	leave  
c003160b:	c3                   	ret    

c003160c <sbrk>:
c003160c:	55                   	push   %ebp
c003160d:	89 e5                	mov    %esp,%ebp
c003160f:	53                   	push   %ebx
c0031610:	83 ec 04             	sub    $0x4,%esp
c0031613:	e8 10 ef ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031618:	05 e8 a9 00 00       	add    $0xa9e8,%eax
c003161d:	83 ec 0c             	sub    $0xc,%esp
c0031620:	8d 90 ec ce ff ff    	lea    -0x3114(%eax),%edx
c0031626:	52                   	push   %edx
c0031627:	8d 90 4c cf ff ff    	lea    -0x30b4(%eax),%edx
c003162d:	52                   	push   %edx
c003162e:	6a 08                	push   $0x8
c0031630:	8d 90 ee ce ff ff    	lea    -0x3112(%eax),%edx
c0031636:	52                   	push   %edx
c0031637:	8d 90 00 cf ff ff    	lea    -0x3100(%eax),%edx
c003163d:	52                   	push   %edx
c003163e:	89 c3                	mov    %eax,%ebx
c0031640:	e8 13 00 00 00       	call   c0031658 <printk>
c0031645:	83 c4 20             	add    $0x20,%esp
c0031648:	b8 01 00 00 00       	mov    $0x1,%eax
c003164d:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0031654:	5d                   	pop    %ebp
c0031655:	fc                   	cld    
c0031656:	c9                   	leave  
c0031657:	c3                   	ret    

c0031658 <printk>:
c0031658:	55                   	push   %ebp
c0031659:	89 e5                	mov    %esp,%ebp
c003165b:	53                   	push   %ebx
c003165c:	83 ec 14             	sub    $0x14,%esp
c003165f:	e8 cc ee ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031664:	81 c3 9c a9 00 00    	add    $0xa99c,%ebx
c003166a:	8d 45 0c             	lea    0xc(%ebp),%eax
c003166d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031670:	8b 45 08             	mov    0x8(%ebp),%eax
c0031673:	ff 75 f4             	pushl  -0xc(%ebp)
c0031676:	50                   	push   %eax
c0031677:	68 00 01 00 00       	push   $0x100
c003167c:	8d 83 a0 19 00 00    	lea    0x19a0(%ebx),%eax
c0031682:	50                   	push   %eax
c0031683:	e8 68 0c 00 00       	call   c00322f0 <vsnprintf>
c0031688:	83 c4 10             	add    $0x10,%esp
c003168b:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003168e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031691:	83 ec 04             	sub    $0x4,%esp
c0031694:	50                   	push   %eax
c0031695:	8d 83 a0 19 00 00    	lea    0x19a0(%ebx),%eax
c003169b:	50                   	push   %eax
c003169c:	6a 01                	push   $0x1
c003169e:	e8 c7 ec ff ff       	call   c003036a <fs_write>
c00316a3:	83 c4 10             	add    $0x10,%esp
c00316a6:	90                   	nop
c00316a7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316aa:	c9                   	leave  
c00316ab:	c3                   	ret    

c00316ac <in_byte>:
c00316ac:	55                   	push   %ebp
c00316ad:	89 e5                	mov    %esp,%ebp
c00316af:	83 ec 14             	sub    $0x14,%esp
c00316b2:	e8 71 ee ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00316b7:	05 49 a9 00 00       	add    $0xa949,%eax
c00316bc:	8b 45 08             	mov    0x8(%ebp),%eax
c00316bf:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00316c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00316c6:	89 c2                	mov    %eax,%edx
c00316c8:	ec                   	in     (%dx),%al
c00316c9:	88 45 ff             	mov    %al,-0x1(%ebp)
c00316cc:	8a 45 ff             	mov    -0x1(%ebp),%al
c00316cf:	c9                   	leave  
c00316d0:	c3                   	ret    

c00316d1 <out_byte>:
c00316d1:	55                   	push   %ebp
c00316d2:	89 e5                	mov    %esp,%ebp
c00316d4:	83 ec 08             	sub    $0x8,%esp
c00316d7:	e8 4c ee ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00316dc:	05 24 a9 00 00       	add    $0xa924,%eax
c00316e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00316e4:	8b 55 0c             	mov    0xc(%ebp),%edx
c00316e7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00316eb:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00316ee:	8a 45 f8             	mov    -0x8(%ebp),%al
c00316f1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00316f4:	ee                   	out    %al,(%dx)
c00316f5:	90                   	nop
c00316f6:	c9                   	leave  
c00316f7:	c3                   	ret    

c00316f8 <init_serial>:
c00316f8:	55                   	push   %ebp
c00316f9:	89 e5                	mov    %esp,%ebp
c00316fb:	e8 28 ee ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031700:	05 00 a9 00 00       	add    $0xa900,%eax
c0031705:	90                   	nop
c0031706:	5d                   	pop    %ebp
c0031707:	c3                   	ret    

c0031708 <serial_idle>:
c0031708:	55                   	push   %ebp
c0031709:	89 e5                	mov    %esp,%ebp
c003170b:	e8 18 ee ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031710:	05 f0 a8 00 00       	add    $0xa8f0,%eax
c0031715:	68 fd 03 00 00       	push   $0x3fd
c003171a:	e8 8d ff ff ff       	call   c00316ac <in_byte>
c003171f:	83 c4 04             	add    $0x4,%esp
c0031722:	0f b6 c0             	movzbl %al,%eax
c0031725:	83 e0 20             	and    $0x20,%eax
c0031728:	85 c0                	test   %eax,%eax
c003172a:	0f 95 c0             	setne  %al
c003172d:	0f b6 c0             	movzbl %al,%eax
c0031730:	c9                   	leave  
c0031731:	c3                   	ret    

c0031732 <serial_printc>:
c0031732:	55                   	push   %ebp
c0031733:	89 e5                	mov    %esp,%ebp
c0031735:	83 ec 04             	sub    $0x4,%esp
c0031738:	e8 eb ed ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c003173d:	05 c3 a8 00 00       	add    $0xa8c3,%eax
c0031742:	8b 45 08             	mov    0x8(%ebp),%eax
c0031745:	88 45 fc             	mov    %al,-0x4(%ebp)
c0031748:	90                   	nop
c0031749:	e8 ba ff ff ff       	call   c0031708 <serial_idle>
c003174e:	85 c0                	test   %eax,%eax
c0031750:	74 f7                	je     c0031749 <serial_printc+0x17>
c0031752:	8a 45 fc             	mov    -0x4(%ebp),%al
c0031755:	0f b6 c0             	movzbl %al,%eax
c0031758:	50                   	push   %eax
c0031759:	68 f8 03 00 00       	push   $0x3f8
c003175e:	e8 6e ff ff ff       	call   c00316d1 <out_byte>
c0031763:	83 c4 08             	add    $0x8,%esp
c0031766:	90                   	nop
c0031767:	c9                   	leave  
c0031768:	c3                   	ret    

c0031769 <in_byte>:
c0031769:	55                   	push   %ebp
c003176a:	89 e5                	mov    %esp,%ebp
c003176c:	83 ec 14             	sub    $0x14,%esp
c003176f:	e8 b4 ed ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031774:	05 8c a8 00 00       	add    $0xa88c,%eax
c0031779:	8b 45 08             	mov    0x8(%ebp),%eax
c003177c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031780:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031783:	89 c2                	mov    %eax,%edx
c0031785:	ec                   	in     (%dx),%al
c0031786:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031789:	8a 45 ff             	mov    -0x1(%ebp),%al
c003178c:	c9                   	leave  
c003178d:	c3                   	ret    

c003178e <out_byte>:
c003178e:	55                   	push   %ebp
c003178f:	89 e5                	mov    %esp,%ebp
c0031791:	83 ec 08             	sub    $0x8,%esp
c0031794:	e8 8f ed ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031799:	05 67 a8 00 00       	add    $0xa867,%eax
c003179e:	8b 45 08             	mov    0x8(%ebp),%eax
c00317a1:	8b 55 0c             	mov    0xc(%ebp),%edx
c00317a4:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00317a8:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00317ab:	8a 45 f8             	mov    -0x8(%ebp),%al
c00317ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00317b1:	ee                   	out    %al,(%dx)
c00317b2:	90                   	nop
c00317b3:	c9                   	leave  
c00317b4:	c3                   	ret    

c00317b5 <out_long>:
c00317b5:	55                   	push   %ebp
c00317b6:	89 e5                	mov    %esp,%ebp
c00317b8:	83 ec 04             	sub    $0x4,%esp
c00317bb:	e8 68 ed ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00317c0:	05 40 a8 00 00       	add    $0xa840,%eax
c00317c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00317c8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00317cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00317cf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00317d2:	ef                   	out    %eax,(%dx)
c00317d3:	90                   	nop
c00317d4:	c9                   	leave  
c00317d5:	c3                   	ret    

c00317d6 <dma_prepare>:
c00317d6:	55                   	push   %ebp
c00317d7:	89 e5                	mov    %esp,%ebp
c00317d9:	83 ec 10             	sub    $0x10,%esp
c00317dc:	e8 47 ed ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c00317e1:	05 1f a8 00 00       	add    $0xa81f,%eax
c00317e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00317e9:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00317ef:	89 55 fc             	mov    %edx,-0x4(%ebp)
c00317f2:	c7 c2 04 40 09 c0    	mov    $0xc0094004,%edx
c00317f8:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00317fb:	89 0a                	mov    %ecx,(%edx)
c00317fd:	c7 c2 04 40 09 c0    	mov    $0xc0094004,%edx
c0031803:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0031809:	c7 c2 04 40 09 c0    	mov    $0xc0094004,%edx
c003180f:	8a 4a 07             	mov    0x7(%edx),%cl
c0031812:	83 c9 80             	or     $0xffffff80,%ecx
c0031815:	88 4a 07             	mov    %cl,0x7(%edx)
c0031818:	c7 c1 04 40 09 c0    	mov    $0xc0094004,%ecx
c003181e:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0031822:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0031828:	66 89 51 06          	mov    %dx,0x6(%ecx)
c003182c:	c7 c0 04 40 09 c0    	mov    $0xc0094004,%eax
c0031832:	05 00 00 00 40       	add    $0x40000000,%eax
c0031837:	89 45 f8             	mov    %eax,-0x8(%ebp)
c003183a:	ff 75 f8             	pushl  -0x8(%ebp)
c003183d:	68 44 c0 00 00       	push   $0xc044
c0031842:	e8 6e ff ff ff       	call   c00317b5 <out_long>
c0031847:	83 c4 08             	add    $0x8,%esp
c003184a:	90                   	nop
c003184b:	c9                   	leave  
c003184c:	c3                   	ret    

c003184d <dma_issue_read>:
c003184d:	55                   	push   %ebp
c003184e:	89 e5                	mov    %esp,%ebp
c0031850:	e8 d3 ec ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031855:	05 ab a7 00 00       	add    $0xa7ab,%eax
c003185a:	68 40 c0 00 00       	push   $0xc040
c003185f:	e8 05 ff ff ff       	call   c0031769 <in_byte>
c0031864:	83 c4 04             	add    $0x4,%esp
c0031867:	83 c8 09             	or     $0x9,%eax
c003186a:	0f b6 c0             	movzbl %al,%eax
c003186d:	50                   	push   %eax
c003186e:	68 40 c0 00 00       	push   $0xc040
c0031873:	e8 16 ff ff ff       	call   c003178e <out_byte>
c0031878:	83 c4 08             	add    $0x8,%esp
c003187b:	90                   	nop
c003187c:	c9                   	leave  
c003187d:	c3                   	ret    

c003187e <sti>:
c003187e:	55                   	push   %ebp
c003187f:	89 e5                	mov    %esp,%ebp
c0031881:	e8 a2 ec ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031886:	05 7a a7 00 00       	add    $0xa77a,%eax
c003188b:	fb                   	sti    
c003188c:	90                   	nop
c003188d:	5d                   	pop    %ebp
c003188e:	c3                   	ret    

c003188f <wait_intr>:
c003188f:	55                   	push   %ebp
c0031890:	89 e5                	mov    %esp,%ebp
c0031892:	e8 91 ec ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031897:	05 69 a7 00 00       	add    $0xa769,%eax
c003189c:	f4                   	hlt    
c003189d:	90                   	nop
c003189e:	5d                   	pop    %ebp
c003189f:	c3                   	ret    

c00318a0 <ide_read>:
c00318a0:	55                   	push   %ebp
c00318a1:	89 e5                	mov    %esp,%ebp
c00318a3:	56                   	push   %esi
c00318a4:	53                   	push   %ebx
c00318a5:	83 ec 10             	sub    $0x10,%esp
c00318a8:	e8 83 ec ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00318ad:	81 c3 53 a7 00 00    	add    $0xa753,%ebx
c00318b3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00318ba:	eb 22                	jmp    c00318de <ide_read+0x3e>
c00318bc:	8b 55 08             	mov    0x8(%ebp),%edx
c00318bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318c2:	8d 34 02             	lea    (%edx,%eax,1),%esi
c00318c5:	8b 55 0c             	mov    0xc(%ebp),%edx
c00318c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318cb:	01 d0                	add    %edx,%eax
c00318cd:	83 ec 0c             	sub    $0xc,%esp
c00318d0:	50                   	push   %eax
c00318d1:	e8 16 05 00 00       	call   c0031dec <read_byte>
c00318d6:	83 c4 10             	add    $0x10,%esp
c00318d9:	88 06                	mov    %al,(%esi)
c00318db:	ff 45 f4             	incl   -0xc(%ebp)
c00318de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00318e1:	3b 45 10             	cmp    0x10(%ebp),%eax
c00318e4:	72 d6                	jb     c00318bc <ide_read+0x1c>
c00318e6:	90                   	nop
c00318e7:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00318ea:	5b                   	pop    %ebx
c00318eb:	5e                   	pop    %esi
c00318ec:	5d                   	pop    %ebp
c00318ed:	c3                   	ret    

c00318ee <ide_write>:
c00318ee:	55                   	push   %ebp
c00318ef:	89 e5                	mov    %esp,%ebp
c00318f1:	53                   	push   %ebx
c00318f2:	83 ec 14             	sub    $0x14,%esp
c00318f5:	e8 36 ec ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00318fa:	81 c3 06 a7 00 00    	add    $0xa706,%ebx
c0031900:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031907:	eb 25                	jmp    c003192e <ide_write+0x40>
c0031909:	8b 55 08             	mov    0x8(%ebp),%edx
c003190c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003190f:	01 d0                	add    %edx,%eax
c0031911:	8a 00                	mov    (%eax),%al
c0031913:	0f b6 c0             	movzbl %al,%eax
c0031916:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0031919:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003191c:	01 ca                	add    %ecx,%edx
c003191e:	83 ec 08             	sub    $0x8,%esp
c0031921:	50                   	push   %eax
c0031922:	52                   	push   %edx
c0031923:	e8 01 05 00 00       	call   c0031e29 <write_byte>
c0031928:	83 c4 10             	add    $0x10,%esp
c003192b:	ff 45 f4             	incl   -0xc(%ebp)
c003192e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031931:	3b 45 10             	cmp    0x10(%ebp),%eax
c0031934:	72 d3                	jb     c0031909 <ide_write+0x1b>
c0031936:	90                   	nop
c0031937:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003193a:	c9                   	leave  
c003193b:	c3                   	ret    

c003193c <ide_writeback>:
c003193c:	55                   	push   %ebp
c003193d:	89 e5                	mov    %esp,%ebp
c003193f:	53                   	push   %ebx
c0031940:	83 ec 04             	sub    $0x4,%esp
c0031943:	e8 e8 eb ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031948:	81 c3 b8 a6 00 00    	add    $0xa6b8,%ebx
c003194e:	8b 83 a4 1a 00 00    	mov    0x1aa4(%ebx),%eax
c0031954:	40                   	inc    %eax
c0031955:	89 83 a4 1a 00 00    	mov    %eax,0x1aa4(%ebx)
c003195b:	8b 83 a4 1a 00 00    	mov    0x1aa4(%ebx),%eax
c0031961:	83 f8 64             	cmp    $0x64,%eax
c0031964:	75 0f                	jne    c0031975 <ide_writeback+0x39>
c0031966:	e8 46 03 00 00       	call   c0031cb1 <cache_writeback>
c003196b:	c7 83 a4 1a 00 00 00 	movl   $0x0,0x1aa4(%ebx)
c0031972:	00 00 00 
c0031975:	90                   	nop
c0031976:	83 c4 04             	add    $0x4,%esp
c0031979:	5b                   	pop    %ebx
c003197a:	5d                   	pop    %ebp
c003197b:	c3                   	ret    

c003197c <ide_intr>:
c003197c:	55                   	push   %ebp
c003197d:	89 e5                	mov    %esp,%ebp
c003197f:	e8 a4 eb ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031984:	05 7c a6 00 00       	add    $0xa67c,%eax
c0031989:	c7 80 a0 1a 00 00 01 	movl   $0x1,0x1aa0(%eax)
c0031990:	00 00 00 
c0031993:	90                   	nop
c0031994:	5d                   	pop    %ebp
c0031995:	c3                   	ret    

c0031996 <clear_ide_intr>:
c0031996:	55                   	push   %ebp
c0031997:	89 e5                	mov    %esp,%ebp
c0031999:	e8 8a eb ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c003199e:	05 62 a6 00 00       	add    $0xa662,%eax
c00319a3:	c7 80 a0 1a 00 00 00 	movl   $0x0,0x1aa0(%eax)
c00319aa:	00 00 00 
c00319ad:	90                   	nop
c00319ae:	5d                   	pop    %ebp
c00319af:	c3                   	ret    

c00319b0 <wait_ide_intr>:
c00319b0:	55                   	push   %ebp
c00319b1:	89 e5                	mov    %esp,%ebp
c00319b3:	53                   	push   %ebx
c00319b4:	e8 77 eb ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00319b9:	81 c3 47 a6 00 00    	add    $0xa647,%ebx
c00319bf:	e8 ba fe ff ff       	call   c003187e <sti>
c00319c4:	eb 05                	jmp    c00319cb <wait_ide_intr+0x1b>
c00319c6:	e8 c4 fe ff ff       	call   c003188f <wait_intr>
c00319cb:	8b 83 a0 1a 00 00    	mov    0x1aa0(%ebx),%eax
c00319d1:	85 c0                	test   %eax,%eax
c00319d3:	74 f1                	je     c00319c6 <wait_ide_intr+0x16>
c00319d5:	e8 bc ff ff ff       	call   c0031996 <clear_ide_intr>
c00319da:	90                   	nop
c00319db:	5b                   	pop    %ebx
c00319dc:	5d                   	pop    %ebp
c00319dd:	c3                   	ret    

c00319de <init_ide>:
c00319de:	55                   	push   %ebp
c00319df:	89 e5                	mov    %esp,%ebp
c00319e1:	53                   	push   %ebx
c00319e2:	83 ec 04             	sub    $0x4,%esp
c00319e5:	e8 46 eb ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c00319ea:	81 c3 16 a6 00 00    	add    $0xa616,%ebx
c00319f0:	e8 79 02 00 00       	call   c0031c6e <cache_init>
c00319f5:	83 ec 08             	sub    $0x8,%esp
c00319f8:	8d 83 3c 59 ff ff    	lea    -0xa6c4(%ebx),%eax
c00319fe:	50                   	push   %eax
c00319ff:	6a 00                	push   $0x0
c0031a01:	e8 2d f3 ff ff       	call   c0030d33 <add_irq_handle>
c0031a06:	83 c4 10             	add    $0x10,%esp
c0031a09:	83 ec 08             	sub    $0x8,%esp
c0031a0c:	8d 83 7c 59 ff ff    	lea    -0xa684(%ebx),%eax
c0031a12:	50                   	push   %eax
c0031a13:	6a 0e                	push   $0xe
c0031a15:	e8 19 f3 ff ff       	call   c0030d33 <add_irq_handle>
c0031a1a:	83 c4 10             	add    $0x10,%esp
c0031a1d:	90                   	nop
c0031a1e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a21:	c9                   	leave  
c0031a22:	c3                   	ret    

c0031a23 <in_byte>:
c0031a23:	55                   	push   %ebp
c0031a24:	89 e5                	mov    %esp,%ebp
c0031a26:	83 ec 14             	sub    $0x14,%esp
c0031a29:	e8 fa ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031a2e:	05 d2 a5 00 00       	add    $0xa5d2,%eax
c0031a33:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a36:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031a3a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031a3d:	89 c2                	mov    %eax,%edx
c0031a3f:	ec                   	in     (%dx),%al
c0031a40:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031a43:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031a46:	c9                   	leave  
c0031a47:	c3                   	ret    

c0031a48 <in_long>:
c0031a48:	55                   	push   %ebp
c0031a49:	89 e5                	mov    %esp,%ebp
c0031a4b:	83 ec 14             	sub    $0x14,%esp
c0031a4e:	e8 d5 ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031a53:	05 ad a5 00 00       	add    $0xa5ad,%eax
c0031a58:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a5b:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031a5f:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031a62:	89 c2                	mov    %eax,%edx
c0031a64:	ed                   	in     (%dx),%eax
c0031a65:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031a68:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031a6b:	c9                   	leave  
c0031a6c:	c3                   	ret    

c0031a6d <out_byte>:
c0031a6d:	55                   	push   %ebp
c0031a6e:	89 e5                	mov    %esp,%ebp
c0031a70:	83 ec 08             	sub    $0x8,%esp
c0031a73:	e8 b0 ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031a78:	05 88 a5 00 00       	add    $0xa588,%eax
c0031a7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a80:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031a83:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031a87:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031a8a:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031a8d:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031a90:	ee                   	out    %al,(%dx)
c0031a91:	90                   	nop
c0031a92:	c9                   	leave  
c0031a93:	c3                   	ret    

c0031a94 <out_long>:
c0031a94:	55                   	push   %ebp
c0031a95:	89 e5                	mov    %esp,%ebp
c0031a97:	83 ec 04             	sub    $0x4,%esp
c0031a9a:	e8 89 ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031a9f:	05 61 a5 00 00       	add    $0xa561,%eax
c0031aa4:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031aab:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031aae:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031ab1:	ef                   	out    %eax,(%dx)
c0031ab2:	90                   	nop
c0031ab3:	c9                   	leave  
c0031ab4:	c3                   	ret    

c0031ab5 <waitdisk>:
c0031ab5:	55                   	push   %ebp
c0031ab6:	89 e5                	mov    %esp,%ebp
c0031ab8:	e8 6b ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031abd:	05 43 a5 00 00       	add    $0xa543,%eax
c0031ac2:	90                   	nop
c0031ac3:	68 f7 01 00 00       	push   $0x1f7
c0031ac8:	e8 56 ff ff ff       	call   c0031a23 <in_byte>
c0031acd:	83 c4 04             	add    $0x4,%esp
c0031ad0:	0f b6 c0             	movzbl %al,%eax
c0031ad3:	25 c0 00 00 00       	and    $0xc0,%eax
c0031ad8:	83 f8 40             	cmp    $0x40,%eax
c0031adb:	75 e6                	jne    c0031ac3 <waitdisk+0xe>
c0031add:	90                   	nop
c0031ade:	c9                   	leave  
c0031adf:	c3                   	ret    

c0031ae0 <ide_prepare>:
c0031ae0:	55                   	push   %ebp
c0031ae1:	89 e5                	mov    %esp,%ebp
c0031ae3:	e8 40 ea ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031ae8:	05 18 a5 00 00       	add    $0xa518,%eax
c0031aed:	e8 c3 ff ff ff       	call   c0031ab5 <waitdisk>
c0031af2:	6a 00                	push   $0x0
c0031af4:	68 f1 01 00 00       	push   $0x1f1
c0031af9:	e8 6f ff ff ff       	call   c0031a6d <out_byte>
c0031afe:	83 c4 08             	add    $0x8,%esp
c0031b01:	6a 01                	push   $0x1
c0031b03:	68 f2 01 00 00       	push   $0x1f2
c0031b08:	e8 60 ff ff ff       	call   c0031a6d <out_byte>
c0031b0d:	83 c4 08             	add    $0x8,%esp
c0031b10:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b13:	0f b6 c0             	movzbl %al,%eax
c0031b16:	50                   	push   %eax
c0031b17:	68 f3 01 00 00       	push   $0x1f3
c0031b1c:	e8 4c ff ff ff       	call   c0031a6d <out_byte>
c0031b21:	83 c4 08             	add    $0x8,%esp
c0031b24:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b27:	c1 e8 08             	shr    $0x8,%eax
c0031b2a:	0f b6 c0             	movzbl %al,%eax
c0031b2d:	50                   	push   %eax
c0031b2e:	68 f4 01 00 00       	push   $0x1f4
c0031b33:	e8 35 ff ff ff       	call   c0031a6d <out_byte>
c0031b38:	83 c4 08             	add    $0x8,%esp
c0031b3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b3e:	c1 e8 10             	shr    $0x10,%eax
c0031b41:	0f b6 c0             	movzbl %al,%eax
c0031b44:	50                   	push   %eax
c0031b45:	68 f5 01 00 00       	push   $0x1f5
c0031b4a:	e8 1e ff ff ff       	call   c0031a6d <out_byte>
c0031b4f:	83 c4 08             	add    $0x8,%esp
c0031b52:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b55:	c1 e8 18             	shr    $0x18,%eax
c0031b58:	83 c8 e0             	or     $0xffffffe0,%eax
c0031b5b:	0f b6 c0             	movzbl %al,%eax
c0031b5e:	50                   	push   %eax
c0031b5f:	68 f6 01 00 00       	push   $0x1f6
c0031b64:	e8 04 ff ff ff       	call   c0031a6d <out_byte>
c0031b69:	83 c4 08             	add    $0x8,%esp
c0031b6c:	90                   	nop
c0031b6d:	c9                   	leave  
c0031b6e:	c3                   	ret    

c0031b6f <issue_read>:
c0031b6f:	55                   	push   %ebp
c0031b70:	89 e5                	mov    %esp,%ebp
c0031b72:	e8 b1 e9 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031b77:	05 89 a4 00 00       	add    $0xa489,%eax
c0031b7c:	6a 20                	push   $0x20
c0031b7e:	68 f7 01 00 00       	push   $0x1f7
c0031b83:	e8 e5 fe ff ff       	call   c0031a6d <out_byte>
c0031b88:	83 c4 08             	add    $0x8,%esp
c0031b8b:	90                   	nop
c0031b8c:	c9                   	leave  
c0031b8d:	c3                   	ret    

c0031b8e <issue_write>:
c0031b8e:	55                   	push   %ebp
c0031b8f:	89 e5                	mov    %esp,%ebp
c0031b91:	e8 92 e9 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031b96:	05 6a a4 00 00       	add    $0xa46a,%eax
c0031b9b:	6a 30                	push   $0x30
c0031b9d:	68 f7 01 00 00       	push   $0x1f7
c0031ba2:	e8 c6 fe ff ff       	call   c0031a6d <out_byte>
c0031ba7:	83 c4 08             	add    $0x8,%esp
c0031baa:	90                   	nop
c0031bab:	c9                   	leave  
c0031bac:	c3                   	ret    

c0031bad <disk_do_read>:
c0031bad:	55                   	push   %ebp
c0031bae:	89 e5                	mov    %esp,%ebp
c0031bb0:	53                   	push   %ebx
c0031bb1:	83 ec 14             	sub    $0x14,%esp
c0031bb4:	e8 77 e9 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031bb9:	81 c3 47 a4 00 00    	add    $0xa447,%ebx
c0031bbf:	e8 d2 fd ff ff       	call   c0031996 <clear_ide_intr>
c0031bc4:	83 ec 0c             	sub    $0xc,%esp
c0031bc7:	ff 75 0c             	pushl  0xc(%ebp)
c0031bca:	e8 11 ff ff ff       	call   c0031ae0 <ide_prepare>
c0031bcf:	83 c4 10             	add    $0x10,%esp
c0031bd2:	e8 98 ff ff ff       	call   c0031b6f <issue_read>
c0031bd7:	e8 d4 fd ff ff       	call   c00319b0 <wait_ide_intr>
c0031bdc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031be3:	eb 25                	jmp    c0031c0a <disk_do_read+0x5d>
c0031be5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031be8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031bef:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bf2:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0031bf5:	83 ec 0c             	sub    $0xc,%esp
c0031bf8:	68 f0 01 00 00       	push   $0x1f0
c0031bfd:	e8 46 fe ff ff       	call   c0031a48 <in_long>
c0031c02:	83 c4 10             	add    $0x10,%esp
c0031c05:	89 03                	mov    %eax,(%ebx)
c0031c07:	ff 45 f4             	incl   -0xc(%ebp)
c0031c0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031c0d:	83 f8 7f             	cmp    $0x7f,%eax
c0031c10:	76 d3                	jbe    c0031be5 <disk_do_read+0x38>
c0031c12:	90                   	nop
c0031c13:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031c16:	c9                   	leave  
c0031c17:	c3                   	ret    

c0031c18 <disk_do_write>:
c0031c18:	55                   	push   %ebp
c0031c19:	89 e5                	mov    %esp,%ebp
c0031c1b:	83 ec 10             	sub    $0x10,%esp
c0031c1e:	e8 05 e9 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031c23:	05 dd a3 00 00       	add    $0xa3dd,%eax
c0031c28:	ff 75 0c             	pushl  0xc(%ebp)
c0031c2b:	e8 b0 fe ff ff       	call   c0031ae0 <ide_prepare>
c0031c30:	83 c4 04             	add    $0x4,%esp
c0031c33:	e8 56 ff ff ff       	call   c0031b8e <issue_write>
c0031c38:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031c3f:	eb 22                	jmp    c0031c63 <disk_do_write+0x4b>
c0031c41:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031c44:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031c4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031c4e:	01 d0                	add    %edx,%eax
c0031c50:	8b 00                	mov    (%eax),%eax
c0031c52:	50                   	push   %eax
c0031c53:	68 f0 01 00 00       	push   $0x1f0
c0031c58:	e8 37 fe ff ff       	call   c0031a94 <out_long>
c0031c5d:	83 c4 08             	add    $0x8,%esp
c0031c60:	ff 45 fc             	incl   -0x4(%ebp)
c0031c63:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031c66:	83 f8 7f             	cmp    $0x7f,%eax
c0031c69:	76 d6                	jbe    c0031c41 <disk_do_write+0x29>
c0031c6b:	90                   	nop
c0031c6c:	c9                   	leave  
c0031c6d:	c3                   	ret    

c0031c6e <cache_init>:
c0031c6e:	55                   	push   %ebp
c0031c6f:	89 e5                	mov    %esp,%ebp
c0031c71:	53                   	push   %ebx
c0031c72:	83 ec 10             	sub    $0x10,%esp
c0031c75:	e8 b2 e8 ff ff       	call   c003052c <__x86.get_pc_thunk.dx>
c0031c7a:	81 c2 86 a3 00 00    	add    $0xa386,%edx
c0031c80:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0031c87:	eb 1b                	jmp    c0031ca4 <cache_init+0x36>
c0031c89:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0031c8c:	8d 9a c4 1a 00 00    	lea    0x1ac4(%edx),%ebx
c0031c92:	89 c8                	mov    %ecx,%eax
c0031c94:	c1 e0 06             	shl    $0x6,%eax
c0031c97:	01 c8                	add    %ecx,%eax
c0031c99:	c1 e0 03             	shl    $0x3,%eax
c0031c9c:	01 d8                	add    %ebx,%eax
c0031c9e:	c6 00 00             	movb   $0x0,(%eax)
c0031ca1:	ff 45 f8             	incl   -0x8(%ebp)
c0031ca4:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0031ca8:	7e df                	jle    c0031c89 <cache_init+0x1b>
c0031caa:	90                   	nop
c0031cab:	83 c4 10             	add    $0x10,%esp
c0031cae:	5b                   	pop    %ebx
c0031caf:	5d                   	pop    %ebp
c0031cb0:	c3                   	ret    

c0031cb1 <cache_writeback>:
c0031cb1:	55                   	push   %ebp
c0031cb2:	89 e5                	mov    %esp,%ebp
c0031cb4:	53                   	push   %ebx
c0031cb5:	83 ec 14             	sub    $0x14,%esp
c0031cb8:	e8 73 e8 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031cbd:	81 c3 43 a3 00 00    	add    $0xa343,%ebx
c0031cc3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031cca:	eb 72                	jmp    c0031d3e <cache_writeback+0x8d>
c0031ccc:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031ccf:	8d 8b c5 1a 00 00    	lea    0x1ac5(%ebx),%ecx
c0031cd5:	89 d0                	mov    %edx,%eax
c0031cd7:	c1 e0 06             	shl    $0x6,%eax
c0031cda:	01 d0                	add    %edx,%eax
c0031cdc:	c1 e0 03             	shl    $0x3,%eax
c0031cdf:	01 c8                	add    %ecx,%eax
c0031ce1:	8a 00                	mov    (%eax),%al
c0031ce3:	3c 01                	cmp    $0x1,%al
c0031ce5:	75 54                	jne    c0031d3b <cache_writeback+0x8a>
c0031ce7:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031cea:	8d 8b c0 1a 00 00    	lea    0x1ac0(%ebx),%ecx
c0031cf0:	89 d0                	mov    %edx,%eax
c0031cf2:	c1 e0 06             	shl    $0x6,%eax
c0031cf5:	01 d0                	add    %edx,%eax
c0031cf7:	c1 e0 03             	shl    $0x3,%eax
c0031cfa:	01 c8                	add    %ecx,%eax
c0031cfc:	8b 10                	mov    (%eax),%edx
c0031cfe:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0031d01:	89 c8                	mov    %ecx,%eax
c0031d03:	c1 e0 06             	shl    $0x6,%eax
c0031d06:	01 c8                	add    %ecx,%eax
c0031d08:	c1 e0 03             	shl    $0x3,%eax
c0031d0b:	8d 8b c0 1a 00 00    	lea    0x1ac0(%ebx),%ecx
c0031d11:	01 c8                	add    %ecx,%eax
c0031d13:	83 c0 06             	add    $0x6,%eax
c0031d16:	83 ec 08             	sub    $0x8,%esp
c0031d19:	52                   	push   %edx
c0031d1a:	50                   	push   %eax
c0031d1b:	e8 f8 fe ff ff       	call   c0031c18 <disk_do_write>
c0031d20:	83 c4 10             	add    $0x10,%esp
c0031d23:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031d26:	8d 8b c5 1a 00 00    	lea    0x1ac5(%ebx),%ecx
c0031d2c:	89 d0                	mov    %edx,%eax
c0031d2e:	c1 e0 06             	shl    $0x6,%eax
c0031d31:	01 d0                	add    %edx,%eax
c0031d33:	c1 e0 03             	shl    $0x3,%eax
c0031d36:	01 c8                	add    %ecx,%eax
c0031d38:	c6 00 00             	movb   $0x0,(%eax)
c0031d3b:	ff 45 f4             	incl   -0xc(%ebp)
c0031d3e:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0031d42:	7e 88                	jle    c0031ccc <cache_writeback+0x1b>
c0031d44:	90                   	nop
c0031d45:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031d48:	c9                   	leave  
c0031d49:	c3                   	ret    

c0031d4a <cache_fetch>:
c0031d4a:	55                   	push   %ebp
c0031d4b:	89 e5                	mov    %esp,%ebp
c0031d4d:	53                   	push   %ebx
c0031d4e:	83 ec 14             	sub    $0x14,%esp
c0031d51:	e8 da e7 ff ff       	call   c0030530 <__x86.get_pc_thunk.bx>
c0031d56:	81 c3 aa a2 00 00    	add    $0xa2aa,%ebx
c0031d5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d5f:	83 e0 7f             	and    $0x7f,%eax
c0031d62:	89 c2                	mov    %eax,%edx
c0031d64:	89 d0                	mov    %edx,%eax
c0031d66:	c1 e0 06             	shl    $0x6,%eax
c0031d69:	01 d0                	add    %edx,%eax
c0031d6b:	c1 e0 03             	shl    $0x3,%eax
c0031d6e:	8d 93 c0 1a 00 00    	lea    0x1ac0(%ebx),%edx
c0031d74:	01 d0                	add    %edx,%eax
c0031d76:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031d79:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d7c:	8a 40 04             	mov    0x4(%eax),%al
c0031d7f:	3c 01                	cmp    $0x1,%al
c0031d81:	75 0a                	jne    c0031d8d <cache_fetch+0x43>
c0031d83:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d86:	8b 00                	mov    (%eax),%eax
c0031d88:	3b 45 08             	cmp    0x8(%ebp),%eax
c0031d8b:	74 57                	je     c0031de4 <cache_fetch+0x9a>
c0031d8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d90:	8a 40 04             	mov    0x4(%eax),%al
c0031d93:	3c 01                	cmp    $0x1,%al
c0031d95:	75 22                	jne    c0031db9 <cache_fetch+0x6f>
c0031d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d9a:	8a 40 05             	mov    0x5(%eax),%al
c0031d9d:	3c 01                	cmp    $0x1,%al
c0031d9f:	75 18                	jne    c0031db9 <cache_fetch+0x6f>
c0031da1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031da4:	8b 00                	mov    (%eax),%eax
c0031da6:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031da9:	83 c2 06             	add    $0x6,%edx
c0031dac:	83 ec 08             	sub    $0x8,%esp
c0031daf:	50                   	push   %eax
c0031db0:	52                   	push   %edx
c0031db1:	e8 62 fe ff ff       	call   c0031c18 <disk_do_write>
c0031db6:	83 c4 10             	add    $0x10,%esp
c0031db9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031dbc:	83 c0 06             	add    $0x6,%eax
c0031dbf:	83 ec 08             	sub    $0x8,%esp
c0031dc2:	ff 75 08             	pushl  0x8(%ebp)
c0031dc5:	50                   	push   %eax
c0031dc6:	e8 e2 fd ff ff       	call   c0031bad <disk_do_read>
c0031dcb:	83 c4 10             	add    $0x10,%esp
c0031dce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031dd1:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0031dd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031dd8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ddb:	89 10                	mov    %edx,(%eax)
c0031ddd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031de0:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0031de4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031de7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031dea:	c9                   	leave  
c0031deb:	c3                   	ret    

c0031dec <read_byte>:
c0031dec:	55                   	push   %ebp
c0031ded:	89 e5                	mov    %esp,%ebp
c0031def:	83 ec 18             	sub    $0x18,%esp
c0031df2:	e8 31 e7 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031df7:	05 09 a2 00 00       	add    $0xa209,%eax
c0031dfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dff:	c1 e8 09             	shr    $0x9,%eax
c0031e02:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031e05:	83 ec 0c             	sub    $0xc,%esp
c0031e08:	ff 75 f4             	pushl  -0xc(%ebp)
c0031e0b:	e8 3a ff ff ff       	call   c0031d4a <cache_fetch>
c0031e10:	83 c4 10             	add    $0x10,%esp
c0031e13:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031e16:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e19:	25 ff 01 00 00       	and    $0x1ff,%eax
c0031e1e:	89 c2                	mov    %eax,%edx
c0031e20:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031e23:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0031e27:	c9                   	leave  
c0031e28:	c3                   	ret    

c0031e29 <write_byte>:
c0031e29:	55                   	push   %ebp
c0031e2a:	89 e5                	mov    %esp,%ebp
c0031e2c:	83 ec 28             	sub    $0x28,%esp
c0031e2f:	e8 f4 e6 ff ff       	call   c0030528 <__x86.get_pc_thunk.ax>
c0031e34:	05 cc a1 00 00       	add    $0xa1cc,%eax
c0031e39:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031e3c:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0031e3f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e42:	c1 e8 09             	shr    $0x9,%eax
c0031e45:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031e48:	83 ec 0c             	sub    $0xc,%esp
c0031e4b:	ff 75 f4             	pushl  -0xc(%ebp)
c0031e4e:	e8 f7 fe ff ff       	call   c0031d4a <cache_fetch>
c0031e53:	83 c4 10             	add    $0x10,%esp
c0031e56:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031e59:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e5c:	25 ff 01 00 00       	and    $0x1ff,%eax
c0031e61:	89 c1                	mov    %eax,%ecx
c0031e63:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031e66:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0031e69:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0031e6d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031e70:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0031e74:	90                   	nop
c0031e75:	c9                   	leave  
c0031e76:	c3                   	ret    
c0031e77:	66 90                	xchg   %ax,%ax
c0031e79:	66 90                	xchg   %ax,%ax
c0031e7b:	66 90                	xchg   %ax,%ax
c0031e7d:	66 90                	xchg   %ax,%ax
c0031e7f:	90                   	nop

c0031e80 <mm_malloc>:
c0031e80:	55                   	push   %ebp
c0031e81:	31 c0                	xor    %eax,%eax
c0031e83:	89 e5                	mov    %esp,%ebp
c0031e85:	57                   	push   %edi
c0031e86:	56                   	push   %esi
c0031e87:	53                   	push   %ebx
c0031e88:	83 ec 3c             	sub    $0x3c,%esp
c0031e8b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031e8e:	85 db                	test   %ebx,%ebx
c0031e90:	0f 8e 36 02 00 00    	jle    c00320cc <mm_malloc+0x24c>
c0031e96:	e8 ab ec ff ff       	call   c0030b46 <get_updir>
c0031e9b:	89 c6                	mov    %eax,%esi
c0031e9d:	e8 b9 ec ff ff       	call   c0030b5b <get_ucr3>
c0031ea2:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ea5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031ea9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031eac:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031eaf:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031eb4:	29 d0                	sub    %edx,%eax
c0031eb6:	89 da                	mov    %ebx,%edx
c0031eb8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031ebe:	01 d0                	add    %edx,%eax
c0031ec0:	85 c0                	test   %eax,%eax
c0031ec2:	0f 8e c0 00 00 00    	jle    c0031f88 <mm_malloc+0x108>
c0031ec8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ecb:	83 e8 01             	sub    $0x1,%eax
c0031ece:	89 f7                	mov    %esi,%edi
c0031ed0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031ed5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031edc:	89 d3                	mov    %edx,%ebx
c0031ede:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031ee1:	eb 51                	jmp    c0031f34 <mm_malloc+0xb4>
c0031ee3:	90                   	nop
c0031ee4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031ee8:	8b 31                	mov    (%ecx),%esi
c0031eea:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031ef0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031ef6:	89 d8                	mov    %ebx,%eax
c0031ef8:	c1 e8 0a             	shr    $0xa,%eax
c0031efb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031f00:	01 c6                	add    %eax,%esi
c0031f02:	f6 06 01             	testb  $0x1,(%esi)
c0031f05:	75 22                	jne    c0031f29 <mm_malloc+0xa9>
c0031f07:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031f0c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031f11:	0f 8f c1 01 00 00    	jg     c00320d8 <mm_malloc+0x258>
c0031f17:	89 c1                	mov    %eax,%ecx
c0031f19:	83 c0 01             	add    $0x1,%eax
c0031f1c:	c1 e1 0c             	shl    $0xc,%ecx
c0031f1f:	83 c9 07             	or     $0x7,%ecx
c0031f22:	89 0e                	mov    %ecx,(%esi)
c0031f24:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031f29:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031f2f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031f32:	74 54                	je     c0031f88 <mm_malloc+0x108>
c0031f34:	89 d8                	mov    %ebx,%eax
c0031f36:	c1 e8 16             	shr    $0x16,%eax
c0031f39:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031f3c:	f6 01 01             	testb  $0x1,(%ecx)
c0031f3f:	75 a7                	jne    c0031ee8 <mm_malloc+0x68>
c0031f41:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031f46:	89 c6                	mov    %eax,%esi
c0031f48:	83 c0 01             	add    $0x1,%eax
c0031f4b:	c1 e6 0c             	shl    $0xc,%esi
c0031f4e:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031f54:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031f59:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031f5f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031f64:	83 c8 07             	or     $0x7,%eax
c0031f67:	89 01                	mov    %eax,(%ecx)
c0031f69:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031f70:	00 
c0031f71:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031f78:	00 
c0031f79:	89 34 24             	mov    %esi,(%esp)
c0031f7c:	e8 db 01 00 00       	call   c003215c <memset>
c0031f81:	e9 70 ff ff ff       	jmp    c0031ef6 <mm_malloc+0x76>
c0031f86:	66 90                	xchg   %ax,%ax
c0031f88:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031f8b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031f8e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031f94:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031f9a:	c1 e8 16             	shr    $0x16,%eax
c0031f9d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031fa0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031fa6:	75 32                	jne    c0031fda <mm_malloc+0x15a>
c0031fa8:	c7 44 24 10 75 8f 03 	movl   $0xc0038f75,0x10(%esp)
c0031faf:	c0 
c0031fb0:	c7 44 24 0c de 8f 03 	movl   $0xc0038fde,0xc(%esp)
c0031fb7:	c0 
c0031fb8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031fbf:	00 
c0031fc0:	c7 44 24 04 64 8f 03 	movl   $0xc0038f64,0x4(%esp)
c0031fc7:	c0 
c0031fc8:	c7 04 24 88 8f 03 c0 	movl   $0xc0038f88,(%esp)
c0031fcf:	e8 84 f6 ff ff       	call   c0031658 <printk>
c0031fd4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031fd9:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031fe0:	00 00                	add    %al,(%eax)
c0031fe2:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031fe9:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031ff0:	00 f6                	add    %dh,%dh
c0031ff2:	04 90                	add    $0x90,%al
c0031ff4:	01 75 32             	add    %esi,0x32(%ebp)
c0031ff7:	c7 44 24 10 7d 8f 03 	movl   $0xc0038f7d,0x10(%esp)
c0031ffe:	c0 
c0031fff:	c7 44 24 0c de 8f 03 	movl   $0xc0038fde,0xc(%esp)
c0032006:	c0 
c0032007:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c003200e:	00 
c003200f:	c7 44 24 04 64 8f 03 	movl   $0xc0038f64,0x4(%esp)
c0032016:	c0 
c0032017:	c7 04 24 88 8f 03 c0 	movl   $0xc0038f88,(%esp)
c003201e:	e8 35 f6 ff ff       	call   c0031658 <printk>
c0032023:	b8 01 00 00 00       	mov    $0x1,%eax
c0032028:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c003202f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0032032:	f6 c3 01             	test   $0x1,%bl
c0032035:	75 32                	jne    c0032069 <mm_malloc+0x1e9>
c0032037:	c7 44 24 10 75 8f 03 	movl   $0xc0038f75,0x10(%esp)
c003203e:	c0 
c003203f:	c7 44 24 0c de 8f 03 	movl   $0xc0038fde,0xc(%esp)
c0032046:	c0 
c0032047:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003204e:	00 
c003204f:	c7 44 24 04 64 8f 03 	movl   $0xc0038f64,0x4(%esp)
c0032056:	c0 
c0032057:	c7 04 24 88 8f 03 c0 	movl   $0xc0038f88,(%esp)
c003205e:	e8 f5 f5 ff ff       	call   c0031658 <printk>
c0032063:	b8 01 00 00 00       	mov    $0x1,%eax
c0032068:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c003206f:	00 00                	add    %al,(%eax)
c0032071:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0032078:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c003207f:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0032085:	01 75 32             	add    %esi,0x32(%ebp)
c0032088:	c7 44 24 10 7d 8f 03 	movl   $0xc0038f7d,0x10(%esp)
c003208f:	c0 
c0032090:	c7 44 24 0c de 8f 03 	movl   $0xc0038fde,0xc(%esp)
c0032097:	c0 
c0032098:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c003209f:	00 
c00320a0:	c7 44 24 04 64 8f 03 	movl   $0xc0038f64,0x4(%esp)
c00320a7:	c0 
c00320a8:	c7 04 24 88 8f 03 c0 	movl   $0xc0038f88,(%esp)
c00320af:	e8 a4 f5 ff ff       	call   c0031658 <printk>
c00320b4:	b8 01 00 00 00       	mov    $0x1,%eax
c00320b9:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c00320c0:	00 f0                	add    %dh,%al
c00320c2:	ff                   	(bad)  
c00320c3:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c00320c9:	00 09                	add    %cl,(%ecx)
c00320cb:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c00320d1:	5f                   	pop    %edi
c00320d2:	5d                   	pop    %ebp
c00320d3:	c3                   	ret    
c00320d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00320d8:	c7 44 24 10 51 8f 03 	movl   $0xc0038f51,0x10(%esp)
c00320df:	c0 
c00320e0:	c7 44 24 0c d4 8f 03 	movl   $0xc0038fd4,0xc(%esp)
c00320e7:	c0 
c00320e8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c00320ef:	00 
c00320f0:	c7 44 24 04 64 8f 03 	movl   $0xc0038f64,0x4(%esp)
c00320f7:	c0 
c00320f8:	c7 04 24 88 8f 03 c0 	movl   $0xc0038f88,(%esp)
c00320ff:	e8 54 f5 ff ff       	call   c0031658 <printk>
c0032104:	b8 01 00 00 00       	mov    $0x1,%eax
c0032109:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0032110:	03 fe                	add    %esi,%edi
c0032112:	ff                   	(bad)  
c0032113:	ff                   	.byte 0xff

c0032114 <memcpy>:
c0032114:	55                   	push   %ebp
c0032115:	89 e5                	mov    %esp,%ebp
c0032117:	56                   	push   %esi
c0032118:	57                   	push   %edi
c0032119:	53                   	push   %ebx
c003211a:	8b 7d 08             	mov    0x8(%ebp),%edi
c003211d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0032120:	8b 75 0c             	mov    0xc(%ebp),%esi
c0032123:	fc                   	cld    
c0032124:	83 f9 08             	cmp    $0x8,%ecx
c0032127:	76 26                	jbe    c003214f <memcpy+0x3b>
c0032129:	89 fa                	mov    %edi,%edx
c003212b:	89 cb                	mov    %ecx,%ebx
c003212d:	83 e2 03             	and    $0x3,%edx
c0032130:	74 10                	je     c0032142 <memcpy+0x2e>
c0032132:	b9 04 00 00 00       	mov    $0x4,%ecx
c0032137:	29 d1                	sub    %edx,%ecx
c0032139:	83 e1 03             	and    $0x3,%ecx
c003213c:	29 cb                	sub    %ecx,%ebx
c003213e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032140:	89 d9                	mov    %ebx,%ecx
c0032142:	c1 e9 02             	shr    $0x2,%ecx
c0032145:	8d 76 00             	lea    0x0(%esi),%esi
c0032148:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003214a:	89 d9                	mov    %ebx,%ecx
c003214c:	83 e1 03             	and    $0x3,%ecx
c003214f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032151:	8b 45 08             	mov    0x8(%ebp),%eax
c0032154:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0032157:	5b                   	pop    %ebx
c0032158:	5f                   	pop    %edi
c0032159:	5e                   	pop    %esi
c003215a:	c9                   	leave  
c003215b:	c3                   	ret    

c003215c <memset>:
c003215c:	55                   	push   %ebp
c003215d:	89 e5                	mov    %esp,%ebp
c003215f:	57                   	push   %edi
c0032160:	8b 7d 08             	mov    0x8(%ebp),%edi
c0032163:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0032167:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003216a:	fc                   	cld    
c003216b:	83 f9 10             	cmp    $0x10,%ecx
c003216e:	76 69                	jbe    c00321d9 <memset+0x7d>
c0032170:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032176:	74 4c                	je     c00321c4 <memset+0x68>
c0032178:	88 07                	mov    %al,(%edi)
c003217a:	47                   	inc    %edi
c003217b:	49                   	dec    %ecx
c003217c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032182:	74 40                	je     c00321c4 <memset+0x68>
c0032184:	88 07                	mov    %al,(%edi)
c0032186:	47                   	inc    %edi
c0032187:	49                   	dec    %ecx
c0032188:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003218e:	74 34                	je     c00321c4 <memset+0x68>
c0032190:	88 07                	mov    %al,(%edi)
c0032192:	47                   	inc    %edi
c0032193:	49                   	dec    %ecx
c0032194:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003219a:	74 28                	je     c00321c4 <memset+0x68>
c003219c:	88 07                	mov    %al,(%edi)
c003219e:	47                   	inc    %edi
c003219f:	49                   	dec    %ecx
c00321a0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00321a6:	74 1c                	je     c00321c4 <memset+0x68>
c00321a8:	88 07                	mov    %al,(%edi)
c00321aa:	47                   	inc    %edi
c00321ab:	49                   	dec    %ecx
c00321ac:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00321b2:	74 10                	je     c00321c4 <memset+0x68>
c00321b4:	88 07                	mov    %al,(%edi)
c00321b6:	47                   	inc    %edi
c00321b7:	49                   	dec    %ecx
c00321b8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00321be:	74 04                	je     c00321c4 <memset+0x68>
c00321c0:	88 07                	mov    %al,(%edi)
c00321c2:	47                   	inc    %edi
c00321c3:	49                   	dec    %ecx
c00321c4:	88 c4                	mov    %al,%ah
c00321c6:	89 c2                	mov    %eax,%edx
c00321c8:	c1 e2 10             	shl    $0x10,%edx
c00321cb:	09 d0                	or     %edx,%eax
c00321cd:	89 ca                	mov    %ecx,%edx
c00321cf:	c1 e9 02             	shr    $0x2,%ecx
c00321d2:	83 e2 03             	and    $0x3,%edx
c00321d5:	f3 ab                	rep stos %eax,%es:(%edi)
c00321d7:	89 d1                	mov    %edx,%ecx
c00321d9:	f3 aa                	rep stos %al,%es:(%edi)
c00321db:	8b 45 08             	mov    0x8(%ebp),%eax
c00321de:	8d 65 fc             	lea    -0x4(%ebp),%esp
c00321e1:	5f                   	pop    %edi
c00321e2:	c9                   	leave  
c00321e3:	c3                   	ret    
c00321e4:	66 90                	xchg   %ax,%ax
c00321e6:	66 90                	xchg   %ax,%ax
c00321e8:	66 90                	xchg   %ax,%ax
c00321ea:	66 90                	xchg   %ax,%ax
c00321ec:	66 90                	xchg   %ax,%ax
c00321ee:	66 90                	xchg   %ax,%ax

c00321f0 <strcmp>:
c00321f0:	55                   	push   %ebp
c00321f1:	89 e5                	mov    %esp,%ebp
c00321f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00321f6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00321f9:	53                   	push   %ebx
c00321fa:	89 c1                	mov    %eax,%ecx
c00321fc:	09 d1                	or     %edx,%ecx
c00321fe:	83 e1 03             	and    $0x3,%ecx
c0032201:	75 17                	jne    c003221a <strcmp+0x2a>
c0032203:	8b 08                	mov    (%eax),%ecx
c0032205:	3b 0a                	cmp    (%edx),%ecx
c0032207:	74 33                	je     c003223c <strcmp+0x4c>
c0032209:	eb 0f                	jmp    c003221a <strcmp+0x2a>
c003220b:	90                   	nop
c003220c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032210:	3a 0a                	cmp    (%edx),%cl
c0032212:	75 0d                	jne    c0032221 <strcmp+0x31>
c0032214:	83 c0 01             	add    $0x1,%eax
c0032217:	83 c2 01             	add    $0x1,%edx
c003221a:	0f b6 08             	movzbl (%eax),%ecx
c003221d:	84 c9                	test   %cl,%cl
c003221f:	75 ef                	jne    c0032210 <strcmp+0x20>
c0032221:	0f b6 00             	movzbl (%eax),%eax
c0032224:	0f b6 12             	movzbl (%edx),%edx
c0032227:	5b                   	pop    %ebx
c0032228:	5d                   	pop    %ebp
c0032229:	29 d0                	sub    %edx,%eax
c003222b:	c3                   	ret    
c003222c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032230:	83 c0 04             	add    $0x4,%eax
c0032233:	83 c2 04             	add    $0x4,%edx
c0032236:	8b 08                	mov    (%eax),%ecx
c0032238:	3b 0a                	cmp    (%edx),%ecx
c003223a:	75 de                	jne    c003221a <strcmp+0x2a>
c003223c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0032242:	f7 d1                	not    %ecx
c0032244:	21 cb                	and    %ecx,%ebx
c0032246:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c003224c:	74 e2                	je     c0032230 <strcmp+0x40>
c003224e:	31 c0                	xor    %eax,%eax
c0032250:	5b                   	pop    %ebx
c0032251:	5d                   	pop    %ebp
c0032252:	c3                   	ret    
c0032253:	66 90                	xchg   %ax,%ax
c0032255:	66 90                	xchg   %ax,%ax
c0032257:	66 90                	xchg   %ax,%ax
c0032259:	66 90                	xchg   %ax,%ax
c003225b:	66 90                	xchg   %ax,%ax
c003225d:	66 90                	xchg   %ax,%ax
c003225f:	90                   	nop

c0032260 <_vsnprintf_r>:
c0032260:	55                   	push   %ebp
c0032261:	89 e5                	mov    %esp,%ebp
c0032263:	56                   	push   %esi
c0032264:	53                   	push   %ebx
c0032265:	83 c4 80             	add    $0xffffff80,%esp
c0032268:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003226b:	8b 75 08             	mov    0x8(%ebp),%esi
c003226e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032271:	85 db                	test   %ebx,%ebx
c0032273:	78 63                	js     c00322d8 <_vsnprintf_r+0x78>
c0032275:	ba 08 02 00 00       	mov    $0x208,%edx
c003227a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003227f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0032283:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0032286:	89 45 90             	mov    %eax,-0x70(%ebp)
c0032289:	89 45 a0             	mov    %eax,-0x60(%ebp)
c003228c:	31 c0                	xor    %eax,%eax
c003228e:	85 db                	test   %ebx,%ebx
c0032290:	0f 45 c2             	cmovne %edx,%eax
c0032293:	89 45 98             	mov    %eax,-0x68(%ebp)
c0032296:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0032299:	8b 45 18             	mov    0x18(%ebp),%eax
c003229c:	89 34 24             	mov    %esi,(%esp)
c003229f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c00322a3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00322a7:	8b 45 14             	mov    0x14(%ebp),%eax
c00322aa:	89 44 24 08          	mov    %eax,0x8(%esp)
c00322ae:	8d 45 90             	lea    -0x70(%ebp),%eax
c00322b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322b5:	e8 86 00 00 00       	call   c0032340 <_svfprintf_r>
c00322ba:	83 f8 ff             	cmp    $0xffffffff,%eax
c00322bd:	7c 11                	jl     c00322d0 <_vsnprintf_r+0x70>
c00322bf:	85 db                	test   %ebx,%ebx
c00322c1:	74 06                	je     c00322c9 <_vsnprintf_r+0x69>
c00322c3:	8b 55 90             	mov    -0x70(%ebp),%edx
c00322c6:	c6 02 00             	movb   $0x0,(%edx)
c00322c9:	83 ec 80             	sub    $0xffffff80,%esp
c00322cc:	5b                   	pop    %ebx
c00322cd:	5e                   	pop    %esi
c00322ce:	5d                   	pop    %ebp
c00322cf:	c3                   	ret    
c00322d0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00322d6:	eb e7                	jmp    c00322bf <_vsnprintf_r+0x5f>
c00322d8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c00322de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00322e3:	eb e4                	jmp    c00322c9 <_vsnprintf_r+0x69>
c00322e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00322e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00322f0 <vsnprintf>:
c00322f0:	55                   	push   %ebp
c00322f1:	89 e5                	mov    %esp,%ebp
c00322f3:	83 ec 28             	sub    $0x28,%esp
c00322f6:	e8 35 00 00 00       	call   c0032330 <__getreent>
c00322fb:	8b 55 14             	mov    0x14(%ebp),%edx
c00322fe:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032302:	8b 55 10             	mov    0x10(%ebp),%edx
c0032305:	89 04 24             	mov    %eax,(%esp)
c0032308:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003230c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003230f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032313:	8b 55 08             	mov    0x8(%ebp),%edx
c0032316:	89 54 24 04          	mov    %edx,0x4(%esp)
c003231a:	e8 41 ff ff ff       	call   c0032260 <_vsnprintf_r>
c003231f:	c9                   	leave  
c0032320:	c3                   	ret    
c0032321:	66 90                	xchg   %ax,%ax
c0032323:	66 90                	xchg   %ax,%ax
c0032325:	66 90                	xchg   %ax,%ax
c0032327:	66 90                	xchg   %ax,%ax
c0032329:	66 90                	xchg   %ax,%ax
c003232b:	66 90                	xchg   %ax,%ax
c003232d:	66 90                	xchg   %ax,%ax
c003232f:	90                   	nop

c0032330 <__getreent>:
c0032330:	55                   	push   %ebp
c0032331:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0032336:	89 e5                	mov    %esp,%ebp
c0032338:	5d                   	pop    %ebp
c0032339:	c3                   	ret    
c003233a:	66 90                	xchg   %ax,%ax
c003233c:	66 90                	xchg   %ax,%ax
c003233e:	66 90                	xchg   %ax,%ax

c0032340 <_svfprintf_r>:
c0032340:	55                   	push   %ebp
c0032341:	89 e5                	mov    %esp,%ebp
c0032343:	57                   	push   %edi
c0032344:	56                   	push   %esi
c0032345:	53                   	push   %ebx
c0032346:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003234c:	8b 45 08             	mov    0x8(%ebp),%eax
c003234f:	89 04 24             	mov    %eax,(%esp)
c0032352:	e8 89 33 00 00       	call   c00356e0 <_localeconv_r>
c0032357:	8b 00                	mov    (%eax),%eax
c0032359:	89 04 24             	mov    %eax,(%esp)
c003235c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032362:	e8 69 4a 00 00       	call   c0036dd0 <strlen>
c0032367:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003236d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032370:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032374:	74 0b                	je     c0032381 <_svfprintf_r+0x41>
c0032376:	8b 40 10             	mov    0x10(%eax),%eax
c0032379:	85 c0                	test   %eax,%eax
c003237b:	0f 84 62 18 00 00    	je     c0033be3 <_svfprintf_r+0x18a3>
c0032381:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032384:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032387:	89 c7                	mov    %eax,%edi
c0032389:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003238f:	d9 ee                	fldz   
c0032391:	29 d0                	sub    %edx,%eax
c0032393:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003239a:	00 00 00 
c003239d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00323a3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00323aa:	00 00 00 
c00323ad:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c00323b4:	00 00 00 
c00323b7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c00323be:	00 00 00 
c00323c1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c00323c8:	00 00 00 
c00323cb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c00323d2:	00 00 00 
c00323d5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c00323db:	8b 45 10             	mov    0x10(%ebp),%eax
c00323de:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00323e1:	0f b6 00             	movzbl (%eax),%eax
c00323e4:	3c 25                	cmp    $0x25,%al
c00323e6:	74 4d                	je     c0032435 <_svfprintf_r+0xf5>
c00323e8:	84 c0                	test   %al,%al
c00323ea:	75 08                	jne    c00323f4 <_svfprintf_r+0xb4>
c00323ec:	eb 47                	jmp    c0032435 <_svfprintf_r+0xf5>
c00323ee:	66 90                	xchg   %ax,%ax
c00323f0:	84 c0                	test   %al,%al
c00323f2:	74 0a                	je     c00323fe <_svfprintf_r+0xbe>
c00323f4:	83 c3 01             	add    $0x1,%ebx
c00323f7:	0f b6 03             	movzbl (%ebx),%eax
c00323fa:	3c 25                	cmp    $0x25,%al
c00323fc:	75 f2                	jne    c00323f0 <_svfprintf_r+0xb0>
c00323fe:	89 de                	mov    %ebx,%esi
c0032400:	2b 75 10             	sub    0x10(%ebp),%esi
c0032403:	74 30                	je     c0032435 <_svfprintf_r+0xf5>
c0032405:	8b 45 10             	mov    0x10(%ebp),%eax
c0032408:	83 c7 08             	add    $0x8,%edi
c003240b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003240e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032414:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032417:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003241d:	83 c0 01             	add    $0x1,%eax
c0032420:	83 f8 07             	cmp    $0x7,%eax
c0032423:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032429:	0f 8f 91 00 00 00    	jg     c00324c0 <_svfprintf_r+0x180>
c003242f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032435:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032438:	0f 84 aa 00 00 00    	je     c00324e8 <_svfprintf_r+0x1a8>
c003243e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032441:	be 20 00 00 00       	mov    $0x20,%esi
c0032446:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003244d:	31 db                	xor    %ebx,%ebx
c003244f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032456:	ff ff ff 
c0032459:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032460:	00 00 00 
c0032463:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003246a:	00 00 00 
c003246d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032470:	0f be 00             	movsbl (%eax),%eax
c0032473:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032476:	83 fa 58             	cmp    $0x58,%edx
c0032479:	0f 87 8f 07 00 00    	ja     c0032c0e <_svfprintf_r+0x8ce>
c003247f:	ff 24 95 28 90 03 c0 	jmp    *-0x3ffc6fd8(,%edx,4)
c0032486:	66 90                	xchg   %ax,%ax
c0032488:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003248f:	89 c8                	mov    %ecx,%eax
c0032491:	eb da                	jmp    c003246d <_svfprintf_r+0x12d>
c0032493:	8b 45 14             	mov    0x14(%ebp),%eax
c0032496:	8b 55 14             	mov    0x14(%ebp),%edx
c0032499:	8b 00                	mov    (%eax),%eax
c003249b:	83 c2 04             	add    $0x4,%edx
c003249e:	89 55 14             	mov    %edx,0x14(%ebp)
c00324a1:	85 c0                	test   %eax,%eax
c00324a3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00324a9:	79 e4                	jns    c003248f <_svfprintf_r+0x14f>
c00324ab:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00324b1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00324b8:	89 c8                	mov    %ecx,%eax
c00324ba:	eb b1                	jmp    c003246d <_svfprintf_r+0x12d>
c00324bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00324c0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00324c6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00324ca:	8b 45 0c             	mov    0xc(%ebp),%eax
c00324cd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00324d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00324d4:	89 04 24             	mov    %eax,(%esp)
c00324d7:	e8 74 49 00 00       	call   c0036e50 <__ssprint_r>
c00324dc:	85 c0                	test   %eax,%eax
c00324de:	75 30                	jne    c0032510 <_svfprintf_r+0x1d0>
c00324e0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00324e3:	e9 47 ff ff ff       	jmp    c003242f <_svfprintf_r+0xef>
c00324e8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00324ee:	85 c0                	test   %eax,%eax
c00324f0:	74 1e                	je     c0032510 <_svfprintf_r+0x1d0>
c00324f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00324f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00324fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00324ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032503:	8b 45 08             	mov    0x8(%ebp),%eax
c0032506:	89 04 24             	mov    %eax,(%esp)
c0032509:	e8 42 49 00 00       	call   c0036e50 <__ssprint_r>
c003250e:	66 90                	xchg   %ax,%ax
c0032510:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032513:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032518:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003251c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032523:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032529:	5b                   	pop    %ebx
c003252a:	5e                   	pop    %esi
c003252b:	5f                   	pop    %edi
c003252c:	5d                   	pop    %ebp
c003252d:	c3                   	ret    
c003252e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032533:	89 c8                	mov    %ecx,%eax
c0032535:	e9 33 ff ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c003253a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032540:	8b 45 14             	mov    0x14(%ebp),%eax
c0032543:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032546:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003254d:	8d 70 04             	lea    0x4(%eax),%esi
c0032550:	8b 00                	mov    (%eax),%eax
c0032552:	85 c0                	test   %eax,%eax
c0032554:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003255a:	0f 84 7f 18 00 00    	je     c0033ddf <_svfprintf_r+0x1a9f>
c0032560:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032566:	85 c0                	test   %eax,%eax
c0032568:	0f 88 b6 17 00 00    	js     c0033d24 <_svfprintf_r+0x19e4>
c003256e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032572:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032578:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003257f:	00 
c0032580:	89 04 24             	mov    %eax,(%esp)
c0032583:	e8 f8 38 00 00       	call   c0035e80 <memchr>
c0032588:	85 c0                	test   %eax,%eax
c003258a:	0f 84 a0 19 00 00    	je     c0033f30 <_svfprintf_r+0x1bf0>
c0032590:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032596:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003259c:	39 d0                	cmp    %edx,%eax
c003259e:	0f 4f c2             	cmovg  %edx,%eax
c00325a1:	89 c2                	mov    %eax,%edx
c00325a3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00325aa:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00325b0:	31 c0                	xor    %eax,%eax
c00325b2:	85 d2                	test   %edx,%edx
c00325b4:	0f 49 c2             	cmovns %edx,%eax
c00325b7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00325bd:	89 75 14             	mov    %esi,0x14(%ebp)
c00325c0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00325c7:	00 00 00 
c00325ca:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00325d1:	00 00 00 
c00325d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00325d8:	84 db                	test   %bl,%bl
c00325da:	74 07                	je     c00325e3 <_svfprintf_r+0x2a3>
c00325dc:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c00325e3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325e9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00325ef:	89 c8                	mov    %ecx,%eax
c00325f1:	89 f2                	mov    %esi,%edx
c00325f3:	83 c0 02             	add    $0x2,%eax
c00325f6:	83 e2 02             	and    $0x2,%edx
c00325f9:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c00325ff:	89 f2                	mov    %esi,%edx
c0032601:	0f 44 c1             	cmove  %ecx,%eax
c0032604:	81 e2 84 00 00 00    	and    $0x84,%edx
c003260a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032610:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032616:	0f 85 1c 06 00 00    	jne    c0032c38 <_svfprintf_r+0x8f8>
c003261c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032622:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032628:	85 f6                	test   %esi,%esi
c003262a:	0f 8e 08 06 00 00    	jle    c0032c38 <_svfprintf_r+0x8f8>
c0032630:	83 fe 10             	cmp    $0x10,%esi
c0032633:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032639:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003263f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032645:	7f 11                	jg     c0032658 <_svfprintf_r+0x318>
c0032647:	eb 6b                	jmp    c00326b4 <_svfprintf_r+0x374>
c0032649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032650:	83 ee 10             	sub    $0x10,%esi
c0032653:	83 fe 10             	cmp    $0x10,%esi
c0032656:	7e 5c                	jle    c00326b4 <_svfprintf_r+0x374>
c0032658:	83 c0 01             	add    $0x1,%eax
c003265b:	83 c1 10             	add    $0x10,%ecx
c003265e:	c7 07 9c 91 03 c0    	movl   $0xc003919c,(%edi)
c0032664:	83 c7 08             	add    $0x8,%edi
c0032667:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003266e:	83 f8 07             	cmp    $0x7,%eax
c0032671:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032677:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003267d:	7e d1                	jle    c0032650 <_svfprintf_r+0x310>
c003267f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032682:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032686:	89 44 24 04          	mov    %eax,0x4(%esp)
c003268a:	8b 45 08             	mov    0x8(%ebp),%eax
c003268d:	89 04 24             	mov    %eax,(%esp)
c0032690:	e8 bb 47 00 00       	call   c0036e50 <__ssprint_r>
c0032695:	85 c0                	test   %eax,%eax
c0032697:	0f 85 73 fe ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c003269d:	83 ee 10             	sub    $0x10,%esi
c00326a0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00326a6:	83 fe 10             	cmp    $0x10,%esi
c00326a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00326af:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00326b2:	7f a4                	jg     c0032658 <_svfprintf_r+0x318>
c00326b4:	83 c0 01             	add    $0x1,%eax
c00326b7:	01 f1                	add    %esi,%ecx
c00326b9:	83 f8 07             	cmp    $0x7,%eax
c00326bc:	c7 07 9c 91 03 c0    	movl   $0xc003919c,(%edi)
c00326c2:	89 77 04             	mov    %esi,0x4(%edi)
c00326c5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00326cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00326d1:	0f 8f 16 0e 00 00    	jg     c00334ed <_svfprintf_r+0x11ad>
c00326d7:	83 c7 08             	add    $0x8,%edi
c00326da:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00326e1:	e9 58 05 00 00       	jmp    c0032c3e <_svfprintf_r+0x8fe>
c00326e6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326ed:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326f3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326f9:	0f 85 fd 04 00 00    	jne    c0032bfc <_svfprintf_r+0x8bc>
c00326ff:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032706:	0f 84 f0 04 00 00    	je     c0032bfc <_svfprintf_r+0x8bc>
c003270c:	0f b7 08             	movzwl (%eax),%ecx
c003270f:	83 c0 04             	add    $0x4,%eax
c0032712:	89 45 14             	mov    %eax,0x14(%ebp)
c0032715:	b8 01 00 00 00       	mov    $0x1,%eax
c003271a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032720:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032727:	31 db                	xor    %ebx,%ebx
c0032729:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003272f:	89 f2                	mov    %esi,%edx
c0032731:	80 e2 7f             	and    $0x7f,%dl
c0032734:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003273b:	0f 48 d6             	cmovs  %esi,%edx
c003273e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032744:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003274a:	85 d2                	test   %edx,%edx
c003274c:	75 08                	jne    c0032756 <_svfprintf_r+0x416>
c003274e:	85 c9                	test   %ecx,%ecx
c0032750:	0f 84 ea 08 00 00    	je     c0033040 <_svfprintf_r+0xd00>
c0032756:	3c 01                	cmp    $0x1,%al
c0032758:	0f 84 6a 0d 00 00    	je     c00334c8 <_svfprintf_r+0x1188>
c003275e:	3c 02                	cmp    $0x2,%al
c0032760:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032763:	0f 85 bf 0b 00 00    	jne    c0033328 <_svfprintf_r+0xfe8>
c0032769:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003276f:	90                   	nop
c0032770:	89 ca                	mov    %ecx,%edx
c0032772:	83 e8 01             	sub    $0x1,%eax
c0032775:	83 e2 0f             	and    $0xf,%edx
c0032778:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003277c:	c1 e9 04             	shr    $0x4,%ecx
c003277f:	85 c9                	test   %ecx,%ecx
c0032781:	88 10                	mov    %dl,(%eax)
c0032783:	75 eb                	jne    c0032770 <_svfprintf_r+0x430>
c0032785:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032788:	29 c2                	sub    %eax,%edx
c003278a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032790:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032796:	66 90                	xchg   %ax,%ax
c0032798:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003279e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00327a4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00327ab:	00 00 00 
c00327ae:	39 c2                	cmp    %eax,%edx
c00327b0:	0f 4d c2             	cmovge %edx,%eax
c00327b3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00327b9:	e9 1a fe ff ff       	jmp    c00325d8 <_svfprintf_r+0x298>
c00327be:	84 db                	test   %bl,%bl
c00327c0:	89 c8                	mov    %ecx,%eax
c00327c2:	0f 44 de             	cmove  %esi,%ebx
c00327c5:	e9 a3 fc ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c00327ca:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c00327d1:	89 c8                	mov    %ecx,%eax
c00327d3:	e9 95 fc ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c00327d8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c00327df:	00 00 00 
c00327e2:	89 c8                	mov    %ecx,%eax
c00327e4:	e9 84 fc ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c00327e9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00327ef:	8d 50 d0             	lea    -0x30(%eax),%edx
c00327f2:	31 ff                	xor    %edi,%edi
c00327f4:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00327fb:	00 00 00 
c00327fe:	66 90                	xchg   %ax,%ax
c0032800:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032803:	83 c1 01             	add    $0x1,%ecx
c0032806:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032809:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003280d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032810:	83 fa 09             	cmp    $0x9,%edx
c0032813:	76 eb                	jbe    c0032800 <_svfprintf_r+0x4c0>
c0032815:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003281b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032821:	e9 4d fc ff ff       	jmp    c0032473 <_svfprintf_r+0x133>
c0032826:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003282d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032834:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003283a:	8b 45 14             	mov    0x14(%ebp),%eax
c003283d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032840:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032846:	0f 85 61 02 00 00    	jne    c0032aad <_svfprintf_r+0x76d>
c003284c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032853:	0f 84 54 02 00 00    	je     c0032aad <_svfprintf_r+0x76d>
c0032859:	0f bf 08             	movswl (%eax),%ecx
c003285c:	83 c0 04             	add    $0x4,%eax
c003285f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032862:	85 c9                	test   %ecx,%ecx
c0032864:	0f 88 53 02 00 00    	js     c0032abd <_svfprintf_r+0x77d>
c003286a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032871:	b8 01 00 00 00       	mov    $0x1,%eax
c0032876:	e9 ae fe ff ff       	jmp    c0032729 <_svfprintf_r+0x3e9>
c003287b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032882:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032888:	8b 45 14             	mov    0x14(%ebp),%eax
c003288b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003288e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032894:	0f 84 15 10 00 00    	je     c00338af <_svfprintf_r+0x156f>
c003289a:	db 28                	fldt   (%eax)
c003289c:	83 c0 0c             	add    $0xc,%eax
c003289f:	89 45 14             	mov    %eax,0x14(%ebp)
c00328a2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00328a8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00328ae:	dd 1c 24             	fstpl  (%esp)
c00328b1:	e8 aa 44 00 00       	call   c0036d60 <__fpclassifyd>
c00328b6:	83 f8 01             	cmp    $0x1,%eax
c00328b9:	0f 85 82 0f 00 00    	jne    c0033841 <_svfprintf_r+0x1501>
c00328bf:	d9 ee                	fldz   
c00328c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00328c7:	d9 c9                	fxch   %st(1)
c00328c9:	df e9                	fucomip %st(1),%st
c00328cb:	dd d8                	fstp   %st(0)
c00328cd:	0f 87 59 15 00 00    	ja     c0033e2c <_svfprintf_r+0x1aec>
c00328d3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00328da:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00328e1:	ba ea 8f 03 c0       	mov    $0xc0038fea,%edx
c00328e6:	b8 ee 8f 03 c0       	mov    $0xc0038fee,%eax
c00328eb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00328f2:	00 00 00 
c00328f5:	0f 4e c2             	cmovle %edx,%eax
c00328f8:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00328fe:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032905:	ff ff ff 
c0032908:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003290f:	00 00 00 
c0032912:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032919:	00 00 00 
c003291c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032923:	00 00 00 
c0032926:	e9 ad fc ff ff       	jmp    c00325d8 <_svfprintf_r+0x298>
c003292b:	8d 41 01             	lea    0x1(%ecx),%eax
c003292e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032934:	0f be 01             	movsbl (%ecx),%eax
c0032937:	83 f8 2a             	cmp    $0x2a,%eax
c003293a:	0f 84 84 18 00 00    	je     c00341c4 <_svfprintf_r+0x1e84>
c0032940:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032943:	31 c9                	xor    %ecx,%ecx
c0032945:	83 fa 09             	cmp    $0x9,%edx
c0032948:	0f 87 a8 16 00 00    	ja     c0033ff6 <_svfprintf_r+0x1cb6>
c003294e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032954:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003295a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032960:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032963:	83 c7 01             	add    $0x1,%edi
c0032966:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032969:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003296d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032970:	83 fa 09             	cmp    $0x9,%edx
c0032973:	76 eb                	jbe    c0032960 <_svfprintf_r+0x620>
c0032975:	85 c9                	test   %ecx,%ecx
c0032977:	89 ca                	mov    %ecx,%edx
c0032979:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003297e:	0f 48 d1             	cmovs  %ecx,%edx
c0032981:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032987:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003298d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032993:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032999:	e9 d5 fa ff ff       	jmp    c0032473 <_svfprintf_r+0x133>
c003299e:	8b 45 14             	mov    0x14(%ebp),%eax
c00329a1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00329a4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00329ab:	8b 08                	mov    (%eax),%ecx
c00329ad:	83 c0 04             	add    $0x4,%eax
c00329b0:	89 45 14             	mov    %eax,0x14(%ebp)
c00329b3:	b8 02 00 00 00       	mov    $0x2,%eax
c00329b8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00329bf:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00329c6:	c7 85 18 ff ff ff 0b 	movl   $0xc003900b,-0xe8(%ebp)
c00329cd:	90 03 c0 
c00329d0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c00329d7:	00 00 00 
c00329da:	e9 41 fd ff ff       	jmp    c0032720 <_svfprintf_r+0x3e0>
c00329df:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00329e6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00329ec:	8b 45 14             	mov    0x14(%ebp),%eax
c00329ef:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00329f2:	0f 85 87 00 00 00    	jne    c0032a7f <_svfprintf_r+0x73f>
c00329f8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00329ff:	74 7e                	je     c0032a7f <_svfprintf_r+0x73f>
c0032a01:	0f b7 08             	movzwl (%eax),%ecx
c0032a04:	83 c0 04             	add    $0x4,%eax
c0032a07:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a0a:	31 c0                	xor    %eax,%eax
c0032a0c:	e9 0f fd ff ff       	jmp    c0032720 <_svfprintf_r+0x3e0>
c0032a11:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032a18:	89 c8                	mov    %ecx,%eax
c0032a1a:	e9 4e fa ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c0032a1f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032a26:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032a29:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032a2f:	0f 85 97 0b 00 00    	jne    c00335cc <_svfprintf_r+0x128c>
c0032a35:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032a3c:	0f 84 8a 0b 00 00    	je     c00335cc <_svfprintf_r+0x128c>
c0032a42:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a45:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c0032a4c:	8b 00                	mov    (%eax),%eax
c0032a4e:	66 89 10             	mov    %dx,(%eax)
c0032a51:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a54:	83 c0 04             	add    $0x4,%eax
c0032a57:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a5a:	e9 7c f9 ff ff       	jmp    c00323db <_svfprintf_r+0x9b>
c0032a5f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032a66:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032a6d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032a73:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a76:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032a79:	0f 84 79 ff ff ff    	je     c00329f8 <_svfprintf_r+0x6b8>
c0032a7f:	8b 08                	mov    (%eax),%ecx
c0032a81:	83 c0 04             	add    $0x4,%eax
c0032a84:	89 45 14             	mov    %eax,0x14(%ebp)
c0032a87:	31 c0                	xor    %eax,%eax
c0032a89:	e9 92 fc ff ff       	jmp    c0032720 <_svfprintf_r+0x3e0>
c0032a8e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032a95:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032a9b:	8b 45 14             	mov    0x14(%ebp),%eax
c0032a9e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032aa1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032aa7:	0f 84 9f fd ff ff    	je     c003284c <_svfprintf_r+0x50c>
c0032aad:	8b 08                	mov    (%eax),%ecx
c0032aaf:	83 c0 04             	add    $0x4,%eax
c0032ab2:	89 45 14             	mov    %eax,0x14(%ebp)
c0032ab5:	85 c9                	test   %ecx,%ecx
c0032ab7:	0f 89 ad fd ff ff    	jns    c003286a <_svfprintf_r+0x52a>
c0032abd:	f7 d9                	neg    %ecx
c0032abf:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032ac4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0032acb:	b8 01 00 00 00       	mov    $0x1,%eax
c0032ad0:	e9 54 fc ff ff       	jmp    c0032729 <_svfprintf_r+0x3e9>
c0032ad5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c0032adc:	89 c8                	mov    %ecx,%eax
c0032ade:	e9 8a f9 ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c0032ae3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032aea:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032af0:	8b 45 14             	mov    0x14(%ebp),%eax
c0032af3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032af6:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032afc:	c7 85 18 ff ff ff 0b 	movl   $0xc003900b,-0xe8(%ebp)
c0032b03:	90 03 c0 
c0032b06:	75 71                	jne    c0032b79 <_svfprintf_r+0x839>
c0032b08:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032b0f:	74 68                	je     c0032b79 <_svfprintf_r+0x839>
c0032b11:	0f b7 08             	movzwl (%eax),%ecx
c0032b14:	83 c0 04             	add    $0x4,%eax
c0032b17:	89 45 14             	mov    %eax,0x14(%ebp)
c0032b1a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032b21:	b8 02 00 00 00       	mov    $0x2,%eax
c0032b26:	0f 84 f4 fb ff ff    	je     c0032720 <_svfprintf_r+0x3e0>
c0032b2c:	85 c9                	test   %ecx,%ecx
c0032b2e:	0f 84 ec fb ff ff    	je     c0032720 <_svfprintf_r+0x3e0>
c0032b34:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c0032b3b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032b42:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032b49:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c0032b4f:	e9 cc fb ff ff       	jmp    c0032720 <_svfprintf_r+0x3e0>
c0032b54:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032b5b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032b61:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b64:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032b67:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032b6d:	c7 85 18 ff ff ff fa 	movl   $0xc0038ffa,-0xe8(%ebp)
c0032b74:	8f 03 c0 
c0032b77:	74 8f                	je     c0032b08 <_svfprintf_r+0x7c8>
c0032b79:	8b 08                	mov    (%eax),%ecx
c0032b7b:	83 c0 04             	add    $0x4,%eax
c0032b7e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032b81:	eb 97                	jmp    c0032b1a <_svfprintf_r+0x7da>
c0032b83:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032b89:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b8c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032b8f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032b96:	8b 00                	mov    (%eax),%eax
c0032b98:	88 45 80             	mov    %al,-0x80(%ebp)
c0032b9b:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b9e:	83 c0 04             	add    $0x4,%eax
c0032ba1:	89 45 14             	mov    %eax,0x14(%ebp)
c0032ba4:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032ba7:	31 db                	xor    %ebx,%ebx
c0032ba9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032bb0:	00 00 00 
c0032bb3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0032bba:	00 00 00 
c0032bbd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032bc4:	00 00 00 
c0032bc7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032bce:	00 00 00 
c0032bd1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032bd7:	e9 07 fa ff ff       	jmp    c00325e3 <_svfprintf_r+0x2a3>
c0032bdc:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032be3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032bea:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032bf0:	8b 45 14             	mov    0x14(%ebp),%eax
c0032bf3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032bf6:	0f 84 03 fb ff ff    	je     c00326ff <_svfprintf_r+0x3bf>
c0032bfc:	8b 08                	mov    (%eax),%ecx
c0032bfe:	83 c0 04             	add    $0x4,%eax
c0032c01:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c04:	b8 01 00 00 00       	mov    $0x1,%eax
c0032c09:	e9 12 fb ff ff       	jmp    c0032720 <_svfprintf_r+0x3e0>
c0032c0e:	85 c0                	test   %eax,%eax
c0032c10:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032c16:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032c19:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032c1f:	0f 84 c3 f8 ff ff    	je     c00324e8 <_svfprintf_r+0x1a8>
c0032c25:	88 45 80             	mov    %al,-0x80(%ebp)
c0032c28:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032c2f:	e9 70 ff ff ff       	jmp    c0032ba4 <_svfprintf_r+0x864>
c0032c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032c38:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c3e:	84 db                	test   %bl,%bl
c0032c40:	74 33                	je     c0032c75 <_svfprintf_r+0x935>
c0032c42:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032c48:	83 c1 01             	add    $0x1,%ecx
c0032c4b:	89 07                	mov    %eax,(%edi)
c0032c4d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c53:	83 c7 08             	add    $0x8,%edi
c0032c56:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032c5d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c63:	83 c0 01             	add    $0x1,%eax
c0032c66:	83 f8 07             	cmp    $0x7,%eax
c0032c69:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c6f:	0f 8f 7b 06 00 00    	jg     c00332f0 <_svfprintf_r+0xfb0>
c0032c75:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c0032c7b:	85 db                	test   %ebx,%ebx
c0032c7d:	74 33                	je     c0032cb2 <_svfprintf_r+0x972>
c0032c7f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032c85:	83 c1 02             	add    $0x2,%ecx
c0032c88:	89 07                	mov    %eax,(%edi)
c0032c8a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c90:	83 c7 08             	add    $0x8,%edi
c0032c93:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c0032c9a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ca0:	83 c0 01             	add    $0x1,%eax
c0032ca3:	83 f8 07             	cmp    $0x7,%eax
c0032ca6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032cac:	0f 8f 06 06 00 00    	jg     c00332b8 <_svfprintf_r+0xf78>
c0032cb2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032cb9:	00 00 00 
c0032cbc:	0f 84 c6 03 00 00    	je     c0033088 <_svfprintf_r+0xd48>
c0032cc2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032cc8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c0032cce:	85 f6                	test   %esi,%esi
c0032cd0:	0f 8e d2 00 00 00    	jle    c0032da8 <_svfprintf_r+0xa68>
c0032cd6:	83 fe 10             	cmp    $0x10,%esi
c0032cd9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cdf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032ce5:	7f 11                	jg     c0032cf8 <_svfprintf_r+0x9b8>
c0032ce7:	eb 6b                	jmp    c0032d54 <_svfprintf_r+0xa14>
c0032ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032cf0:	83 ee 10             	sub    $0x10,%esi
c0032cf3:	83 fe 10             	cmp    $0x10,%esi
c0032cf6:	7e 5c                	jle    c0032d54 <_svfprintf_r+0xa14>
c0032cf8:	83 c0 01             	add    $0x1,%eax
c0032cfb:	83 c1 10             	add    $0x10,%ecx
c0032cfe:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0032d04:	83 c7 08             	add    $0x8,%edi
c0032d07:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d0e:	83 f8 07             	cmp    $0x7,%eax
c0032d11:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d1d:	7e d1                	jle    c0032cf0 <_svfprintf_r+0x9b0>
c0032d1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d22:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d2d:	89 04 24             	mov    %eax,(%esp)
c0032d30:	e8 1b 41 00 00       	call   c0036e50 <__ssprint_r>
c0032d35:	85 c0                	test   %eax,%eax
c0032d37:	0f 85 d3 f7 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0032d3d:	83 ee 10             	sub    $0x10,%esi
c0032d40:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d46:	83 fe 10             	cmp    $0x10,%esi
c0032d49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d4f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d52:	7f a4                	jg     c0032cf8 <_svfprintf_r+0x9b8>
c0032d54:	83 c0 01             	add    $0x1,%eax
c0032d57:	01 f1                	add    %esi,%ecx
c0032d59:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0032d5f:	83 c7 08             	add    $0x8,%edi
c0032d62:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d65:	83 f8 07             	cmp    $0x7,%eax
c0032d68:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d6e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d74:	7e 32                	jle    c0032da8 <_svfprintf_r+0xa68>
c0032d76:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d7c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d80:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d83:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d87:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d8a:	89 04 24             	mov    %eax,(%esp)
c0032d8d:	e8 be 40 00 00       	call   c0036e50 <__ssprint_r>
c0032d92:	85 c0                	test   %eax,%eax
c0032d94:	0f 85 76 f7 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0032d9a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032da0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032da3:	90                   	nop
c0032da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032da8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032daf:	01 00 00 
c0032db2:	0f 85 50 01 00 00    	jne    c0032f08 <_svfprintf_r+0xbc8>
c0032db8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032dbe:	89 07                	mov    %eax,(%edi)
c0032dc0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032dc6:	01 c1                	add    %eax,%ecx
c0032dc8:	89 47 04             	mov    %eax,0x4(%edi)
c0032dcb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dd1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032dd7:	83 c0 01             	add    $0x1,%eax
c0032dda:	83 f8 07             	cmp    $0x7,%eax
c0032ddd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032de3:	0f 8f 6a 04 00 00    	jg     c0033253 <_svfprintf_r+0xf13>
c0032de9:	83 c7 08             	add    $0x8,%edi
c0032dec:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032df3:	0f 84 d7 00 00 00    	je     c0032ed0 <_svfprintf_r+0xb90>
c0032df9:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032dff:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032e05:	85 f6                	test   %esi,%esi
c0032e07:	0f 8e c3 00 00 00    	jle    c0032ed0 <_svfprintf_r+0xb90>
c0032e0d:	83 fe 10             	cmp    $0x10,%esi
c0032e10:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e16:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032e1c:	7f 0a                	jg     c0032e28 <_svfprintf_r+0xae8>
c0032e1e:	eb 64                	jmp    c0032e84 <_svfprintf_r+0xb44>
c0032e20:	83 ee 10             	sub    $0x10,%esi
c0032e23:	83 fe 10             	cmp    $0x10,%esi
c0032e26:	7e 5c                	jle    c0032e84 <_svfprintf_r+0xb44>
c0032e28:	83 c0 01             	add    $0x1,%eax
c0032e2b:	83 c1 10             	add    $0x10,%ecx
c0032e2e:	c7 07 9c 91 03 c0    	movl   $0xc003919c,(%edi)
c0032e34:	83 c7 08             	add    $0x8,%edi
c0032e37:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032e3e:	83 f8 07             	cmp    $0x7,%eax
c0032e41:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e4d:	7e d1                	jle    c0032e20 <_svfprintf_r+0xae0>
c0032e4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032e56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e5d:	89 04 24             	mov    %eax,(%esp)
c0032e60:	e8 eb 3f 00 00       	call   c0036e50 <__ssprint_r>
c0032e65:	85 c0                	test   %eax,%eax
c0032e67:	0f 85 a3 f6 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0032e6d:	83 ee 10             	sub    $0x10,%esi
c0032e70:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e76:	83 fe 10             	cmp    $0x10,%esi
c0032e79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e7f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e82:	7f a4                	jg     c0032e28 <_svfprintf_r+0xae8>
c0032e84:	83 c0 01             	add    $0x1,%eax
c0032e87:	01 f1                	add    %esi,%ecx
c0032e89:	83 f8 07             	cmp    $0x7,%eax
c0032e8c:	c7 07 9c 91 03 c0    	movl   $0xc003919c,(%edi)
c0032e92:	89 77 04             	mov    %esi,0x4(%edi)
c0032e95:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e9b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ea1:	7e 2d                	jle    c0032ed0 <_svfprintf_r+0xb90>
c0032ea3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ea9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ead:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032eb0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032eb4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eb7:	89 04 24             	mov    %eax,(%esp)
c0032eba:	e8 91 3f 00 00       	call   c0036e50 <__ssprint_r>
c0032ebf:	85 c0                	test   %eax,%eax
c0032ec1:	0f 85 49 f6 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0032ec7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ecd:	8d 76 00             	lea    0x0(%esi),%esi
c0032ed0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032ed6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032edc:	39 c2                	cmp    %eax,%edx
c0032ede:	0f 4d c2             	cmovge %edx,%eax
c0032ee1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032ee7:	85 c9                	test   %ecx,%ecx
c0032ee9:	0f 85 99 03 00 00    	jne    c0033288 <_svfprintf_r+0xf48>
c0032eef:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032ef6:	00 00 00 
c0032ef9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032efc:	e9 da f4 ff ff       	jmp    c00323db <_svfprintf_r+0x9b>
c0032f01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f08:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032f0f:	0f 8e 5b 02 00 00    	jle    c0033170 <_svfprintf_r+0xe30>
c0032f15:	d9 ee                	fldz   
c0032f17:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032f1d:	df e9                	fucomip %st(1),%st
c0032f1f:	dd d8                	fstp   %st(0)
c0032f21:	0f 8a 59 04 00 00    	jp     c0033380 <_svfprintf_r+0x1040>
c0032f27:	0f 85 53 04 00 00    	jne    c0033380 <_svfprintf_r+0x1040>
c0032f2d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f33:	83 c1 01             	add    $0x1,%ecx
c0032f36:	83 c7 08             	add    $0x8,%edi
c0032f39:	c7 47 f8 23 90 03 c0 	movl   $0xc0039023,-0x8(%edi)
c0032f40:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032f47:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f4d:	83 c0 01             	add    $0x1,%eax
c0032f50:	83 f8 07             	cmp    $0x7,%eax
c0032f53:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f59:	0f 8f 63 09 00 00    	jg     c00338c2 <_svfprintf_r+0x1582>
c0032f5f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032f65:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032f6b:	7c 0d                	jl     c0032f7a <_svfprintf_r+0xc3a>
c0032f6d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f74:	0f 84 72 fe ff ff    	je     c0032dec <_svfprintf_r+0xaac>
c0032f7a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032f80:	83 c7 08             	add    $0x8,%edi
c0032f83:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032f86:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032f8c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032f8f:	01 c1                	add    %eax,%ecx
c0032f91:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f97:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f9d:	83 c0 01             	add    $0x1,%eax
c0032fa0:	83 f8 07             	cmp    $0x7,%eax
c0032fa3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032fa9:	0f 8f dc 0b 00 00    	jg     c0033b8b <_svfprintf_r+0x184b>
c0032faf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032fb5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032fb8:	85 f6                	test   %esi,%esi
c0032fba:	0f 8e 2c fe ff ff    	jle    c0032dec <_svfprintf_r+0xaac>
c0032fc0:	83 fe 10             	cmp    $0x10,%esi
c0032fc3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fc9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032fcf:	7f 13                	jg     c0032fe4 <_svfprintf_r+0xca4>
c0032fd1:	e9 e6 05 00 00       	jmp    c00335bc <_svfprintf_r+0x127c>
c0032fd6:	66 90                	xchg   %ax,%ax
c0032fd8:	83 ee 10             	sub    $0x10,%esi
c0032fdb:	83 fe 10             	cmp    $0x10,%esi
c0032fde:	0f 8e d8 05 00 00    	jle    c00335bc <_svfprintf_r+0x127c>
c0032fe4:	83 c0 01             	add    $0x1,%eax
c0032fe7:	83 c1 10             	add    $0x10,%ecx
c0032fea:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0032ff0:	83 c7 08             	add    $0x8,%edi
c0032ff3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032ffa:	83 f8 07             	cmp    $0x7,%eax
c0032ffd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033003:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033009:	7e cd                	jle    c0032fd8 <_svfprintf_r+0xc98>
c003300b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003300e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033012:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033016:	8b 45 08             	mov    0x8(%ebp),%eax
c0033019:	89 04 24             	mov    %eax,(%esp)
c003301c:	e8 2f 3e 00 00       	call   c0036e50 <__ssprint_r>
c0033021:	85 c0                	test   %eax,%eax
c0033023:	0f 85 e7 f4 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033029:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003302f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033032:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033038:	eb 9e                	jmp    c0032fd8 <_svfprintf_r+0xc98>
c003303a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033040:	84 c0                	test   %al,%al
c0033042:	75 2c                	jne    c0033070 <_svfprintf_r+0xd30>
c0033044:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003304b:	74 23                	je     c0033070 <_svfprintf_r+0xd30>
c003304d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033053:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0033057:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003305d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033060:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033066:	e9 2d f7 ff ff       	jmp    c0032798 <_svfprintf_r+0x458>
c003306b:	90                   	nop
c003306c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033070:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033073:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c003307a:	00 00 00 
c003307d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033083:	e9 10 f7 ff ff       	jmp    c0032798 <_svfprintf_r+0x458>
c0033088:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c003308e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0033094:	85 f6                	test   %esi,%esi
c0033096:	0f 8e 26 fc ff ff    	jle    c0032cc2 <_svfprintf_r+0x982>
c003309c:	83 fe 10             	cmp    $0x10,%esi
c003309f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330a5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00330ab:	7f 0b                	jg     c00330b8 <_svfprintf_r+0xd78>
c00330ad:	eb 65                	jmp    c0033114 <_svfprintf_r+0xdd4>
c00330af:	90                   	nop
c00330b0:	83 ee 10             	sub    $0x10,%esi
c00330b3:	83 fe 10             	cmp    $0x10,%esi
c00330b6:	7e 5c                	jle    c0033114 <_svfprintf_r+0xdd4>
c00330b8:	83 c0 01             	add    $0x1,%eax
c00330bb:	83 c1 10             	add    $0x10,%ecx
c00330be:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c00330c4:	83 c7 08             	add    $0x8,%edi
c00330c7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330ce:	83 f8 07             	cmp    $0x7,%eax
c00330d1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330dd:	7e d1                	jle    c00330b0 <_svfprintf_r+0xd70>
c00330df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330e2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00330ed:	89 04 24             	mov    %eax,(%esp)
c00330f0:	e8 5b 3d 00 00       	call   c0036e50 <__ssprint_r>
c00330f5:	85 c0                	test   %eax,%eax
c00330f7:	0f 85 13 f4 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00330fd:	83 ee 10             	sub    $0x10,%esi
c0033100:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033106:	83 fe 10             	cmp    $0x10,%esi
c0033109:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003310f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033112:	7f a4                	jg     c00330b8 <_svfprintf_r+0xd78>
c0033114:	83 c0 01             	add    $0x1,%eax
c0033117:	01 f1                	add    %esi,%ecx
c0033119:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c003311f:	83 c7 08             	add    $0x8,%edi
c0033122:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033125:	83 f8 07             	cmp    $0x7,%eax
c0033128:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003312e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033134:	0f 8e 88 fb ff ff    	jle    c0032cc2 <_svfprintf_r+0x982>
c003313a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033140:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033144:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033147:	89 44 24 04          	mov    %eax,0x4(%esp)
c003314b:	8b 45 08             	mov    0x8(%ebp),%eax
c003314e:	89 04 24             	mov    %eax,(%esp)
c0033151:	e8 fa 3c 00 00       	call   c0036e50 <__ssprint_r>
c0033156:	85 c0                	test   %eax,%eax
c0033158:	0f 85 b2 f3 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c003315e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033164:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033167:	e9 56 fb ff ff       	jmp    c0032cc2 <_svfprintf_r+0x982>
c003316c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033170:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0033177:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003317d:	0f 8e df 05 00 00    	jle    c0033762 <_svfprintf_r+0x1422>
c0033183:	89 07                	mov    %eax,(%edi)
c0033185:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003318b:	8d 51 01             	lea    0x1(%ecx),%edx
c003318e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033195:	83 c7 08             	add    $0x8,%edi
c0033198:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003319e:	83 c0 01             	add    $0x1,%eax
c00331a1:	83 f8 07             	cmp    $0x7,%eax
c00331a4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331aa:	0f 8f 59 06 00 00    	jg     c0033809 <_svfprintf_r+0x14c9>
c00331b0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c00331b6:	83 c0 01             	add    $0x1,%eax
c00331b9:	83 c7 08             	add    $0x8,%edi
c00331bc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331c2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c00331c5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c00331cb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00331ce:	01 da                	add    %ebx,%edx
c00331d0:	83 f8 07             	cmp    $0x7,%eax
c00331d3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331d9:	0f 8f f2 05 00 00    	jg     c00337d1 <_svfprintf_r+0x1491>
c00331df:	d9 ee                	fldz   
c00331e1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00331e7:	df e9                	fucomip %st(1),%st
c00331e9:	dd d8                	fstp   %st(0)
c00331eb:	7a 06                	jp     c00331f3 <_svfprintf_r+0xeb3>
c00331ed:	0f 84 33 03 00 00    	je     c0033526 <_svfprintf_r+0x11e6>
c00331f3:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c00331f9:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00331ff:	83 c1 01             	add    $0x1,%ecx
c0033202:	89 0f                	mov    %ecx,(%edi)
c0033204:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0033207:	89 4f 04             	mov    %ecx,0x4(%edi)
c003320a:	01 ca                	add    %ecx,%edx
c003320c:	83 c0 01             	add    $0x1,%eax
c003320f:	83 f8 07             	cmp    $0x7,%eax
c0033212:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033218:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003321e:	0f 8f 75 05 00 00    	jg     c0033799 <_svfprintf_r+0x1459>
c0033224:	83 c7 08             	add    $0x8,%edi
c0033227:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c003322d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0033233:	89 0f                	mov    %ecx,(%edi)
c0033235:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033238:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c003323b:	83 c0 01             	add    $0x1,%eax
c003323e:	83 f8 07             	cmp    $0x7,%eax
c0033241:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033247:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003324d:	0f 8e 96 fb ff ff    	jle    c0032de9 <_svfprintf_r+0xaa9>
c0033253:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033259:	89 44 24 08          	mov    %eax,0x8(%esp)
c003325d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033260:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033264:	8b 45 08             	mov    0x8(%ebp),%eax
c0033267:	89 04 24             	mov    %eax,(%esp)
c003326a:	e8 e1 3b 00 00       	call   c0036e50 <__ssprint_r>
c003326f:	85 c0                	test   %eax,%eax
c0033271:	0f 85 99 f2 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033277:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003327d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033280:	e9 67 fb ff ff       	jmp    c0032dec <_svfprintf_r+0xaac>
c0033285:	8d 76 00             	lea    0x0(%esi),%esi
c0033288:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003328e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033292:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033295:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033299:	8b 45 08             	mov    0x8(%ebp),%eax
c003329c:	89 04 24             	mov    %eax,(%esp)
c003329f:	e8 ac 3b 00 00       	call   c0036e50 <__ssprint_r>
c00332a4:	85 c0                	test   %eax,%eax
c00332a6:	0f 84 43 fc ff ff    	je     c0032eef <_svfprintf_r+0xbaf>
c00332ac:	e9 5f f2 ff ff       	jmp    c0032510 <_svfprintf_r+0x1d0>
c00332b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00332b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332c5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00332cc:	89 04 24             	mov    %eax,(%esp)
c00332cf:	e8 7c 3b 00 00       	call   c0036e50 <__ssprint_r>
c00332d4:	85 c0                	test   %eax,%eax
c00332d6:	0f 85 34 f2 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00332dc:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332e2:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332e5:	e9 c8 f9 ff ff       	jmp    c0032cb2 <_svfprintf_r+0x972>
c00332ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00332f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332fa:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332fd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033301:	8b 45 08             	mov    0x8(%ebp),%eax
c0033304:	89 04 24             	mov    %eax,(%esp)
c0033307:	e8 44 3b 00 00       	call   c0036e50 <__ssprint_r>
c003330c:	85 c0                	test   %eax,%eax
c003330e:	0f 85 fc f1 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033314:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003331a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003331d:	e9 53 f9 ff ff       	jmp    c0032c75 <_svfprintf_r+0x935>
c0033322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033328:	89 c2                	mov    %eax,%edx
c003332a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033330:	89 c8                	mov    %ecx,%eax
c0033332:	83 ea 01             	sub    $0x1,%edx
c0033335:	83 e0 07             	and    $0x7,%eax
c0033338:	c1 e9 03             	shr    $0x3,%ecx
c003333b:	83 c0 30             	add    $0x30,%eax
c003333e:	85 c9                	test   %ecx,%ecx
c0033340:	88 02                	mov    %al,(%edx)
c0033342:	75 ec                	jne    c0033330 <_svfprintf_r+0xff0>
c0033344:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003334b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0033351:	0f 84 5b 01 00 00    	je     c00334b2 <_svfprintf_r+0x1172>
c0033357:	3c 30                	cmp    $0x30,%al
c0033359:	74 0b                	je     c0033366 <_svfprintf_r+0x1026>
c003335b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033362:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033366:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033369:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003336f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033375:	e9 1e f4 ff ff       	jmp    c0032798 <_svfprintf_r+0x458>
c003337a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033380:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033386:	85 db                	test   %ebx,%ebx
c0033388:	0f 8e 66 05 00 00    	jle    c00338f4 <_svfprintf_r+0x15b4>
c003338e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033394:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003339a:	01 d0                	add    %edx,%eax
c003339c:	89 c3                	mov    %eax,%ebx
c003339e:	29 d3                	sub    %edx,%ebx
c00333a0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00333a6:	89 d0                	mov    %edx,%eax
c00333a8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00333ae:	39 d3                	cmp    %edx,%ebx
c00333b0:	0f 4f da             	cmovg  %edx,%ebx
c00333b3:	85 db                	test   %ebx,%ebx
c00333b5:	7e 28                	jle    c00333df <_svfprintf_r+0x109f>
c00333b7:	89 07                	mov    %eax,(%edi)
c00333b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333bf:	01 d9                	add    %ebx,%ecx
c00333c1:	89 5f 04             	mov    %ebx,0x4(%edi)
c00333c4:	83 c7 08             	add    $0x8,%edi
c00333c7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333cd:	83 c0 01             	add    $0x1,%eax
c00333d0:	83 f8 07             	cmp    $0x7,%eax
c00333d3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333d9:	0f 8f 58 09 00 00    	jg     c0033d37 <_svfprintf_r+0x19f7>
c00333df:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c00333e5:	31 c0                	xor    %eax,%eax
c00333e7:	85 db                	test   %ebx,%ebx
c00333e9:	0f 49 c3             	cmovns %ebx,%eax
c00333ec:	29 c6                	sub    %eax,%esi
c00333ee:	85 f6                	test   %esi,%esi
c00333f0:	0f 8e 40 02 00 00    	jle    c0033636 <_svfprintf_r+0x12f6>
c00333f6:	83 fe 10             	cmp    $0x10,%esi
c00333f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333ff:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033405:	7f 15                	jg     c003341c <_svfprintf_r+0x10dc>
c0033407:	e9 db 01 00 00       	jmp    c00335e7 <_svfprintf_r+0x12a7>
c003340c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033410:	83 ee 10             	sub    $0x10,%esi
c0033413:	83 fe 10             	cmp    $0x10,%esi
c0033416:	0f 8e cb 01 00 00    	jle    c00335e7 <_svfprintf_r+0x12a7>
c003341c:	83 c0 01             	add    $0x1,%eax
c003341f:	83 c1 10             	add    $0x10,%ecx
c0033422:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0033428:	83 c7 08             	add    $0x8,%edi
c003342b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033432:	83 f8 07             	cmp    $0x7,%eax
c0033435:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003343b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033441:	7e cd                	jle    c0033410 <_svfprintf_r+0x10d0>
c0033443:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033446:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003344a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003344e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033451:	89 04 24             	mov    %eax,(%esp)
c0033454:	e8 f7 39 00 00       	call   c0036e50 <__ssprint_r>
c0033459:	85 c0                	test   %eax,%eax
c003345b:	0f 85 af f0 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033461:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033467:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003346a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033470:	eb 9e                	jmp    c0033410 <_svfprintf_r+0x10d0>
c0033472:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033475:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003347a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033480:	89 c7                	mov    %eax,%edi
c0033482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033488:	89 c8                	mov    %ecx,%eax
c003348a:	83 ef 01             	sub    $0x1,%edi
c003348d:	f7 e6                	mul    %esi
c003348f:	c1 ea 03             	shr    $0x3,%edx
c0033492:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033495:	01 c0                	add    %eax,%eax
c0033497:	29 c1                	sub    %eax,%ecx
c0033499:	83 c1 30             	add    $0x30,%ecx
c003349c:	85 d2                	test   %edx,%edx
c003349e:	88 0f                	mov    %cl,(%edi)
c00334a0:	89 d1                	mov    %edx,%ecx
c00334a2:	75 e4                	jne    c0033488 <_svfprintf_r+0x1148>
c00334a4:	89 fa                	mov    %edi,%edx
c00334a6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00334ac:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00334b2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00334b5:	29 d0                	sub    %edx,%eax
c00334b7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00334bd:	e9 d6 f2 ff ff       	jmp    c0032798 <_svfprintf_r+0x458>
c00334c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00334c8:	83 f9 09             	cmp    $0x9,%ecx
c00334cb:	77 a5                	ja     c0033472 <_svfprintf_r+0x1132>
c00334cd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00334d3:	83 c1 30             	add    $0x30,%ecx
c00334d6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00334d9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00334df:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00334e2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334e8:	e9 ab f2 ff ff       	jmp    c0032798 <_svfprintf_r+0x458>
c00334ed:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334f3:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334f7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334fa:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0033501:	89 04 24             	mov    %eax,(%esp)
c0033504:	e8 47 39 00 00       	call   c0036e50 <__ssprint_r>
c0033509:	85 c0                	test   %eax,%eax
c003350b:	0f 85 ff ef ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033511:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033518:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003351b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033521:	e9 18 f7 ff ff       	jmp    c0032c3e <_svfprintf_r+0x8fe>
c0033526:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003352c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003352f:	85 f6                	test   %esi,%esi
c0033531:	0f 8e f0 fc ff ff    	jle    c0033227 <_svfprintf_r+0xee7>
c0033537:	83 fe 10             	cmp    $0x10,%esi
c003353a:	7e 70                	jle    c00335ac <_svfprintf_r+0x126c>
c003353c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033542:	eb 0c                	jmp    c0033550 <_svfprintf_r+0x1210>
c0033544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033548:	83 ee 10             	sub    $0x10,%esi
c003354b:	83 fe 10             	cmp    $0x10,%esi
c003354e:	7e 5c                	jle    c00335ac <_svfprintf_r+0x126c>
c0033550:	83 c0 01             	add    $0x1,%eax
c0033553:	83 c2 10             	add    $0x10,%edx
c0033556:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c003355c:	83 c7 08             	add    $0x8,%edi
c003355f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033566:	83 f8 07             	cmp    $0x7,%eax
c0033569:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003356f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033575:	7e d1                	jle    c0033548 <_svfprintf_r+0x1208>
c0033577:	8b 45 0c             	mov    0xc(%ebp),%eax
c003357a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003357e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033582:	8b 45 08             	mov    0x8(%ebp),%eax
c0033585:	89 04 24             	mov    %eax,(%esp)
c0033588:	e8 c3 38 00 00       	call   c0036e50 <__ssprint_r>
c003358d:	85 c0                	test   %eax,%eax
c003358f:	0f 85 7b ef ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033595:	83 ee 10             	sub    $0x10,%esi
c0033598:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003359e:	83 fe 10             	cmp    $0x10,%esi
c00335a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335a7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00335aa:	7f a4                	jg     c0033550 <_svfprintf_r+0x1210>
c00335ac:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c00335b2:	01 f2                	add    %esi,%edx
c00335b4:	89 77 04             	mov    %esi,0x4(%edi)
c00335b7:	e9 50 fc ff ff       	jmp    c003320c <_svfprintf_r+0xecc>
c00335bc:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c00335c2:	01 f1                	add    %esi,%ecx
c00335c4:	89 77 04             	mov    %esi,0x4(%edi)
c00335c7:	e9 6f fc ff ff       	jmp    c003323b <_svfprintf_r+0xefb>
c00335cc:	8b 45 14             	mov    0x14(%ebp),%eax
c00335cf:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00335d5:	8b 00                	mov    (%eax),%eax
c00335d7:	89 10                	mov    %edx,(%eax)
c00335d9:	8b 45 14             	mov    0x14(%ebp),%eax
c00335dc:	83 c0 04             	add    $0x4,%eax
c00335df:	89 45 14             	mov    %eax,0x14(%ebp)
c00335e2:	e9 f4 ed ff ff       	jmp    c00323db <_svfprintf_r+0x9b>
c00335e7:	83 c0 01             	add    $0x1,%eax
c00335ea:	01 f1                	add    %esi,%ecx
c00335ec:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c00335f2:	83 c7 08             	add    $0x8,%edi
c00335f5:	89 77 fc             	mov    %esi,-0x4(%edi)
c00335f8:	83 f8 07             	cmp    $0x7,%eax
c00335fb:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033601:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033607:	7e 2d                	jle    c0033636 <_svfprintf_r+0x12f6>
c0033609:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003360f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033613:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033616:	89 44 24 04          	mov    %eax,0x4(%esp)
c003361a:	8b 45 08             	mov    0x8(%ebp),%eax
c003361d:	89 04 24             	mov    %eax,(%esp)
c0033620:	e8 2b 38 00 00       	call   c0036e50 <__ssprint_r>
c0033625:	85 c0                	test   %eax,%eax
c0033627:	0f 85 e3 ee ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c003362d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033633:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033636:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003363c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033642:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033648:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003364e:	89 c6                	mov    %eax,%esi
c0033650:	7c 0d                	jl     c003365f <_svfprintf_r+0x131f>
c0033652:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033659:	0f 84 5e 05 00 00    	je     c0033bbd <_svfprintf_r+0x187d>
c003365f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033665:	89 07                	mov    %eax,(%edi)
c0033667:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003366d:	01 c1                	add    %eax,%ecx
c003366f:	89 47 04             	mov    %eax,0x4(%edi)
c0033672:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033678:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003367e:	83 c0 01             	add    $0x1,%eax
c0033681:	83 f8 07             	cmp    $0x7,%eax
c0033684:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003368a:	0f 8f d9 06 00 00    	jg     c0033d69 <_svfprintf_r+0x1a29>
c0033690:	83 c7 08             	add    $0x8,%edi
c0033693:	89 d0                	mov    %edx,%eax
c0033695:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003369b:	89 f2                	mov    %esi,%edx
c003369d:	29 f3                	sub    %esi,%ebx
c003369f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00336a5:	29 c6                	sub    %eax,%esi
c00336a7:	39 de                	cmp    %ebx,%esi
c00336a9:	0f 4e de             	cmovle %esi,%ebx
c00336ac:	85 db                	test   %ebx,%ebx
c00336ae:	7e 29                	jle    c00336d9 <_svfprintf_r+0x1399>
c00336b0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00336b6:	01 d9                	add    %ebx,%ecx
c00336b8:	83 c7 08             	add    $0x8,%edi
c00336bb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00336be:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00336c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00336c7:	83 c0 01             	add    $0x1,%eax
c00336ca:	83 f8 07             	cmp    $0x7,%eax
c00336cd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336d3:	0f 8f c8 06 00 00    	jg     c0033da1 <_svfprintf_r+0x1a61>
c00336d9:	31 c0                	xor    %eax,%eax
c00336db:	85 db                	test   %ebx,%ebx
c00336dd:	0f 49 c3             	cmovns %ebx,%eax
c00336e0:	29 c6                	sub    %eax,%esi
c00336e2:	85 f6                	test   %esi,%esi
c00336e4:	0f 8e 02 f7 ff ff    	jle    c0032dec <_svfprintf_r+0xaac>
c00336ea:	83 fe 10             	cmp    $0x10,%esi
c00336ed:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00336f3:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00336f9:	7f 11                	jg     c003370c <_svfprintf_r+0x13cc>
c00336fb:	e9 bc fe ff ff       	jmp    c00335bc <_svfprintf_r+0x127c>
c0033700:	83 ee 10             	sub    $0x10,%esi
c0033703:	83 fe 10             	cmp    $0x10,%esi
c0033706:	0f 8e b0 fe ff ff    	jle    c00335bc <_svfprintf_r+0x127c>
c003370c:	83 c0 01             	add    $0x1,%eax
c003370f:	83 c1 10             	add    $0x10,%ecx
c0033712:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0033718:	83 c7 08             	add    $0x8,%edi
c003371b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033722:	83 f8 07             	cmp    $0x7,%eax
c0033725:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003372b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033731:	7e cd                	jle    c0033700 <_svfprintf_r+0x13c0>
c0033733:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033736:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003373a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003373e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033741:	89 04 24             	mov    %eax,(%esp)
c0033744:	e8 07 37 00 00       	call   c0036e50 <__ssprint_r>
c0033749:	85 c0                	test   %eax,%eax
c003374b:	0f 85 bf ed ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033751:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033757:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003375a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033760:	eb 9e                	jmp    c0033700 <_svfprintf_r+0x13c0>
c0033762:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033769:	0f 85 14 fa ff ff    	jne    c0033183 <_svfprintf_r+0xe43>
c003376f:	89 07                	mov    %eax,(%edi)
c0033771:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033777:	8d 51 01             	lea    0x1(%ecx),%edx
c003377a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033781:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033787:	83 c0 01             	add    $0x1,%eax
c003378a:	83 f8 07             	cmp    $0x7,%eax
c003378d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033793:	0f 8e 8b fa ff ff    	jle    c0033224 <_svfprintf_r+0xee4>
c0033799:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003379f:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00337ad:	89 04 24             	mov    %eax,(%esp)
c00337b0:	e8 9b 36 00 00       	call   c0036e50 <__ssprint_r>
c00337b5:	85 c0                	test   %eax,%eax
c00337b7:	0f 85 53 ed ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00337bd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00337c3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337c6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337cc:	e9 56 fa ff ff       	jmp    c0033227 <_svfprintf_r+0xee7>
c00337d1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00337e5:	89 04 24             	mov    %eax,(%esp)
c00337e8:	e8 63 36 00 00       	call   c0036e50 <__ssprint_r>
c00337ed:	85 c0                	test   %eax,%eax
c00337ef:	0f 85 1b ed ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00337f5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00337fb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337fe:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033804:	e9 d6 f9 ff ff       	jmp    c00331df <_svfprintf_r+0xe9f>
c0033809:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003380f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033813:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033816:	89 44 24 04          	mov    %eax,0x4(%esp)
c003381a:	8b 45 08             	mov    0x8(%ebp),%eax
c003381d:	89 04 24             	mov    %eax,(%esp)
c0033820:	e8 2b 36 00 00       	call   c0036e50 <__ssprint_r>
c0033825:	85 c0                	test   %eax,%eax
c0033827:	0f 85 e3 ec ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c003382d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033833:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033836:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003383c:	e9 6f f9 ff ff       	jmp    c00331b0 <_svfprintf_r+0xe70>
c0033841:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033847:	dd 1c 24             	fstpl  (%esp)
c003384a:	e8 11 35 00 00       	call   c0036d60 <__fpclassifyd>
c003384f:	85 c0                	test   %eax,%eax
c0033851:	0f 85 a3 01 00 00    	jne    c00339fa <_svfprintf_r+0x16ba>
c0033857:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003385e:	ba f2 8f 03 c0       	mov    $0xc0038ff2,%edx
c0033863:	b8 f6 8f 03 c0       	mov    $0xc0038ff6,%eax
c0033868:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003386f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033876:	00 00 00 
c0033879:	0f 4e c2             	cmovle %edx,%eax
c003387c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033882:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033889:	ff ff ff 
c003388c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033893:	00 00 00 
c0033896:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003389d:	00 00 00 
c00338a0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00338a7:	00 00 00 
c00338aa:	e9 29 ed ff ff       	jmp    c00325d8 <_svfprintf_r+0x298>
c00338af:	dd 00                	fldl   (%eax)
c00338b1:	83 c0 08             	add    $0x8,%eax
c00338b4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00338ba:	89 45 14             	mov    %eax,0x14(%ebp)
c00338bd:	e9 e6 ef ff ff       	jmp    c00328a8 <_svfprintf_r+0x568>
c00338c2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338c8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00338d6:	89 04 24             	mov    %eax,(%esp)
c00338d9:	e8 72 35 00 00       	call   c0036e50 <__ssprint_r>
c00338de:	85 c0                	test   %eax,%eax
c00338e0:	0f 85 2a ec ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00338e6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338ec:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338ef:	e9 6b f6 ff ff       	jmp    c0032f5f <_svfprintf_r+0xc1f>
c00338f4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338fa:	83 c1 01             	add    $0x1,%ecx
c00338fd:	83 c7 08             	add    $0x8,%edi
c0033900:	c7 47 f8 23 90 03 c0 	movl   $0xc0039023,-0x8(%edi)
c0033907:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003390e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033914:	83 c0 01             	add    $0x1,%eax
c0033917:	83 f8 07             	cmp    $0x7,%eax
c003391a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033920:	0f 8f ef 02 00 00    	jg     c0033c15 <_svfprintf_r+0x18d5>
c0033926:	85 db                	test   %ebx,%ebx
c0033928:	75 17                	jne    c0033941 <_svfprintf_r+0x1601>
c003392a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033930:	85 d2                	test   %edx,%edx
c0033932:	75 0d                	jne    c0033941 <_svfprintf_r+0x1601>
c0033934:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003393b:	0f 84 ab f4 ff ff    	je     c0032dec <_svfprintf_r+0xaac>
c0033941:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033947:	83 c7 08             	add    $0x8,%edi
c003394a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003394d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033953:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033956:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033959:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003395f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033965:	83 c0 01             	add    $0x1,%eax
c0033968:	83 f8 07             	cmp    $0x7,%eax
c003396b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033971:	0f 8f 60 03 00 00    	jg     c0033cd7 <_svfprintf_r+0x1997>
c0033977:	f7 db                	neg    %ebx
c0033979:	85 db                	test   %ebx,%ebx
c003397b:	0f 8e 21 03 00 00    	jle    c0033ca2 <_svfprintf_r+0x1962>
c0033981:	83 fb 10             	cmp    $0x10,%ebx
c0033984:	0f 8e c3 02 00 00    	jle    c0033c4d <_svfprintf_r+0x190d>
c003398a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033990:	eb 12                	jmp    c00339a4 <_svfprintf_r+0x1664>
c0033992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033998:	83 eb 10             	sub    $0x10,%ebx
c003399b:	83 fb 10             	cmp    $0x10,%ebx
c003399e:	0f 8e a9 02 00 00    	jle    c0033c4d <_svfprintf_r+0x190d>
c00339a4:	83 c0 01             	add    $0x1,%eax
c00339a7:	83 c2 10             	add    $0x10,%edx
c00339aa:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c00339b0:	83 c7 08             	add    $0x8,%edi
c00339b3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00339ba:	83 f8 07             	cmp    $0x7,%eax
c00339bd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00339c3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00339c9:	7e cd                	jle    c0033998 <_svfprintf_r+0x1658>
c00339cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339ce:	89 74 24 08          	mov    %esi,0x8(%esp)
c00339d2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00339d9:	89 04 24             	mov    %eax,(%esp)
c00339dc:	e8 6f 34 00 00       	call   c0036e50 <__ssprint_r>
c00339e1:	85 c0                	test   %eax,%eax
c00339e3:	0f 85 27 eb ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c00339e9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339f2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339f8:	eb 9e                	jmp    c0033998 <_svfprintf_r+0x1658>
c00339fa:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033a00:	83 e3 df             	and    $0xffffffdf,%ebx
c0033a03:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c0033a0a:	0f 84 05 03 00 00    	je     c0033d15 <_svfprintf_r+0x19d5>
c0033a10:	83 fb 47             	cmp    $0x47,%ebx
c0033a13:	75 16                	jne    c0033a2b <_svfprintf_r+0x16eb>
c0033a15:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a1b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033a20:	85 d2                	test   %edx,%edx
c0033a22:	0f 45 c2             	cmovne %edx,%eax
c0033a25:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033a2b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033a31:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033a37:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c0033a3d:	80 cc 01             	or     $0x1,%ah
c0033a40:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033a46:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0033a4c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033a53:	85 c0                	test   %eax,%eax
c0033a55:	0f 88 ba 05 00 00    	js     c0034015 <_svfprintf_r+0x1cd5>
c0033a5b:	83 fb 46             	cmp    $0x46,%ebx
c0033a5e:	0f 94 c0             	sete   %al
c0033a61:	89 c6                	mov    %eax,%esi
c0033a63:	0f 84 d4 03 00 00    	je     c0033e3d <_svfprintf_r+0x1afd>
c0033a69:	83 fb 45             	cmp    $0x45,%ebx
c0033a6c:	0f 85 99 05 00 00    	jne    c003400b <_svfprintf_r+0x1ccb>
c0033a72:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033a78:	dd 54 24 04          	fstl   0x4(%esp)
c0033a7c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033a83:	00 
c0033a84:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033a8a:	8d 70 01             	lea    0x1(%eax),%esi
c0033a8d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a93:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a97:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033a9d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033aa1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033aa7:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033aab:	8b 45 08             	mov    0x8(%ebp),%eax
c0033aae:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033ab2:	89 04 24             	mov    %eax,(%esp)
c0033ab5:	e8 56 09 00 00       	call   c0034410 <_dtoa_r>
c0033aba:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033ac0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033ac3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ac9:	d9 ee                	fldz   
c0033acb:	d9 c9                	fxch   %st(1)
c0033acd:	df e9                	fucomip %st(1),%st
c0033acf:	dd d8                	fstp   %st(0)
c0033ad1:	0f 8a fd 00 00 00    	jp     c0033bd4 <_svfprintf_r+0x1894>
c0033ad7:	89 c8                	mov    %ecx,%eax
c0033ad9:	0f 85 f5 00 00 00    	jne    c0033bd4 <_svfprintf_r+0x1894>
c0033adf:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033ae5:	83 fb 47             	cmp    $0x47,%ebx
c0033ae8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033aee:	0f 84 1e 04 00 00    	je     c0033f12 <_svfprintf_r+0x1bd2>
c0033af4:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0033afb:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b01:	0f 8e 65 04 00 00    	jle    c0033f6c <_svfprintf_r+0x1c2c>
c0033b07:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c0033b0e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b14:	0f 84 3c 05 00 00    	je     c0034056 <_svfprintf_r+0x1d16>
c0033b1a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033b20:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033b26:	0f 8f f7 04 00 00    	jg     c0034023 <_svfprintf_r+0x1ce3>
c0033b2c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033b32:	83 e0 01             	and    $0x1,%eax
c0033b35:	0f 85 e2 05 00 00    	jne    c003411d <_svfprintf_r+0x1ddd>
c0033b3b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033b41:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033b48:	00 00 00 
c0033b4b:	85 d2                	test   %edx,%edx
c0033b4d:	0f 49 c2             	cmovns %edx,%eax
c0033b50:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033b56:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c0033b5d:	0f 85 68 03 00 00    	jne    c0033ecb <_svfprintf_r+0x1b8b>
c0033b63:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b69:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b6f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b76:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b7d:	00 00 00 
c0033b80:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b86:	e9 4d ea ff ff       	jmp    c00325d8 <_svfprintf_r+0x298>
c0033b8b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033b91:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033b95:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b98:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b9f:	89 04 24             	mov    %eax,(%esp)
c0033ba2:	e8 a9 32 00 00       	call   c0036e50 <__ssprint_r>
c0033ba7:	85 c0                	test   %eax,%eax
c0033ba9:	0f 85 61 e9 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033baf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033bb5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033bb8:	e9 f2 f3 ff ff       	jmp    c0032faf <_svfprintf_r+0xc6f>
c0033bbd:	89 d0                	mov    %edx,%eax
c0033bbf:	e9 d1 fa ff ff       	jmp    c0033695 <_svfprintf_r+0x1355>
c0033bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033bc8:	8d 50 01             	lea    0x1(%eax),%edx
c0033bcb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033bd1:	c6 00 30             	movb   $0x30,(%eax)
c0033bd4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033bda:	39 c1                	cmp    %eax,%ecx
c0033bdc:	77 ea                	ja     c0033bc8 <_svfprintf_r+0x1888>
c0033bde:	e9 fc fe ff ff       	jmp    c0033adf <_svfprintf_r+0x179f>
c0033be3:	8b 45 08             	mov    0x8(%ebp),%eax
c0033be6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0033bed:	00 
c0033bee:	89 04 24             	mov    %eax,(%esp)
c0033bf1:	e8 4a 1b 00 00       	call   c0035740 <_malloc_r>
c0033bf6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033bf9:	85 c0                	test   %eax,%eax
c0033bfb:	89 02                	mov    %eax,(%edx)
c0033bfd:	89 42 10             	mov    %eax,0x10(%edx)
c0033c00:	0f 84 15 06 00 00    	je     c003421b <_svfprintf_r+0x1edb>
c0033c06:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033c09:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033c10:	e9 6c e7 ff ff       	jmp    c0032381 <_svfprintf_r+0x41>
c0033c15:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033c1b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033c1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033c22:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033c26:	8b 45 08             	mov    0x8(%ebp),%eax
c0033c29:	89 04 24             	mov    %eax,(%esp)
c0033c2c:	e8 1f 32 00 00       	call   c0036e50 <__ssprint_r>
c0033c31:	85 c0                	test   %eax,%eax
c0033c33:	0f 85 d7 e8 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033c39:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033c3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c42:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033c48:	e9 d9 fc ff ff       	jmp    c0033926 <_svfprintf_r+0x15e6>
c0033c4d:	83 c0 01             	add    $0x1,%eax
c0033c50:	01 da                	add    %ebx,%edx
c0033c52:	c7 07 8c 91 03 c0    	movl   $0xc003918c,(%edi)
c0033c58:	83 c7 08             	add    $0x8,%edi
c0033c5b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033c5e:	83 f8 07             	cmp    $0x7,%eax
c0033c61:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033c67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033c6d:	7e 33                	jle    c0033ca2 <_svfprintf_r+0x1962>
c0033c6f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033c75:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033c79:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033c7c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033c80:	8b 45 08             	mov    0x8(%ebp),%eax
c0033c83:	89 04 24             	mov    %eax,(%esp)
c0033c86:	e8 c5 31 00 00       	call   c0036e50 <__ssprint_r>
c0033c8b:	85 c0                	test   %eax,%eax
c0033c8d:	0f 85 7d e8 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033c93:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033c99:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033c9c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033ca2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033ca8:	83 c0 01             	add    $0x1,%eax
c0033cab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033cb1:	89 1f                	mov    %ebx,(%edi)
c0033cb3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033cb9:	01 da                	add    %ebx,%edx
c0033cbb:	83 f8 07             	cmp    $0x7,%eax
c0033cbe:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033cc1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033cc7:	0f 8f 86 f5 ff ff    	jg     c0033253 <_svfprintf_r+0xf13>
c0033ccd:	83 c7 08             	add    $0x8,%edi
c0033cd0:	89 d1                	mov    %edx,%ecx
c0033cd2:	e9 15 f1 ff ff       	jmp    c0032dec <_svfprintf_r+0xaac>
c0033cd7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033cdd:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033ce1:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033ce4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033ce8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ceb:	89 04 24             	mov    %eax,(%esp)
c0033cee:	e8 5d 31 00 00       	call   c0036e50 <__ssprint_r>
c0033cf3:	85 c0                	test   %eax,%eax
c0033cf5:	0f 85 15 e8 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033cfb:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033d01:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d04:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033d0a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033d10:	e9 62 fc ff ff       	jmp    c0033977 <_svfprintf_r+0x1637>
c0033d15:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0033d1c:	00 00 00 
c0033d1f:	e9 07 fd ff ff       	jmp    c0033a2b <_svfprintf_r+0x16eb>
c0033d24:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033d2a:	89 04 24             	mov    %eax,(%esp)
c0033d2d:	e8 9e 30 00 00       	call   c0036dd0 <strlen>
c0033d32:	e9 6a e8 ff ff       	jmp    c00325a1 <_svfprintf_r+0x261>
c0033d37:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d3d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033d41:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033d44:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033d48:	8b 45 08             	mov    0x8(%ebp),%eax
c0033d4b:	89 04 24             	mov    %eax,(%esp)
c0033d4e:	e8 fd 30 00 00       	call   c0036e50 <__ssprint_r>
c0033d53:	85 c0                	test   %eax,%eax
c0033d55:	0f 85 b5 e7 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033d5b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033d61:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d64:	e9 76 f6 ff ff       	jmp    c00333df <_svfprintf_r+0x109f>
c0033d69:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d6f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033d73:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033d76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033d7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033d7d:	89 04 24             	mov    %eax,(%esp)
c0033d80:	e8 cb 30 00 00       	call   c0036e50 <__ssprint_r>
c0033d85:	85 c0                	test   %eax,%eax
c0033d87:	0f 85 83 e7 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033d8d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033d93:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d96:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033d9c:	e9 f4 f8 ff ff       	jmp    c0033695 <_svfprintf_r+0x1355>
c0033da1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033da7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033dab:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033dae:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033db2:	8b 45 08             	mov    0x8(%ebp),%eax
c0033db5:	89 04 24             	mov    %eax,(%esp)
c0033db8:	e8 93 30 00 00       	call   c0036e50 <__ssprint_r>
c0033dbd:	85 c0                	test   %eax,%eax
c0033dbf:	0f 85 4b e7 ff ff    	jne    c0032510 <_svfprintf_r+0x1d0>
c0033dc5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033dcb:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033dce:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033dd4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033dda:	e9 fa f8 ff ff       	jmp    c00336d9 <_svfprintf_r+0x1399>
c0033ddf:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033de5:	b0 06                	mov    $0x6,%al
c0033de7:	89 75 14             	mov    %esi,0x14(%ebp)
c0033dea:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033df1:	00 00 00 
c0033df4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033dfb:	00 00 00 
c0033dfe:	83 fa 06             	cmp    $0x6,%edx
c0033e01:	0f 46 c2             	cmovbe %edx,%eax
c0033e04:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033e0a:	85 c0                	test   %eax,%eax
c0033e0c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033e12:	c7 85 28 ff ff ff 1c 	movl   $0xc003901c,-0xd8(%ebp)
c0033e19:	90 03 c0 
c0033e1c:	0f 49 d0             	cmovns %eax,%edx
c0033e1f:	31 db                	xor    %ebx,%ebx
c0033e21:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033e27:	e9 b7 e7 ff ff       	jmp    c00325e3 <_svfprintf_r+0x2a3>
c0033e2c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033e33:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033e38:	e9 9d ea ff ff       	jmp    c00328da <_svfprintf_r+0x59a>
c0033e3d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033e42:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033e48:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033e4c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033e52:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033e56:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033e5c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033e60:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033e66:	dd 54 24 04          	fstl   0x4(%esp)
c0033e6a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033e6e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033e74:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033e78:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e7b:	89 04 24             	mov    %eax,(%esp)
c0033e7e:	e8 8d 05 00 00       	call   c0034410 <_dtoa_r>
c0033e83:	83 fb 47             	cmp    $0x47,%ebx
c0033e86:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033e8c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033e92:	75 09                	jne    c0033e9d <_svfprintf_r+0x1b5d>
c0033e94:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033e9b:	74 5b                	je     c0033ef8 <_svfprintf_r+0x1bb8>
c0033e9d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ea3:	89 f0                	mov    %esi,%eax
c0033ea5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033eab:	01 d1                	add    %edx,%ecx
c0033ead:	84 c0                	test   %al,%al
c0033eaf:	0f 84 14 fc ff ff    	je     c0033ac9 <_svfprintf_r+0x1789>
c0033eb5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033eb8:	0f 84 37 02 00 00    	je     c00340f5 <_svfprintf_r+0x1db5>
c0033ebe:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ec4:	01 c1                	add    %eax,%ecx
c0033ec6:	e9 fe fb ff ff       	jmp    c0033ac9 <_svfprintf_r+0x1789>
c0033ecb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033ed1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033ed7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033edc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033ee3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033eea:	00 00 00 
c0033eed:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033ef3:	e9 e4 e6 ff ff       	jmp    c00325dc <_svfprintf_r+0x29c>
c0033ef8:	dd d8                	fstp   %st(0)
c0033efa:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033f00:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033f06:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033f0c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033f12:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033f18:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033f1b:	7c 48                	jl     c0033f65 <_svfprintf_r+0x1c25>
c0033f1d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033f23:	7c 40                	jl     c0033f65 <_svfprintf_r+0x1c25>
c0033f25:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033f2b:	e9 ea fb ff ff       	jmp    c0033b1a <_svfprintf_r+0x17da>
c0033f30:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033f36:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033f3d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033f40:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033f47:	00 00 00 
c0033f4a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033f50:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033f56:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033f5d:	00 00 00 
c0033f60:	e9 73 e6 ff ff       	jmp    c00325d8 <_svfprintf_r+0x298>
c0033f65:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033f6c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033f6f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033f76:	85 c9                	test   %ecx,%ecx
c0033f78:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033f7e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033f84:	0f 88 2c 02 00 00    	js     c00341b6 <_svfprintf_r+0x1e76>
c0033f8a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033f91:	83 f9 09             	cmp    $0x9,%ecx
c0033f94:	0f 8f ea 00 00 00    	jg     c0034084 <_svfprintf_r+0x1d44>
c0033f9a:	83 c1 30             	add    $0x30,%ecx
c0033f9d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033fa4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033faa:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033fb0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033fb6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033fbc:	29 d0                	sub    %edx,%eax
c0033fbe:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033fc4:	89 da                	mov    %ebx,%edx
c0033fc6:	01 c2                	add    %eax,%edx
c0033fc8:	83 fb 01             	cmp    $0x1,%ebx
c0033fcb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033fd1:	0f 8e 21 02 00 00    	jle    c00341f8 <_svfprintf_r+0x1eb8>
c0033fd7:	31 c0                	xor    %eax,%eax
c0033fd9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033fe0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033fe7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033fee:	00 00 00 
c0033ff1:	e9 60 fb ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c0033ff6:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033ffc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034003:	00 00 00 
c0034006:	e9 68 e4 ff ff       	jmp    c0032473 <_svfprintf_r+0x133>
c003400b:	ba 02 00 00 00       	mov    $0x2,%edx
c0034010:	e9 2d fe ff ff       	jmp    c0033e42 <_svfprintf_r+0x1b02>
c0034015:	d9 e0                	fchs   
c0034017:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c003401e:	e9 38 fa ff ff       	jmp    c0033a5b <_svfprintf_r+0x171b>
c0034023:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0034029:	ba 01 00 00 00       	mov    $0x1,%edx
c003402e:	85 c9                	test   %ecx,%ecx
c0034030:	0f 8e 5a 01 00 00    	jle    c0034190 <_svfprintf_r+0x1e50>
c0034036:	31 c0                	xor    %eax,%eax
c0034038:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c003403e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0034045:	00 00 00 
c0034048:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003404e:	0f 49 c2             	cmovns %edx,%eax
c0034051:	e9 00 fb ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c0034056:	85 c0                	test   %eax,%eax
c0034058:	0f 8e 06 01 00 00    	jle    c0034164 <_svfprintf_r+0x1e24>
c003405e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0034064:	85 f6                	test   %esi,%esi
c0034066:	0f 85 d4 00 00 00    	jne    c0034140 <_svfprintf_r+0x1e00>
c003406c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034073:	0f 85 c7 00 00 00    	jne    c0034140 <_svfprintf_r+0x1e00>
c0034079:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003407f:	e9 d2 fa ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c0034084:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c003408a:	89 f3                	mov    %esi,%ebx
c003408c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0034091:	83 eb 01             	sub    $0x1,%ebx
c0034094:	f7 e9                	imul   %ecx
c0034096:	89 c8                	mov    %ecx,%eax
c0034098:	c1 f8 1f             	sar    $0x1f,%eax
c003409b:	c1 fa 02             	sar    $0x2,%edx
c003409e:	29 c2                	sub    %eax,%edx
c00340a0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00340a3:	01 c0                	add    %eax,%eax
c00340a5:	29 c1                	sub    %eax,%ecx
c00340a7:	83 fa 09             	cmp    $0x9,%edx
c00340aa:	8d 41 30             	lea    0x30(%ecx),%eax
c00340ad:	89 d1                	mov    %edx,%ecx
c00340af:	88 03                	mov    %al,(%ebx)
c00340b1:	7f d9                	jg     c003408c <_svfprintf_r+0x1d4c>
c00340b3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c00340b6:	83 c1 30             	add    $0x30,%ecx
c00340b9:	39 f0                	cmp    %esi,%eax
c00340bb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c00340be:	0f 83 6a 01 00 00    	jae    c003422e <_svfprintf_r+0x1eee>
c00340c4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c00340ca:	eb 07                	jmp    c00340d3 <_svfprintf_r+0x1d93>
c00340cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340d0:	0f b6 08             	movzbl (%eax),%ecx
c00340d3:	83 c0 01             	add    $0x1,%eax
c00340d6:	83 c2 01             	add    $0x1,%edx
c00340d9:	39 f0                	cmp    %esi,%eax
c00340db:	88 4a ff             	mov    %cl,-0x1(%edx)
c00340de:	75 f0                	jne    c00340d0 <_svfprintf_r+0x1d90>
c00340e0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00340e6:	29 d8                	sub    %ebx,%eax
c00340e8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c00340ee:	01 d0                	add    %edx,%eax
c00340f0:	e9 bb fe ff ff       	jmp    c0033fb0 <_svfprintf_r+0x1c70>
c00340f5:	d9 ee                	fldz   
c00340f7:	d9 c9                	fxch   %st(1)
c00340f9:	db e9                	fucomi %st(1),%st
c00340fb:	dd d9                	fstp   %st(1)
c00340fd:	7a 06                	jp     c0034105 <_svfprintf_r+0x1dc5>
c00340ff:	0f 84 b9 fd ff ff    	je     c0033ebe <_svfprintf_r+0x1b7e>
c0034105:	b8 01 00 00 00       	mov    $0x1,%eax
c003410a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0034110:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0034116:	01 c1                	add    %eax,%ecx
c0034118:	e9 ac f9 ff ff       	jmp    c0033ac9 <_svfprintf_r+0x1789>
c003411d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034123:	31 c0                	xor    %eax,%eax
c0034125:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c003412c:	00 00 00 
c003412f:	83 c2 01             	add    $0x1,%edx
c0034132:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0034138:	0f 49 c2             	cmovns %edx,%eax
c003413b:	e9 16 fa ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c0034140:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034146:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003414c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0034150:	89 c2                	mov    %eax,%edx
c0034152:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0034158:	31 c0                	xor    %eax,%eax
c003415a:	85 d2                	test   %edx,%edx
c003415c:	0f 49 c2             	cmovns %edx,%eax
c003415f:	e9 f2 f9 ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c0034164:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003416a:	85 db                	test   %ebx,%ebx
c003416c:	75 2f                	jne    c003419d <_svfprintf_r+0x1e5d>
c003416e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0034175:	75 26                	jne    c003419d <_svfprintf_r+0x1e5d>
c0034177:	b8 01 00 00 00       	mov    $0x1,%eax
c003417c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0034183:	00 00 00 
c0034186:	e9 cb f9 ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c003418b:	90                   	nop
c003418c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034190:	b2 02                	mov    $0x2,%dl
c0034192:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0034198:	e9 99 fe ff ff       	jmp    c0034036 <_svfprintf_r+0x1cf6>
c003419d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00341a3:	31 c0                	xor    %eax,%eax
c00341a5:	83 c2 02             	add    $0x2,%edx
c00341a8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00341ae:	0f 49 c2             	cmovns %edx,%eax
c00341b1:	e9 a0 f9 ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c00341b6:	f7 d9                	neg    %ecx
c00341b8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c00341bf:	e9 cd fd ff ff       	jmp    c0033f91 <_svfprintf_r+0x1c51>
c00341c4:	8b 55 14             	mov    0x14(%ebp),%edx
c00341c7:	8b 45 14             	mov    0x14(%ebp),%eax
c00341ca:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00341d0:	8b 12                	mov    (%edx),%edx
c00341d2:	83 c0 04             	add    $0x4,%eax
c00341d5:	89 45 14             	mov    %eax,0x14(%ebp)
c00341d8:	85 d2                	test   %edx,%edx
c00341da:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00341e0:	0f 89 a9 e2 ff ff    	jns    c003248f <_svfprintf_r+0x14f>
c00341e6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00341ed:	ff ff ff 
c00341f0:	89 c8                	mov    %ecx,%eax
c00341f2:	e9 76 e2 ff ff       	jmp    c003246d <_svfprintf_r+0x12d>
c00341f7:	90                   	nop
c00341f8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00341fe:	83 e0 01             	and    $0x1,%eax
c0034201:	0f 85 d0 fd ff ff    	jne    c0033fd7 <_svfprintf_r+0x1c97>
c0034207:	85 d2                	test   %edx,%edx
c0034209:	0f 49 c2             	cmovns %edx,%eax
c003420c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0034213:	00 00 00 
c0034216:	e9 3b f9 ff ff       	jmp    c0033b56 <_svfprintf_r+0x1816>
c003421b:	8b 45 08             	mov    0x8(%ebp),%eax
c003421e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0034224:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0034229:	e9 f5 e2 ff ff       	jmp    c0032523 <_svfprintf_r+0x1e3>
c003422e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0034234:	e9 77 fd ff ff       	jmp    c0033fb0 <_svfprintf_r+0x1c70>
c0034239:	66 90                	xchg   %ax,%ax
c003423b:	66 90                	xchg   %ax,%ax
c003423d:	66 90                	xchg   %ax,%ax
c003423f:	90                   	nop

c0034240 <quorem>:
c0034240:	55                   	push   %ebp
c0034241:	89 c1                	mov    %eax,%ecx
c0034243:	89 e5                	mov    %esp,%ebp
c0034245:	57                   	push   %edi
c0034246:	89 d7                	mov    %edx,%edi
c0034248:	56                   	push   %esi
c0034249:	53                   	push   %ebx
c003424a:	83 ec 3c             	sub    $0x3c,%esp
c003424d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0034250:	8b 42 10             	mov    0x10(%edx),%eax
c0034253:	3b 41 10             	cmp    0x10(%ecx),%eax
c0034256:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0034259:	89 ca                	mov    %ecx,%edx
c003425b:	0f 8f 9f 01 00 00    	jg     c0034400 <quorem+0x1c0>
c0034261:	83 e8 01             	sub    $0x1,%eax
c0034264:	83 c7 14             	add    $0x14,%edi
c0034267:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003426a:	c1 e0 02             	shl    $0x2,%eax
c003426d:	83 c2 14             	add    $0x14,%edx
c0034270:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0034273:	01 d0                	add    %edx,%eax
c0034275:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0034278:	8b 13                	mov    (%ebx),%edx
c003427a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c003427d:	8b 00                	mov    (%eax),%eax
c003427f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0034282:	8d 4a 01             	lea    0x1(%edx),%ecx
c0034285:	31 d2                	xor    %edx,%edx
c0034287:	f7 f1                	div    %ecx
c0034289:	85 c0                	test   %eax,%eax
c003428b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003428e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034291:	0f 84 b5 00 00 00    	je     c003434c <quorem+0x10c>
c0034297:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003429a:	31 f6                	xor    %esi,%esi
c003429c:	89 fa                	mov    %edi,%edx
c003429e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c00342a1:	89 f7                	mov    %esi,%edi
c00342a3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00342aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00342b0:	83 c2 04             	add    $0x4,%edx
c00342b3:	8b 72 fc             	mov    -0x4(%edx),%esi
c00342b6:	83 c0 04             	add    $0x4,%eax
c00342b9:	0f b7 ce             	movzwl %si,%ecx
c00342bc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c00342c0:	03 4d dc             	add    -0x24(%ebp),%ecx
c00342c3:	c1 ee 10             	shr    $0x10,%esi
c00342c6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c00342ca:	89 cb                	mov    %ecx,%ebx
c00342cc:	0f b7 c9             	movzwl %cx,%ecx
c00342cf:	c1 eb 10             	shr    $0x10,%ebx
c00342d2:	29 cf                	sub    %ecx,%edi
c00342d4:	01 f3                	add    %esi,%ebx
c00342d6:	89 de                	mov    %ebx,%esi
c00342d8:	0f b7 db             	movzwl %bx,%ebx
c00342db:	c1 ee 10             	shr    $0x10,%esi
c00342de:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00342e1:	8b 70 fc             	mov    -0x4(%eax),%esi
c00342e4:	0f b7 ce             	movzwl %si,%ecx
c00342e7:	01 f9                	add    %edi,%ecx
c00342e9:	c1 ee 10             	shr    $0x10,%esi
c00342ec:	29 de                	sub    %ebx,%esi
c00342ee:	89 cb                	mov    %ecx,%ebx
c00342f0:	c1 fb 10             	sar    $0x10,%ebx
c00342f3:	0f b7 c9             	movzwl %cx,%ecx
c00342f6:	01 de                	add    %ebx,%esi
c00342f8:	89 f7                	mov    %esi,%edi
c00342fa:	c1 e6 10             	shl    $0x10,%esi
c00342fd:	09 ce                	or     %ecx,%esi
c00342ff:	c1 ff 10             	sar    $0x10,%edi
c0034302:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034305:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034308:	73 a6                	jae    c00342b0 <quorem+0x70>
c003430a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003430d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034310:	8b 10                	mov    (%eax),%edx
c0034312:	85 d2                	test   %edx,%edx
c0034314:	75 36                	jne    c003434c <quorem+0x10c>
c0034316:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034319:	89 c2                	mov    %eax,%edx
c003431b:	83 e8 04             	sub    $0x4,%eax
c003431e:	39 c1                	cmp    %eax,%ecx
c0034320:	73 21                	jae    c0034343 <quorem+0x103>
c0034322:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034325:	85 f6                	test   %esi,%esi
c0034327:	75 1a                	jne    c0034343 <quorem+0x103>
c0034329:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003432c:	eb 08                	jmp    c0034336 <quorem+0xf6>
c003432e:	66 90                	xchg   %ax,%ax
c0034330:	8b 18                	mov    (%eax),%ebx
c0034332:	85 db                	test   %ebx,%ebx
c0034334:	75 0a                	jne    c0034340 <quorem+0x100>
c0034336:	83 e8 04             	sub    $0x4,%eax
c0034339:	83 ea 01             	sub    $0x1,%edx
c003433c:	39 c1                	cmp    %eax,%ecx
c003433e:	72 f0                	jb     c0034330 <quorem+0xf0>
c0034340:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034343:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034346:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034349:	89 50 10             	mov    %edx,0x10(%eax)
c003434c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003434f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034353:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034356:	89 04 24             	mov    %eax,(%esp)
c0034359:	e8 a2 23 00 00       	call   c0036700 <__mcmp>
c003435e:	85 c0                	test   %eax,%eax
c0034360:	0f 88 8e 00 00 00    	js     c00343f4 <quorem+0x1b4>
c0034366:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034369:	31 f6                	xor    %esi,%esi
c003436b:	83 c0 01             	add    $0x1,%eax
c003436e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034371:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034378:	83 c7 04             	add    $0x4,%edi
c003437b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003437e:	83 c0 04             	add    $0x4,%eax
c0034381:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034384:	0f b7 d1             	movzwl %cx,%edx
c0034387:	29 d6                	sub    %edx,%esi
c0034389:	0f b7 d3             	movzwl %bx,%edx
c003438c:	01 f2                	add    %esi,%edx
c003438e:	c1 e9 10             	shr    $0x10,%ecx
c0034391:	c1 eb 10             	shr    $0x10,%ebx
c0034394:	29 cb                	sub    %ecx,%ebx
c0034396:	89 d1                	mov    %edx,%ecx
c0034398:	c1 f9 10             	sar    $0x10,%ecx
c003439b:	0f b7 d2             	movzwl %dx,%edx
c003439e:	01 cb                	add    %ecx,%ebx
c00343a0:	89 de                	mov    %ebx,%esi
c00343a2:	c1 e3 10             	shl    $0x10,%ebx
c00343a5:	09 d3                	or     %edx,%ebx
c00343a7:	c1 fe 10             	sar    $0x10,%esi
c00343aa:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c00343ad:	89 58 fc             	mov    %ebx,-0x4(%eax)
c00343b0:	73 c6                	jae    c0034378 <quorem+0x138>
c00343b2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00343b5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00343b8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c00343bb:	8b 02                	mov    (%edx),%eax
c00343bd:	85 c0                	test   %eax,%eax
c00343bf:	75 33                	jne    c00343f4 <quorem+0x1b4>
c00343c1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00343c4:	8d 42 fc             	lea    -0x4(%edx),%eax
c00343c7:	39 c1                	cmp    %eax,%ecx
c00343c9:	73 20                	jae    c00343eb <quorem+0x1ab>
c00343cb:	8b 72 fc             	mov    -0x4(%edx),%esi
c00343ce:	85 f6                	test   %esi,%esi
c00343d0:	75 19                	jne    c00343eb <quorem+0x1ab>
c00343d2:	89 fa                	mov    %edi,%edx
c00343d4:	eb 08                	jmp    c00343de <quorem+0x19e>
c00343d6:	66 90                	xchg   %ax,%ax
c00343d8:	8b 18                	mov    (%eax),%ebx
c00343da:	85 db                	test   %ebx,%ebx
c00343dc:	75 0a                	jne    c00343e8 <quorem+0x1a8>
c00343de:	83 e8 04             	sub    $0x4,%eax
c00343e1:	83 ea 01             	sub    $0x1,%edx
c00343e4:	39 c1                	cmp    %eax,%ecx
c00343e6:	72 f0                	jb     c00343d8 <quorem+0x198>
c00343e8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00343eb:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00343ee:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00343f1:	89 78 10             	mov    %edi,0x10(%eax)
c00343f4:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00343f7:	83 c4 3c             	add    $0x3c,%esp
c00343fa:	5b                   	pop    %ebx
c00343fb:	5e                   	pop    %esi
c00343fc:	5f                   	pop    %edi
c00343fd:	5d                   	pop    %ebp
c00343fe:	c3                   	ret    
c00343ff:	90                   	nop
c0034400:	83 c4 3c             	add    $0x3c,%esp
c0034403:	31 c0                	xor    %eax,%eax
c0034405:	5b                   	pop    %ebx
c0034406:	5e                   	pop    %esi
c0034407:	5f                   	pop    %edi
c0034408:	5d                   	pop    %ebp
c0034409:	c3                   	ret    
c003440a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034410 <_dtoa_r>:
c0034410:	55                   	push   %ebp
c0034411:	89 e5                	mov    %esp,%ebp
c0034413:	57                   	push   %edi
c0034414:	56                   	push   %esi
c0034415:	53                   	push   %ebx
c0034416:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003441c:	8b 75 08             	mov    0x8(%ebp),%esi
c003441f:	dd 45 0c             	fldl   0xc(%ebp)
c0034422:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034425:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034428:	8b 46 40             	mov    0x40(%esi),%eax
c003442b:	85 c0                	test   %eax,%eax
c003442d:	74 23                	je     c0034452 <_dtoa_r+0x42>
c003442f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034432:	ba 01 00 00 00       	mov    $0x1,%edx
c0034437:	d3 e2                	shl    %cl,%edx
c0034439:	89 48 04             	mov    %ecx,0x4(%eax)
c003443c:	89 50 08             	mov    %edx,0x8(%eax)
c003443f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034443:	89 34 24             	mov    %esi,(%esp)
c0034446:	e8 95 1b 00 00       	call   c0035fe0 <_Bfree>
c003444b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034452:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034455:	85 ff                	test   %edi,%edi
c0034457:	0f 88 3b 02 00 00    	js     c0034698 <_dtoa_r+0x288>
c003445d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034463:	89 f8                	mov    %edi,%eax
c0034465:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003446a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003446f:	0f 84 e3 01 00 00    	je     c0034658 <_dtoa_r+0x248>
c0034475:	dd 45 c0             	fldl   -0x40(%ebp)
c0034478:	d9 ee                	fldz   
c003447a:	d9 c9                	fxch   %st(1)
c003447c:	db e9                	fucomi %st(1),%st
c003447e:	dd d9                	fstp   %st(1)
c0034480:	7a 36                	jp     c00344b8 <_dtoa_r+0xa8>
c0034482:	75 34                	jne    c00344b8 <_dtoa_r+0xa8>
c0034484:	dd d8                	fstp   %st(0)
c0034486:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034489:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003448c:	85 c9                	test   %ecx,%ecx
c003448e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034494:	0f 84 4e 02 00 00    	je     c00346e8 <_dtoa_r+0x2d8>
c003449a:	8b 45 24             	mov    0x24(%ebp),%eax
c003449d:	c7 00 24 90 03 c0    	movl   $0xc0039024,(%eax)
c00344a3:	b8 23 90 03 c0       	mov    $0xc0039023,%eax
c00344a8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00344ae:	5b                   	pop    %ebx
c00344af:	5e                   	pop    %esi
c00344b0:	5f                   	pop    %edi
c00344b1:	5d                   	pop    %ebp
c00344b2:	c3                   	ret    
c00344b3:	90                   	nop
c00344b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344b8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00344bb:	89 fb                	mov    %edi,%ebx
c00344bd:	89 44 24 10          	mov    %eax,0x10(%esp)
c00344c1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00344c4:	dd 54 24 04          	fstl   0x4(%esp)
c00344c8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00344cc:	dd 5d b8             	fstpl  -0x48(%ebp)
c00344cf:	89 34 24             	mov    %esi,(%esp)
c00344d2:	c1 eb 14             	shr    $0x14,%ebx
c00344d5:	e8 76 25 00 00       	call   c0036a50 <__d2b>
c00344da:	85 db                	test   %ebx,%ebx
c00344dc:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00344df:	0f 85 db 01 00 00    	jne    c00346c0 <_dtoa_r+0x2b0>
c00344e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00344e8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00344eb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00344ee:	01 c3                	add    %eax,%ebx
c00344f0:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c00344f6:	0f 8c ec 07 00 00    	jl     c0034ce8 <_dtoa_r+0x8d8>
c00344fc:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00344ff:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034504:	89 f8                	mov    %edi,%eax
c0034506:	29 d9                	sub    %ebx,%ecx
c0034508:	d3 e0                	shl    %cl,%eax
c003450a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034510:	d3 ea                	shr    %cl,%edx
c0034512:	09 d0                	or     %edx,%eax
c0034514:	31 d2                	xor    %edx,%edx
c0034516:	83 eb 01             	sub    $0x1,%ebx
c0034519:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003451c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003451f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034522:	df 6d c8             	fildll -0x38(%ebp)
c0034525:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034528:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003452f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034536:	dd 45 b8             	fldl   -0x48(%ebp)
c0034539:	d8 25 bc 91 03 c0    	fsubs  0xc00391bc
c003453f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034542:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034545:	dc 0d d8 91 03 c0    	fmull  0xc00391d8
c003454b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003454f:	b4 0c                	mov    $0xc,%ah
c0034551:	dc 05 e0 91 03 c0    	faddl  0xc00391e0
c0034557:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003455b:	db 45 d4             	fildl  -0x2c(%ebp)
c003455e:	dc 0d e8 91 03 c0    	fmull  0xc00391e8
c0034564:	de c1                	faddp  %st,%st(1)
c0034566:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034569:	db 55 b8             	fistl  -0x48(%ebp)
c003456c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003456f:	d9 ee                	fldz   
c0034571:	df e9                	fucomip %st(1),%st
c0034573:	0f 87 27 07 00 00    	ja     c0034ca0 <_dtoa_r+0x890>
c0034579:	dd d8                	fstp   %st(0)
c003457b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003457f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034586:	77 24                	ja     c00345ac <_dtoa_r+0x19c>
c0034588:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003458b:	dd 04 c5 a0 92 03 c0 	fldl   -0x3ffc6d60(,%eax,8)
c0034592:	dd 45 c0             	fldl   -0x40(%ebp)
c0034595:	d9 c9                	fxch   %st(1)
c0034597:	df e9                	fucomip %st(1),%st
c0034599:	dd d8                	fstp   %st(0)
c003459b:	0f 86 5f 07 00 00    	jbe    c0034d00 <_dtoa_r+0x8f0>
c00345a1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00345a5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00345ac:	89 d0                	mov    %edx,%eax
c00345ae:	29 d8                	sub    %ebx,%eax
c00345b0:	83 e8 01             	sub    $0x1,%eax
c00345b3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00345ba:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00345bd:	0f 88 0d 07 00 00    	js     c0034cd0 <_dtoa_r+0x8c0>
c00345c3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345c6:	85 c0                	test   %eax,%eax
c00345c8:	0f 88 ea 06 00 00    	js     c0034cb8 <_dtoa_r+0x8a8>
c00345ce:	01 45 ac             	add    %eax,-0x54(%ebp)
c00345d1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00345d4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00345db:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00345df:	0f 87 0b 03 00 00    	ja     c00348f0 <_dtoa_r+0x4e0>
c00345e5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00345e9:	0f 8e 23 10 00 00    	jle    c0035612 <_dtoa_r+0x1202>
c00345ef:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c00345f3:	31 c0                	xor    %eax,%eax
c00345f5:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c00345f9:	0f 84 43 0d 00 00    	je     c0035342 <_dtoa_r+0xf32>
c00345ff:	0f 8e f3 00 00 00    	jle    c00346f8 <_dtoa_r+0x2e8>
c0034605:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034609:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034610:	0f 84 f3 00 00 00    	je     c0034709 <_dtoa_r+0x2f9>
c0034616:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003461a:	0f 85 d7 02 00 00    	jne    c00348f7 <_dtoa_r+0x4e7>
c0034620:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034623:	03 5d 18             	add    0x18(%ebp),%ebx
c0034626:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034629:	83 c3 01             	add    $0x1,%ebx
c003462c:	83 fb 0e             	cmp    $0xe,%ebx
c003462f:	0f 96 c2             	setbe  %dl
c0034632:	85 db                	test   %ebx,%ebx
c0034634:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034637:	0f 8e a7 08 00 00    	jle    c0034ee4 <_dtoa_r+0xad4>
c003463d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034640:	83 fb 0e             	cmp    $0xe,%ebx
c0034643:	89 df                	mov    %ebx,%edi
c0034645:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034649:	20 45 b4             	and    %al,-0x4c(%ebp)
c003464c:	e9 d6 00 00 00       	jmp    c0034727 <_dtoa_r+0x317>
c0034651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034658:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003465b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003465e:	85 d2                	test   %edx,%edx
c0034660:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034666:	b8 b5 91 03 c0       	mov    $0xc00391b5,%eax
c003466b:	74 43                	je     c00346b0 <_dtoa_r+0x2a0>
c003466d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034670:	85 db                	test   %ebx,%ebx
c0034672:	0f 84 30 fe ff ff    	je     c00344a8 <_dtoa_r+0x98>
c0034678:	8b 75 24             	mov    0x24(%ebp),%esi
c003467b:	8d 50 08             	lea    0x8(%eax),%edx
c003467e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034682:	8d 48 03             	lea    0x3(%eax),%ecx
c0034685:	0f 44 d1             	cmove  %ecx,%edx
c0034688:	89 16                	mov    %edx,(%esi)
c003468a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034690:	5b                   	pop    %ebx
c0034691:	5e                   	pop    %esi
c0034692:	5f                   	pop    %edi
c0034693:	5d                   	pop    %ebp
c0034694:	c3                   	ret    
c0034695:	8d 76 00             	lea    0x0(%esi),%esi
c0034698:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003469e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00346a4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00346a7:	e9 b7 fd ff ff       	jmp    c0034463 <_dtoa_r+0x53>
c00346ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00346b0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00346b6:	ba ac 91 03 c0       	mov    $0xc00391ac,%edx
c00346bb:	0f 44 c2             	cmove  %edx,%eax
c00346be:	eb ad                	jmp    c003466d <_dtoa_r+0x25d>
c00346c0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00346c3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00346c9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00346cc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00346d3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00346d8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c00346dd:	89 45 bc             	mov    %eax,-0x44(%ebp)
c00346e0:	e9 51 fe ff ff       	jmp    c0034536 <_dtoa_r+0x126>
c00346e5:	8d 76 00             	lea    0x0(%esi),%esi
c00346e8:	b8 23 90 03 c0       	mov    $0xc0039023,%eax
c00346ed:	e9 b6 fd ff ff       	jmp    c00344a8 <_dtoa_r+0x98>
c00346f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00346f8:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00346fc:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034703:	0f 85 ee 01 00 00    	jne    c00348f7 <_dtoa_r+0x4e7>
c0034709:	8b 55 18             	mov    0x18(%ebp),%edx
c003470c:	85 d2                	test   %edx,%edx
c003470e:	0f 8e b6 07 00 00    	jle    c0034eca <_dtoa_r+0xaba>
c0034714:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034717:	83 ff 0e             	cmp    $0xe,%edi
c003471a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003471e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034721:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034724:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034727:	83 ff 17             	cmp    $0x17,%edi
c003472a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034731:	0f 86 e5 0e 00 00    	jbe    c003561c <_dtoa_r+0x120c>
c0034737:	b9 01 00 00 00       	mov    $0x1,%ecx
c003473c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034748:	01 c0                	add    %eax,%eax
c003474a:	89 ca                	mov    %ecx,%edx
c003474c:	8d 58 14             	lea    0x14(%eax),%ebx
c003474f:	39 fb                	cmp    %edi,%ebx
c0034751:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034754:	76 f2                	jbe    c0034748 <_dtoa_r+0x338>
c0034756:	89 56 44             	mov    %edx,0x44(%esi)
c0034759:	89 54 24 04          	mov    %edx,0x4(%esp)
c003475d:	89 34 24             	mov    %esi,(%esp)
c0034760:	e8 db 17 00 00       	call   c0035f40 <_Balloc>
c0034765:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034769:	89 c7                	mov    %eax,%edi
c003476b:	89 46 40             	mov    %eax,0x40(%esi)
c003476e:	0f 84 bb 01 00 00    	je     c003492f <_dtoa_r+0x51f>
c0034774:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034777:	dd 45 c0             	fldl   -0x40(%ebp)
c003477a:	85 db                	test   %ebx,%ebx
c003477c:	0f 8e de 07 00 00    	jle    c0034f60 <_dtoa_r+0xb50>
c0034782:	89 d8                	mov    %ebx,%eax
c0034784:	83 e0 0f             	and    $0xf,%eax
c0034787:	dd 04 c5 a0 92 03 c0 	fldl   -0x3ffc6d60(,%eax,8)
c003478e:	89 d8                	mov    %ebx,%eax
c0034790:	c1 f8 04             	sar    $0x4,%eax
c0034793:	a8 10                	test   $0x10,%al
c0034795:	0f 84 cd 05 00 00    	je     c0034d68 <_dtoa_r+0x958>
c003479b:	dd 05 80 92 03 c0    	fldl   0xc0039280
c00347a1:	83 e0 0f             	and    $0xf,%eax
c00347a4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00347a9:	d8 fa                	fdivr  %st(2),%st
c00347ab:	85 c0                	test   %eax,%eax
c00347ad:	74 22                	je     c00347d1 <_dtoa_r+0x3c1>
c00347af:	31 d2                	xor    %edx,%edx
c00347b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00347b8:	a8 01                	test   $0x1,%al
c00347ba:	74 0e                	je     c00347ca <_dtoa_r+0x3ba>
c00347bc:	d9 c9                	fxch   %st(1)
c00347be:	dc 0c d5 60 92 03 c0 	fmull  -0x3ffc6da0(,%edx,8)
c00347c5:	d9 c9                	fxch   %st(1)
c00347c7:	83 c1 01             	add    $0x1,%ecx
c00347ca:	83 c2 01             	add    $0x1,%edx
c00347cd:	d1 f8                	sar    %eax
c00347cf:	75 e7                	jne    c00347b8 <_dtoa_r+0x3a8>
c00347d1:	de f1                	fdivp  %st,%st(1)
c00347d3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00347d6:	85 c0                	test   %eax,%eax
c00347d8:	74 0a                	je     c00347e4 <_dtoa_r+0x3d4>
c00347da:	d9 e8                	fld1   
c00347dc:	df e9                	fucomip %st(1),%st
c00347de:	0f 87 92 0b 00 00    	ja     c0035376 <_dtoa_r+0xf66>
c00347e4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00347e7:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347ea:	db 45 d4             	fildl  -0x2c(%ebp)
c00347ed:	d8 c9                	fmul   %st(1),%st
c00347ef:	d8 05 c8 91 03 c0    	fadds  0xc00391c8
c00347f5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00347f8:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00347ff:	85 c0                	test   %eax,%eax
c0034801:	0f 84 89 05 00 00    	je     c0034d90 <_dtoa_r+0x980>
c0034807:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003480a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003480d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034810:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034813:	85 c0                	test   %eax,%eax
c0034815:	0f 84 b5 07 00 00    	je     c0034fd0 <_dtoa_r+0xbc0>
c003481b:	d9 05 d0 91 03 c0    	flds   0xc00391d0
c0034821:	8d 57 01             	lea    0x1(%edi),%edx
c0034824:	dc 34 cd 98 92 03 c0 	fdivl  -0x3ffc6d68(,%ecx,8)
c003482b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003482e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034832:	b4 0c                	mov    $0xc,%ah
c0034834:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034838:	dc 65 c0             	fsubl  -0x40(%ebp)
c003483b:	d9 c9                	fxch   %st(1)
c003483d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034840:	db 55 d4             	fistl  -0x2c(%ebp)
c0034843:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034846:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034849:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003484c:	83 c0 30             	add    $0x30,%eax
c003484f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034852:	de e9                	fsubrp %st,%st(1)
c0034854:	d9 c9                	fxch   %st(1)
c0034856:	88 07                	mov    %al,(%edi)
c0034858:	db e9                	fucomi %st(1),%st
c003485a:	77 7f                	ja     c00348db <_dtoa_r+0x4cb>
c003485c:	d9 c1                	fld    %st(1)
c003485e:	d8 2d c0 91 03 c0    	fsubrs 0xc00391c0
c0034864:	d9 c9                	fxch   %st(1)
c0034866:	db e9                	fucomi %st(1),%st
c0034868:	dd d9                	fstp   %st(1)
c003486a:	0f 87 33 0c 00 00    	ja     c00354a3 <_dtoa_r+0x1093>
c0034870:	83 f9 01             	cmp    $0x1,%ecx
c0034873:	0f 8e c4 06 00 00    	jle    c0034f3d <_dtoa_r+0xb2d>
c0034879:	01 f9                	add    %edi,%ecx
c003487b:	d9 05 c4 91 03 c0    	flds   0xc00391c4
c0034881:	eb 25                	jmp    c00348a8 <_dtoa_r+0x498>
c0034883:	90                   	nop
c0034884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034888:	d9 c1                	fld    %st(1)
c003488a:	d8 2d c0 91 03 c0    	fsubrs 0xc00391c0
c0034890:	d9 c9                	fxch   %st(1)
c0034892:	db e9                	fucomi %st(1),%st
c0034894:	dd d9                	fstp   %st(1)
c0034896:	0f 87 14 0c 00 00    	ja     c00354b0 <_dtoa_r+0x10a0>
c003489c:	39 ca                	cmp    %ecx,%edx
c003489e:	0f 84 a4 06 00 00    	je     c0034f48 <_dtoa_r+0xb38>
c00348a4:	d9 c9                	fxch   %st(1)
c00348a6:	d9 ca                	fxch   %st(2)
c00348a8:	dc c9                	fmul   %st,%st(1)
c00348aa:	83 c2 01             	add    $0x1,%edx
c00348ad:	dc ca                	fmul   %st,%st(2)
c00348af:	d9 ca                	fxch   %st(2)
c00348b1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00348b4:	db 55 d4             	fistl  -0x2c(%ebp)
c00348b7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00348ba:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00348bd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00348c0:	83 c0 30             	add    $0x30,%eax
c00348c3:	db 45 d4             	fildl  -0x2c(%ebp)
c00348c6:	de e9                	fsubrp %st,%st(1)
c00348c8:	d9 c9                	fxch   %st(1)
c00348ca:	88 42 ff             	mov    %al,-0x1(%edx)
c00348cd:	db e9                	fucomi %st(1),%st
c00348cf:	76 b7                	jbe    c0034888 <_dtoa_r+0x478>
c00348d1:	dd d8                	fstp   %st(0)
c00348d3:	dd d8                	fstp   %st(0)
c00348d5:	dd d8                	fstp   %st(0)
c00348d7:	dd d8                	fstp   %st(0)
c00348d9:	eb 06                	jmp    c00348e1 <_dtoa_r+0x4d1>
c00348db:	dd d8                	fstp   %st(0)
c00348dd:	dd d8                	fstp   %st(0)
c00348df:	dd d8                	fstp   %st(0)
c00348e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348e4:	89 fb                	mov    %edi,%ebx
c00348e6:	89 d7                	mov    %edx,%edi
c00348e8:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00348eb:	e9 70 03 00 00       	jmp    c0034c60 <_dtoa_r+0x850>
c00348f0:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c00348f7:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00348fe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034905:	00 
c0034906:	89 34 24             	mov    %esi,(%esp)
c0034909:	e8 32 16 00 00       	call   c0035f40 <_Balloc>
c003490e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034915:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003491c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034923:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003492a:	89 c7                	mov    %eax,%edi
c003492c:	89 46 40             	mov    %eax,0x40(%esi)
c003492f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034932:	85 c0                	test   %eax,%eax
c0034934:	0f 88 2e 01 00 00    	js     c0034a68 <_dtoa_r+0x658>
c003493a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003493e:	0f 8f 24 01 00 00    	jg     c0034a68 <_dtoa_r+0x658>
c0034944:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034947:	dd 04 c5 a0 92 03 c0 	fldl   -0x3ffc6d60(,%eax,8)
c003494e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034951:	85 c0                	test   %eax,%eax
c0034953:	7f 0e                	jg     c0034963 <_dtoa_r+0x553>
c0034955:	8b 45 18             	mov    0x18(%ebp),%eax
c0034958:	c1 e8 1f             	shr    $0x1f,%eax
c003495b:	84 c0                	test   %al,%al
c003495d:	0f 85 9d 07 00 00    	jne    c0035100 <_dtoa_r+0xcf0>
c0034963:	dd 45 c0             	fldl   -0x40(%ebp)
c0034966:	d9 c0                	fld    %st(0)
c0034968:	d8 f2                	fdiv   %st(2),%st
c003496a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003496d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034971:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034975:	b4 0c                	mov    $0xc,%ah
c0034977:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003497b:	8d 47 01             	lea    0x1(%edi),%eax
c003497e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034981:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034984:	db 5d d4             	fistpl -0x2c(%ebp)
c0034987:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003498a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003498d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034990:	8d 42 30             	lea    0x30(%edx),%eax
c0034993:	db 45 d4             	fildl  -0x2c(%ebp)
c0034996:	d8 ca                	fmul   %st(2),%st
c0034998:	88 07                	mov    %al,(%edi)
c003499a:	de e9                	fsubrp %st,%st(1)
c003499c:	74 66                	je     c0034a04 <_dtoa_r+0x5f4>
c003499e:	d8 0d c4 91 03 c0    	fmuls  0xc00391c4
c00349a4:	d9 ee                	fldz   
c00349a6:	d9 c9                	fxch   %st(1)
c00349a8:	db e9                	fucomi %st(1),%st
c00349aa:	dd d9                	fstp   %st(1)
c00349ac:	0f 8b 33 0c 00 00    	jnp    c00355e5 <_dtoa_r+0x11d5>
c00349b2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00349b5:	8d 47 02             	lea    0x2(%edi),%eax
c00349b8:	d9 05 c4 91 03 c0    	flds   0xc00391c4
c00349be:	01 fb                	add    %edi,%ebx
c00349c0:	eb 19                	jmp    c00349db <_dtoa_r+0x5cb>
c00349c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349c8:	dc c9                	fmul   %st,%st(1)
c00349ca:	83 c0 01             	add    $0x1,%eax
c00349cd:	d9 ee                	fldz   
c00349cf:	d9 ca                	fxch   %st(2)
c00349d1:	db ea                	fucomi %st(2),%st
c00349d3:	dd da                	fstp   %st(2)
c00349d5:	0f 8b 73 09 00 00    	jnp    c003534e <_dtoa_r+0xf3e>
c00349db:	d9 c1                	fld    %st(1)
c00349dd:	39 d8                	cmp    %ebx,%eax
c00349df:	d8 f3                	fdiv   %st(3),%st
c00349e1:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00349e4:	d9 6d d0             	fldcw  -0x30(%ebp)
c00349e7:	db 5d d4             	fistpl -0x2c(%ebp)
c00349ea:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00349ed:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00349f0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00349f3:	8d 4a 30             	lea    0x30(%edx),%ecx
c00349f6:	db 45 d4             	fildl  -0x2c(%ebp)
c00349f9:	d8 cb                	fmul   %st(3),%st
c00349fb:	88 48 ff             	mov    %cl,-0x1(%eax)
c00349fe:	de ea                	fsubrp %st,%st(2)
c0034a00:	75 c6                	jne    c00349c8 <_dtoa_r+0x5b8>
c0034a02:	dd d8                	fstp   %st(0)
c0034a04:	d8 c0                	fadd   %st(0),%st
c0034a06:	db e9                	fucomi %st(1),%st
c0034a08:	77 1e                	ja     c0034a28 <_dtoa_r+0x618>
c0034a0a:	d9 c9                	fxch   %st(1)
c0034a0c:	df e9                	fucomip %st(1),%st
c0034a0e:	dd d8                	fstp   %st(0)
c0034a10:	0f 8a 44 09 00 00    	jp     c003535a <_dtoa_r+0xf4a>
c0034a16:	0f 85 3e 09 00 00    	jne    c003535a <_dtoa_r+0xf4a>
c0034a1c:	83 e2 01             	and    $0x1,%edx
c0034a1f:	90                   	nop
c0034a20:	0f 84 34 09 00 00    	je     c003535a <_dtoa_r+0xf4a>
c0034a26:	eb 04                	jmp    c0034a2c <_dtoa_r+0x61c>
c0034a28:	dd d8                	fstp   %st(0)
c0034a2a:	dd d8                	fstp   %st(0)
c0034a2c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034a2f:	89 fb                	mov    %edi,%ebx
c0034a31:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034a35:	89 cf                	mov    %ecx,%edi
c0034a37:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c0034a3a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c0034a3d:	eb 0f                	jmp    c0034a4e <_dtoa_r+0x63e>
c0034a3f:	90                   	nop
c0034a40:	39 d3                	cmp    %edx,%ebx
c0034a42:	0f 84 75 09 00 00    	je     c00353bd <_dtoa_r+0xfad>
c0034a48:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034a4c:	89 d7                	mov    %edx,%edi
c0034a4e:	3c 39                	cmp    $0x39,%al
c0034a50:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034a53:	74 eb                	je     c0034a40 <_dtoa_r+0x630>
c0034a55:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034a58:	83 c0 01             	add    $0x1,%eax
c0034a5b:	88 02                	mov    %al,(%edx)
c0034a5d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034a60:	e9 fb 01 00 00       	jmp    c0034c60 <_dtoa_r+0x850>
c0034a65:	8d 76 00             	lea    0x0(%esi),%esi
c0034a68:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034a6b:	85 c9                	test   %ecx,%ecx
c0034a6d:	0f 85 9d 02 00 00    	jne    c0034d10 <_dtoa_r+0x900>
c0034a73:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a76:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034a79:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a80:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034a83:	85 c0                	test   %eax,%eax
c0034a85:	7e 14                	jle    c0034a9b <_dtoa_r+0x68b>
c0034a87:	85 db                	test   %ebx,%ebx
c0034a89:	7e 10                	jle    c0034a9b <_dtoa_r+0x68b>
c0034a8b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034a8e:	39 d8                	cmp    %ebx,%eax
c0034a90:	0f 4f c3             	cmovg  %ebx,%eax
c0034a93:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034a96:	29 c3                	sub    %eax,%ebx
c0034a98:	29 45 ac             	sub    %eax,-0x54(%ebp)
c0034a9b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034a9e:	85 c0                	test   %eax,%eax
c0034aa0:	7e 61                	jle    c0034b03 <_dtoa_r+0x6f3>
c0034aa2:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034aa5:	85 c0                	test   %eax,%eax
c0034aa7:	0f 84 72 04 00 00    	je     c0034f1f <_dtoa_r+0xb0f>
c0034aad:	85 d2                	test   %edx,%edx
c0034aaf:	7e 47                	jle    c0034af8 <_dtoa_r+0x6e8>
c0034ab1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034ab4:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034ab8:	89 34 24             	mov    %esi,(%esp)
c0034abb:	89 55 88             	mov    %edx,-0x78(%ebp)
c0034abe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ac2:	e8 f9 19 00 00       	call   c00364c0 <__pow5mult>
c0034ac7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034aca:	89 34 24             	mov    %esi,(%esp)
c0034acd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ad1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ad5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ad8:	e8 13 18 00 00       	call   c00362f0 <__multiply>
c0034add:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034ae0:	89 34 24             	mov    %esi,(%esp)
c0034ae3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ae7:	89 45 8c             	mov    %eax,-0x74(%ebp)
c0034aea:	e8 f1 14 00 00       	call   c0035fe0 <_Bfree>
c0034aef:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034af2:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034af5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034af8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034afb:	29 d0                	sub    %edx,%eax
c0034afd:	0f 85 1f 04 00 00    	jne    c0034f22 <_dtoa_r+0xb12>
c0034b03:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034b0a:	00 
c0034b0b:	89 34 24             	mov    %esi,(%esp)
c0034b0e:	e8 ad 17 00 00       	call   c00362c0 <__i2b>
c0034b13:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034b16:	85 c9                	test   %ecx,%ecx
c0034b18:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034b1b:	7e 13                	jle    c0034b30 <_dtoa_r+0x720>
c0034b1d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034b21:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b25:	89 34 24             	mov    %esi,(%esp)
c0034b28:	e8 93 19 00 00       	call   c00364c0 <__pow5mult>
c0034b2d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034b30:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034b34:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034b3b:	0f 8e f7 05 00 00    	jle    c0035138 <_dtoa_r+0xd28>
c0034b41:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034b44:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b49:	85 c0                	test   %eax,%eax
c0034b4b:	0f 85 27 05 00 00    	jne    c0035078 <_dtoa_r+0xc68>
c0034b51:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034b54:	01 d0                	add    %edx,%eax
c0034b56:	83 e0 1f             	and    $0x1f,%eax
c0034b59:	89 c2                	mov    %eax,%edx
c0034b5b:	0f 84 57 03 00 00    	je     c0034eb8 <_dtoa_r+0xaa8>
c0034b61:	b8 20 00 00 00       	mov    $0x20,%eax
c0034b66:	29 d0                	sub    %edx,%eax
c0034b68:	83 f8 04             	cmp    $0x4,%eax
c0034b6b:	0f 8e 8c 0a 00 00    	jle    c00355fd <_dtoa_r+0x11ed>
c0034b71:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b76:	29 d0                	sub    %edx,%eax
c0034b78:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b7b:	01 c3                	add    %eax,%ebx
c0034b7d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b80:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034b83:	85 c0                	test   %eax,%eax
c0034b85:	7e 16                	jle    c0034b9d <_dtoa_r+0x78d>
c0034b87:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b8b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b8e:	89 34 24             	mov    %esi,(%esp)
c0034b91:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b95:	e8 46 1a 00 00       	call   c00365e0 <__lshift>
c0034b9a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b9d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ba0:	85 c0                	test   %eax,%eax
c0034ba2:	7e 16                	jle    c0034bba <_dtoa_r+0x7aa>
c0034ba4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034ba8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034bab:	89 34 24             	mov    %esi,(%esp)
c0034bae:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bb2:	e8 29 1a 00 00       	call   c00365e0 <__lshift>
c0034bb7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034bba:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034bbd:	85 c0                	test   %eax,%eax
c0034bbf:	0f 85 d3 04 00 00    	jne    c0035098 <_dtoa_r+0xc88>
c0034bc5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034bc9:	0f 8e 11 02 00 00    	jle    c0034de0 <_dtoa_r+0x9d0>
c0034bcf:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034bd2:	85 c0                	test   %eax,%eax
c0034bd4:	0f 8f 06 02 00 00    	jg     c0034de0 <_dtoa_r+0x9d0>
c0034bda:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034bdd:	85 c0                	test   %eax,%eax
c0034bdf:	0f 85 e0 01 00 00    	jne    c0034dc5 <_dtoa_r+0x9b5>
c0034be5:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034be8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034bef:	00 
c0034bf0:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034bf7:	00 
c0034bf8:	89 34 24             	mov    %esi,(%esp)
c0034bfb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bff:	e8 fc 13 00 00       	call   c0036000 <__multadd>
c0034c04:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034c07:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c0b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034c0e:	89 04 24             	mov    %eax,(%esp)
c0034c11:	e8 ea 1a 00 00       	call   c0036700 <__mcmp>
c0034c16:	85 c0                	test   %eax,%eax
c0034c18:	0f 8e a7 01 00 00    	jle    c0034dc5 <_dtoa_r+0x9b5>
c0034c1e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034c22:	89 fb                	mov    %edi,%ebx
c0034c24:	83 c7 01             	add    $0x1,%edi
c0034c27:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c0034c2b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034c32:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034c35:	89 34 24             	mov    %esi,(%esp)
c0034c38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c3c:	e8 9f 13 00 00       	call   c0035fe0 <_Bfree>
c0034c41:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034c44:	85 c0                	test   %eax,%eax
c0034c46:	74 18                	je     c0034c60 <_dtoa_r+0x850>
c0034c48:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c0034c4b:	0f 85 a7 02 00 00    	jne    c0034ef8 <_dtoa_r+0xae8>
c0034c51:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034c54:	89 34 24             	mov    %esi,(%esp)
c0034c57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c5b:	e8 80 13 00 00       	call   c0035fe0 <_Bfree>
c0034c60:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034c63:	89 34 24             	mov    %esi,(%esp)
c0034c66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c6a:	e8 71 13 00 00       	call   c0035fe0 <_Bfree>
c0034c6f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c72:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034c75:	c6 07 00             	movb   $0x0,(%edi)
c0034c78:	83 c0 01             	add    $0x1,%eax
c0034c7b:	89 06                	mov    %eax,(%esi)
c0034c7d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034c80:	85 c0                	test   %eax,%eax
c0034c82:	0f 84 90 02 00 00    	je     c0034f18 <_dtoa_r+0xb08>
c0034c88:	8b 45 24             	mov    0x24(%ebp),%eax
c0034c8b:	89 38                	mov    %edi,(%eax)
c0034c8d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034c93:	89 d8                	mov    %ebx,%eax
c0034c95:	5b                   	pop    %ebx
c0034c96:	5e                   	pop    %esi
c0034c97:	5f                   	pop    %edi
c0034c98:	5d                   	pop    %ebp
c0034c99:	c3                   	ret    
c0034c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034ca0:	db 45 b8             	fildl  -0x48(%ebp)
c0034ca3:	df e9                	fucomip %st(1),%st
c0034ca5:	dd d8                	fstp   %st(0)
c0034ca7:	7a 06                	jp     c0034caf <_dtoa_r+0x89f>
c0034ca9:	0f 84 cc f8 ff ff    	je     c003457b <_dtoa_r+0x16b>
c0034caf:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034cb3:	e9 c3 f8 ff ff       	jmp    c003457b <_dtoa_r+0x16b>
c0034cb8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034cbb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034cbe:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034cc5:	f7 d8                	neg    %eax
c0034cc7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034cca:	e9 0c f9 ff ff       	jmp    c00345db <_dtoa_r+0x1cb>
c0034ccf:	90                   	nop
c0034cd0:	f7 d8                	neg    %eax
c0034cd2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034cd5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c0034cdc:	e9 e2 f8 ff ff       	jmp    c00345c3 <_dtoa_r+0x1b3>
c0034ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034ce8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034ceb:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034cf0:	29 d9                	sub    %ebx,%ecx
c0034cf2:	d3 e0                	shl    %cl,%eax
c0034cf4:	e9 1b f8 ff ff       	jmp    c0034514 <_dtoa_r+0x104>
c0034cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034d00:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034d07:	e9 a0 f8 ff ff       	jmp    c00345ac <_dtoa_r+0x19c>
c0034d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d10:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034d14:	0f 8e fe 06 00 00    	jle    c0035418 <_dtoa_r+0x1008>
c0034d1a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d1d:	83 e8 01             	sub    $0x1,%eax
c0034d20:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034d23:	0f 8c 3b 06 00 00    	jl     c0035364 <_dtoa_r+0xf54>
c0034d29:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034d2c:	29 c2                	sub    %eax,%edx
c0034d2e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034d31:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034d34:	85 c9                	test   %ecx,%ecx
c0034d36:	89 c8                	mov    %ecx,%eax
c0034d38:	0f 88 83 07 00 00    	js     c00354c1 <_dtoa_r+0x10b1>
c0034d3e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034d45:	00 
c0034d46:	89 34 24             	mov    %esi,(%esp)
c0034d49:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034d4c:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034d4f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034d52:	e8 69 15 00 00       	call   c00362c0 <__i2b>
c0034d57:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034d5a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034d5d:	e9 1e fd ff ff       	jmp    c0034a80 <_dtoa_r+0x670>
c0034d62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034d68:	d9 c1                	fld    %st(1)
c0034d6a:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034d6f:	e9 37 fa ff ff       	jmp    c00347ab <_dtoa_r+0x39b>
c0034d74:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034d77:	db 45 d4             	fildl  -0x2c(%ebp)
c0034d7a:	d8 c9                	fmul   %st(1),%st
c0034d7c:	d8 05 c8 91 03 c0    	fadds  0xc00391c8
c0034d82:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034d85:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d90:	d8 25 cc 91 03 c0    	fsubs  0xc00391cc
c0034d96:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d99:	d9 c9                	fxch   %st(1)
c0034d9b:	db e9                	fucomi %st(1),%st
c0034d9d:	0f 87 0d 02 00 00    	ja     c0034fb0 <_dtoa_r+0xba0>
c0034da3:	d9 c9                	fxch   %st(1)
c0034da5:	d9 e0                	fchs   
c0034da7:	df e9                	fucomip %st(1),%st
c0034da9:	dd d8                	fstp   %st(0)
c0034dab:	0f 86 a7 01 00 00    	jbe    c0034f58 <_dtoa_r+0xb48>
c0034db1:	dd d8                	fstp   %st(0)
c0034db3:	eb 02                	jmp    c0034db7 <_dtoa_r+0x9a7>
c0034db5:	dd d8                	fstp   %st(0)
c0034db7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034dbe:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034dc5:	8b 45 18             	mov    0x18(%ebp),%eax
c0034dc8:	89 fb                	mov    %edi,%ebx
c0034dca:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034dd1:	f7 d0                	not    %eax
c0034dd3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034dd6:	e9 57 fe ff ff       	jmp    c0034c32 <_dtoa_r+0x822>
c0034ddb:	90                   	nop
c0034ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034de0:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034de3:	85 c0                	test   %eax,%eax
c0034de5:	0f 85 c5 03 00 00    	jne    c00351b0 <_dtoa_r+0xda0>
c0034deb:	89 75 08             	mov    %esi,0x8(%ebp)
c0034dee:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034df3:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034df6:	eb 24                	jmp    c0034e1c <_dtoa_r+0xa0c>
c0034df8:	8b 45 08             	mov    0x8(%ebp),%eax
c0034dfb:	83 c3 01             	add    $0x1,%ebx
c0034dfe:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034e02:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e09:	00 
c0034e0a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e11:	00 
c0034e12:	89 04 24             	mov    %eax,(%esp)
c0034e15:	e8 e6 11 00 00       	call   c0036000 <__multadd>
c0034e1a:	89 c6                	mov    %eax,%esi
c0034e1c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e1f:	89 f0                	mov    %esi,%eax
c0034e21:	e8 1a f4 ff ff       	call   c0034240 <quorem>
c0034e26:	83 c0 30             	add    $0x30,%eax
c0034e29:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034e2c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034e30:	7c c6                	jl     c0034df8 <_dtoa_r+0x9e8>
c0034e32:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034e35:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e38:	ba 01 00 00 00       	mov    $0x1,%edx
c0034e3d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034e40:	8b 75 08             	mov    0x8(%ebp),%esi
c0034e43:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034e4a:	85 c0                	test   %eax,%eax
c0034e4c:	0f 4f d0             	cmovg  %eax,%edx
c0034e4f:	01 fa                	add    %edi,%edx
c0034e51:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034e54:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034e5b:	00 
c0034e5c:	89 34 24             	mov    %esi,(%esp)
c0034e5f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034e62:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e66:	e8 75 17 00 00       	call   c00365e0 <__lshift>
c0034e6b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034e6e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034e72:	89 04 24             	mov    %eax,(%esp)
c0034e75:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034e78:	e8 83 18 00 00       	call   c0036700 <__mcmp>
c0034e7d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034e80:	83 f8 00             	cmp    $0x0,%eax
c0034e83:	0f 8e 41 06 00 00    	jle    c00354ca <_dtoa_r+0x10ba>
c0034e89:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034e8d:	eb 0f                	jmp    c0034e9e <_dtoa_r+0xa8e>
c0034e8f:	90                   	nop
c0034e90:	39 c7                	cmp    %eax,%edi
c0034e92:	0f 84 70 05 00 00    	je     c0035408 <_dtoa_r+0xff8>
c0034e98:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034e9c:	89 c2                	mov    %eax,%edx
c0034e9e:	80 f9 39             	cmp    $0x39,%cl
c0034ea1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ea4:	74 ea                	je     c0034e90 <_dtoa_r+0xa80>
c0034ea6:	83 c1 01             	add    $0x1,%ecx
c0034ea9:	89 fb                	mov    %edi,%ebx
c0034eab:	88 08                	mov    %cl,(%eax)
c0034ead:	89 d7                	mov    %edx,%edi
c0034eaf:	e9 7e fd ff ff       	jmp    c0034c32 <_dtoa_r+0x822>
c0034eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034eb8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034ebd:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034ec0:	01 c3                	add    %eax,%ebx
c0034ec2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034ec5:	e9 b6 fc ff ff       	jmp    c0034b80 <_dtoa_r+0x770>
c0034eca:	ba 01 00 00 00       	mov    $0x1,%edx
c0034ecf:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034ed6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034edd:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034ee4:	21 c2                	and    %eax,%edx
c0034ee6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034ee9:	31 d2                	xor    %edx,%edx
c0034eeb:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034ef2:	e9 62 f8 ff ff       	jmp    c0034759 <_dtoa_r+0x349>
c0034ef7:	90                   	nop
c0034ef8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034efb:	85 d2                	test   %edx,%edx
c0034efd:	0f 84 4e fd ff ff    	je     c0034c51 <_dtoa_r+0x841>
c0034f03:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034f06:	89 34 24             	mov    %esi,(%esp)
c0034f09:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f0d:	e8 ce 10 00 00       	call   c0035fe0 <_Bfree>
c0034f12:	e9 3a fd ff ff       	jmp    c0034c51 <_dtoa_r+0x841>
c0034f17:	90                   	nop
c0034f18:	89 d8                	mov    %ebx,%eax
c0034f1a:	e9 89 f5 ff ff       	jmp    c00344a8 <_dtoa_r+0x98>
c0034f1f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034f22:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034f26:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034f29:	89 34 24             	mov    %esi,(%esp)
c0034f2c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f30:	e8 8b 15 00 00       	call   c00364c0 <__pow5mult>
c0034f35:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034f38:	e9 c6 fb ff ff       	jmp    c0034b03 <_dtoa_r+0x6f3>
c0034f3d:	dd d8                	fstp   %st(0)
c0034f3f:	dd d8                	fstp   %st(0)
c0034f41:	eb 15                	jmp    c0034f58 <_dtoa_r+0xb48>
c0034f43:	90                   	nop
c0034f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034f48:	dd d8                	fstp   %st(0)
c0034f4a:	dd d8                	fstp   %st(0)
c0034f4c:	dd d8                	fstp   %st(0)
c0034f4e:	eb 08                	jmp    c0034f58 <_dtoa_r+0xb48>
c0034f50:	dd d8                	fstp   %st(0)
c0034f52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034f58:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034f5b:	e9 cf f9 ff ff       	jmp    c003492f <_dtoa_r+0x51f>
c0034f60:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034f63:	f7 d8                	neg    %eax
c0034f65:	0f 84 6a 04 00 00    	je     c00353d5 <_dtoa_r+0xfc5>
c0034f6b:	89 c2                	mov    %eax,%edx
c0034f6d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034f72:	83 e2 0f             	and    $0xf,%edx
c0034f75:	c1 f8 04             	sar    $0x4,%eax
c0034f78:	dd 04 d5 a0 92 03 c0 	fldl   -0x3ffc6d60(,%edx,8)
c0034f7f:	85 c0                	test   %eax,%eax
c0034f81:	d8 c9                	fmul   %st(1),%st
c0034f83:	0f 84 4a f8 ff ff    	je     c00347d3 <_dtoa_r+0x3c3>
c0034f89:	31 d2                	xor    %edx,%edx
c0034f8b:	90                   	nop
c0034f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034f90:	a8 01                	test   $0x1,%al
c0034f92:	74 0a                	je     c0034f9e <_dtoa_r+0xb8e>
c0034f94:	dc 0c d5 60 92 03 c0 	fmull  -0x3ffc6da0(,%edx,8)
c0034f9b:	83 c1 01             	add    $0x1,%ecx
c0034f9e:	83 c2 01             	add    $0x1,%edx
c0034fa1:	d1 f8                	sar    %eax
c0034fa3:	75 eb                	jne    c0034f90 <_dtoa_r+0xb80>
c0034fa5:	e9 29 f8 ff ff       	jmp    c00347d3 <_dtoa_r+0x3c3>
c0034faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034fb0:	dd d8                	fstp   %st(0)
c0034fb2:	dd d8                	fstp   %st(0)
c0034fb4:	dd d8                	fstp   %st(0)
c0034fb6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034fbd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034fc4:	e9 55 fc ff ff       	jmp    c0034c1e <_dtoa_r+0x80e>
c0034fc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034fd0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034fd3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034fd6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034fd9:	dc 0c c5 a0 92 03 c0 	fmull  -0x3ffc6d60(,%eax,8)
c0034fe0:	d9 c9                	fxch   %st(1)
c0034fe2:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034fe5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034fe9:	8d 57 01             	lea    0x1(%edi),%edx
c0034fec:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034fef:	b4 0c                	mov    $0xc,%ah
c0034ff1:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034ff5:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034ff8:	db 55 d4             	fistl  -0x2c(%ebp)
c0034ffb:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034ffe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0035001:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035004:	83 c0 30             	add    $0x30,%eax
c0035007:	83 f9 01             	cmp    $0x1,%ecx
c003500a:	db 45 d4             	fildl  -0x2c(%ebp)
c003500d:	de e9                	fsubrp %st,%st(1)
c003500f:	88 07                	mov    %al,(%edi)
c0035011:	89 d0                	mov    %edx,%eax
c0035013:	74 37                	je     c003504c <_dtoa_r+0xc3c>
c0035015:	d9 05 c4 91 03 c0    	flds   0xc00391c4
c003501b:	eb 05                	jmp    c0035022 <_dtoa_r+0xc12>
c003501d:	8d 76 00             	lea    0x0(%esi),%esi
c0035020:	d9 c9                	fxch   %st(1)
c0035022:	dc c9                	fmul   %st,%st(1)
c0035024:	d9 c9                	fxch   %st(1)
c0035026:	83 c0 01             	add    $0x1,%eax
c0035029:	d9 6d d0             	fldcw  -0x30(%ebp)
c003502c:	db 55 d4             	fistl  -0x2c(%ebp)
c003502f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0035032:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0035035:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035038:	83 c1 30             	add    $0x30,%ecx
c003503b:	39 d8                	cmp    %ebx,%eax
c003503d:	db 45 d4             	fildl  -0x2c(%ebp)
c0035040:	de e9                	fsubrp %st,%st(1)
c0035042:	88 48 ff             	mov    %cl,-0x1(%eax)
c0035045:	75 d9                	jne    c0035020 <_dtoa_r+0xc10>
c0035047:	dd d9                	fstp   %st(1)
c0035049:	03 55 88             	add    -0x78(%ebp),%edx
c003504c:	d9 05 d0 91 03 c0    	flds   0xc00391d0
c0035052:	d9 c2                	fld    %st(2)
c0035054:	d8 c1                	fadd   %st(1),%st
c0035056:	d9 ca                	fxch   %st(2)
c0035058:	db ea                	fucomi %st(2),%st
c003505a:	dd da                	fstp   %st(2)
c003505c:	0f 86 7f 03 00 00    	jbe    c00353e1 <_dtoa_r+0xfd1>
c0035062:	dd d8                	fstp   %st(0)
c0035064:	dd d8                	fstp   %st(0)
c0035066:	dd d8                	fstp   %st(0)
c0035068:	dd d8                	fstp   %st(0)
c003506a:	89 fb                	mov    %edi,%ebx
c003506c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0035070:	89 d7                	mov    %edx,%edi
c0035072:	e9 d7 f9 ff ff       	jmp    c0034a4e <_dtoa_r+0x63e>
c0035077:	90                   	nop
c0035078:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c003507b:	8b 41 10             	mov    0x10(%ecx),%eax
c003507e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0035082:	89 04 24             	mov    %eax,(%esp)
c0035085:	e8 56 11 00 00       	call   c00361e0 <__hi0bits>
c003508a:	ba 20 00 00 00       	mov    $0x20,%edx
c003508f:	29 c2                	sub    %eax,%edx
c0035091:	e9 bb fa ff ff       	jmp    c0034b51 <_dtoa_r+0x741>
c0035096:	66 90                	xchg   %ax,%ax
c0035098:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003509b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003509f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350a2:	89 04 24             	mov    %eax,(%esp)
c00350a5:	e8 56 16 00 00       	call   c0036700 <__mcmp>
c00350aa:	85 c0                	test   %eax,%eax
c00350ac:	0f 89 13 fb ff ff    	jns    c0034bc5 <_dtoa_r+0x7b5>
c00350b2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350b5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00350bc:	00 
c00350bd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00350c4:	00 
c00350c5:	89 34 24             	mov    %esi,(%esp)
c00350c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350cc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00350d0:	e8 2b 0f 00 00       	call   c0036000 <__multadd>
c00350d5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350d8:	85 c9                	test   %ecx,%ecx
c00350da:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350dd:	0f 85 8d 00 00 00    	jne    c0035170 <_dtoa_r+0xd60>
c00350e3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c00350e7:	8b 45 90             	mov    -0x70(%ebp),%eax
c00350ea:	7f 0a                	jg     c00350f6 <_dtoa_r+0xce6>
c00350ec:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00350f0:	0f 8f ff 04 00 00    	jg     c00355f5 <_dtoa_r+0x11e5>
c00350f6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00350f9:	e9 ed fc ff ff       	jmp    c0034deb <_dtoa_r+0x9db>
c00350fe:	66 90                	xchg   %ax,%ax
c0035100:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0035103:	85 db                	test   %ebx,%ebx
c0035105:	0f 85 aa fc ff ff    	jne    c0034db5 <_dtoa_r+0x9a5>
c003510b:	d8 0d cc 91 03 c0    	fmuls  0xc00391cc
c0035111:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0035118:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c003511f:	dd 45 c0             	fldl   -0x40(%ebp)
c0035122:	d9 c9                	fxch   %st(1)
c0035124:	df e9                	fucomip %st(1),%st
c0035126:	dd d8                	fstp   %st(0)
c0035128:	0f 83 97 fc ff ff    	jae    c0034dc5 <_dtoa_r+0x9b5>
c003512e:	e9 eb fa ff ff       	jmp    c0034c1e <_dtoa_r+0x80e>
c0035133:	90                   	nop
c0035134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035138:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003513b:	85 c0                	test   %eax,%eax
c003513d:	0f 85 fe f9 ff ff    	jne    c0034b41 <_dtoa_r+0x731>
c0035143:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0035146:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c003514b:	0f 85 f0 f9 ff ff    	jne    c0034b41 <_dtoa_r+0x731>
c0035151:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0035156:	0f 84 e5 f9 ff ff    	je     c0034b41 <_dtoa_r+0x731>
c003515c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0035160:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0035164:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c003516b:	e9 d1 f9 ff ff       	jmp    c0034b41 <_dtoa_r+0x731>
c0035170:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035173:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003517a:	00 
c003517b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035182:	00 
c0035183:	89 34 24             	mov    %esi,(%esp)
c0035186:	89 44 24 04          	mov    %eax,0x4(%esp)
c003518a:	e8 71 0e 00 00       	call   c0036000 <__multadd>
c003518f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0035192:	85 d2                	test   %edx,%edx
c0035194:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035197:	8b 45 90             	mov    -0x70(%ebp),%eax
c003519a:	7f 0a                	jg     c00351a6 <_dtoa_r+0xd96>
c003519c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00351a0:	0f 8f 4f 04 00 00    	jg     c00355f5 <_dtoa_r+0x11e5>
c00351a6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00351a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00351b0:	85 db                	test   %ebx,%ebx
c00351b2:	7e 16                	jle    c00351ca <_dtoa_r+0xdba>
c00351b4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351b7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00351bb:	89 34 24             	mov    %esi,(%esp)
c00351be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351c2:	e8 19 14 00 00       	call   c00365e0 <__lshift>
c00351c7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ca:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c00351cd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351d0:	85 db                	test   %ebx,%ebx
c00351d2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351d5:	0f 85 11 03 00 00    	jne    c00354ec <_dtoa_r+0x10dc>
c00351db:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00351de:	8d 5f 01             	lea    0x1(%edi),%ebx
c00351e1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c00351e4:	01 f8                	add    %edi,%eax
c00351e6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c00351e9:	89 45 90             	mov    %eax,-0x70(%ebp)
c00351ec:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00351ef:	83 e0 01             	and    $0x1,%eax
c00351f2:	89 45 9c             	mov    %eax,-0x64(%ebp)
c00351f5:	eb 2e                	jmp    c0035225 <_dtoa_r+0xe15>
c00351f7:	90                   	nop
c00351f8:	e8 03 0e 00 00       	call   c0036000 <__multadd>
c00351fd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035204:	00 
c0035205:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003520c:	00 
c003520d:	89 34 24             	mov    %esi,(%esp)
c0035210:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035213:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035216:	89 44 24 04          	mov    %eax,0x4(%esp)
c003521a:	e8 e1 0d 00 00       	call   c0036000 <__multadd>
c003521f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035222:	83 c3 01             	add    $0x1,%ebx
c0035225:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035228:	8d 43 ff             	lea    -0x1(%ebx),%eax
c003522b:	89 45 98             	mov    %eax,-0x68(%ebp)
c003522e:	89 f8                	mov    %edi,%eax
c0035230:	e8 0b f0 ff ff       	call   c0034240 <quorem>
c0035235:	89 3c 24             	mov    %edi,(%esp)
c0035238:	8d 48 30             	lea    0x30(%eax),%ecx
c003523b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c003523e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0035241:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0035244:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035248:	e8 b3 14 00 00       	call   c0036700 <__mcmp>
c003524d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0035250:	89 34 24             	mov    %esi,(%esp)
c0035253:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0035257:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003525a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003525d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035261:	e8 ea 14 00 00       	call   c0036750 <__mdiff>
c0035266:	8b 48 0c             	mov    0xc(%eax),%ecx
c0035269:	89 c2                	mov    %eax,%edx
c003526b:	85 c9                	test   %ecx,%ecx
c003526d:	0f 85 c5 00 00 00    	jne    c0035338 <_dtoa_r+0xf28>
c0035273:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035277:	89 3c 24             	mov    %edi,(%esp)
c003527a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003527d:	e8 7e 14 00 00       	call   c0036700 <__mcmp>
c0035282:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0035285:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035289:	89 34 24             	mov    %esi,(%esp)
c003528c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c003528f:	e8 4c 0d 00 00       	call   c0035fe0 <_Bfree>
c0035294:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035297:	89 c1                	mov    %eax,%ecx
c0035299:	0b 4d 14             	or     0x14(%ebp),%ecx
c003529c:	75 0b                	jne    c00352a9 <_dtoa_r+0xe99>
c003529e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c00352a1:	85 d2                	test   %edx,%edx
c00352a3:	0f 84 fb 02 00 00    	je     c00355a4 <_dtoa_r+0x1194>
c00352a9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00352ac:	85 d2                	test   %edx,%edx
c00352ae:	0f 88 7f 01 00 00    	js     c0035433 <_dtoa_r+0x1023>
c00352b4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00352b7:	0b 4d 14             	or     0x14(%ebp),%ecx
c00352ba:	75 0b                	jne    c00352c7 <_dtoa_r+0xeb7>
c00352bc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c00352bf:	85 c9                	test   %ecx,%ecx
c00352c1:	0f 84 6c 01 00 00    	je     c0035433 <_dtoa_r+0x1023>
c00352c7:	85 c0                	test   %eax,%eax
c00352c9:	0f 8f 82 02 00 00    	jg     c0035551 <_dtoa_r+0x1141>
c00352cf:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00352d3:	89 da                	mov    %ebx,%edx
c00352d5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c00352d8:	88 43 ff             	mov    %al,-0x1(%ebx)
c00352db:	0f 84 8d 02 00 00    	je     c003556e <_dtoa_r+0x115e>
c00352e1:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00352e5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00352ec:	00 
c00352ed:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00352f4:	00 
c00352f5:	89 34 24             	mov    %esi,(%esp)
c00352f8:	e8 03 0d 00 00       	call   c0036000 <__multadd>
c00352fd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035304:	00 
c0035305:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003530c:	00 
c003530d:	89 34 24             	mov    %esi,(%esp)
c0035310:	89 c7                	mov    %eax,%edi
c0035312:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035315:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035318:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003531b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003531f:	0f 85 d3 fe ff ff    	jne    c00351f8 <_dtoa_r+0xde8>
c0035325:	e8 d6 0c 00 00       	call   c0036000 <__multadd>
c003532a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003532d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035330:	e9 ed fe ff ff       	jmp    c0035222 <_dtoa_r+0xe12>
c0035335:	8d 76 00             	lea    0x0(%esi),%esi
c0035338:	b8 01 00 00 00       	mov    $0x1,%eax
c003533d:	e9 43 ff ff ff       	jmp    c0035285 <_dtoa_r+0xe75>
c0035342:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035349:	e9 d2 f2 ff ff       	jmp    c0034620 <_dtoa_r+0x210>
c003534e:	0f 85 87 f6 ff ff    	jne    c00349db <_dtoa_r+0x5cb>
c0035354:	dd d8                	fstp   %st(0)
c0035356:	dd d8                	fstp   %st(0)
c0035358:	dd d8                	fstp   %st(0)
c003535a:	89 fb                	mov    %edi,%ebx
c003535c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c003535f:	e9 fc f8 ff ff       	jmp    c0034c60 <_dtoa_r+0x850>
c0035364:	89 c2                	mov    %eax,%edx
c0035366:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035369:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003536c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003536f:	31 d2                	xor    %edx,%edx
c0035371:	e9 b8 f9 ff ff       	jmp    c0034d2e <_dtoa_r+0x91e>
c0035376:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035379:	85 c0                	test   %eax,%eax
c003537b:	0f 84 f3 f9 ff ff    	je     c0034d74 <_dtoa_r+0x964>
c0035381:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035384:	85 c0                	test   %eax,%eax
c0035386:	0f 8e c4 fb ff ff    	jle    c0034f50 <_dtoa_r+0xb40>
c003538c:	d8 0d c4 91 03 c0    	fmuls  0xc00391c4
c0035392:	83 c1 01             	add    $0x1,%ecx
c0035395:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035398:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003539b:	89 c1                	mov    %eax,%ecx
c003539d:	83 eb 01             	sub    $0x1,%ebx
c00353a0:	db 45 d4             	fildl  -0x2c(%ebp)
c00353a3:	d8 c9                	fmul   %st(1),%st
c00353a5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c00353a8:	d8 05 c8 91 03 c0    	fadds  0xc00391c8
c00353ae:	dd 5d c0             	fstpl  -0x40(%ebp)
c00353b1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00353b8:	e9 53 f4 ff ff       	jmp    c0034810 <_dtoa_r+0x400>
c00353bd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00353c0:	c6 03 30             	movb   $0x30,(%ebx)
c00353c3:	83 c0 01             	add    $0x1,%eax
c00353c6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00353c9:	b8 31 00 00 00       	mov    $0x31,%eax
c00353ce:	88 02                	mov    %al,(%edx)
c00353d0:	e9 8b f8 ff ff       	jmp    c0034c60 <_dtoa_r+0x850>
c00353d5:	d9 c0                	fld    %st(0)
c00353d7:	b9 02 00 00 00       	mov    $0x2,%ecx
c00353dc:	e9 f2 f3 ff ff       	jmp    c00347d3 <_dtoa_r+0x3c3>
c00353e1:	de e2                	fsubp  %st,%st(2)
c00353e3:	d9 c9                	fxch   %st(1)
c00353e5:	df e9                	fucomip %st(1),%st
c00353e7:	dd d8                	fstp   %st(0)
c00353e9:	0f 86 69 fb ff ff    	jbe    c0034f58 <_dtoa_r+0xb48>
c00353ef:	dd d8                	fstp   %st(0)
c00353f1:	eb 07                	jmp    c00353fa <_dtoa_r+0xfea>
c00353f3:	90                   	nop
c00353f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00353f8:	89 c2                	mov    %eax,%edx
c00353fa:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00353fe:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035401:	74 f5                	je     c00353f8 <_dtoa_r+0xfe8>
c0035403:	e9 d9 f4 ff ff       	jmp    c00348e1 <_dtoa_r+0x4d1>
c0035408:	c6 07 31             	movb   $0x31,(%edi)
c003540b:	89 fb                	mov    %edi,%ebx
c003540d:	89 d7                	mov    %edx,%edi
c003540f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035413:	e9 1a f8 ff ff       	jmp    c0034c32 <_dtoa_r+0x822>
c0035418:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003541b:	85 d2                	test   %edx,%edx
c003541d:	0f 84 1b 01 00 00    	je     c003553e <_dtoa_r+0x112e>
c0035423:	05 33 04 00 00       	add    $0x433,%eax
c0035428:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003542b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003542e:	e9 0b f9 ff ff       	jmp    c0034d3e <_dtoa_r+0x92e>
c0035433:	85 c0                	test   %eax,%eax
c0035435:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035438:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003543b:	7e 45                	jle    c0035482 <_dtoa_r+0x1072>
c003543d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035440:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035447:	00 
c0035448:	89 34 24             	mov    %esi,(%esp)
c003544b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003544f:	e8 8c 11 00 00       	call   c00365e0 <__lshift>
c0035454:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035457:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003545b:	89 04 24             	mov    %eax,(%esp)
c003545e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035461:	e8 9a 12 00 00       	call   c0036700 <__mcmp>
c0035466:	83 f8 00             	cmp    $0x0,%eax
c0035469:	0f 8e 5b 01 00 00    	jle    c00355ca <_dtoa_r+0x11ba>
c003546f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035473:	0f 84 0c 01 00 00    	je     c0035585 <_dtoa_r+0x1175>
c0035479:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003547c:	83 c0 31             	add    $0x31,%eax
c003547f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035482:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035485:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035489:	89 cb                	mov    %ecx,%ebx
c003548b:	88 03                	mov    %al,(%ebx)
c003548d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035490:	89 fb                	mov    %edi,%ebx
c0035492:	8d 79 01             	lea    0x1(%ecx),%edi
c0035495:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035498:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003549b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003549e:	e9 8f f7 ff ff       	jmp    c0034c32 <_dtoa_r+0x822>
c00354a3:	dd d8                	fstp   %st(0)
c00354a5:	dd d8                	fstp   %st(0)
c00354a7:	dd d8                	fstp   %st(0)
c00354a9:	eb 0d                	jmp    c00354b8 <_dtoa_r+0x10a8>
c00354ab:	90                   	nop
c00354ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00354b0:	dd d8                	fstp   %st(0)
c00354b2:	dd d8                	fstp   %st(0)
c00354b4:	dd d8                	fstp   %st(0)
c00354b6:	dd d8                	fstp   %st(0)
c00354b8:	89 fb                	mov    %edi,%ebx
c00354ba:	89 d7                	mov    %edx,%edi
c00354bc:	e9 8d f5 ff ff       	jmp    c0034a4e <_dtoa_r+0x63e>
c00354c1:	29 cb                	sub    %ecx,%ebx
c00354c3:	31 c0                	xor    %eax,%eax
c00354c5:	e9 74 f8 ff ff       	jmp    c0034d3e <_dtoa_r+0x92e>
c00354ca:	75 0e                	jne    c00354da <_dtoa_r+0x10ca>
c00354cc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00354d0:	74 08                	je     c00354da <_dtoa_r+0x10ca>
c00354d2:	e9 b2 f9 ff ff       	jmp    c0034e89 <_dtoa_r+0xa79>
c00354d7:	90                   	nop
c00354d8:	89 c2                	mov    %eax,%edx
c00354da:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00354de:	8d 42 ff             	lea    -0x1(%edx),%eax
c00354e1:	74 f5                	je     c00354d8 <_dtoa_r+0x10c8>
c00354e3:	89 fb                	mov    %edi,%ebx
c00354e5:	89 d7                	mov    %edx,%edi
c00354e7:	e9 46 f7 ff ff       	jmp    c0034c32 <_dtoa_r+0x822>
c00354ec:	8b 40 04             	mov    0x4(%eax),%eax
c00354ef:	89 34 24             	mov    %esi,(%esp)
c00354f2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00354f6:	e8 45 0a 00 00       	call   c0035f40 <_Balloc>
c00354fb:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00354fe:	89 c3                	mov    %eax,%ebx
c0035500:	8b 41 10             	mov    0x10(%ecx),%eax
c0035503:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003550a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003550e:	89 c8                	mov    %ecx,%eax
c0035510:	83 c0 0c             	add    $0xc,%eax
c0035513:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035517:	8d 43 0c             	lea    0xc(%ebx),%eax
c003551a:	89 04 24             	mov    %eax,(%esp)
c003551d:	e8 f2 cb ff ff       	call   c0032114 <memcpy>
c0035522:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035529:	00 
c003552a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003552e:	89 34 24             	mov    %esi,(%esp)
c0035531:	e8 aa 10 00 00       	call   c00365e0 <__lshift>
c0035536:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035539:	e9 9d fc ff ff       	jmp    c00351db <_dtoa_r+0xdcb>
c003553e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035543:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035546:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035549:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003554c:	e9 ed f7 ff ff       	jmp    c0034d3e <_dtoa_r+0x92e>
c0035551:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035555:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035558:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003555b:	74 28                	je     c0035585 <_dtoa_r+0x1175>
c003555d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035561:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035564:	83 c0 01             	add    $0x1,%eax
c0035567:	89 cb                	mov    %ecx,%ebx
c0035569:	e9 1d ff ff ff       	jmp    c003548b <_dtoa_r+0x107b>
c003556e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035571:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035574:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035577:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003557a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003557d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035580:	e9 cc f8 ff ff       	jmp    c0034e51 <_dtoa_r+0xa41>
c0035585:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035588:	b9 39 00 00 00       	mov    $0x39,%ecx
c003558d:	8d 50 01             	lea    0x1(%eax),%edx
c0035590:	c6 00 39             	movb   $0x39,(%eax)
c0035593:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035596:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035599:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003559c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003559f:	e9 fa f8 ff ff       	jmp    c0034e9e <_dtoa_r+0xa8e>
c00355a4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00355a7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00355aa:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00355ad:	83 fb 39             	cmp    $0x39,%ebx
c00355b0:	74 d3                	je     c0035585 <_dtoa_r+0x1175>
c00355b2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00355b5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00355b8:	83 c0 31             	add    $0x31,%eax
c00355bb:	85 c9                	test   %ecx,%ecx
c00355bd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00355c0:	0f 4e c3             	cmovle %ebx,%eax
c00355c3:	89 cb                	mov    %ecx,%ebx
c00355c5:	e9 c1 fe ff ff       	jmp    c003548b <_dtoa_r+0x107b>
c00355ca:	0f 85 b2 fe ff ff    	jne    c0035482 <_dtoa_r+0x1072>
c00355d0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00355d4:	0f 84 a8 fe ff ff    	je     c0035482 <_dtoa_r+0x1072>
c00355da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00355e0:	e9 8a fe ff ff       	jmp    c003546f <_dtoa_r+0x105f>
c00355e5:	0f 85 c7 f3 ff ff    	jne    c00349b2 <_dtoa_r+0x5a2>
c00355eb:	dd d8                	fstp   %st(0)
c00355ed:	dd d8                	fstp   %st(0)
c00355ef:	90                   	nop
c00355f0:	e9 65 fd ff ff       	jmp    c003535a <_dtoa_r+0xf4a>
c00355f5:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00355f8:	e9 dd f5 ff ff       	jmp    c0034bda <_dtoa_r+0x7ca>
c00355fd:	8d 76 00             	lea    0x0(%esi),%esi
c0035600:	0f 84 7a f5 ff ff    	je     c0034b80 <_dtoa_r+0x770>
c0035606:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003560b:	29 d0                	sub    %edx,%eax
c003560d:	e9 ab f8 ff ff       	jmp    c0034ebd <_dtoa_r+0xaad>
c0035612:	b8 01 00 00 00       	mov    $0x1,%eax
c0035617:	e9 d9 ef ff ff       	jmp    c00345f5 <_dtoa_r+0x1e5>
c003561c:	31 d2                	xor    %edx,%edx
c003561e:	e9 36 f1 ff ff       	jmp    c0034759 <_dtoa_r+0x349>
c0035623:	66 90                	xchg   %ax,%ax
c0035625:	66 90                	xchg   %ax,%ax
c0035627:	66 90                	xchg   %ax,%ax
c0035629:	66 90                	xchg   %ax,%ax
c003562b:	66 90                	xchg   %ax,%ax
c003562d:	66 90                	xchg   %ax,%ax
c003562f:	90                   	nop

c0035630 <_setlocale_r>:
c0035630:	55                   	push   %ebp
c0035631:	89 e5                	mov    %esp,%ebp
c0035633:	53                   	push   %ebx
c0035634:	83 ec 14             	sub    $0x14,%esp
c0035637:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003563a:	85 db                	test   %ebx,%ebx
c003563c:	74 14                	je     c0035652 <_setlocale_r+0x22>
c003563e:	c7 44 24 04 f0 91 03 	movl   $0xc00391f0,0x4(%esp)
c0035645:	c0 
c0035646:	89 1c 24             	mov    %ebx,(%esp)
c0035649:	e8 a2 cb ff ff       	call   c00321f0 <strcmp>
c003564e:	85 c0                	test   %eax,%eax
c0035650:	75 0e                	jne    c0035660 <_setlocale_r+0x30>
c0035652:	83 c4 14             	add    $0x14,%esp
c0035655:	b8 e8 8f 03 c0       	mov    $0xc0038fe8,%eax
c003565a:	5b                   	pop    %ebx
c003565b:	5d                   	pop    %ebp
c003565c:	c3                   	ret    
c003565d:	8d 76 00             	lea    0x0(%esi),%esi
c0035660:	c7 44 24 04 e8 8f 03 	movl   $0xc0038fe8,0x4(%esp)
c0035667:	c0 
c0035668:	89 1c 24             	mov    %ebx,(%esp)
c003566b:	e8 80 cb ff ff       	call   c00321f0 <strcmp>
c0035670:	85 c0                	test   %eax,%eax
c0035672:	74 de                	je     c0035652 <_setlocale_r+0x22>
c0035674:	89 1c 24             	mov    %ebx,(%esp)
c0035677:	c7 44 24 04 22 90 03 	movl   $0xc0039022,0x4(%esp)
c003567e:	c0 
c003567f:	e8 6c cb ff ff       	call   c00321f0 <strcmp>
c0035684:	89 c2                	mov    %eax,%edx
c0035686:	31 c0                	xor    %eax,%eax
c0035688:	85 d2                	test   %edx,%edx
c003568a:	ba e8 8f 03 c0       	mov    $0xc0038fe8,%edx
c003568f:	0f 44 c2             	cmove  %edx,%eax
c0035692:	83 c4 14             	add    $0x14,%esp
c0035695:	5b                   	pop    %ebx
c0035696:	5d                   	pop    %ebp
c0035697:	c3                   	ret    
c0035698:	90                   	nop
c0035699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00356a0 <__locale_charset>:
c00356a0:	55                   	push   %ebp
c00356a1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c00356a6:	89 e5                	mov    %esp,%ebp
c00356a8:	5d                   	pop    %ebp
c00356a9:	c3                   	ret    
c00356aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00356b0 <__locale_mb_cur_max>:
c00356b0:	55                   	push   %ebp
c00356b1:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c00356b6:	89 e5                	mov    %esp,%ebp
c00356b8:	5d                   	pop    %ebp
c00356b9:	c3                   	ret    
c00356ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00356c0 <__locale_msgcharset>:
c00356c0:	55                   	push   %ebp
c00356c1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c00356c6:	89 e5                	mov    %esp,%ebp
c00356c8:	5d                   	pop    %ebp
c00356c9:	c3                   	ret    
c00356ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00356d0 <__locale_cjk_lang>:
c00356d0:	55                   	push   %ebp
c00356d1:	31 c0                	xor    %eax,%eax
c00356d3:	89 e5                	mov    %esp,%ebp
c00356d5:	5d                   	pop    %ebp
c00356d6:	c3                   	ret    
c00356d7:	89 f6                	mov    %esi,%esi
c00356d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00356e0 <_localeconv_r>:
c00356e0:	55                   	push   %ebp
c00356e1:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c00356e6:	89 e5                	mov    %esp,%ebp
c00356e8:	5d                   	pop    %ebp
c00356e9:	c3                   	ret    
c00356ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00356f0 <setlocale>:
c00356f0:	55                   	push   %ebp
c00356f1:	89 e5                	mov    %esp,%ebp
c00356f3:	83 ec 18             	sub    $0x18,%esp
c00356f6:	e8 35 cc ff ff       	call   c0032330 <__getreent>
c00356fb:	8b 55 0c             	mov    0xc(%ebp),%edx
c00356fe:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035702:	8b 55 08             	mov    0x8(%ebp),%edx
c0035705:	89 04 24             	mov    %eax,(%esp)
c0035708:	89 54 24 04          	mov    %edx,0x4(%esp)
c003570c:	e8 1f ff ff ff       	call   c0035630 <_setlocale_r>
c0035711:	c9                   	leave  
c0035712:	c3                   	ret    
c0035713:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035720 <localeconv>:
c0035720:	55                   	push   %ebp
c0035721:	89 e5                	mov    %esp,%ebp
c0035723:	83 ec 08             	sub    $0x8,%esp
c0035726:	e8 05 cc ff ff       	call   c0032330 <__getreent>
c003572b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035730:	c9                   	leave  
c0035731:	c3                   	ret    
c0035732:	66 90                	xchg   %ax,%ax
c0035734:	66 90                	xchg   %ax,%ax
c0035736:	66 90                	xchg   %ax,%ax
c0035738:	66 90                	xchg   %ax,%ax
c003573a:	66 90                	xchg   %ax,%ax
c003573c:	66 90                	xchg   %ax,%ax
c003573e:	66 90                	xchg   %ax,%ax

c0035740 <_malloc_r>:
c0035740:	55                   	push   %ebp
c0035741:	89 e5                	mov    %esp,%ebp
c0035743:	57                   	push   %edi
c0035744:	56                   	push   %esi
c0035745:	53                   	push   %ebx
c0035746:	83 ec 2c             	sub    $0x2c,%esp
c0035749:	8b 45 0c             	mov    0xc(%ebp),%eax
c003574c:	8d 50 0b             	lea    0xb(%eax),%edx
c003574f:	83 fa 16             	cmp    $0x16,%edx
c0035752:	76 6c                	jbe    c00357c0 <_malloc_r+0x80>
c0035754:	89 d7                	mov    %edx,%edi
c0035756:	83 e7 f8             	and    $0xfffffff8,%edi
c0035759:	89 fe                	mov    %edi,%esi
c003575b:	c1 ee 1f             	shr    $0x1f,%esi
c003575e:	39 c7                	cmp    %eax,%edi
c0035760:	8b 45 08             	mov    0x8(%ebp),%eax
c0035763:	89 f2                	mov    %esi,%edx
c0035765:	72 67                	jb     c00357ce <_malloc_r+0x8e>
c0035767:	84 d2                	test   %dl,%dl
c0035769:	75 63                	jne    c00357ce <_malloc_r+0x8e>
c003576b:	89 04 24             	mov    %eax,(%esp)
c003576e:	e8 ad 07 00 00       	call   c0035f20 <__malloc_lock>
c0035773:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035779:	77 65                	ja     c00357e0 <_malloc_r+0xa0>
c003577b:	89 fa                	mov    %edi,%edx
c003577d:	c1 ea 03             	shr    $0x3,%edx
c0035780:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035787:	8b 58 0c             	mov    0xc(%eax),%ebx
c003578a:	39 c3                	cmp    %eax,%ebx
c003578c:	0f 84 3e 05 00 00    	je     c0035cd0 <_malloc_r+0x590>
c0035792:	8b 43 04             	mov    0x4(%ebx),%eax
c0035795:	83 e0 fc             	and    $0xfffffffc,%eax
c0035798:	8b 53 0c             	mov    0xc(%ebx),%edx
c003579b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003579e:	89 51 0c             	mov    %edx,0xc(%ecx)
c00357a1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00357a4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00357a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ac:	89 04 24             	mov    %eax,(%esp)
c00357af:	e8 7c 07 00 00       	call   c0035f30 <__malloc_unlock>
c00357b4:	8d 43 08             	lea    0x8(%ebx),%eax
c00357b7:	83 c4 2c             	add    $0x2c,%esp
c00357ba:	5b                   	pop    %ebx
c00357bb:	5e                   	pop    %esi
c00357bc:	5f                   	pop    %edi
c00357bd:	5d                   	pop    %ebp
c00357be:	c3                   	ret    
c00357bf:	90                   	nop
c00357c0:	bf 10 00 00 00       	mov    $0x10,%edi
c00357c5:	31 d2                	xor    %edx,%edx
c00357c7:	39 c7                	cmp    %eax,%edi
c00357c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00357cc:	73 99                	jae    c0035767 <_malloc_r+0x27>
c00357ce:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00357d4:	83 c4 2c             	add    $0x2c,%esp
c00357d7:	31 c0                	xor    %eax,%eax
c00357d9:	5b                   	pop    %ebx
c00357da:	5e                   	pop    %esi
c00357db:	5f                   	pop    %edi
c00357dc:	5d                   	pop    %ebp
c00357dd:	c3                   	ret    
c00357de:	66 90                	xchg   %ax,%ax
c00357e0:	89 fe                	mov    %edi,%esi
c00357e2:	c1 ee 09             	shr    $0x9,%esi
c00357e5:	85 f6                	test   %esi,%esi
c00357e7:	0f 84 ab 01 00 00    	je     c0035998 <_malloc_r+0x258>
c00357ed:	83 fe 04             	cmp    $0x4,%esi
c00357f0:	0f 87 8a 03 00 00    	ja     c0035b80 <_malloc_r+0x440>
c00357f6:	89 fe                	mov    %edi,%esi
c00357f8:	c1 ee 06             	shr    $0x6,%esi
c00357fb:	83 c6 38             	add    $0x38,%esi
c00357fe:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035801:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035808:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003580b:	39 d9                	cmp    %ebx,%ecx
c003580d:	75 18                	jne    c0035827 <_malloc_r+0xe7>
c003580f:	eb 28                	jmp    c0035839 <_malloc_r+0xf9>
c0035811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035818:	85 d2                	test   %edx,%edx
c003581a:	0f 89 78 ff ff ff    	jns    c0035798 <_malloc_r+0x58>
c0035820:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035823:	39 d9                	cmp    %ebx,%ecx
c0035825:	74 12                	je     c0035839 <_malloc_r+0xf9>
c0035827:	8b 43 04             	mov    0x4(%ebx),%eax
c003582a:	83 e0 fc             	and    $0xfffffffc,%eax
c003582d:	89 c2                	mov    %eax,%edx
c003582f:	29 fa                	sub    %edi,%edx
c0035831:	83 fa 0f             	cmp    $0xf,%edx
c0035834:	7e e2                	jle    c0035818 <_malloc_r+0xd8>
c0035836:	83 ee 01             	sub    $0x1,%esi
c0035839:	8d 46 01             	lea    0x1(%esi),%eax
c003583c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003583f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035845:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003584a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035850:	74 6b                	je     c00358bd <_malloc_r+0x17d>
c0035852:	8b 73 04             	mov    0x4(%ebx),%esi
c0035855:	83 e6 fc             	and    $0xfffffffc,%esi
c0035858:	89 f0                	mov    %esi,%eax
c003585a:	29 f8                	sub    %edi,%eax
c003585c:	83 f8 0f             	cmp    $0xf,%eax
c003585f:	0f 8f a3 03 00 00    	jg     c0035c08 <_malloc_r+0x4c8>
c0035865:	85 c0                	test   %eax,%eax
c0035867:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c003586e:	c5 03 c0 
c0035871:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c0035878:	c5 03 c0 
c003587b:	0f 89 27 01 00 00    	jns    c00359a8 <_malloc_r+0x268>
c0035881:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035887:	0f 87 1b 03 00 00    	ja     c0035ba8 <_malloc_r+0x468>
c003588d:	c1 ee 03             	shr    $0x3,%esi
c0035890:	b8 01 00 00 00       	mov    $0x1,%eax
c0035895:	89 f1                	mov    %esi,%ecx
c0035897:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c003589e:	c1 f9 02             	sar    $0x2,%ecx
c00358a1:	d3 e0                	shl    %cl,%eax
c00358a3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00358a6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00358ac:	89 53 0c             	mov    %edx,0xc(%ebx)
c00358af:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00358b2:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00358b7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00358ba:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00358bd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00358c0:	be 01 00 00 00       	mov    $0x1,%esi
c00358c5:	c1 f9 02             	sar    $0x2,%ecx
c00358c8:	d3 e6                	shl    %cl,%esi
c00358ca:	39 c6                	cmp    %eax,%esi
c00358cc:	0f 87 f6 00 00 00    	ja     c00359c8 <_malloc_r+0x288>
c00358d2:	85 f0                	test   %esi,%eax
c00358d4:	0f 85 76 03 00 00    	jne    c0035c50 <_malloc_r+0x510>
c00358da:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00358dd:	01 f6                	add    %esi,%esi
c00358df:	83 e2 fc             	and    $0xfffffffc,%edx
c00358e2:	85 f0                	test   %esi,%eax
c00358e4:	8d 4a 04             	lea    0x4(%edx),%ecx
c00358e7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00358ea:	0f 85 60 03 00 00    	jne    c0035c50 <_malloc_r+0x510>
c00358f0:	89 ca                	mov    %ecx,%edx
c00358f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00358f8:	01 f6                	add    %esi,%esi
c00358fa:	83 c2 04             	add    $0x4,%edx
c00358fd:	85 f0                	test   %esi,%eax
c00358ff:	74 f7                	je     c00358f8 <_malloc_r+0x1b8>
c0035901:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035904:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035907:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003590a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035911:	89 f1                	mov    %esi,%ecx
c0035913:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035916:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035919:	39 d9                	cmp    %ebx,%ecx
c003591b:	75 1e                	jne    c003593b <_malloc_r+0x1fb>
c003591d:	e9 36 03 00 00       	jmp    c0035c58 <_malloc_r+0x518>
c0035922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035928:	85 d2                	test   %edx,%edx
c003592a:	0f 89 c0 03 00 00    	jns    c0035cf0 <_malloc_r+0x5b0>
c0035930:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035933:	39 d9                	cmp    %ebx,%ecx
c0035935:	0f 84 1d 03 00 00    	je     c0035c58 <_malloc_r+0x518>
c003593b:	8b 43 04             	mov    0x4(%ebx),%eax
c003593e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035941:	89 c2                	mov    %eax,%edx
c0035943:	29 fa                	sub    %edi,%edx
c0035945:	83 fa 0f             	cmp    $0xf,%edx
c0035948:	7e de                	jle    c0035928 <_malloc_r+0x1e8>
c003594a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003594d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035950:	83 cf 01             	or     $0x1,%edi
c0035953:	8b 73 08             	mov    0x8(%ebx),%esi
c0035956:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035959:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003595c:	89 71 08             	mov    %esi,0x8(%ecx)
c003595f:	89 d1                	mov    %edx,%ecx
c0035961:	83 c9 01             	or     $0x1,%ecx
c0035964:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035969:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c003596e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035975:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c003597c:	89 48 04             	mov    %ecx,0x4(%eax)
c003597f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035982:	8b 45 08             	mov    0x8(%ebp),%eax
c0035985:	89 04 24             	mov    %eax,(%esp)
c0035988:	e8 a3 05 00 00       	call   c0035f30 <__malloc_unlock>
c003598d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035990:	e9 22 fe ff ff       	jmp    c00357b7 <_malloc_r+0x77>
c0035995:	8d 76 00             	lea    0x0(%esi),%esi
c0035998:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003599d:	be 3f 00 00 00       	mov    $0x3f,%esi
c00359a2:	e9 5a fe ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c00359a7:	90                   	nop
c00359a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00359ab:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00359b0:	89 04 24             	mov    %eax,(%esp)
c00359b3:	e8 78 05 00 00       	call   c0035f30 <__malloc_unlock>
c00359b8:	83 c4 2c             	add    $0x2c,%esp
c00359bb:	8d 43 08             	lea    0x8(%ebx),%eax
c00359be:	5b                   	pop    %ebx
c00359bf:	5e                   	pop    %esi
c00359c0:	5f                   	pop    %edi
c00359c1:	5d                   	pop    %ebp
c00359c2:	c3                   	ret    
c00359c3:	90                   	nop
c00359c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359c8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c00359ce:	8b 73 04             	mov    0x4(%ebx),%esi
c00359d1:	83 e6 fc             	and    $0xfffffffc,%esi
c00359d4:	39 f7                	cmp    %esi,%edi
c00359d6:	77 0d                	ja     c00359e5 <_malloc_r+0x2a5>
c00359d8:	89 f0                	mov    %esi,%eax
c00359da:	29 f8                	sub    %edi,%eax
c00359dc:	83 f8 0f             	cmp    $0xf,%eax
c00359df:	0f 8f 6b 01 00 00    	jg     c0035b50 <_malloc_r+0x410>
c00359e5:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c00359eb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c00359ee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00359f1:	01 f9                	add    %edi,%ecx
c00359f3:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c00359f9:	83 c1 10             	add    $0x10,%ecx
c00359fc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035a01:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035a08:	0f 44 c1             	cmove  %ecx,%eax
c0035a0b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035a0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035a12:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a15:	89 04 24             	mov    %eax,(%esp)
c0035a18:	e8 03 13 00 00       	call   c0036d20 <_sbrk_r>
c0035a1d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035a20:	89 c1                	mov    %eax,%ecx
c0035a22:	0f 84 17 03 00 00    	je     c0035d3f <_malloc_r+0x5ff>
c0035a28:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035a2b:	0f 87 02 03 00 00    	ja     c0035d33 <_malloc_r+0x5f3>
c0035a31:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035a34:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035a3a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c0035a3d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035a43:	0f 84 a9 03 00 00    	je     c0035df2 <_malloc_r+0x6b2>
c0035a49:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035a50:	0f 84 ca 03 00 00    	je     c0035e20 <_malloc_r+0x6e0>
c0035a56:	89 c8                	mov    %ecx,%eax
c0035a58:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c0035a5b:	01 d0                	add    %edx,%eax
c0035a5d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035a62:	89 c8                	mov    %ecx,%eax
c0035a64:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035a69:	83 e0 07             	and    $0x7,%eax
c0035a6c:	74 0c                	je     c0035a7a <_malloc_r+0x33a>
c0035a6e:	29 c1                	sub    %eax,%ecx
c0035a70:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035a75:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035a78:	29 c2                	sub    %eax,%edx
c0035a7a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035a7d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035a80:	01 c8                	add    %ecx,%eax
c0035a82:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035a87:	29 c2                	sub    %eax,%edx
c0035a89:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a8c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035a90:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035a93:	89 04 24             	mov    %eax,(%esp)
c0035a96:	e8 85 12 00 00       	call   c0036d20 <_sbrk_r>
c0035a9b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035a9e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035aa1:	0f 84 6d 03 00 00    	je     c0035e14 <_malloc_r+0x6d4>
c0035aa7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035aaa:	29 c8                	sub    %ecx,%eax
c0035aac:	01 d0                	add    %edx,%eax
c0035aae:	83 c8 01             	or     $0x1,%eax
c0035ab1:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035ab7:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035abd:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035ac3:	89 41 04             	mov    %eax,0x4(%ecx)
c0035ac6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035acc:	0f 84 f2 02 00 00    	je     c0035dc4 <_malloc_r+0x684>
c0035ad2:	83 fe 0f             	cmp    $0xf,%esi
c0035ad5:	0f 86 8d 02 00 00    	jbe    c0035d68 <_malloc_r+0x628>
c0035adb:	8b 43 04             	mov    0x4(%ebx),%eax
c0035ade:	83 ee 0c             	sub    $0xc,%esi
c0035ae1:	83 e6 f8             	and    $0xfffffff8,%esi
c0035ae4:	83 e0 01             	and    $0x1,%eax
c0035ae7:	09 f0                	or     %esi,%eax
c0035ae9:	83 fe 0f             	cmp    $0xf,%esi
c0035aec:	89 43 04             	mov    %eax,0x4(%ebx)
c0035aef:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035af4:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c0035afb:	00 
c0035afc:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035b03:	00 
c0035b04:	0f 87 a2 02 00 00    	ja     c0035dac <_malloc_r+0x66c>
c0035b0a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035b10:	76 06                	jbe    c0035b18 <_malloc_r+0x3d8>
c0035b12:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035b18:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c0035b1e:	76 06                	jbe    c0035b26 <_malloc_r+0x3e6>
c0035b20:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035b26:	8b 50 04             	mov    0x4(%eax),%edx
c0035b29:	89 c3                	mov    %eax,%ebx
c0035b2b:	83 e2 fc             	and    $0xfffffffc,%edx
c0035b2e:	89 d0                	mov    %edx,%eax
c0035b30:	29 f8                	sub    %edi,%eax
c0035b32:	39 d7                	cmp    %edx,%edi
c0035b34:	77 05                	ja     c0035b3b <_malloc_r+0x3fb>
c0035b36:	83 f8 0f             	cmp    $0xf,%eax
c0035b39:	7f 15                	jg     c0035b50 <_malloc_r+0x410>
c0035b3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b3e:	89 04 24             	mov    %eax,(%esp)
c0035b41:	e8 ea 03 00 00       	call   c0035f30 <__malloc_unlock>
c0035b46:	31 c0                	xor    %eax,%eax
c0035b48:	e9 6a fc ff ff       	jmp    c00357b7 <_malloc_r+0x77>
c0035b4d:	8d 76 00             	lea    0x0(%esi),%esi
c0035b50:	89 fa                	mov    %edi,%edx
c0035b52:	83 c8 01             	or     $0x1,%eax
c0035b55:	83 ca 01             	or     $0x1,%edx
c0035b58:	89 53 04             	mov    %edx,0x4(%ebx)
c0035b5b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035b5e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035b64:	89 42 04             	mov    %eax,0x4(%edx)
c0035b67:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b6a:	89 04 24             	mov    %eax,(%esp)
c0035b6d:	e8 be 03 00 00       	call   c0035f30 <__malloc_unlock>
c0035b72:	83 c4 2c             	add    $0x2c,%esp
c0035b75:	8d 43 08             	lea    0x8(%ebx),%eax
c0035b78:	5b                   	pop    %ebx
c0035b79:	5e                   	pop    %esi
c0035b7a:	5f                   	pop    %edi
c0035b7b:	5d                   	pop    %ebp
c0035b7c:	c3                   	ret    
c0035b7d:	8d 76 00             	lea    0x0(%esi),%esi
c0035b80:	83 fe 14             	cmp    $0x14,%esi
c0035b83:	0f 86 8f 01 00 00    	jbe    c0035d18 <_malloc_r+0x5d8>
c0035b89:	83 fe 54             	cmp    $0x54,%esi
c0035b8c:	0f 87 be 01 00 00    	ja     c0035d50 <_malloc_r+0x610>
c0035b92:	89 fe                	mov    %edi,%esi
c0035b94:	c1 ee 0c             	shr    $0xc,%esi
c0035b97:	83 c6 6e             	add    $0x6e,%esi
c0035b9a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035b9d:	e9 5f fc ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c0035ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035ba8:	89 f1                	mov    %esi,%ecx
c0035baa:	c1 e9 09             	shr    $0x9,%ecx
c0035bad:	83 f9 04             	cmp    $0x4,%ecx
c0035bb0:	0f 86 6d 01 00 00    	jbe    c0035d23 <_malloc_r+0x5e3>
c0035bb6:	83 f9 14             	cmp    $0x14,%ecx
c0035bb9:	0f 87 0f 02 00 00    	ja     c0035dce <_malloc_r+0x68e>
c0035bbf:	83 c1 5b             	add    $0x5b,%ecx
c0035bc2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035bc5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c0035bcc:	8b 50 08             	mov    0x8(%eax),%edx
c0035bcf:	39 c2                	cmp    %eax,%edx
c0035bd1:	0f 84 a1 01 00 00    	je     c0035d78 <_malloc_r+0x638>
c0035bd7:	90                   	nop
c0035bd8:	8b 4a 04             	mov    0x4(%edx),%ecx
c0035bdb:	83 e1 fc             	and    $0xfffffffc,%ecx
c0035bde:	39 ce                	cmp    %ecx,%esi
c0035be0:	73 07                	jae    c0035be9 <_malloc_r+0x4a9>
c0035be2:	8b 52 08             	mov    0x8(%edx),%edx
c0035be5:	39 d0                	cmp    %edx,%eax
c0035be7:	75 ef                	jne    c0035bd8 <_malloc_r+0x498>
c0035be9:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0035bec:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035bf1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035bf4:	89 53 08             	mov    %edx,0x8(%ebx)
c0035bf7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0035bfa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0035bfd:	e9 bb fc ff ff       	jmp    c00358bd <_malloc_r+0x17d>
c0035c02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035c08:	89 c1                	mov    %eax,%ecx
c0035c0a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035c0d:	83 c9 01             	or     $0x1,%ecx
c0035c10:	83 cf 01             	or     $0x1,%edi
c0035c13:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035c16:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0035c1c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035c22:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035c29:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035c30:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035c33:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035c36:	8b 45 08             	mov    0x8(%ebp),%eax
c0035c39:	89 04 24             	mov    %eax,(%esp)
c0035c3c:	e8 ef 02 00 00       	call   c0035f30 <__malloc_unlock>
c0035c41:	8d 43 08             	lea    0x8(%ebx),%eax
c0035c44:	e9 6e fb ff ff       	jmp    c00357b7 <_malloc_r+0x77>
c0035c49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c50:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035c53:	e9 af fc ff ff       	jmp    c0035907 <_malloc_r+0x1c7>
c0035c58:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c0035c5c:	83 c1 08             	add    $0x8,%ecx
c0035c5f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035c63:	0f 85 ad fc ff ff    	jne    c0035916 <_malloc_r+0x1d6>
c0035c69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035c6c:	eb 12                	jmp    c0035c80 <_malloc_r+0x540>
c0035c6e:	66 90                	xchg   %ax,%ax
c0035c70:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035c73:	8b 36                	mov    (%esi),%esi
c0035c75:	83 e8 01             	sub    $0x1,%eax
c0035c78:	39 d6                	cmp    %edx,%esi
c0035c7a:	0f 85 ea 01 00 00    	jne    c0035e6a <_malloc_r+0x72a>
c0035c80:	a8 03                	test   $0x3,%al
c0035c82:	75 ec                	jne    c0035c70 <_malloc_r+0x530>
c0035c84:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035c87:	f7 d0                	not    %eax
c0035c89:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c0035c8f:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035c94:	d1 65 dc             	shll   -0x24(%ebp)
c0035c97:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0035c9a:	39 c2                	cmp    %eax,%edx
c0035c9c:	0f 87 26 fd ff ff    	ja     c00359c8 <_malloc_r+0x288>
c0035ca2:	85 d2                	test   %edx,%edx
c0035ca4:	0f 84 1e fd ff ff    	je     c00359c8 <_malloc_r+0x288>
c0035caa:	85 c2                	test   %eax,%edx
c0035cac:	0f 85 c2 01 00 00    	jne    c0035e74 <_malloc_r+0x734>
c0035cb2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035cb5:	89 f1                	mov    %esi,%ecx
c0035cb7:	01 d2                	add    %edx,%edx
c0035cb9:	83 c1 04             	add    $0x4,%ecx
c0035cbc:	85 d0                	test   %edx,%eax
c0035cbe:	74 f7                	je     c0035cb7 <_malloc_r+0x577>
c0035cc0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035cc3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035cc6:	e9 3c fc ff ff       	jmp    c0035907 <_malloc_r+0x1c7>
c0035ccb:	90                   	nop
c0035ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035cd0:	8d 43 08             	lea    0x8(%ebx),%eax
c0035cd3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035cd6:	39 d8                	cmp    %ebx,%eax
c0035cd8:	0f 85 b4 fa ff ff    	jne    c0035792 <_malloc_r+0x52>
c0035cde:	8d 42 02             	lea    0x2(%edx),%eax
c0035ce1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035ce4:	e9 56 fb ff ff       	jmp    c003583f <_malloc_r+0xff>
c0035ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035cf0:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035cf5:	8b 53 08             	mov    0x8(%ebx),%edx
c0035cf8:	8b 43 0c             	mov    0xc(%ebx),%eax
c0035cfb:	89 42 0c             	mov    %eax,0xc(%edx)
c0035cfe:	89 50 08             	mov    %edx,0x8(%eax)
c0035d01:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d04:	89 04 24             	mov    %eax,(%esp)
c0035d07:	e8 24 02 00 00       	call   c0035f30 <__malloc_unlock>
c0035d0c:	8d 43 08             	lea    0x8(%ebx),%eax
c0035d0f:	e9 a3 fa ff ff       	jmp    c00357b7 <_malloc_r+0x77>
c0035d14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035d18:	83 c6 5b             	add    $0x5b,%esi
c0035d1b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035d1e:	e9 de fa ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c0035d23:	89 f1                	mov    %esi,%ecx
c0035d25:	c1 e9 06             	shr    $0x6,%ecx
c0035d28:	83 c1 38             	add    $0x38,%ecx
c0035d2b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035d2e:	e9 92 fe ff ff       	jmp    c0035bc5 <_malloc_r+0x485>
c0035d33:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035d39:	0f 84 f2 fc ff ff    	je     c0035a31 <_malloc_r+0x2f1>
c0035d3f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035d45:	8b 53 04             	mov    0x4(%ebx),%edx
c0035d48:	83 e2 fc             	and    $0xfffffffc,%edx
c0035d4b:	e9 de fd ff ff       	jmp    c0035b2e <_malloc_r+0x3ee>
c0035d50:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035d56:	77 3c                	ja     c0035d94 <_malloc_r+0x654>
c0035d58:	89 fe                	mov    %edi,%esi
c0035d5a:	c1 ee 0f             	shr    $0xf,%esi
c0035d5d:	83 c6 77             	add    $0x77,%esi
c0035d60:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035d63:	e9 99 fa ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c0035d68:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035d6f:	89 cb                	mov    %ecx,%ebx
c0035d71:	31 d2                	xor    %edx,%edx
c0035d73:	e9 b6 fd ff ff       	jmp    c0035b2e <_malloc_r+0x3ee>
c0035d78:	c1 f9 02             	sar    $0x2,%ecx
c0035d7b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d80:	d3 e0                	shl    %cl,%eax
c0035d82:	89 d1                	mov    %edx,%ecx
c0035d84:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035d8a:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035d8f:	e9 5d fe ff ff       	jmp    c0035bf1 <_malloc_r+0x4b1>
c0035d94:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035d9a:	77 47                	ja     c0035de3 <_malloc_r+0x6a3>
c0035d9c:	89 fe                	mov    %edi,%esi
c0035d9e:	c1 ee 12             	shr    $0x12,%esi
c0035da1:	83 c6 7c             	add    $0x7c,%esi
c0035da4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035da7:	e9 55 fa ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c0035dac:	8b 45 08             	mov    0x8(%ebp),%eax
c0035daf:	83 c3 08             	add    $0x8,%ebx
c0035db2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035db6:	89 04 24             	mov    %eax,(%esp)
c0035db9:	e8 52 22 00 00       	call   c0038010 <_free_r>
c0035dbe:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c0035dc4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035dc9:	e9 3c fd ff ff       	jmp    c0035b0a <_malloc_r+0x3ca>
c0035dce:	83 f9 54             	cmp    $0x54,%ecx
c0035dd1:	77 58                	ja     c0035e2b <_malloc_r+0x6eb>
c0035dd3:	89 f1                	mov    %esi,%ecx
c0035dd5:	c1 e9 0c             	shr    $0xc,%ecx
c0035dd8:	83 c1 6e             	add    $0x6e,%ecx
c0035ddb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035dde:	e9 e2 fd ff ff       	jmp    c0035bc5 <_malloc_r+0x485>
c0035de3:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035de8:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035ded:	e9 0f fa ff ff       	jmp    c0035801 <_malloc_r+0xc1>
c0035df2:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035df9:	0f 85 4a fc ff ff    	jne    c0035a49 <_malloc_r+0x309>
c0035dff:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035e02:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035e07:	01 f1                	add    %esi,%ecx
c0035e09:	83 c9 01             	or     $0x1,%ecx
c0035e0c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035e0f:	e9 f6 fc ff ff       	jmp    c0035b0a <_malloc_r+0x3ca>
c0035e14:	b8 01 00 00 00       	mov    $0x1,%eax
c0035e19:	31 d2                	xor    %edx,%edx
c0035e1b:	e9 91 fc ff ff       	jmp    c0035ab1 <_malloc_r+0x371>
c0035e20:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035e26:	e9 37 fc ff ff       	jmp    c0035a62 <_malloc_r+0x322>
c0035e2b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035e31:	77 10                	ja     c0035e43 <_malloc_r+0x703>
c0035e33:	89 f1                	mov    %esi,%ecx
c0035e35:	c1 e9 0f             	shr    $0xf,%ecx
c0035e38:	83 c1 77             	add    $0x77,%ecx
c0035e3b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035e3e:	e9 82 fd ff ff       	jmp    c0035bc5 <_malloc_r+0x485>
c0035e43:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035e49:	77 10                	ja     c0035e5b <_malloc_r+0x71b>
c0035e4b:	89 f1                	mov    %esi,%ecx
c0035e4d:	c1 e9 12             	shr    $0x12,%ecx
c0035e50:	83 c1 7c             	add    $0x7c,%ecx
c0035e53:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035e56:	e9 6a fd ff ff       	jmp    c0035bc5 <_malloc_r+0x485>
c0035e5b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035e60:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035e65:	e9 5b fd ff ff       	jmp    c0035bc5 <_malloc_r+0x485>
c0035e6a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035e6f:	e9 20 fe ff ff       	jmp    c0035c94 <_malloc_r+0x554>
c0035e74:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035e77:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035e7a:	e9 88 fa ff ff       	jmp    c0035907 <_malloc_r+0x1c7>
c0035e7f:	90                   	nop

c0035e80 <memchr>:
c0035e80:	55                   	push   %ebp
c0035e81:	89 e5                	mov    %esp,%ebp
c0035e83:	57                   	push   %edi
c0035e84:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035e88:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e8b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035e8e:	31 d2                	xor    %edx,%edx
c0035e90:	85 c9                	test   %ecx,%ecx
c0035e92:	74 79                	je     c0035f0d <L20>
c0035e94:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035e9a:	74 28                	je     c0035ec4 <L5>
c0035e9c:	3a 07                	cmp    (%edi),%al
c0035e9e:	74 6a                	je     c0035f0a <L15>
c0035ea0:	47                   	inc    %edi
c0035ea1:	49                   	dec    %ecx
c0035ea2:	74 69                	je     c0035f0d <L20>
c0035ea4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035eaa:	74 18                	je     c0035ec4 <L5>
c0035eac:	3a 07                	cmp    (%edi),%al
c0035eae:	74 5a                	je     c0035f0a <L15>
c0035eb0:	47                   	inc    %edi
c0035eb1:	49                   	dec    %ecx
c0035eb2:	74 59                	je     c0035f0d <L20>
c0035eb4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035eba:	74 08                	je     c0035ec4 <L5>
c0035ebc:	3a 07                	cmp    (%edi),%al
c0035ebe:	74 4a                	je     c0035f0a <L15>
c0035ec0:	47                   	inc    %edi
c0035ec1:	49                   	dec    %ecx
c0035ec2:	74 49                	je     c0035f0d <L20>

c0035ec4 <L5>:
c0035ec4:	88 c4                	mov    %al,%ah
c0035ec6:	89 c2                	mov    %eax,%edx
c0035ec8:	c1 e2 10             	shl    $0x10,%edx
c0035ecb:	09 d0                	or     %edx,%eax
c0035ecd:	53                   	push   %ebx
c0035ece:	66 90                	xchg   %ax,%ax

c0035ed0 <L8>:
c0035ed0:	83 e9 04             	sub    $0x4,%ecx
c0035ed3:	72 1c                	jb     c0035ef1 <L9>
c0035ed5:	8b 17                	mov    (%edi),%edx
c0035ed7:	83 c7 04             	add    $0x4,%edi
c0035eda:	31 c2                	xor    %eax,%edx
c0035edc:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035ee2:	f7 d2                	not    %edx
c0035ee4:	21 d3                	and    %edx,%ebx
c0035ee6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035eec:	74 e2                	je     c0035ed0 <L8>
c0035eee:	83 ef 04             	sub    $0x4,%edi

c0035ef1 <L9>:
c0035ef1:	5b                   	pop    %ebx
c0035ef2:	31 d2                	xor    %edx,%edx
c0035ef4:	83 c1 04             	add    $0x4,%ecx
c0035ef7:	74 14                	je     c0035f0d <L20>
c0035ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f00 <L10>:
c0035f00:	3a 07                	cmp    (%edi),%al
c0035f02:	74 06                	je     c0035f0a <L15>
c0035f04:	47                   	inc    %edi
c0035f05:	49                   	dec    %ecx
c0035f06:	75 f8                	jne    c0035f00 <L10>
c0035f08:	31 ff                	xor    %edi,%edi

c0035f0a <L15>:
c0035f0a:	4a                   	dec    %edx
c0035f0b:	21 fa                	and    %edi,%edx

c0035f0d <L20>:
c0035f0d:	89 d0                	mov    %edx,%eax
c0035f0f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035f12:	5f                   	pop    %edi
c0035f13:	c9                   	leave  
c0035f14:	c3                   	ret    
c0035f15:	66 90                	xchg   %ax,%ax
c0035f17:	66 90                	xchg   %ax,%ax
c0035f19:	66 90                	xchg   %ax,%ax
c0035f1b:	66 90                	xchg   %ax,%ax
c0035f1d:	66 90                	xchg   %ax,%ax
c0035f1f:	90                   	nop

c0035f20 <__malloc_lock>:
c0035f20:	55                   	push   %ebp
c0035f21:	89 e5                	mov    %esp,%ebp
c0035f23:	5d                   	pop    %ebp
c0035f24:	c3                   	ret    
c0035f25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035f30 <__malloc_unlock>:
c0035f30:	55                   	push   %ebp
c0035f31:	89 e5                	mov    %esp,%ebp
c0035f33:	5d                   	pop    %ebp
c0035f34:	c3                   	ret    
c0035f35:	66 90                	xchg   %ax,%ax
c0035f37:	66 90                	xchg   %ax,%ax
c0035f39:	66 90                	xchg   %ax,%ax
c0035f3b:	66 90                	xchg   %ax,%ax
c0035f3d:	66 90                	xchg   %ax,%ax
c0035f3f:	90                   	nop

c0035f40 <_Balloc>:
c0035f40:	55                   	push   %ebp
c0035f41:	89 e5                	mov    %esp,%ebp
c0035f43:	57                   	push   %edi
c0035f44:	56                   	push   %esi
c0035f45:	53                   	push   %ebx
c0035f46:	83 ec 1c             	sub    $0x1c,%esp
c0035f49:	8b 75 08             	mov    0x8(%ebp),%esi
c0035f4c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035f4f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035f52:	85 c0                	test   %eax,%eax
c0035f54:	74 2a                	je     c0035f80 <_Balloc+0x40>
c0035f56:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035f59:	8b 02                	mov    (%edx),%eax
c0035f5b:	85 c0                	test   %eax,%eax
c0035f5d:	74 49                	je     c0035fa8 <_Balloc+0x68>
c0035f5f:	8b 08                	mov    (%eax),%ecx
c0035f61:	89 0a                	mov    %ecx,(%edx)
c0035f63:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035f6a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035f71:	83 c4 1c             	add    $0x1c,%esp
c0035f74:	5b                   	pop    %ebx
c0035f75:	5e                   	pop    %esi
c0035f76:	5f                   	pop    %edi
c0035f77:	5d                   	pop    %ebp
c0035f78:	c3                   	ret    
c0035f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035f80:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035f87:	00 
c0035f88:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035f8f:	00 
c0035f90:	89 34 24             	mov    %esi,(%esp)
c0035f93:	e8 c8 1e 00 00       	call   c0037e60 <_calloc_r>
c0035f98:	85 c0                	test   %eax,%eax
c0035f9a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035f9d:	75 b7                	jne    c0035f56 <_Balloc+0x16>
c0035f9f:	31 c0                	xor    %eax,%eax
c0035fa1:	eb ce                	jmp    c0035f71 <_Balloc+0x31>
c0035fa3:	90                   	nop
c0035fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fa8:	89 d9                	mov    %ebx,%ecx
c0035faa:	bf 01 00 00 00       	mov    $0x1,%edi
c0035faf:	d3 e7                	shl    %cl,%edi
c0035fb1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035fb8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035fbc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035fc3:	00 
c0035fc4:	89 34 24             	mov    %esi,(%esp)
c0035fc7:	e8 94 1e 00 00       	call   c0037e60 <_calloc_r>
c0035fcc:	85 c0                	test   %eax,%eax
c0035fce:	74 cf                	je     c0035f9f <_Balloc+0x5f>
c0035fd0:	89 58 04             	mov    %ebx,0x4(%eax)
c0035fd3:	89 78 08             	mov    %edi,0x8(%eax)
c0035fd6:	eb 8b                	jmp    c0035f63 <_Balloc+0x23>
c0035fd8:	90                   	nop
c0035fd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035fe0 <_Bfree>:
c0035fe0:	55                   	push   %ebp
c0035fe1:	89 e5                	mov    %esp,%ebp
c0035fe3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035fe6:	85 c0                	test   %eax,%eax
c0035fe8:	74 12                	je     c0035ffc <_Bfree+0x1c>
c0035fea:	8b 55 08             	mov    0x8(%ebp),%edx
c0035fed:	8b 48 04             	mov    0x4(%eax),%ecx
c0035ff0:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035ff3:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035ff6:	8b 0a                	mov    (%edx),%ecx
c0035ff8:	89 08                	mov    %ecx,(%eax)
c0035ffa:	89 02                	mov    %eax,(%edx)
c0035ffc:	5d                   	pop    %ebp
c0035ffd:	c3                   	ret    
c0035ffe:	66 90                	xchg   %ax,%ax

c0036000 <__multadd>:
c0036000:	55                   	push   %ebp
c0036001:	89 e5                	mov    %esp,%ebp
c0036003:	57                   	push   %edi
c0036004:	56                   	push   %esi
c0036005:	53                   	push   %ebx
c0036006:	83 ec 2c             	sub    $0x2c,%esp
c0036009:	8b 45 0c             	mov    0xc(%ebp),%eax
c003600c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c003600f:	8b 40 10             	mov    0x10(%eax),%eax
c0036012:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036015:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036018:	8d 78 14             	lea    0x14(%eax),%edi
c003601b:	31 c0                	xor    %eax,%eax
c003601d:	8d 76 00             	lea    0x0(%esi),%esi
c0036020:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0036023:	0f b7 d1             	movzwl %cx,%edx
c0036026:	0f af 55 10          	imul   0x10(%ebp),%edx
c003602a:	c1 e9 10             	shr    $0x10,%ecx
c003602d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0036031:	01 da                	add    %ebx,%edx
c0036033:	89 d3                	mov    %edx,%ebx
c0036035:	0f b7 d2             	movzwl %dx,%edx
c0036038:	c1 eb 10             	shr    $0x10,%ebx
c003603b:	01 d9                	add    %ebx,%ecx
c003603d:	89 ce                	mov    %ecx,%esi
c003603f:	c1 e1 10             	shl    $0x10,%ecx
c0036042:	01 d1                	add    %edx,%ecx
c0036044:	c1 ee 10             	shr    $0x10,%esi
c0036047:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c003604a:	83 c0 01             	add    $0x1,%eax
c003604d:	89 f3                	mov    %esi,%ebx
c003604f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036052:	7f cc                	jg     c0036020 <__multadd+0x20>
c0036054:	85 f6                	test   %esi,%esi
c0036056:	74 1b                	je     c0036073 <__multadd+0x73>
c0036058:	8b 45 0c             	mov    0xc(%ebp),%eax
c003605b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c003605e:	3b 78 08             	cmp    0x8(%eax),%edi
c0036061:	7d 1d                	jge    c0036080 <__multadd+0x80>
c0036063:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036066:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0036069:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c003606d:	83 c0 01             	add    $0x1,%eax
c0036070:	89 47 10             	mov    %eax,0x10(%edi)
c0036073:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036076:	83 c4 2c             	add    $0x2c,%esp
c0036079:	5b                   	pop    %ebx
c003607a:	5e                   	pop    %esi
c003607b:	5f                   	pop    %edi
c003607c:	5d                   	pop    %ebp
c003607d:	c3                   	ret    
c003607e:	66 90                	xchg   %ax,%ax
c0036080:	8b 40 04             	mov    0x4(%eax),%eax
c0036083:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036086:	83 c0 01             	add    $0x1,%eax
c0036089:	89 44 24 04          	mov    %eax,0x4(%esp)
c003608d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036090:	89 04 24             	mov    %eax,(%esp)
c0036093:	e8 a8 fe ff ff       	call   c0035f40 <_Balloc>
c0036098:	89 c3                	mov    %eax,%ebx
c003609a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003609d:	8b 40 10             	mov    0x10(%eax),%eax
c00360a0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00360a7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00360ab:	8b 45 0c             	mov    0xc(%ebp),%eax
c00360ae:	83 c0 0c             	add    $0xc,%eax
c00360b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00360b5:	8d 43 0c             	lea    0xc(%ebx),%eax
c00360b8:	89 04 24             	mov    %eax,(%esp)
c00360bb:	e8 54 c0 ff ff       	call   c0032114 <memcpy>
c00360c0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00360c3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00360c6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00360c9:	8b 50 04             	mov    0x4(%eax),%edx
c00360cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00360cf:	8b 40 4c             	mov    0x4c(%eax),%eax
c00360d2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00360d5:	8b 10                	mov    (%eax),%edx
c00360d7:	89 17                	mov    %edx,(%edi)
c00360d9:	89 38                	mov    %edi,(%eax)
c00360db:	eb 86                	jmp    c0036063 <__multadd+0x63>
c00360dd:	8d 76 00             	lea    0x0(%esi),%esi

c00360e0 <__s2b>:
c00360e0:	55                   	push   %ebp
c00360e1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c00360e6:	89 e5                	mov    %esp,%ebp
c00360e8:	57                   	push   %edi
c00360e9:	56                   	push   %esi
c00360ea:	53                   	push   %ebx
c00360eb:	83 ec 2c             	sub    $0x2c,%esp
c00360ee:	8b 45 14             	mov    0x14(%ebp),%eax
c00360f1:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00360f4:	8b 75 0c             	mov    0xc(%ebp),%esi
c00360f7:	8d 48 08             	lea    0x8(%eax),%ecx
c00360fa:	89 c8                	mov    %ecx,%eax
c00360fc:	f7 ea                	imul   %edx
c00360fe:	c1 f9 1f             	sar    $0x1f,%ecx
c0036101:	d1 fa                	sar    %edx
c0036103:	29 ca                	sub    %ecx,%edx
c0036105:	83 fa 01             	cmp    $0x1,%edx
c0036108:	0f 8e be 00 00 00    	jle    c00361cc <__s2b+0xec>
c003610e:	b8 01 00 00 00       	mov    $0x1,%eax
c0036113:	31 c9                	xor    %ecx,%ecx
c0036115:	8d 76 00             	lea    0x0(%esi),%esi
c0036118:	01 c0                	add    %eax,%eax
c003611a:	83 c1 01             	add    $0x1,%ecx
c003611d:	39 c2                	cmp    %eax,%edx
c003611f:	7f f7                	jg     c0036118 <__s2b+0x38>
c0036121:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036125:	89 1c 24             	mov    %ebx,(%esp)
c0036128:	e8 13 fe ff ff       	call   c0035f40 <_Balloc>
c003612d:	8b 55 18             	mov    0x18(%ebp),%edx
c0036130:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0036134:	89 50 14             	mov    %edx,0x14(%eax)
c0036137:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c003613e:	0f 8e 7c 00 00 00    	jle    c00361c0 <__s2b+0xe0>
c0036144:	8d 4e 09             	lea    0x9(%esi),%ecx
c0036147:	03 75 10             	add    0x10(%ebp),%esi
c003614a:	89 cf                	mov    %ecx,%edi
c003614c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003614f:	90                   	nop
c0036150:	83 c7 01             	add    $0x1,%edi
c0036153:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0036157:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003615e:	00 
c003615f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036163:	89 1c 24             	mov    %ebx,(%esp)
c0036166:	83 ea 30             	sub    $0x30,%edx
c0036169:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003616d:	e8 8e fe ff ff       	call   c0036000 <__multadd>
c0036172:	39 f7                	cmp    %esi,%edi
c0036174:	75 da                	jne    c0036150 <__s2b+0x70>
c0036176:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036179:	8b 7d 10             	mov    0x10(%ebp),%edi
c003617c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0036180:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036183:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0036186:	7e 2e                	jle    c00361b6 <__s2b+0xd6>
c0036188:	8b 7d 14             	mov    0x14(%ebp),%edi
c003618b:	29 cf                	sub    %ecx,%edi
c003618d:	01 f7                	add    %esi,%edi
c003618f:	90                   	nop
c0036190:	83 c6 01             	add    $0x1,%esi
c0036193:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0036197:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003619e:	00 
c003619f:	89 44 24 04          	mov    %eax,0x4(%esp)
c00361a3:	89 1c 24             	mov    %ebx,(%esp)
c00361a6:	83 ea 30             	sub    $0x30,%edx
c00361a9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00361ad:	e8 4e fe ff ff       	call   c0036000 <__multadd>
c00361b2:	39 fe                	cmp    %edi,%esi
c00361b4:	75 da                	jne    c0036190 <__s2b+0xb0>
c00361b6:	83 c4 2c             	add    $0x2c,%esp
c00361b9:	5b                   	pop    %ebx
c00361ba:	5e                   	pop    %esi
c00361bb:	5f                   	pop    %edi
c00361bc:	5d                   	pop    %ebp
c00361bd:	c3                   	ret    
c00361be:	66 90                	xchg   %ax,%ax
c00361c0:	83 c6 0a             	add    $0xa,%esi
c00361c3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c00361ca:	eb b4                	jmp    c0036180 <__s2b+0xa0>
c00361cc:	31 c9                	xor    %ecx,%ecx
c00361ce:	e9 4e ff ff ff       	jmp    c0036121 <__s2b+0x41>
c00361d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00361e0 <__hi0bits>:
c00361e0:	55                   	push   %ebp
c00361e1:	31 c9                	xor    %ecx,%ecx
c00361e3:	89 e5                	mov    %esp,%ebp
c00361e5:	8b 55 08             	mov    0x8(%ebp),%edx
c00361e8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c00361ee:	75 05                	jne    c00361f5 <__hi0bits+0x15>
c00361f0:	c1 e2 10             	shl    $0x10,%edx
c00361f3:	b1 10                	mov    $0x10,%cl
c00361f5:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c00361fb:	75 06                	jne    c0036203 <__hi0bits+0x23>
c00361fd:	83 c1 08             	add    $0x8,%ecx
c0036200:	c1 e2 08             	shl    $0x8,%edx
c0036203:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0036209:	75 06                	jne    c0036211 <__hi0bits+0x31>
c003620b:	83 c1 04             	add    $0x4,%ecx
c003620e:	c1 e2 04             	shl    $0x4,%edx
c0036211:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0036217:	75 06                	jne    c003621f <__hi0bits+0x3f>
c0036219:	83 c1 02             	add    $0x2,%ecx
c003621c:	c1 e2 02             	shl    $0x2,%edx
c003621f:	85 d2                	test   %edx,%edx
c0036221:	89 c8                	mov    %ecx,%eax
c0036223:	78 0d                	js     c0036232 <__hi0bits+0x52>
c0036225:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c003622b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036230:	75 06                	jne    c0036238 <__hi0bits+0x58>
c0036232:	5d                   	pop    %ebp
c0036233:	c3                   	ret    
c0036234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036238:	8d 41 01             	lea    0x1(%ecx),%eax
c003623b:	5d                   	pop    %ebp
c003623c:	c3                   	ret    
c003623d:	8d 76 00             	lea    0x0(%esi),%esi

c0036240 <__lo0bits>:
c0036240:	55                   	push   %ebp
c0036241:	89 e5                	mov    %esp,%ebp
c0036243:	53                   	push   %ebx
c0036244:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036247:	8b 13                	mov    (%ebx),%edx
c0036249:	f6 c2 07             	test   $0x7,%dl
c003624c:	74 1a                	je     c0036268 <__lo0bits+0x28>
c003624e:	31 c0                	xor    %eax,%eax
c0036250:	f6 c2 01             	test   $0x1,%dl
c0036253:	75 0f                	jne    c0036264 <__lo0bits+0x24>
c0036255:	f6 c2 02             	test   $0x2,%dl
c0036258:	75 56                	jne    c00362b0 <__lo0bits+0x70>
c003625a:	c1 ea 02             	shr    $0x2,%edx
c003625d:	b8 02 00 00 00       	mov    $0x2,%eax
c0036262:	89 13                	mov    %edx,(%ebx)
c0036264:	5b                   	pop    %ebx
c0036265:	5d                   	pop    %ebp
c0036266:	c3                   	ret    
c0036267:	90                   	nop
c0036268:	31 c9                	xor    %ecx,%ecx
c003626a:	66 85 d2             	test   %dx,%dx
c003626d:	75 05                	jne    c0036274 <__lo0bits+0x34>
c003626f:	c1 ea 10             	shr    $0x10,%edx
c0036272:	b1 10                	mov    $0x10,%cl
c0036274:	84 d2                	test   %dl,%dl
c0036276:	75 06                	jne    c003627e <__lo0bits+0x3e>
c0036278:	83 c1 08             	add    $0x8,%ecx
c003627b:	c1 ea 08             	shr    $0x8,%edx
c003627e:	f6 c2 0f             	test   $0xf,%dl
c0036281:	75 06                	jne    c0036289 <__lo0bits+0x49>
c0036283:	83 c1 04             	add    $0x4,%ecx
c0036286:	c1 ea 04             	shr    $0x4,%edx
c0036289:	f6 c2 03             	test   $0x3,%dl
c003628c:	75 06                	jne    c0036294 <__lo0bits+0x54>
c003628e:	83 c1 02             	add    $0x2,%ecx
c0036291:	c1 ea 02             	shr    $0x2,%edx
c0036294:	f6 c2 01             	test   $0x1,%dl
c0036297:	75 0c                	jne    c00362a5 <__lo0bits+0x65>
c0036299:	d1 ea                	shr    %edx
c003629b:	b8 20 00 00 00       	mov    $0x20,%eax
c00362a0:	74 c2                	je     c0036264 <__lo0bits+0x24>
c00362a2:	83 c1 01             	add    $0x1,%ecx
c00362a5:	89 13                	mov    %edx,(%ebx)
c00362a7:	89 c8                	mov    %ecx,%eax
c00362a9:	5b                   	pop    %ebx
c00362aa:	5d                   	pop    %ebp
c00362ab:	c3                   	ret    
c00362ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362b0:	d1 ea                	shr    %edx
c00362b2:	b0 01                	mov    $0x1,%al
c00362b4:	89 13                	mov    %edx,(%ebx)
c00362b6:	5b                   	pop    %ebx
c00362b7:	5d                   	pop    %ebp
c00362b8:	c3                   	ret    
c00362b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00362c0 <__i2b>:
c00362c0:	55                   	push   %ebp
c00362c1:	89 e5                	mov    %esp,%ebp
c00362c3:	83 ec 18             	sub    $0x18,%esp
c00362c6:	8b 45 08             	mov    0x8(%ebp),%eax
c00362c9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00362d0:	00 
c00362d1:	89 04 24             	mov    %eax,(%esp)
c00362d4:	e8 67 fc ff ff       	call   c0035f40 <_Balloc>
c00362d9:	8b 55 0c             	mov    0xc(%ebp),%edx
c00362dc:	89 50 14             	mov    %edx,0x14(%eax)
c00362df:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00362e6:	c9                   	leave  
c00362e7:	c3                   	ret    
c00362e8:	90                   	nop
c00362e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00362f0 <__multiply>:
c00362f0:	55                   	push   %ebp
c00362f1:	89 e5                	mov    %esp,%ebp
c00362f3:	57                   	push   %edi
c00362f4:	56                   	push   %esi
c00362f5:	53                   	push   %ebx
c00362f6:	83 ec 3c             	sub    $0x3c,%esp
c00362f9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00362fc:	8b 45 10             	mov    0x10(%ebp),%eax
c00362ff:	8b 7e 10             	mov    0x10(%esi),%edi
c0036302:	8b 58 10             	mov    0x10(%eax),%ebx
c0036305:	39 df                	cmp    %ebx,%edi
c0036307:	7d 0e                	jge    c0036317 <__multiply+0x27>
c0036309:	89 f8                	mov    %edi,%eax
c003630b:	89 df                	mov    %ebx,%edi
c003630d:	89 c3                	mov    %eax,%ebx
c003630f:	89 f0                	mov    %esi,%eax
c0036311:	8b 75 10             	mov    0x10(%ebp),%esi
c0036314:	89 45 10             	mov    %eax,0x10(%ebp)
c0036317:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003631a:	3b 46 08             	cmp    0x8(%esi),%eax
c003631d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036320:	0f 9f c0             	setg   %al
c0036323:	0f b6 c0             	movzbl %al,%eax
c0036326:	03 46 04             	add    0x4(%esi),%eax
c0036329:	89 44 24 04          	mov    %eax,0x4(%esp)
c003632d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036330:	89 04 24             	mov    %eax,(%esp)
c0036333:	e8 08 fc ff ff       	call   c0035f40 <_Balloc>
c0036338:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003633b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003633e:	8d 40 14             	lea    0x14(%eax),%eax
c0036341:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036344:	89 d1                	mov    %edx,%ecx
c0036346:	39 c8                	cmp    %ecx,%eax
c0036348:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003634b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003634e:	73 15                	jae    c0036365 <__multiply+0x75>
c0036350:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0036353:	90                   	nop
c0036354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036358:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003635e:	83 c0 04             	add    $0x4,%eax
c0036361:	39 c2                	cmp    %eax,%edx
c0036363:	77 f3                	ja     c0036358 <__multiply+0x68>
c0036365:	8d 46 14             	lea    0x14(%esi),%eax
c0036368:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003636b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003636e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036371:	8b 45 10             	mov    0x10(%ebp),%eax
c0036374:	83 c0 14             	add    $0x14,%eax
c0036377:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003637a:	39 f8                	cmp    %edi,%eax
c003637c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003637f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036382:	0f 83 e8 00 00 00    	jae    c0036470 <__multiply+0x180>
c0036388:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003638b:	8b 00                	mov    (%eax),%eax
c003638d:	0f b7 f8             	movzwl %ax,%edi
c0036390:	85 ff                	test   %edi,%edi
c0036392:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036395:	74 5a                	je     c00363f1 <__multiply+0x101>
c0036397:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003639a:	31 db                	xor    %ebx,%ebx
c003639c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003639f:	eb 09                	jmp    c00363aa <__multiply+0xba>
c00363a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00363a8:	89 fa                	mov    %edi,%edx
c00363aa:	8b 0e                	mov    (%esi),%ecx
c00363ac:	83 c6 04             	add    $0x4,%esi
c00363af:	0f b7 3a             	movzwl (%edx),%edi
c00363b2:	0f b7 c1             	movzwl %cx,%eax
c00363b5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c00363b9:	c1 e9 10             	shr    $0x10,%ecx
c00363bc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00363c0:	01 f8                	add    %edi,%eax
c00363c2:	01 d8                	add    %ebx,%eax
c00363c4:	8b 1a                	mov    (%edx),%ebx
c00363c6:	8d 7a 04             	lea    0x4(%edx),%edi
c00363c9:	c1 eb 10             	shr    $0x10,%ebx
c00363cc:	01 d9                	add    %ebx,%ecx
c00363ce:	89 c3                	mov    %eax,%ebx
c00363d0:	c1 eb 10             	shr    $0x10,%ebx
c00363d3:	0f b7 c0             	movzwl %ax,%eax
c00363d6:	01 d9                	add    %ebx,%ecx
c00363d8:	89 cb                	mov    %ecx,%ebx
c00363da:	c1 e1 10             	shl    $0x10,%ecx
c00363dd:	09 c1                	or     %eax,%ecx
c00363df:	c1 eb 10             	shr    $0x10,%ebx
c00363e2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c00363e5:	89 0a                	mov    %ecx,(%edx)
c00363e7:	77 bf                	ja     c00363a8 <__multiply+0xb8>
c00363e9:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00363ec:	89 5a 04             	mov    %ebx,0x4(%edx)
c00363ef:	8b 00                	mov    (%eax),%eax
c00363f1:	c1 e8 10             	shr    $0x10,%eax
c00363f4:	85 c0                	test   %eax,%eax
c00363f6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00363f9:	74 61                	je     c003645c <__multiply+0x16c>
c00363fb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00363fe:	31 ff                	xor    %edi,%edi
c0036400:	89 fe                	mov    %edi,%esi
c0036402:	8b 10                	mov    (%eax),%edx
c0036404:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036407:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003640a:	89 d3                	mov    %edx,%ebx
c003640c:	eb 05                	jmp    c0036413 <__multiply+0x123>
c003640e:	66 90                	xchg   %ax,%ax
c0036410:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036413:	0f b7 08             	movzwl (%eax),%ecx
c0036416:	c1 eb 10             	shr    $0x10,%ebx
c0036419:	0f b7 d2             	movzwl %dx,%edx
c003641c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036420:	83 c0 04             	add    $0x4,%eax
c0036423:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036426:	01 f7                	add    %esi,%edi
c0036428:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003642b:	89 fb                	mov    %edi,%ebx
c003642d:	c1 e3 10             	shl    $0x10,%ebx
c0036430:	09 d3                	or     %edx,%ebx
c0036432:	89 1e                	mov    %ebx,(%esi)
c0036434:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036437:	8d 4e 04             	lea    0x4(%esi),%ecx
c003643a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003643e:	c1 ef 10             	shr    $0x10,%edi
c0036441:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036445:	0f b7 f3             	movzwl %bx,%esi
c0036448:	01 f2                	add    %esi,%edx
c003644a:	01 fa                	add    %edi,%edx
c003644c:	89 d6                	mov    %edx,%esi
c003644e:	c1 ee 10             	shr    $0x10,%esi
c0036451:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036454:	77 ba                	ja     c0036410 <__multiply+0x120>
c0036456:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036459:	89 50 04             	mov    %edx,0x4(%eax)
c003645c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036460:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036463:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036467:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003646a:	0f 87 18 ff ff ff    	ja     c0036388 <__multiply+0x98>
c0036470:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036473:	85 f6                	test   %esi,%esi
c0036475:	7e 29                	jle    c00364a0 <__multiply+0x1b0>
c0036477:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003647a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003647d:	85 db                	test   %ebx,%ebx
c003647f:	75 1f                	jne    c00364a0 <__multiply+0x1b0>
c0036481:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036484:	89 d0                	mov    %edx,%eax
c0036486:	c1 e0 02             	shl    $0x2,%eax
c0036489:	29 c7                	sub    %eax,%edi
c003648b:	89 f8                	mov    %edi,%eax
c003648d:	eb 09                	jmp    c0036498 <__multiply+0x1a8>
c003648f:	90                   	nop
c0036490:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036494:	85 c9                	test   %ecx,%ecx
c0036496:	75 05                	jne    c003649d <__multiply+0x1ad>
c0036498:	83 ea 01             	sub    $0x1,%edx
c003649b:	75 f3                	jne    c0036490 <__multiply+0x1a0>
c003649d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00364a0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00364a3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00364a6:	89 78 10             	mov    %edi,0x10(%eax)
c00364a9:	83 c4 3c             	add    $0x3c,%esp
c00364ac:	5b                   	pop    %ebx
c00364ad:	5e                   	pop    %esi
c00364ae:	5f                   	pop    %edi
c00364af:	5d                   	pop    %ebp
c00364b0:	c3                   	ret    
c00364b1:	eb 0d                	jmp    c00364c0 <__pow5mult>
c00364b3:	90                   	nop
c00364b4:	90                   	nop
c00364b5:	90                   	nop
c00364b6:	90                   	nop
c00364b7:	90                   	nop
c00364b8:	90                   	nop
c00364b9:	90                   	nop
c00364ba:	90                   	nop
c00364bb:	90                   	nop
c00364bc:	90                   	nop
c00364bd:	90                   	nop
c00364be:	90                   	nop
c00364bf:	90                   	nop

c00364c0 <__pow5mult>:
c00364c0:	55                   	push   %ebp
c00364c1:	89 e5                	mov    %esp,%ebp
c00364c3:	57                   	push   %edi
c00364c4:	56                   	push   %esi
c00364c5:	53                   	push   %ebx
c00364c6:	83 ec 2c             	sub    $0x2c,%esp
c00364c9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00364cc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00364cf:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00364d2:	89 d8                	mov    %ebx,%eax
c00364d4:	83 e0 03             	and    $0x3,%eax
c00364d7:	0f 85 a3 00 00 00    	jne    c0036580 <__pow5mult+0xc0>
c00364dd:	c1 fb 02             	sar    $0x2,%ebx
c00364e0:	85 db                	test   %ebx,%ebx
c00364e2:	74 5c                	je     c0036540 <__pow5mult+0x80>
c00364e4:	8b 71 48             	mov    0x48(%ecx),%esi
c00364e7:	85 f6                	test   %esi,%esi
c00364e9:	0f 84 bd 00 00 00    	je     c00365ac <__pow5mult+0xec>
c00364ef:	f6 c3 01             	test   $0x1,%bl
c00364f2:	75 15                	jne    c0036509 <__pow5mult+0x49>
c00364f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00364f8:	d1 fb                	sar    %ebx
c00364fa:	74 44                	je     c0036540 <__pow5mult+0x80>
c00364fc:	8b 06                	mov    (%esi),%eax
c00364fe:	85 c0                	test   %eax,%eax
c0036500:	74 4e                	je     c0036550 <__pow5mult+0x90>
c0036502:	89 c6                	mov    %eax,%esi
c0036504:	f6 c3 01             	test   $0x1,%bl
c0036507:	74 ef                	je     c00364f8 <__pow5mult+0x38>
c0036509:	89 0c 24             	mov    %ecx,(%esp)
c003650c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036510:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036514:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036517:	e8 d4 fd ff ff       	call   c00362f0 <__multiply>
c003651c:	85 ff                	test   %edi,%edi
c003651e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036521:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036524:	74 52                	je     c0036578 <__pow5mult+0xb8>
c0036526:	8b 57 04             	mov    0x4(%edi),%edx
c0036529:	d1 fb                	sar    %ebx
c003652b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003652e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036531:	8b 10                	mov    (%eax),%edx
c0036533:	89 17                	mov    %edx,(%edi)
c0036535:	89 38                	mov    %edi,(%eax)
c0036537:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003653a:	75 c0                	jne    c00364fc <__pow5mult+0x3c>
c003653c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036540:	83 c4 2c             	add    $0x2c,%esp
c0036543:	89 f8                	mov    %edi,%eax
c0036545:	5b                   	pop    %ebx
c0036546:	5e                   	pop    %esi
c0036547:	5f                   	pop    %edi
c0036548:	5d                   	pop    %ebp
c0036549:	c3                   	ret    
c003654a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036550:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036554:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036558:	89 0c 24             	mov    %ecx,(%esp)
c003655b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003655e:	e8 8d fd ff ff       	call   c00362f0 <__multiply>
c0036563:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036566:	89 06                	mov    %eax,(%esi)
c0036568:	89 c6                	mov    %eax,%esi
c003656a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036570:	eb 92                	jmp    c0036504 <__pow5mult+0x44>
c0036572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036578:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003657b:	e9 78 ff ff ff       	jmp    c00364f8 <__pow5mult+0x38>
c0036580:	8b 04 85 fc 91 03 c0 	mov    -0x3ffc6e04(,%eax,4),%eax
c0036587:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003658b:	89 0c 24             	mov    %ecx,(%esp)
c003658e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036595:	00 
c0036596:	89 44 24 08          	mov    %eax,0x8(%esp)
c003659a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003659d:	e8 5e fa ff ff       	call   c0036000 <__multadd>
c00365a2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00365a5:	89 c7                	mov    %eax,%edi
c00365a7:	e9 31 ff ff ff       	jmp    c00364dd <__pow5mult+0x1d>
c00365ac:	89 0c 24             	mov    %ecx,(%esp)
c00365af:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00365b6:	00 
c00365b7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00365ba:	e8 81 f9 ff ff       	call   c0035f40 <_Balloc>
c00365bf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00365c2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00365c9:	89 c6                	mov    %eax,%esi
c00365cb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00365d2:	89 41 48             	mov    %eax,0x48(%ecx)
c00365d5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00365db:	e9 0f ff ff ff       	jmp    c00364ef <__pow5mult+0x2f>

c00365e0 <__lshift>:
c00365e0:	55                   	push   %ebp
c00365e1:	89 e5                	mov    %esp,%ebp
c00365e3:	57                   	push   %edi
c00365e4:	56                   	push   %esi
c00365e5:	53                   	push   %ebx
c00365e6:	83 ec 2c             	sub    $0x2c,%esp
c00365e9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00365ec:	8b 75 10             	mov    0x10(%ebp),%esi
c00365ef:	89 c7                	mov    %eax,%edi
c00365f1:	8b 50 04             	mov    0x4(%eax),%edx
c00365f4:	8b 40 10             	mov    0x10(%eax),%eax
c00365f7:	89 f3                	mov    %esi,%ebx
c00365f9:	c1 fb 05             	sar    $0x5,%ebx
c00365fc:	01 d8                	add    %ebx,%eax
c00365fe:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036601:	83 c0 01             	add    $0x1,%eax
c0036604:	89 c1                	mov    %eax,%ecx
c0036606:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036609:	8b 47 08             	mov    0x8(%edi),%eax
c003660c:	39 c1                	cmp    %eax,%ecx
c003660e:	7e 09                	jle    c0036619 <__lshift+0x39>
c0036610:	01 c0                	add    %eax,%eax
c0036612:	83 c2 01             	add    $0x1,%edx
c0036615:	39 c1                	cmp    %eax,%ecx
c0036617:	7f f7                	jg     c0036610 <__lshift+0x30>
c0036619:	8b 45 08             	mov    0x8(%ebp),%eax
c003661c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036620:	89 04 24             	mov    %eax,(%esp)
c0036623:	e8 18 f9 ff ff       	call   c0035f40 <_Balloc>
c0036628:	85 db                	test   %ebx,%ebx
c003662a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003662d:	8d 50 14             	lea    0x14(%eax),%edx
c0036630:	7e 17                	jle    c0036649 <__lshift+0x69>
c0036632:	31 c0                	xor    %eax,%eax
c0036634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036638:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003663f:	83 c0 01             	add    $0x1,%eax
c0036642:	39 d8                	cmp    %ebx,%eax
c0036644:	75 f2                	jne    c0036638 <__lshift+0x58>
c0036646:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036649:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003664c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003664f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036652:	83 c0 14             	add    $0x14,%eax
c0036655:	83 e6 1f             	and    $0x1f,%esi
c0036658:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003665b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003665e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036661:	74 7d                	je     c00366e0 <__lshift+0x100>
c0036663:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003666a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003666d:	31 f6                	xor    %esi,%esi
c003666f:	eb 09                	jmp    c003667a <__lshift+0x9a>
c0036671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036678:	89 fa                	mov    %edi,%edx
c003667a:	8b 18                	mov    (%eax),%ebx
c003667c:	83 c0 04             	add    $0x4,%eax
c003667f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036683:	8d 7a 04             	lea    0x4(%edx),%edi
c0036686:	d3 e3                	shl    %cl,%ebx
c0036688:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003668c:	09 f3                	or     %esi,%ebx
c003668e:	89 1a                	mov    %ebx,(%edx)
c0036690:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036693:	d3 ee                	shr    %cl,%esi
c0036695:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036698:	77 de                	ja     c0036678 <__lshift+0x98>
c003669a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003669d:	89 72 04             	mov    %esi,0x4(%edx)
c00366a0:	83 c0 02             	add    $0x2,%eax
c00366a3:	85 f6                	test   %esi,%esi
c00366a5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00366a9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00366ac:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00366af:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00366b2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00366b5:	83 e8 01             	sub    $0x1,%eax
c00366b8:	89 47 10             	mov    %eax,0x10(%edi)
c00366bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00366be:	8b 50 04             	mov    0x4(%eax),%edx
c00366c1:	8b 45 08             	mov    0x8(%ebp),%eax
c00366c4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00366c7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00366ca:	8b 10                	mov    (%eax),%edx
c00366cc:	89 16                	mov    %edx,(%esi)
c00366ce:	89 30                	mov    %esi,(%eax)
c00366d0:	83 c4 2c             	add    $0x2c,%esp
c00366d3:	89 f8                	mov    %edi,%eax
c00366d5:	5b                   	pop    %ebx
c00366d6:	5e                   	pop    %esi
c00366d7:	5f                   	pop    %edi
c00366d8:	5d                   	pop    %ebp
c00366d9:	c3                   	ret    
c00366da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00366e0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00366e3:	90                   	nop
c00366e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00366e8:	83 c0 04             	add    $0x4,%eax
c00366eb:	8b 48 fc             	mov    -0x4(%eax),%ecx
c00366ee:	83 c2 04             	add    $0x4,%edx
c00366f1:	39 c3                	cmp    %eax,%ebx
c00366f3:	89 4a fc             	mov    %ecx,-0x4(%edx)
c00366f6:	77 f0                	ja     c00366e8 <__lshift+0x108>
c00366f8:	eb b2                	jmp    c00366ac <__lshift+0xcc>
c00366fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036700 <__mcmp>:
c0036700:	55                   	push   %ebp
c0036701:	89 e5                	mov    %esp,%ebp
c0036703:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036706:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036709:	53                   	push   %ebx
c003670a:	8b 41 10             	mov    0x10(%ecx),%eax
c003670d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036710:	29 d8                	sub    %ebx,%eax
c0036712:	85 c0                	test   %eax,%eax
c0036714:	75 27                	jne    c003673d <__mcmp+0x3d>
c0036716:	c1 e3 02             	shl    $0x2,%ebx
c0036719:	83 c1 14             	add    $0x14,%ecx
c003671c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003671f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036723:	eb 07                	jmp    c003672c <__mcmp+0x2c>
c0036725:	8d 76 00             	lea    0x0(%esi),%esi
c0036728:	39 c1                	cmp    %eax,%ecx
c003672a:	73 14                	jae    c0036740 <__mcmp+0x40>
c003672c:	83 ea 04             	sub    $0x4,%edx
c003672f:	83 e8 04             	sub    $0x4,%eax
c0036732:	8b 1a                	mov    (%edx),%ebx
c0036734:	39 18                	cmp    %ebx,(%eax)
c0036736:	74 f0                	je     c0036728 <__mcmp+0x28>
c0036738:	19 c0                	sbb    %eax,%eax
c003673a:	83 c8 01             	or     $0x1,%eax
c003673d:	5b                   	pop    %ebx
c003673e:	5d                   	pop    %ebp
c003673f:	c3                   	ret    
c0036740:	31 c0                	xor    %eax,%eax
c0036742:	5b                   	pop    %ebx
c0036743:	5d                   	pop    %ebp
c0036744:	c3                   	ret    
c0036745:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036750 <__mdiff>:
c0036750:	55                   	push   %ebp
c0036751:	89 e5                	mov    %esp,%ebp
c0036753:	57                   	push   %edi
c0036754:	56                   	push   %esi
c0036755:	53                   	push   %ebx
c0036756:	83 ec 2c             	sub    $0x2c,%esp
c0036759:	8b 75 0c             	mov    0xc(%ebp),%esi
c003675c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003675f:	89 34 24             	mov    %esi,(%esp)
c0036762:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036766:	e8 95 ff ff ff       	call   c0036700 <__mcmp>
c003676b:	85 c0                	test   %eax,%eax
c003676d:	0f 84 25 01 00 00    	je     c0036898 <__mdiff+0x148>
c0036773:	0f 88 0f 01 00 00    	js     c0036888 <__mdiff+0x138>
c0036779:	31 ff                	xor    %edi,%edi
c003677b:	8b 46 04             	mov    0x4(%esi),%eax
c003677e:	83 c6 14             	add    $0x14,%esi
c0036781:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036785:	8b 45 08             	mov    0x8(%ebp),%eax
c0036788:	89 04 24             	mov    %eax,(%esp)
c003678b:	e8 b0 f7 ff ff       	call   c0035f40 <_Balloc>
c0036790:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036793:	89 c2                	mov    %eax,%edx
c0036795:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036798:	89 78 0c             	mov    %edi,0xc(%eax)
c003679b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003679e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00367a1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00367a4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00367a7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00367aa:	8b 43 10             	mov    0x10(%ebx),%eax
c00367ad:	31 db                	xor    %ebx,%ebx
c00367af:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00367b2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00367b5:	89 d0                	mov    %edx,%eax
c00367b7:	83 c0 14             	add    $0x14,%eax
c00367ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00367c0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00367c3:	83 c0 04             	add    $0x4,%eax
c00367c6:	83 c1 04             	add    $0x4,%ecx
c00367c9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00367cd:	8b 3e                	mov    (%esi),%edi
c00367cf:	8b 71 fc             	mov    -0x4(%ecx),%esi
c00367d2:	0f b7 d7             	movzwl %di,%edx
c00367d5:	01 da                	add    %ebx,%edx
c00367d7:	0f b7 de             	movzwl %si,%ebx
c00367da:	29 da                	sub    %ebx,%edx
c00367dc:	c1 ef 10             	shr    $0x10,%edi
c00367df:	89 d3                	mov    %edx,%ebx
c00367e1:	c1 ee 10             	shr    $0x10,%esi
c00367e4:	0f b7 d2             	movzwl %dx,%edx
c00367e7:	c1 fb 10             	sar    $0x10,%ebx
c00367ea:	29 f7                	sub    %esi,%edi
c00367ec:	01 df                	add    %ebx,%edi
c00367ee:	89 fb                	mov    %edi,%ebx
c00367f0:	c1 e7 10             	shl    $0x10,%edi
c00367f3:	09 d7                	or     %edx,%edi
c00367f5:	c1 fb 10             	sar    $0x10,%ebx
c00367f8:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c00367fb:	89 78 fc             	mov    %edi,-0x4(%eax)
c00367fe:	77 c0                	ja     c00367c0 <__mdiff+0x70>
c0036800:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036803:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036806:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036809:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003680c:	39 f1                	cmp    %esi,%ecx
c003680e:	76 3f                	jbe    c003684f <__mdiff+0xff>
c0036810:	8b 3e                	mov    (%esi),%edi
c0036812:	83 c6 04             	add    $0x4,%esi
c0036815:	83 c0 04             	add    $0x4,%eax
c0036818:	0f b7 d7             	movzwl %di,%edx
c003681b:	01 da                	add    %ebx,%edx
c003681d:	89 d3                	mov    %edx,%ebx
c003681f:	0f b7 d2             	movzwl %dx,%edx
c0036822:	c1 fb 10             	sar    $0x10,%ebx
c0036825:	c1 ef 10             	shr    $0x10,%edi
c0036828:	01 df                	add    %ebx,%edi
c003682a:	89 fb                	mov    %edi,%ebx
c003682c:	c1 e7 10             	shl    $0x10,%edi
c003682f:	09 d7                	or     %edx,%edi
c0036831:	c1 fb 10             	sar    $0x10,%ebx
c0036834:	39 f1                	cmp    %esi,%ecx
c0036836:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036839:	77 d5                	ja     c0036810 <__mdiff+0xc0>
c003683b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003683e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036841:	f7 d0                	not    %eax
c0036843:	01 c8                	add    %ecx,%eax
c0036845:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036848:	c1 e8 02             	shr    $0x2,%eax
c003684b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003684f:	85 ff                	test   %edi,%edi
c0036851:	75 23                	jne    c0036876 <__mdiff+0x126>
c0036853:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036856:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003685d:	29 d0                	sub    %edx,%eax
c003685f:	89 ca                	mov    %ecx,%edx
c0036861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036868:	83 ea 01             	sub    $0x1,%edx
c003686b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003686f:	85 c9                	test   %ecx,%ecx
c0036871:	74 f5                	je     c0036868 <__mdiff+0x118>
c0036873:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036876:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036879:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003687c:	89 48 10             	mov    %ecx,0x10(%eax)
c003687f:	83 c4 2c             	add    $0x2c,%esp
c0036882:	5b                   	pop    %ebx
c0036883:	5e                   	pop    %esi
c0036884:	5f                   	pop    %edi
c0036885:	5d                   	pop    %ebp
c0036886:	c3                   	ret    
c0036887:	90                   	nop
c0036888:	89 f0                	mov    %esi,%eax
c003688a:	bf 01 00 00 00       	mov    $0x1,%edi
c003688f:	89 de                	mov    %ebx,%esi
c0036891:	89 c3                	mov    %eax,%ebx
c0036893:	e9 e3 fe ff ff       	jmp    c003677b <__mdiff+0x2b>
c0036898:	8b 45 08             	mov    0x8(%ebp),%eax
c003689b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00368a2:	00 
c00368a3:	89 04 24             	mov    %eax,(%esp)
c00368a6:	e8 95 f6 ff ff       	call   c0035f40 <_Balloc>
c00368ab:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00368b2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00368b9:	83 c4 2c             	add    $0x2c,%esp
c00368bc:	5b                   	pop    %ebx
c00368bd:	5e                   	pop    %esi
c00368be:	5f                   	pop    %edi
c00368bf:	5d                   	pop    %ebp
c00368c0:	c3                   	ret    
c00368c1:	eb 0d                	jmp    c00368d0 <__ulp>
c00368c3:	90                   	nop
c00368c4:	90                   	nop
c00368c5:	90                   	nop
c00368c6:	90                   	nop
c00368c7:	90                   	nop
c00368c8:	90                   	nop
c00368c9:	90                   	nop
c00368ca:	90                   	nop
c00368cb:	90                   	nop
c00368cc:	90                   	nop
c00368cd:	90                   	nop
c00368ce:	90                   	nop
c00368cf:	90                   	nop

c00368d0 <__ulp>:
c00368d0:	55                   	push   %ebp
c00368d1:	89 e5                	mov    %esp,%ebp
c00368d3:	83 ec 08             	sub    $0x8,%esp
c00368d6:	dd 45 08             	fldl   0x8(%ebp)
c00368d9:	dd 5d f8             	fstpl  -0x8(%ebp)
c00368dc:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00368df:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c00368e5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c00368eb:	85 c9                	test   %ecx,%ecx
c00368ed:	7e 11                	jle    c0036900 <__ulp+0x30>
c00368ef:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c00368f2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00368f9:	dd 45 f8             	fldl   -0x8(%ebp)
c00368fc:	c9                   	leave  
c00368fd:	c3                   	ret    
c00368fe:	66 90                	xchg   %ax,%ax
c0036900:	f7 d9                	neg    %ecx
c0036902:	c1 f9 14             	sar    $0x14,%ecx
c0036905:	83 f9 13             	cmp    $0x13,%ecx
c0036908:	7e 26                	jle    c0036930 <__ulp+0x60>
c003690a:	83 f9 32             	cmp    $0x32,%ecx
c003690d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036912:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036919:	7f 0b                	jg     c0036926 <__ulp+0x56>
c003691b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036920:	29 ca                	sub    %ecx,%edx
c0036922:	89 d1                	mov    %edx,%ecx
c0036924:	d3 e0                	shl    %cl,%eax
c0036926:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036929:	dd 45 f8             	fldl   -0x8(%ebp)
c003692c:	c9                   	leave  
c003692d:	c3                   	ret    
c003692e:	66 90                	xchg   %ax,%ax
c0036930:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036935:	d3 f8                	sar    %cl,%eax
c0036937:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003693a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036941:	dd 45 f8             	fldl   -0x8(%ebp)
c0036944:	c9                   	leave  
c0036945:	c3                   	ret    
c0036946:	8d 76 00             	lea    0x0(%esi),%esi
c0036949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036950 <__b2d>:
c0036950:	55                   	push   %ebp
c0036951:	89 e5                	mov    %esp,%ebp
c0036953:	57                   	push   %edi
c0036954:	56                   	push   %esi
c0036955:	53                   	push   %ebx
c0036956:	83 ec 18             	sub    $0x18,%esp
c0036959:	8b 45 08             	mov    0x8(%ebp),%eax
c003695c:	8d 78 14             	lea    0x14(%eax),%edi
c003695f:	8b 40 10             	mov    0x10(%eax),%eax
c0036962:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036965:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036968:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003696b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003696e:	89 34 24             	mov    %esi,(%esp)
c0036971:	e8 6a f8 ff ff       	call   c00361e0 <__hi0bits>
c0036976:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036979:	ba 20 00 00 00       	mov    $0x20,%edx
c003697e:	29 c2                	sub    %eax,%edx
c0036980:	83 f8 0a             	cmp    $0xa,%eax
c0036983:	89 11                	mov    %edx,(%ecx)
c0036985:	7f 41                	jg     c00369c8 <__b2d+0x78>
c0036987:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003698c:	89 f2                	mov    %esi,%edx
c003698e:	29 c1                	sub    %eax,%ecx
c0036990:	d3 ea                	shr    %cl,%edx
c0036992:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036998:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003699b:	31 d2                	xor    %edx,%edx
c003699d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00369a0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00369a7:	73 05                	jae    c00369ae <__b2d+0x5e>
c00369a9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00369ac:	d3 ea                	shr    %cl,%edx
c00369ae:	8d 48 15             	lea    0x15(%eax),%ecx
c00369b1:	d3 e6                	shl    %cl,%esi
c00369b3:	09 f2                	or     %esi,%edx
c00369b5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00369b8:	dd 45 e8             	fldl   -0x18(%ebp)
c00369bb:	83 c4 18             	add    $0x18,%esp
c00369be:	5b                   	pop    %ebx
c00369bf:	5e                   	pop    %esi
c00369c0:	5f                   	pop    %edi
c00369c1:	5d                   	pop    %ebp
c00369c2:	c3                   	ret    
c00369c3:	90                   	nop
c00369c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369c8:	31 d2                	xor    %edx,%edx
c00369ca:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00369cd:	73 09                	jae    c00369d8 <__b2d+0x88>
c00369cf:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00369d2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c00369d5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00369d8:	89 c3                	mov    %eax,%ebx
c00369da:	83 eb 0b             	sub    $0xb,%ebx
c00369dd:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c00369e0:	74 4e                	je     c0036a30 <__b2d+0xe0>
c00369e2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00369e6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00369eb:	29 c3                	sub    %eax,%ebx
c00369ed:	89 d0                	mov    %edx,%eax
c00369ef:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00369f6:	d3 e6                	shl    %cl,%esi
c00369f8:	89 d9                	mov    %ebx,%ecx
c00369fa:	d3 e8                	shr    %cl,%eax
c00369fc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00369ff:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036a05:	09 c6                	or     %eax,%esi
c0036a07:	31 c0                	xor    %eax,%eax
c0036a09:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036a0c:	39 f9                	cmp    %edi,%ecx
c0036a0e:	76 07                	jbe    c0036a17 <__b2d+0xc7>
c0036a10:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036a13:	89 d9                	mov    %ebx,%ecx
c0036a15:	d3 e8                	shr    %cl,%eax
c0036a17:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036a1b:	d3 e2                	shl    %cl,%edx
c0036a1d:	09 d0                	or     %edx,%eax
c0036a1f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036a22:	dd 45 e8             	fldl   -0x18(%ebp)
c0036a25:	83 c4 18             	add    $0x18,%esp
c0036a28:	5b                   	pop    %ebx
c0036a29:	5e                   	pop    %esi
c0036a2a:	5f                   	pop    %edi
c0036a2b:	5d                   	pop    %ebp
c0036a2c:	c3                   	ret    
c0036a2d:	8d 76 00             	lea    0x0(%esi),%esi
c0036a30:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036a36:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036a39:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036a3c:	dd 45 e8             	fldl   -0x18(%ebp)
c0036a3f:	83 c4 18             	add    $0x18,%esp
c0036a42:	5b                   	pop    %ebx
c0036a43:	5e                   	pop    %esi
c0036a44:	5f                   	pop    %edi
c0036a45:	5d                   	pop    %ebp
c0036a46:	c3                   	ret    
c0036a47:	89 f6                	mov    %esi,%esi
c0036a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036a50 <__d2b>:
c0036a50:	55                   	push   %ebp
c0036a51:	89 e5                	mov    %esp,%ebp
c0036a53:	57                   	push   %edi
c0036a54:	56                   	push   %esi
c0036a55:	53                   	push   %ebx
c0036a56:	83 ec 2c             	sub    $0x2c,%esp
c0036a59:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a5c:	dd 45 0c             	fldl   0xc(%ebp)
c0036a5f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036a66:	00 
c0036a67:	dd 5d d0             	fstpl  -0x30(%ebp)
c0036a6a:	89 04 24             	mov    %eax,(%esp)
c0036a6d:	e8 ce f4 ff ff       	call   c0035f40 <_Balloc>
c0036a72:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036a75:	89 c6                	mov    %eax,%esi
c0036a77:	89 d8                	mov    %ebx,%eax
c0036a79:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c0036a7f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036a84:	c1 eb 14             	shr    $0x14,%ebx
c0036a87:	85 db                	test   %ebx,%ebx
c0036a89:	74 05                	je     c0036a90 <__d2b+0x40>
c0036a8b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036a90:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036a93:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036a96:	85 c0                	test   %eax,%eax
c0036a98:	74 56                	je     c0036af0 <__d2b+0xa0>
c0036a9a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036a9d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036aa0:	89 04 24             	mov    %eax,(%esp)
c0036aa3:	e8 98 f7 ff ff       	call   c0036240 <__lo0bits>
c0036aa8:	85 c0                	test   %eax,%eax
c0036aaa:	0f 85 90 00 00 00    	jne    c0036b40 <__d2b+0xf0>
c0036ab0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036ab3:	89 56 14             	mov    %edx,0x14(%esi)
c0036ab6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036ab9:	83 fa 01             	cmp    $0x1,%edx
c0036abc:	19 ff                	sbb    %edi,%edi
c0036abe:	83 c7 02             	add    $0x2,%edi
c0036ac1:	85 db                	test   %ebx,%ebx
c0036ac3:	89 56 18             	mov    %edx,0x18(%esi)
c0036ac6:	89 7e 10             	mov    %edi,0x10(%esi)
c0036ac9:	74 49                	je     c0036b14 <__d2b+0xc4>
c0036acb:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036ace:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036ad5:	89 11                	mov    %edx,(%ecx)
c0036ad7:	ba 35 00 00 00       	mov    $0x35,%edx
c0036adc:	29 c2                	sub    %eax,%edx
c0036ade:	8b 45 18             	mov    0x18(%ebp),%eax
c0036ae1:	89 10                	mov    %edx,(%eax)
c0036ae3:	83 c4 2c             	add    $0x2c,%esp
c0036ae6:	89 f0                	mov    %esi,%eax
c0036ae8:	5b                   	pop    %ebx
c0036ae9:	5e                   	pop    %esi
c0036aea:	5f                   	pop    %edi
c0036aeb:	5d                   	pop    %ebp
c0036aec:	c3                   	ret    
c0036aed:	8d 76 00             	lea    0x0(%esi),%esi
c0036af0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036af3:	bf 01 00 00 00       	mov    $0x1,%edi
c0036af8:	89 04 24             	mov    %eax,(%esp)
c0036afb:	e8 40 f7 ff ff       	call   c0036240 <__lo0bits>
c0036b00:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036b03:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c0036b0a:	89 56 14             	mov    %edx,0x14(%esi)
c0036b0d:	83 c0 20             	add    $0x20,%eax
c0036b10:	85 db                	test   %ebx,%ebx
c0036b12:	75 b7                	jne    c0036acb <__d2b+0x7b>
c0036b14:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036b17:	2d 32 04 00 00       	sub    $0x432,%eax
c0036b1c:	89 01                	mov    %eax,(%ecx)
c0036b1e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036b22:	c1 e7 05             	shl    $0x5,%edi
c0036b25:	89 04 24             	mov    %eax,(%esp)
c0036b28:	e8 b3 f6 ff ff       	call   c00361e0 <__hi0bits>
c0036b2d:	29 c7                	sub    %eax,%edi
c0036b2f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036b32:	89 38                	mov    %edi,(%eax)
c0036b34:	83 c4 2c             	add    $0x2c,%esp
c0036b37:	89 f0                	mov    %esi,%eax
c0036b39:	5b                   	pop    %ebx
c0036b3a:	5e                   	pop    %esi
c0036b3b:	5f                   	pop    %edi
c0036b3c:	5d                   	pop    %ebp
c0036b3d:	c3                   	ret    
c0036b3e:	66 90                	xchg   %ax,%ax
c0036b40:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036b43:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036b48:	29 c1                	sub    %eax,%ecx
c0036b4a:	89 d7                	mov    %edx,%edi
c0036b4c:	d3 e7                	shl    %cl,%edi
c0036b4e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036b51:	09 f9                	or     %edi,%ecx
c0036b53:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036b56:	89 c1                	mov    %eax,%ecx
c0036b58:	d3 ea                	shr    %cl,%edx
c0036b5a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b5d:	e9 57 ff ff ff       	jmp    c0036ab9 <__d2b+0x69>
c0036b62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036b69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036b70 <__ratio>:
c0036b70:	55                   	push   %ebp
c0036b71:	89 e5                	mov    %esp,%ebp
c0036b73:	56                   	push   %esi
c0036b74:	53                   	push   %ebx
c0036b75:	83 ec 30             	sub    $0x30,%esp
c0036b78:	8b 75 08             	mov    0x8(%ebp),%esi
c0036b7b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0036b7e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b81:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b85:	89 34 24             	mov    %esi,(%esp)
c0036b88:	e8 c3 fd ff ff       	call   c0036950 <__b2d>
c0036b8d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036b90:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b94:	89 1c 24             	mov    %ebx,(%esp)
c0036b97:	dd 55 e0             	fstl   -0x20(%ebp)
c0036b9a:	dd 5d d8             	fstpl  -0x28(%ebp)
c0036b9d:	e8 ae fd ff ff       	call   c0036950 <__b2d>
c0036ba2:	8b 46 10             	mov    0x10(%esi),%eax
c0036ba5:	2b 43 10             	sub    0x10(%ebx),%eax
c0036ba8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036bab:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0036bae:	c1 e0 05             	shl    $0x5,%eax
c0036bb1:	01 d0                	add    %edx,%eax
c0036bb3:	dd 55 d0             	fstl   -0x30(%ebp)
c0036bb6:	85 c0                	test   %eax,%eax
c0036bb8:	dd 45 d8             	fldl   -0x28(%ebp)
c0036bbb:	7e 1b                	jle    c0036bd8 <__ratio+0x68>
c0036bbd:	dd d8                	fstp   %st(0)
c0036bbf:	c1 e0 14             	shl    $0x14,%eax
c0036bc2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036bc5:	dd 45 e0             	fldl   -0x20(%ebp)
c0036bc8:	83 c4 30             	add    $0x30,%esp
c0036bcb:	5b                   	pop    %ebx
c0036bcc:	de f1                	fdivp  %st,%st(1)
c0036bce:	5e                   	pop    %esi
c0036bcf:	5d                   	pop    %ebp
c0036bd0:	c3                   	ret    
c0036bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036bd8:	dd d9                	fstp   %st(1)
c0036bda:	c1 e0 14             	shl    $0x14,%eax
c0036bdd:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036be0:	dd 45 d0             	fldl   -0x30(%ebp)
c0036be3:	83 c4 30             	add    $0x30,%esp
c0036be6:	5b                   	pop    %ebx
c0036be7:	de f9                	fdivrp %st,%st(1)
c0036be9:	5e                   	pop    %esi
c0036bea:	5d                   	pop    %ebp
c0036beb:	c3                   	ret    
c0036bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036bf0 <_mprec_log10>:
c0036bf0:	55                   	push   %ebp
c0036bf1:	89 e5                	mov    %esp,%ebp
c0036bf3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bf6:	83 f8 17             	cmp    $0x17,%eax
c0036bf9:	7e 1d                	jle    c0036c18 <_mprec_log10+0x28>
c0036bfb:	d9 e8                	fld1   
c0036bfd:	d9 05 c4 91 03 c0    	flds   0xc00391c4
c0036c03:	90                   	nop
c0036c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c08:	83 e8 01             	sub    $0x1,%eax
c0036c0b:	dc c9                	fmul   %st,%st(1)
c0036c0d:	75 f9                	jne    c0036c08 <_mprec_log10+0x18>
c0036c0f:	dd d8                	fstp   %st(0)
c0036c11:	5d                   	pop    %ebp
c0036c12:	c3                   	ret    
c0036c13:	90                   	nop
c0036c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c18:	dd 04 c5 a0 92 03 c0 	fldl   -0x3ffc6d60(,%eax,8)
c0036c1f:	5d                   	pop    %ebp
c0036c20:	c3                   	ret    
c0036c21:	eb 0d                	jmp    c0036c30 <__copybits>
c0036c23:	90                   	nop
c0036c24:	90                   	nop
c0036c25:	90                   	nop
c0036c26:	90                   	nop
c0036c27:	90                   	nop
c0036c28:	90                   	nop
c0036c29:	90                   	nop
c0036c2a:	90                   	nop
c0036c2b:	90                   	nop
c0036c2c:	90                   	nop
c0036c2d:	90                   	nop
c0036c2e:	90                   	nop
c0036c2f:	90                   	nop

c0036c30 <__copybits>:
c0036c30:	55                   	push   %ebp
c0036c31:	89 e5                	mov    %esp,%ebp
c0036c33:	57                   	push   %edi
c0036c34:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036c37:	56                   	push   %esi
c0036c38:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036c3b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c3e:	53                   	push   %ebx
c0036c3f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036c42:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036c45:	c1 fa 05             	sar    $0x5,%edx
c0036c48:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c0036c4c:	8d 57 14             	lea    0x14(%edi),%edx
c0036c4f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036c52:	39 da                	cmp    %ebx,%edx
c0036c54:	73 34                	jae    c0036c8a <__copybits+0x5a>
c0036c56:	89 c1                	mov    %eax,%ecx
c0036c58:	83 c2 04             	add    $0x4,%edx
c0036c5b:	8b 42 fc             	mov    -0x4(%edx),%eax
c0036c5e:	83 c1 04             	add    $0x4,%ecx
c0036c61:	39 d3                	cmp    %edx,%ebx
c0036c63:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036c66:	77 f0                	ja     c0036c58 <__copybits+0x28>
c0036c68:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c6b:	29 fb                	sub    %edi,%ebx
c0036c6d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036c70:	c1 ea 02             	shr    $0x2,%edx
c0036c73:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036c77:	39 c6                	cmp    %eax,%esi
c0036c79:	76 13                	jbe    c0036c8e <__copybits+0x5e>
c0036c7b:	90                   	nop
c0036c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c80:	83 c0 04             	add    $0x4,%eax
c0036c83:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c0036c8a:	39 c6                	cmp    %eax,%esi
c0036c8c:	77 f2                	ja     c0036c80 <__copybits+0x50>
c0036c8e:	5b                   	pop    %ebx
c0036c8f:	5e                   	pop    %esi
c0036c90:	5f                   	pop    %edi
c0036c91:	5d                   	pop    %ebp
c0036c92:	c3                   	ret    
c0036c93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036ca0 <__any_on>:
c0036ca0:	55                   	push   %ebp
c0036ca1:	89 e5                	mov    %esp,%ebp
c0036ca3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ca6:	57                   	push   %edi
c0036ca7:	56                   	push   %esi
c0036ca8:	53                   	push   %ebx
c0036ca9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036cac:	8d 50 14             	lea    0x14(%eax),%edx
c0036caf:	8b 40 10             	mov    0x10(%eax),%eax
c0036cb2:	c1 fb 05             	sar    $0x5,%ebx
c0036cb5:	39 d8                	cmp    %ebx,%eax
c0036cb7:	7d 2f                	jge    c0036ce8 <__any_on+0x48>
c0036cb9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c0036cbc:	39 da                	cmp    %ebx,%edx
c0036cbe:	73 1d                	jae    c0036cdd <__any_on+0x3d>
c0036cc0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036cc3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036cc6:	85 db                	test   %ebx,%ebx
c0036cc8:	74 0f                	je     c0036cd9 <__any_on+0x39>
c0036cca:	eb 44                	jmp    c0036d10 <__any_on+0x70>
c0036ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036cd0:	83 e8 04             	sub    $0x4,%eax
c0036cd3:	8b 08                	mov    (%eax),%ecx
c0036cd5:	85 c9                	test   %ecx,%ecx
c0036cd7:	75 37                	jne    c0036d10 <__any_on+0x70>
c0036cd9:	39 c2                	cmp    %eax,%edx
c0036cdb:	72 f3                	jb     c0036cd0 <__any_on+0x30>
c0036cdd:	31 c0                	xor    %eax,%eax
c0036cdf:	5b                   	pop    %ebx
c0036ce0:	5e                   	pop    %esi
c0036ce1:	5f                   	pop    %edi
c0036ce2:	5d                   	pop    %ebp
c0036ce3:	c3                   	ret    
c0036ce4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ce8:	7e 1e                	jle    c0036d08 <__any_on+0x68>
c0036cea:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036ced:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036cf0:	83 e1 1f             	and    $0x1f,%ecx
c0036cf3:	74 c7                	je     c0036cbc <__any_on+0x1c>
c0036cf5:	8b 3b                	mov    (%ebx),%edi
c0036cf7:	b8 01 00 00 00       	mov    $0x1,%eax
c0036cfc:	89 fe                	mov    %edi,%esi
c0036cfe:	d3 ee                	shr    %cl,%esi
c0036d00:	d3 e6                	shl    %cl,%esi
c0036d02:	39 fe                	cmp    %edi,%esi
c0036d04:	75 d9                	jne    c0036cdf <__any_on+0x3f>
c0036d06:	eb b4                	jmp    c0036cbc <__any_on+0x1c>
c0036d08:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036d0b:	eb af                	jmp    c0036cbc <__any_on+0x1c>
c0036d0d:	8d 76 00             	lea    0x0(%esi),%esi
c0036d10:	5b                   	pop    %ebx
c0036d11:	b8 01 00 00 00       	mov    $0x1,%eax
c0036d16:	5e                   	pop    %esi
c0036d17:	5f                   	pop    %edi
c0036d18:	5d                   	pop    %ebp
c0036d19:	c3                   	ret    
c0036d1a:	66 90                	xchg   %ax,%ax
c0036d1c:	66 90                	xchg   %ax,%ax
c0036d1e:	66 90                	xchg   %ax,%ax

c0036d20 <_sbrk_r>:
c0036d20:	55                   	push   %ebp
c0036d21:	89 e5                	mov    %esp,%ebp
c0036d23:	83 ec 18             	sub    $0x18,%esp
c0036d26:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d29:	c7 05 0c 40 09 c0 00 	movl   $0x0,0xc009400c
c0036d30:	00 00 00 
c0036d33:	89 04 24             	mov    %eax,(%esp)
c0036d36:	e8 d1 a8 ff ff       	call   c003160c <sbrk>
c0036d3b:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036d3e:	74 08                	je     c0036d48 <_sbrk_r+0x28>
c0036d40:	c9                   	leave  
c0036d41:	c3                   	ret    
c0036d42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d48:	8b 15 0c 40 09 c0    	mov    0xc009400c,%edx
c0036d4e:	85 d2                	test   %edx,%edx
c0036d50:	74 ee                	je     c0036d40 <_sbrk_r+0x20>
c0036d52:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036d55:	89 11                	mov    %edx,(%ecx)
c0036d57:	c9                   	leave  
c0036d58:	c3                   	ret    
c0036d59:	66 90                	xchg   %ax,%ax
c0036d5b:	66 90                	xchg   %ax,%ax
c0036d5d:	66 90                	xchg   %ax,%ax
c0036d5f:	90                   	nop

c0036d60 <__fpclassifyd>:
c0036d60:	55                   	push   %ebp
c0036d61:	b8 02 00 00 00       	mov    $0x2,%eax
c0036d66:	89 e5                	mov    %esp,%ebp
c0036d68:	53                   	push   %ebx
c0036d69:	83 ec 0c             	sub    $0xc,%esp
c0036d6c:	dd 45 08             	fldl   0x8(%ebp)
c0036d6f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036d72:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036d75:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036d78:	89 d3                	mov    %edx,%ebx
c0036d7a:	09 cb                	or     %ecx,%ebx
c0036d7c:	75 0a                	jne    c0036d88 <__fpclassifyd+0x28>
c0036d7e:	83 c4 0c             	add    $0xc,%esp
c0036d81:	5b                   	pop    %ebx
c0036d82:	5d                   	pop    %ebp
c0036d83:	c3                   	ret    
c0036d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036d88:	85 d2                	test   %edx,%edx
c0036d8a:	0f 94 c2             	sete   %dl
c0036d8d:	75 08                	jne    c0036d97 <__fpclassifyd+0x37>
c0036d8f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036d95:	74 e7                	je     c0036d7e <__fpclassifyd+0x1e>
c0036d97:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036d9d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036da2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036da8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036dae:	76 ce                	jbe    c0036d7e <__fpclassifyd+0x1e>
c0036db0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036db6:	b0 03                	mov    $0x3,%al
c0036db8:	76 c4                	jbe    c0036d7e <__fpclassifyd+0x1e>
c0036dba:	31 c0                	xor    %eax,%eax
c0036dbc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036dc2:	0f 94 c0             	sete   %al
c0036dc5:	21 d0                	and    %edx,%eax
c0036dc7:	eb b5                	jmp    c0036d7e <__fpclassifyd+0x1e>
c0036dc9:	66 90                	xchg   %ax,%ax
c0036dcb:	66 90                	xchg   %ax,%ax
c0036dcd:	66 90                	xchg   %ax,%ax
c0036dcf:	90                   	nop

c0036dd0 <strlen>:
c0036dd0:	55                   	push   %ebp
c0036dd1:	89 e5                	mov    %esp,%ebp
c0036dd3:	57                   	push   %edi
c0036dd4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036dd7:	89 d7                	mov    %edx,%edi
c0036dd9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036ddf:	74 25                	je     c0036e06 <L5>
c0036de1:	8a 0f                	mov    (%edi),%cl
c0036de3:	47                   	inc    %edi
c0036de4:	84 c9                	test   %cl,%cl
c0036de6:	74 56                	je     c0036e3e <L15>
c0036de8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036dee:	74 16                	je     c0036e06 <L5>
c0036df0:	8a 0f                	mov    (%edi),%cl
c0036df2:	47                   	inc    %edi
c0036df3:	84 c9                	test   %cl,%cl
c0036df5:	74 47                	je     c0036e3e <L15>
c0036df7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036dfd:	74 07                	je     c0036e06 <L5>
c0036dff:	8a 0f                	mov    (%edi),%cl
c0036e01:	47                   	inc    %edi
c0036e02:	84 c9                	test   %cl,%cl
c0036e04:	74 38                	je     c0036e3e <L15>

c0036e06 <L5>:
c0036e06:	83 ef 04             	sub    $0x4,%edi
c0036e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036e10 <L10>:
c0036e10:	83 c7 04             	add    $0x4,%edi
c0036e13:	8b 0f                	mov    (%edi),%ecx
c0036e15:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036e1b:	f7 d1                	not    %ecx
c0036e1d:	21 c8                	and    %ecx,%eax
c0036e1f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036e24:	74 ea                	je     c0036e10 <L10>
c0036e26:	f7 d1                	not    %ecx
c0036e28:	47                   	inc    %edi
c0036e29:	84 c9                	test   %cl,%cl
c0036e2b:	74 11                	je     c0036e3e <L15>
c0036e2d:	47                   	inc    %edi
c0036e2e:	c1 e9 08             	shr    $0x8,%ecx
c0036e31:	84 c9                	test   %cl,%cl
c0036e33:	74 09                	je     c0036e3e <L15>
c0036e35:	47                   	inc    %edi
c0036e36:	c1 e9 08             	shr    $0x8,%ecx
c0036e39:	84 c9                	test   %cl,%cl
c0036e3b:	74 01                	je     c0036e3e <L15>
c0036e3d:	47                   	inc    %edi

c0036e3e <L15>:
c0036e3e:	29 d7                	sub    %edx,%edi
c0036e40:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036e43:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036e46:	5f                   	pop    %edi
c0036e47:	c9                   	leave  
c0036e48:	c3                   	ret    
c0036e49:	66 90                	xchg   %ax,%ax
c0036e4b:	66 90                	xchg   %ax,%ax
c0036e4d:	66 90                	xchg   %ax,%ax
c0036e4f:	90                   	nop

c0036e50 <__ssprint_r>:
c0036e50:	55                   	push   %ebp
c0036e51:	89 e5                	mov    %esp,%ebp
c0036e53:	57                   	push   %edi
c0036e54:	56                   	push   %esi
c0036e55:	53                   	push   %ebx
c0036e56:	83 ec 2c             	sub    $0x2c,%esp
c0036e59:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036e5f:	8b 00                	mov    (%eax),%eax
c0036e61:	89 c7                	mov    %eax,%edi
c0036e63:	8b 45 10             	mov    0x10(%ebp),%eax
c0036e66:	8b 40 08             	mov    0x8(%eax),%eax
c0036e69:	85 c0                	test   %eax,%eax
c0036e6b:	0f 84 af 01 00 00    	je     c0037020 <__ssprint_r+0x1d0>
c0036e71:	31 c9                	xor    %ecx,%ecx
c0036e73:	31 d2                	xor    %edx,%edx
c0036e75:	8b 03                	mov    (%ebx),%eax
c0036e77:	89 ce                	mov    %ecx,%esi
c0036e79:	85 f6                	test   %esi,%esi
c0036e7b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036e7e:	0f 84 ec 00 00 00    	je     c0036f70 <__ssprint_r+0x120>
c0036e84:	8b 53 08             	mov    0x8(%ebx),%edx
c0036e87:	39 d6                	cmp    %edx,%esi
c0036e89:	0f 82 fc 00 00 00    	jb     c0036f8b <__ssprint_r+0x13b>
c0036e8f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036e93:	66 f7 c1 80 04       	test   $0x480,%cx
c0036e98:	0f 84 fa 00 00 00    	je     c0036f98 <__ssprint_r+0x148>
c0036e9e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036ea1:	29 d0                	sub    %edx,%eax
c0036ea3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036ea6:	8b 43 14             	mov    0x14(%ebx),%eax
c0036ea9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036eac:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036eaf:	89 c2                	mov    %eax,%edx
c0036eb1:	c1 ea 1f             	shr    $0x1f,%edx
c0036eb4:	01 d0                	add    %edx,%eax
c0036eb6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036eb9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ebc:	d1 7d e0             	sarl   -0x20(%ebp)
c0036ebf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036ec3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036ec6:	0f 83 34 01 00 00    	jae    c0037000 <__ssprint_r+0x1b0>
c0036ecc:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036ecf:	80 e5 04             	and    $0x4,%ch
c0036ed2:	0f 84 c8 00 00 00    	je     c0036fa0 <__ssprint_r+0x150>
c0036ed8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036edc:	8b 45 08             	mov    0x8(%ebp),%eax
c0036edf:	89 04 24             	mov    %eax,(%esp)
c0036ee2:	e8 59 e8 ff ff       	call   c0035740 <_malloc_r>
c0036ee7:	85 c0                	test   %eax,%eax
c0036ee9:	89 c2                	mov    %eax,%edx
c0036eeb:	0f 84 e1 00 00 00    	je     c0036fd2 <__ssprint_r+0x182>
c0036ef1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ef4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036ef7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036efb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036efe:	89 14 24             	mov    %edx,(%esp)
c0036f01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036f05:	e8 0a b2 ff ff       	call   c0032114 <memcpy>
c0036f0a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036f0e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036f11:	66 25 7f fb          	and    $0xfb7f,%ax
c0036f15:	0c 80                	or     $0x80,%al
c0036f17:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036f1b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036f1e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036f21:	89 53 10             	mov    %edx,0x10(%ebx)
c0036f24:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036f27:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036f2a:	01 d0                	add    %edx,%eax
c0036f2c:	89 03                	mov    %eax,(%ebx)
c0036f2e:	89 f2                	mov    %esi,%edx
c0036f30:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036f33:	89 f1                	mov    %esi,%ecx
c0036f35:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036f39:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036f3c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036f3f:	89 04 24             	mov    %eax,(%esp)
c0036f42:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036f45:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036f49:	e8 22 13 00 00       	call   c0038270 <memmove>
c0036f4e:	8b 03                	mov    (%ebx),%eax
c0036f50:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036f53:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036f56:	29 53 08             	sub    %edx,0x8(%ebx)
c0036f59:	01 c8                	add    %ecx,%eax
c0036f5b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036f5e:	89 03                	mov    %eax,(%ebx)
c0036f60:	8b 51 08             	mov    0x8(%ecx),%edx
c0036f63:	29 f2                	sub    %esi,%edx
c0036f65:	85 d2                	test   %edx,%edx
c0036f67:	89 51 08             	mov    %edx,0x8(%ecx)
c0036f6a:	0f 84 98 00 00 00    	je     c0037008 <__ssprint_r+0x1b8>
c0036f70:	8b 77 04             	mov    0x4(%edi),%esi
c0036f73:	83 c7 08             	add    $0x8,%edi
c0036f76:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036f79:	85 f6                	test   %esi,%esi
c0036f7b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036f7e:	74 f0                	je     c0036f70 <__ssprint_r+0x120>
c0036f80:	8b 53 08             	mov    0x8(%ebx),%edx
c0036f83:	39 d6                	cmp    %edx,%esi
c0036f85:	0f 83 04 ff ff ff    	jae    c0036e8f <__ssprint_r+0x3f>
c0036f8b:	89 f2                	mov    %esi,%edx
c0036f8d:	89 f1                	mov    %esi,%ecx
c0036f8f:	eb a4                	jmp    c0036f35 <__ssprint_r+0xe5>
c0036f91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036f98:	89 d1                	mov    %edx,%ecx
c0036f9a:	eb 99                	jmp    c0036f35 <__ssprint_r+0xe5>
c0036f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036fa0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fa4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036fa7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036fab:	8b 45 08             	mov    0x8(%ebp),%eax
c0036fae:	89 04 24             	mov    %eax,(%esp)
c0036fb1:	e8 4a 13 00 00       	call   c0038300 <_realloc_r>
c0036fb6:	85 c0                	test   %eax,%eax
c0036fb8:	89 c2                	mov    %eax,%edx
c0036fba:	0f 85 5b ff ff ff    	jne    c0036f1b <__ssprint_r+0xcb>
c0036fc0:	8b 43 10             	mov    0x10(%ebx),%eax
c0036fc3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036fc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0036fca:	89 04 24             	mov    %eax,(%esp)
c0036fcd:	e8 3e 10 00 00       	call   c0038010 <_free_r>
c0036fd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036fd5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036fdb:	8b 45 10             	mov    0x10(%ebp),%eax
c0036fde:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036fe3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036fea:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036ff1:	83 c4 2c             	add    $0x2c,%esp
c0036ff4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036ff9:	5b                   	pop    %ebx
c0036ffa:	5e                   	pop    %esi
c0036ffb:	5f                   	pop    %edi
c0036ffc:	5d                   	pop    %ebp
c0036ffd:	c3                   	ret    
c0036ffe:	66 90                	xchg   %ax,%ax
c0037000:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0037003:	e9 c7 fe ff ff       	jmp    c0036ecf <__ssprint_r+0x7f>
c0037008:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c003700f:	83 c4 2c             	add    $0x2c,%esp
c0037012:	31 c0                	xor    %eax,%eax
c0037014:	5b                   	pop    %ebx
c0037015:	5e                   	pop    %esi
c0037016:	5f                   	pop    %edi
c0037017:	5d                   	pop    %ebp
c0037018:	c3                   	ret    
c0037019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037020:	8b 45 10             	mov    0x10(%ebp),%eax
c0037023:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c003702a:	83 c4 2c             	add    $0x2c,%esp
c003702d:	31 c0                	xor    %eax,%eax
c003702f:	5b                   	pop    %ebx
c0037030:	5e                   	pop    %esi
c0037031:	5f                   	pop    %edi
c0037032:	5d                   	pop    %ebp
c0037033:	c3                   	ret    
c0037034:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c003703a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0037040 <_svfiprintf_r>:
c0037040:	55                   	push   %ebp
c0037041:	89 e5                	mov    %esp,%ebp
c0037043:	57                   	push   %edi
c0037044:	56                   	push   %esi
c0037045:	53                   	push   %ebx
c0037046:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c003704c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003704f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0037053:	74 0b                	je     c0037060 <_svfiprintf_r+0x20>
c0037055:	8b 50 10             	mov    0x10(%eax),%edx
c0037058:	85 d2                	test   %edx,%edx
c003705a:	0f 84 1c 0d 00 00    	je     c0037d7c <_svfiprintf_r+0xd3c>
c0037060:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037063:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037066:	89 c6                	mov    %eax,%esi
c0037068:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003706e:	29 d8                	sub    %ebx,%eax
c0037070:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0037077:	00 00 00 
c003707a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0037081:	00 00 00 
c0037084:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003708b:	00 00 00 
c003708e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0037095:	00 00 00 
c0037098:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c003709e:	8b 45 10             	mov    0x10(%ebp),%eax
c00370a1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00370a4:	0f b6 00             	movzbl (%eax),%eax
c00370a7:	84 c0                	test   %al,%al
c00370a9:	74 58                	je     c0037103 <_svfiprintf_r+0xc3>
c00370ab:	3c 25                	cmp    $0x25,%al
c00370ad:	75 13                	jne    c00370c2 <_svfiprintf_r+0x82>
c00370af:	eb 52                	jmp    c0037103 <_svfiprintf_r+0xc3>
c00370b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00370b8:	84 c0                	test   %al,%al
c00370ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00370c0:	74 0a                	je     c00370cc <_svfiprintf_r+0x8c>
c00370c2:	83 c3 01             	add    $0x1,%ebx
c00370c5:	0f b6 03             	movzbl (%ebx),%eax
c00370c8:	3c 25                	cmp    $0x25,%al
c00370ca:	75 ec                	jne    c00370b8 <_svfiprintf_r+0x78>
c00370cc:	89 df                	mov    %ebx,%edi
c00370ce:	2b 7d 10             	sub    0x10(%ebp),%edi
c00370d1:	74 30                	je     c0037103 <_svfiprintf_r+0xc3>
c00370d3:	8b 45 10             	mov    0x10(%ebp),%eax
c00370d6:	83 c6 08             	add    $0x8,%esi
c00370d9:	89 7e fc             	mov    %edi,-0x4(%esi)
c00370dc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c00370e2:	89 46 f8             	mov    %eax,-0x8(%esi)
c00370e5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00370eb:	83 c0 01             	add    $0x1,%eax
c00370ee:	83 f8 07             	cmp    $0x7,%eax
c00370f1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00370f7:	0f 8f eb 0a 00 00    	jg     c0037be8 <_svfiprintf_r+0xba8>
c00370fd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0037103:	80 3b 00             	cmpb   $0x0,(%ebx)
c0037106:	0f 84 11 09 00 00    	je     c0037a1d <_svfiprintf_r+0x9dd>
c003710c:	8d 43 01             	lea    0x1(%ebx),%eax
c003710f:	31 ff                	xor    %edi,%edi
c0037111:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037118:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c003711f:	ff ff ff 
c0037122:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0037129:	00 00 00 
c003712c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0037133:	00 00 00 
c0037136:	8d 50 01             	lea    0x1(%eax),%edx
c0037139:	0f be 00             	movsbl (%eax),%eax
c003713c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003713f:	83 f9 58             	cmp    $0x58,%ecx
c0037142:	0f 87 63 03 00 00    	ja     c00374ab <_svfiprintf_r+0x46b>
c0037148:	ff 24 8d 68 93 03 c0 	jmp    *-0x3ffc6c98(,%ecx,4)
c003714f:	90                   	nop
c0037150:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037157:	89 d0                	mov    %edx,%eax
c0037159:	eb db                	jmp    c0037136 <_svfiprintf_r+0xf6>
c003715b:	8b 45 14             	mov    0x14(%ebp),%eax
c003715e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037161:	8b 00                	mov    (%eax),%eax
c0037163:	83 c3 04             	add    $0x4,%ebx
c0037166:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037169:	85 c0                	test   %eax,%eax
c003716b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0037171:	79 e4                	jns    c0037157 <_svfiprintf_r+0x117>
c0037173:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0037179:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0037180:	89 d0                	mov    %edx,%eax
c0037182:	eb b2                	jmp    c0037136 <_svfiprintf_r+0xf6>
c0037184:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0037189:	89 d0                	mov    %edx,%eax
c003718b:	eb a9                	jmp    c0037136 <_svfiprintf_r+0xf6>
c003718d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037190:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037197:	89 55 10             	mov    %edx,0x10(%ebp)
c003719a:	ba 02 00 00 00       	mov    $0x2,%edx
c003719f:	8b 08                	mov    (%eax),%ecx
c00371a1:	83 c0 04             	add    $0x4,%eax
c00371a4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00371ab:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c00371b2:	89 45 14             	mov    %eax,0x14(%ebp)
c00371b5:	c7 85 44 ff ff ff 0b 	movl   $0xc003900b,-0xbc(%ebp)
c00371bc:	90 03 c0 
c00371bf:	90                   	nop
c00371c0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371c7:	31 ff                	xor    %edi,%edi
c00371c9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c00371cf:	89 d8                	mov    %ebx,%eax
c00371d1:	24 7f                	and    $0x7f,%al
c00371d3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c00371da:	0f 48 c3             	cmovs  %ebx,%eax
c00371dd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c00371e3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00371e9:	85 c0                	test   %eax,%eax
c00371eb:	75 08                	jne    c00371f5 <_svfiprintf_r+0x1b5>
c00371ed:	85 c9                	test   %ecx,%ecx
c00371ef:	0f 84 03 08 00 00    	je     c00379f8 <_svfiprintf_r+0x9b8>
c00371f5:	80 fa 01             	cmp    $0x1,%dl
c00371f8:	0f 84 8a 0a 00 00    	je     c0037c88 <_svfiprintf_r+0xc48>
c00371fe:	80 fa 02             	cmp    $0x2,%dl
c0037201:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037204:	0f 85 86 01 00 00    	jne    c0037390 <_svfiprintf_r+0x350>
c003720a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0037210:	89 c8                	mov    %ecx,%eax
c0037212:	83 eb 01             	sub    $0x1,%ebx
c0037215:	83 e0 0f             	and    $0xf,%eax
c0037218:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c003721c:	c1 e9 04             	shr    $0x4,%ecx
c003721f:	85 c9                	test   %ecx,%ecx
c0037221:	88 03                	mov    %al,(%ebx)
c0037223:	75 eb                	jne    c0037210 <_svfiprintf_r+0x1d0>
c0037225:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037228:	29 d8                	sub    %ebx,%eax
c003722a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037230:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037236:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c003723c:	39 c1                	cmp    %eax,%ecx
c003723e:	0f 4d c1             	cmovge %ecx,%eax
c0037241:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0037247:	89 f8                	mov    %edi,%eax
c0037249:	3c 01                	cmp    $0x1,%al
c003724b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0037252:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037258:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c003725e:	89 d0                	mov    %edx,%eax
c0037260:	89 cf                	mov    %ecx,%edi
c0037262:	83 c0 02             	add    $0x2,%eax
c0037265:	83 e7 02             	and    $0x2,%edi
c0037268:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c003726e:	89 cf                	mov    %ecx,%edi
c0037270:	0f 44 c2             	cmove  %edx,%eax
c0037273:	81 e7 84 00 00 00    	and    $0x84,%edi
c0037279:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c003727f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0037285:	0f 85 cd 04 00 00    	jne    c0037758 <_svfiprintf_r+0x718>
c003728b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037291:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037297:	85 ff                	test   %edi,%edi
c0037299:	0f 8e b9 04 00 00    	jle    c0037758 <_svfiprintf_r+0x718>
c003729f:	83 ff 10             	cmp    $0x10,%edi
c00372a2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00372a8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00372ae:	7e 7c                	jle    c003732c <_svfiprintf_r+0x2ec>
c00372b0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c00372b6:	89 f1                	mov    %esi,%ecx
c00372b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00372bb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00372be:	eb 08                	jmp    c00372c8 <_svfiprintf_r+0x288>
c00372c0:	83 ef 10             	sub    $0x10,%edi
c00372c3:	83 ff 10             	cmp    $0x10,%edi
c00372c6:	7e 5c                	jle    c0037324 <_svfiprintf_r+0x2e4>
c00372c8:	83 c0 01             	add    $0x1,%eax
c00372cb:	83 c2 10             	add    $0x10,%edx
c00372ce:	c7 01 dc 94 03 c0    	movl   $0xc00394dc,(%ecx)
c00372d4:	83 c1 08             	add    $0x8,%ecx
c00372d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00372de:	83 f8 07             	cmp    $0x7,%eax
c00372e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00372e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00372ed:	7e d1                	jle    c00372c0 <_svfiprintf_r+0x280>
c00372ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00372f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00372f9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00372fd:	89 1c 24             	mov    %ebx,(%esp)
c0037300:	e8 4b fb ff ff       	call   c0036e50 <__ssprint_r>
c0037305:	85 c0                	test   %eax,%eax
c0037307:	0f 85 3b 07 00 00    	jne    c0037a48 <_svfiprintf_r+0xa08>
c003730d:	83 ef 10             	sub    $0x10,%edi
c0037310:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037316:	83 ff 10             	cmp    $0x10,%edi
c0037319:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003731f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037322:	7f a4                	jg     c00372c8 <_svfiprintf_r+0x288>
c0037324:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003732a:	89 ce                	mov    %ecx,%esi
c003732c:	83 c0 01             	add    $0x1,%eax
c003732f:	01 fa                	add    %edi,%edx
c0037331:	c7 06 dc 94 03 c0    	movl   $0xc00394dc,(%esi)
c0037337:	83 c6 08             	add    $0x8,%esi
c003733a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003733d:	83 f8 07             	cmp    $0x7,%eax
c0037340:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037346:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003734c:	0f 8e 12 04 00 00    	jle    c0037764 <_svfiprintf_r+0x724>
c0037352:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037358:	89 44 24 08          	mov    %eax,0x8(%esp)
c003735c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003735f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037363:	8b 45 08             	mov    0x8(%ebp),%eax
c0037366:	89 04 24             	mov    %eax,(%esp)
c0037369:	e8 e2 fa ff ff       	call   c0036e50 <__ssprint_r>
c003736e:	85 c0                	test   %eax,%eax
c0037370:	0f 85 d2 06 00 00    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037376:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003737c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003737f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037385:	e9 da 03 00 00       	jmp    c0037764 <_svfiprintf_r+0x724>
c003738a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037390:	89 c8                	mov    %ecx,%eax
c0037392:	83 eb 01             	sub    $0x1,%ebx
c0037395:	83 e0 07             	and    $0x7,%eax
c0037398:	c1 e9 03             	shr    $0x3,%ecx
c003739b:	83 c0 30             	add    $0x30,%eax
c003739e:	85 c9                	test   %ecx,%ecx
c00373a0:	88 03                	mov    %al,(%ebx)
c00373a2:	75 ec                	jne    c0037390 <_svfiprintf_r+0x350>
c00373a4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00373ab:	89 da                	mov    %ebx,%edx
c00373ad:	0f 84 72 fe ff ff    	je     c0037225 <_svfiprintf_r+0x1e5>
c00373b3:	3c 30                	cmp    $0x30,%al
c00373b5:	0f 84 6a fe ff ff    	je     c0037225 <_svfiprintf_r+0x1e5>
c00373bb:	83 eb 01             	sub    $0x1,%ebx
c00373be:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00373c1:	29 d8                	sub    %ebx,%eax
c00373c3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00373c7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373cd:	e9 5e fe ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c00373d2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00373d9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373e0:	89 55 10             	mov    %edx,0x10(%ebp)
c00373e3:	8b 45 14             	mov    0x14(%ebp),%eax
c00373e6:	0f 85 48 01 00 00    	jne    c0037534 <_svfiprintf_r+0x4f4>
c00373ec:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00373f3:	0f 84 3b 01 00 00    	je     c0037534 <_svfiprintf_r+0x4f4>
c00373f9:	0f b7 08             	movzwl (%eax),%ecx
c00373fc:	83 c0 04             	add    $0x4,%eax
c00373ff:	31 d2                	xor    %edx,%edx
c0037401:	89 45 14             	mov    %eax,0x14(%ebp)
c0037404:	e9 b7 fd ff ff       	jmp    c00371c0 <_svfiprintf_r+0x180>
c0037409:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037410:	89 f8                	mov    %edi,%eax
c0037412:	89 55 10             	mov    %edx,0x10(%ebp)
c0037415:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003741b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037422:	8b 45 14             	mov    0x14(%ebp),%eax
c0037425:	75 0d                	jne    c0037434 <_svfiprintf_r+0x3f4>
c0037427:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003742e:	0f 85 f2 08 00 00    	jne    c0037d26 <_svfiprintf_r+0xce6>
c0037434:	8b 08                	mov    (%eax),%ecx
c0037436:	83 c0 04             	add    $0x4,%eax
c0037439:	89 45 14             	mov    %eax,0x14(%ebp)
c003743c:	85 c9                	test   %ecx,%ecx
c003743e:	0f 88 f3 08 00 00    	js     c0037d37 <_svfiprintf_r+0xcf7>
c0037444:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003744b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037450:	e9 74 fd ff ff       	jmp    c00371c9 <_svfiprintf_r+0x189>
c0037455:	0f be 02             	movsbl (%edx),%eax
c0037458:	8d 5a 01             	lea    0x1(%edx),%ebx
c003745b:	83 f8 2a             	cmp    $0x2a,%eax
c003745e:	0f 84 af 09 00 00    	je     c0037e13 <_svfiprintf_r+0xdd3>
c0037464:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037467:	31 d2                	xor    %edx,%edx
c0037469:	83 f9 09             	cmp    $0x9,%ecx
c003746c:	0f 87 90 09 00 00    	ja     c0037e02 <_svfiprintf_r+0xdc2>
c0037472:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037478:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003747b:	83 c3 01             	add    $0x1,%ebx
c003747e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037481:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037485:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037488:	83 f9 09             	cmp    $0x9,%ecx
c003748b:	76 eb                	jbe    c0037478 <_svfiprintf_r+0x438>
c003748d:	85 d2                	test   %edx,%edx
c003748f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037494:	0f 48 d1             	cmovs  %ecx,%edx
c0037497:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003749a:	83 f9 58             	cmp    $0x58,%ecx
c003749d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00374a3:	89 da                	mov    %ebx,%edx
c00374a5:	0f 86 9d fc ff ff    	jbe    c0037148 <_svfiprintf_r+0x108>
c00374ab:	89 fb                	mov    %edi,%ebx
c00374ad:	85 c0                	test   %eax,%eax
c00374af:	89 55 10             	mov    %edx,0x10(%ebp)
c00374b2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00374b8:	0f 84 5f 05 00 00    	je     c0037a1d <_svfiprintf_r+0x9dd>
c00374be:	88 45 80             	mov    %al,-0x80(%ebp)
c00374c1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00374c4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00374cb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00374d2:	00 00 00 
c00374d5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00374dc:	00 00 00 
c00374df:	e9 5a 01 00 00       	jmp    c003763e <_svfiprintf_r+0x5fe>
c00374e4:	31 db                	xor    %ebx,%ebx
c00374e6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00374e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374f0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00374f3:	83 c2 01             	add    $0x1,%edx
c00374f6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00374f9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00374fd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037500:	83 f9 09             	cmp    $0x9,%ecx
c0037503:	76 eb                	jbe    c00374f0 <_svfiprintf_r+0x4b0>
c0037505:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003750b:	e9 2c fc ff ff       	jmp    c003713c <_svfiprintf_r+0xfc>
c0037510:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037517:	00 00 00 
c003751a:	89 d0                	mov    %edx,%eax
c003751c:	e9 15 fc ff ff       	jmp    c0037136 <_svfiprintf_r+0xf6>
c0037521:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037528:	89 55 10             	mov    %edx,0x10(%ebp)
c003752b:	8b 45 14             	mov    0x14(%ebp),%eax
c003752e:	0f 84 b8 fe ff ff    	je     c00373ec <_svfiprintf_r+0x3ac>
c0037534:	8b 08                	mov    (%eax),%ecx
c0037536:	83 c0 04             	add    $0x4,%eax
c0037539:	31 d2                	xor    %edx,%edx
c003753b:	89 45 14             	mov    %eax,0x14(%ebp)
c003753e:	e9 7d fc ff ff       	jmp    c00371c0 <_svfiprintf_r+0x180>
c0037543:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003754a:	89 f8                	mov    %edi,%eax
c003754c:	89 55 10             	mov    %edx,0x10(%ebp)
c003754f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037555:	0f 85 a2 07 00 00    	jne    c0037cfd <_svfiprintf_r+0xcbd>
c003755b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037562:	0f 84 95 07 00 00    	je     c0037cfd <_svfiprintf_r+0xcbd>
c0037568:	8b 45 14             	mov    0x14(%ebp),%eax
c003756b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037572:	8b 00                	mov    (%eax),%eax
c0037574:	66 89 18             	mov    %bx,(%eax)
c0037577:	8b 45 14             	mov    0x14(%ebp),%eax
c003757a:	83 c0 04             	add    $0x4,%eax
c003757d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037580:	e9 19 fb ff ff       	jmp    c003709e <_svfiprintf_r+0x5e>
c0037585:	89 fb                	mov    %edi,%ebx
c0037587:	89 55 10             	mov    %edx,0x10(%ebp)
c003758a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037590:	c7 85 44 ff ff ff 0b 	movl   $0xc003900b,-0xbc(%ebp)
c0037597:	90 03 c0 
c003759a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00375a1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00375a4:	75 0d                	jne    c00375b3 <_svfiprintf_r+0x573>
c00375a6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00375ad:	0f 85 65 07 00 00    	jne    c0037d18 <_svfiprintf_r+0xcd8>
c00375b3:	8b 0b                	mov    (%ebx),%ecx
c00375b5:	83 c3 04             	add    $0x4,%ebx
c00375b8:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00375bb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00375c2:	ba 02 00 00 00       	mov    $0x2,%edx
c00375c7:	0f 84 f3 fb ff ff    	je     c00371c0 <_svfiprintf_r+0x180>
c00375cd:	85 c9                	test   %ecx,%ecx
c00375cf:	0f 84 eb fb ff ff    	je     c00371c0 <_svfiprintf_r+0x180>
c00375d5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00375dc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00375e2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00375e9:	e9 d2 fb ff ff       	jmp    c00371c0 <_svfiprintf_r+0x180>
c00375ee:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00375f5:	89 d0                	mov    %edx,%eax
c00375f7:	e9 3a fb ff ff       	jmp    c0037136 <_svfiprintf_r+0xf6>
c00375fc:	89 f8                	mov    %edi,%eax
c00375fe:	89 55 10             	mov    %edx,0x10(%ebp)
c0037601:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037607:	e9 0f fe ff ff       	jmp    c003741b <_svfiprintf_r+0x3db>
c003760c:	8b 45 14             	mov    0x14(%ebp),%eax
c003760f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037612:	89 55 10             	mov    %edx,0x10(%ebp)
c0037615:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003761c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037623:	00 00 00 
c0037626:	8b 00                	mov    (%eax),%eax
c0037628:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003762f:	00 00 00 
c0037632:	88 45 80             	mov    %al,-0x80(%ebp)
c0037635:	8b 45 14             	mov    0x14(%ebp),%eax
c0037638:	83 c0 04             	add    $0x4,%eax
c003763b:	89 45 14             	mov    %eax,0x14(%ebp)
c003763e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037645:	00 00 00 
c0037648:	e9 05 fc ff ff       	jmp    c0037252 <_svfiprintf_r+0x212>
c003764d:	89 fb                	mov    %edi,%ebx
c003764f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037652:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037658:	c7 85 44 ff ff ff fa 	movl   $0xc0038ffa,-0xbc(%ebp)
c003765f:	8f 03 c0 
c0037662:	e9 33 ff ff ff       	jmp    c003759a <_svfiprintf_r+0x55a>
c0037667:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003766e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037675:	89 55 10             	mov    %edx,0x10(%ebp)
c0037678:	8b 45 14             	mov    0x14(%ebp),%eax
c003767b:	75 39                	jne    c00376b6 <_svfiprintf_r+0x676>
c003767d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037684:	74 30                	je     c00376b6 <_svfiprintf_r+0x676>
c0037686:	0f b7 08             	movzwl (%eax),%ecx
c0037689:	83 c0 04             	add    $0x4,%eax
c003768c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037691:	89 45 14             	mov    %eax,0x14(%ebp)
c0037694:	e9 27 fb ff ff       	jmp    c00371c0 <_svfiprintf_r+0x180>
c0037699:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c00376a0:	89 d0                	mov    %edx,%eax
c00376a2:	e9 8f fa ff ff       	jmp    c0037136 <_svfiprintf_r+0xf6>
c00376a7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00376ae:	89 55 10             	mov    %edx,0x10(%ebp)
c00376b1:	8b 45 14             	mov    0x14(%ebp),%eax
c00376b4:	74 c7                	je     c003767d <_svfiprintf_r+0x63d>
c00376b6:	8b 08                	mov    (%eax),%ecx
c00376b8:	83 c0 04             	add    $0x4,%eax
c00376bb:	ba 01 00 00 00       	mov    $0x1,%edx
c00376c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00376c3:	e9 f8 fa ff ff       	jmp    c00371c0 <_svfiprintf_r+0x180>
c00376c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00376cb:	89 55 10             	mov    %edx,0x10(%ebp)
c00376ce:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00376d5:	8b 18                	mov    (%eax),%ebx
c00376d7:	8d 50 04             	lea    0x4(%eax),%edx
c00376da:	85 db                	test   %ebx,%ebx
c00376dc:	0f 84 cc 06 00 00    	je     c0037dae <_svfiprintf_r+0xd6e>
c00376e2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00376e8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00376ee:	85 ff                	test   %edi,%edi
c00376f0:	0f 88 59 06 00 00    	js     c0037d4f <_svfiprintf_r+0xd0f>
c00376f6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00376fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037701:	00 
c0037702:	89 1c 24             	mov    %ebx,(%esp)
c0037705:	e8 76 e7 ff ff       	call   c0035e80 <memchr>
c003770a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037710:	85 c0                	test   %eax,%eax
c0037712:	0f 84 c5 06 00 00    	je     c0037ddd <_svfiprintf_r+0xd9d>
c0037718:	29 d8                	sub    %ebx,%eax
c003771a:	39 f8                	cmp    %edi,%eax
c003771c:	0f 4f c7             	cmovg  %edi,%eax
c003771f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037726:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003772c:	89 55 14             	mov    %edx,0x14(%ebp)
c003772f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037736:	00 00 00 
c0037739:	e9 f2 fa ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c003773e:	89 f8                	mov    %edi,%eax
c0037740:	84 c0                	test   %al,%al
c0037742:	b8 20 00 00 00       	mov    $0x20,%eax
c0037747:	0f 44 f8             	cmove  %eax,%edi
c003774a:	89 d0                	mov    %edx,%eax
c003774c:	e9 e5 f9 ff ff       	jmp    c0037136 <_svfiprintf_r+0xf6>
c0037751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037758:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003775e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037764:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003776b:	74 2e                	je     c003779b <_svfiprintf_r+0x75b>
c003776d:	83 c0 01             	add    $0x1,%eax
c0037770:	83 c2 01             	add    $0x1,%edx
c0037773:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037779:	83 c6 08             	add    $0x8,%esi
c003777c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003777f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037786:	83 f8 07             	cmp    $0x7,%eax
c0037789:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003778f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037795:	0f 8f b5 04 00 00    	jg     c0037c50 <_svfiprintf_r+0xc10>
c003779b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c00377a1:	85 c9                	test   %ecx,%ecx
c00377a3:	74 2e                	je     c00377d3 <_svfiprintf_r+0x793>
c00377a5:	83 c0 01             	add    $0x1,%eax
c00377a8:	83 c2 02             	add    $0x2,%edx
c00377ab:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c00377b1:	83 c6 08             	add    $0x8,%esi
c00377b4:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00377b7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c00377be:	83 f8 07             	cmp    $0x7,%eax
c00377c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377cd:	0f 8f 45 04 00 00    	jg     c0037c18 <_svfiprintf_r+0xbd8>
c00377d3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00377da:	00 00 00 
c00377dd:	0f 84 9d 02 00 00    	je     c0037a80 <_svfiprintf_r+0xa40>
c00377e3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00377e9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00377ef:	85 ff                	test   %edi,%edi
c00377f1:	0f 8e e1 00 00 00    	jle    c00378d8 <_svfiprintf_r+0x898>
c00377f7:	83 ff 10             	cmp    $0x10,%edi
c00377fa:	0f 8e 7c 00 00 00    	jle    c003787c <_svfiprintf_r+0x83c>
c0037800:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037806:	89 f1                	mov    %esi,%ecx
c0037808:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003780b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003780e:	eb 08                	jmp    c0037818 <_svfiprintf_r+0x7d8>
c0037810:	83 ef 10             	sub    $0x10,%edi
c0037813:	83 ff 10             	cmp    $0x10,%edi
c0037816:	7e 5c                	jle    c0037874 <_svfiprintf_r+0x834>
c0037818:	83 c0 01             	add    $0x1,%eax
c003781b:	83 c2 10             	add    $0x10,%edx
c003781e:	c7 01 cc 94 03 c0    	movl   $0xc00394cc,(%ecx)
c0037824:	83 c1 08             	add    $0x8,%ecx
c0037827:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003782e:	83 f8 07             	cmp    $0x7,%eax
c0037831:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037837:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003783d:	7e d1                	jle    c0037810 <_svfiprintf_r+0x7d0>
c003783f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037845:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037849:	89 74 24 04          	mov    %esi,0x4(%esp)
c003784d:	89 1c 24             	mov    %ebx,(%esp)
c0037850:	e8 fb f5 ff ff       	call   c0036e50 <__ssprint_r>
c0037855:	85 c0                	test   %eax,%eax
c0037857:	0f 85 eb 01 00 00    	jne    c0037a48 <_svfiprintf_r+0xa08>
c003785d:	83 ef 10             	sub    $0x10,%edi
c0037860:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037866:	83 ff 10             	cmp    $0x10,%edi
c0037869:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003786f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037872:	7f a4                	jg     c0037818 <_svfiprintf_r+0x7d8>
c0037874:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003787a:	89 ce                	mov    %ecx,%esi
c003787c:	83 c0 01             	add    $0x1,%eax
c003787f:	01 fa                	add    %edi,%edx
c0037881:	c7 06 cc 94 03 c0    	movl   $0xc00394cc,(%esi)
c0037887:	83 c6 08             	add    $0x8,%esi
c003788a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003788d:	83 f8 07             	cmp    $0x7,%eax
c0037890:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037896:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003789c:	7e 3a                	jle    c00378d8 <_svfiprintf_r+0x898>
c003789e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378a4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378a8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378ab:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378af:	8b 45 08             	mov    0x8(%ebp),%eax
c00378b2:	89 04 24             	mov    %eax,(%esp)
c00378b5:	e8 96 f5 ff ff       	call   c0036e50 <__ssprint_r>
c00378ba:	85 c0                	test   %eax,%eax
c00378bc:	0f 85 86 01 00 00    	jne    c0037a48 <_svfiprintf_r+0xa08>
c00378c2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378c8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378cb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378d8:	89 1e                	mov    %ebx,(%esi)
c00378da:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00378e0:	83 c0 01             	add    $0x1,%eax
c00378e3:	83 c6 08             	add    $0x8,%esi
c00378e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00378ec:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00378ef:	01 da                	add    %ebx,%edx
c00378f1:	83 f8 07             	cmp    $0x7,%eax
c00378f4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00378fa:	0f 8f 80 02 00 00    	jg     c0037b80 <_svfiprintf_r+0xb40>
c0037900:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037907:	0f 84 b9 00 00 00    	je     c00379c6 <_svfiprintf_r+0x986>
c003790d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037913:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037919:	85 ff                	test   %edi,%edi
c003791b:	0f 8e a5 00 00 00    	jle    c00379c6 <_svfiprintf_r+0x986>
c0037921:	83 ff 10             	cmp    $0x10,%edi
c0037924:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003792a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037930:	7e 71                	jle    c00379a3 <_svfiprintf_r+0x963>
c0037932:	89 f1                	mov    %esi,%ecx
c0037934:	8b 75 08             	mov    0x8(%ebp),%esi
c0037937:	eb 0f                	jmp    c0037948 <_svfiprintf_r+0x908>
c0037939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037940:	83 ef 10             	sub    $0x10,%edi
c0037943:	83 ff 10             	cmp    $0x10,%edi
c0037946:	7e 59                	jle    c00379a1 <_svfiprintf_r+0x961>
c0037948:	83 c0 01             	add    $0x1,%eax
c003794b:	83 c2 10             	add    $0x10,%edx
c003794e:	c7 01 dc 94 03 c0    	movl   $0xc00394dc,(%ecx)
c0037954:	83 c1 08             	add    $0x8,%ecx
c0037957:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003795e:	83 f8 07             	cmp    $0x7,%eax
c0037961:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037967:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003796d:	7e d1                	jle    c0037940 <_svfiprintf_r+0x900>
c003796f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037972:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037976:	89 34 24             	mov    %esi,(%esp)
c0037979:	89 44 24 04          	mov    %eax,0x4(%esp)
c003797d:	e8 ce f4 ff ff       	call   c0036e50 <__ssprint_r>
c0037982:	85 c0                	test   %eax,%eax
c0037984:	0f 85 be 00 00 00    	jne    c0037a48 <_svfiprintf_r+0xa08>
c003798a:	83 ef 10             	sub    $0x10,%edi
c003798d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037993:	83 ff 10             	cmp    $0x10,%edi
c0037996:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003799c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003799f:	7f a7                	jg     c0037948 <_svfiprintf_r+0x908>
c00379a1:	89 ce                	mov    %ecx,%esi
c00379a3:	83 c0 01             	add    $0x1,%eax
c00379a6:	01 fa                	add    %edi,%edx
c00379a8:	83 f8 07             	cmp    $0x7,%eax
c00379ab:	c7 06 dc 94 03 c0    	movl   $0xc00394dc,(%esi)
c00379b1:	89 7e 04             	mov    %edi,0x4(%esi)
c00379b4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00379ba:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00379c0:	0f 8f ee 02 00 00    	jg     c0037cb4 <_svfiprintf_r+0xc74>
c00379c6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c00379cc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00379d2:	39 c6                	cmp    %eax,%esi
c00379d4:	0f 4d c6             	cmovge %esi,%eax
c00379d7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00379dd:	85 d2                	test   %edx,%edx
c00379df:	0f 85 d3 01 00 00    	jne    c0037bb8 <_svfiprintf_r+0xb78>
c00379e5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00379ec:	00 00 00 
c00379ef:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00379f2:	e9 a7 f6 ff ff       	jmp    c003709e <_svfiprintf_r+0x5e>
c00379f7:	90                   	nop
c00379f8:	84 d2                	test   %dl,%dl
c00379fa:	75 6c                	jne    c0037a68 <_svfiprintf_r+0xa28>
c00379fc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037a03:	74 63                	je     c0037a68 <_svfiprintf_r+0xa28>
c0037a05:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037a0b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037a0e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037a12:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a18:	e9 13 f8 ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c0037a1d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037a23:	85 c0                	test   %eax,%eax
c0037a25:	74 21                	je     c0037a48 <_svfiprintf_r+0xa08>
c0037a27:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037a2d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037a31:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a38:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a3b:	89 04 24             	mov    %eax,(%esp)
c0037a3e:	e8 0d f4 ff ff       	call   c0036e50 <__ssprint_r>
c0037a43:	90                   	nop
c0037a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037a48:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037a50:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037a54:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c0037a5b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037a61:	5b                   	pop    %ebx
c0037a62:	5e                   	pop    %esi
c0037a63:	5f                   	pop    %edi
c0037a64:	5d                   	pop    %ebp
c0037a65:	c3                   	ret    
c0037a66:	66 90                	xchg   %ax,%ax
c0037a68:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c0037a6f:	00 00 00 
c0037a72:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037a75:	e9 b6 f7 ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c0037a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037a80:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037a86:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037a8c:	85 ff                	test   %edi,%edi
c0037a8e:	0f 8e 4f fd ff ff    	jle    c00377e3 <_svfiprintf_r+0x7a3>
c0037a94:	83 ff 10             	cmp    $0x10,%edi
c0037a97:	0f 8e 7f 00 00 00    	jle    c0037b1c <_svfiprintf_r+0xadc>
c0037a9d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037aa3:	89 f1                	mov    %esi,%ecx
c0037aa5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037aa8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037aab:	eb 0b                	jmp    c0037ab8 <_svfiprintf_r+0xa78>
c0037aad:	8d 76 00             	lea    0x0(%esi),%esi
c0037ab0:	83 ef 10             	sub    $0x10,%edi
c0037ab3:	83 ff 10             	cmp    $0x10,%edi
c0037ab6:	7e 5c                	jle    c0037b14 <_svfiprintf_r+0xad4>
c0037ab8:	83 c0 01             	add    $0x1,%eax
c0037abb:	83 c2 10             	add    $0x10,%edx
c0037abe:	c7 01 cc 94 03 c0    	movl   $0xc00394cc,(%ecx)
c0037ac4:	83 c1 08             	add    $0x8,%ecx
c0037ac7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037ace:	83 f8 07             	cmp    $0x7,%eax
c0037ad1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037ad7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037add:	7e d1                	jle    c0037ab0 <_svfiprintf_r+0xa70>
c0037adf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037ae5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037ae9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037aed:	89 1c 24             	mov    %ebx,(%esp)
c0037af0:	e8 5b f3 ff ff       	call   c0036e50 <__ssprint_r>
c0037af5:	85 c0                	test   %eax,%eax
c0037af7:	0f 85 4b ff ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037afd:	83 ef 10             	sub    $0x10,%edi
c0037b00:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037b06:	83 ff 10             	cmp    $0x10,%edi
c0037b09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037b0f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037b12:	7f a4                	jg     c0037ab8 <_svfiprintf_r+0xa78>
c0037b14:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c0037b1a:	89 ce                	mov    %ecx,%esi
c0037b1c:	83 c0 01             	add    $0x1,%eax
c0037b1f:	01 fa                	add    %edi,%edx
c0037b21:	c7 06 cc 94 03 c0    	movl   $0xc00394cc,(%esi)
c0037b27:	83 c6 08             	add    $0x8,%esi
c0037b2a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037b2d:	83 f8 07             	cmp    $0x7,%eax
c0037b30:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037b36:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037b3c:	0f 8e a1 fc ff ff    	jle    c00377e3 <_svfiprintf_r+0x7a3>
c0037b42:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037b48:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b4c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b4f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b53:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b56:	89 04 24             	mov    %eax,(%esp)
c0037b59:	e8 f2 f2 ff ff       	call   c0036e50 <__ssprint_r>
c0037b5e:	85 c0                	test   %eax,%eax
c0037b60:	0f 85 e2 fe ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037b66:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037b6c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037b6f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037b75:	e9 69 fc ff ff       	jmp    c00377e3 <_svfiprintf_r+0x7a3>
c0037b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037b80:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037b86:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b8a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b8d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b91:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b94:	89 04 24             	mov    %eax,(%esp)
c0037b97:	e8 b4 f2 ff ff       	call   c0036e50 <__ssprint_r>
c0037b9c:	85 c0                	test   %eax,%eax
c0037b9e:	0f 85 a4 fe ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037ba4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037baa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037bad:	e9 4e fd ff ff       	jmp    c0037900 <_svfiprintf_r+0x8c0>
c0037bb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037bb8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037bbe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bc2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037bc5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037bc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bcc:	89 04 24             	mov    %eax,(%esp)
c0037bcf:	e8 7c f2 ff ff       	call   c0036e50 <__ssprint_r>
c0037bd4:	85 c0                	test   %eax,%eax
c0037bd6:	0f 84 09 fe ff ff    	je     c00379e5 <_svfiprintf_r+0x9a5>
c0037bdc:	e9 67 fe ff ff       	jmp    c0037a48 <_svfiprintf_r+0xa08>
c0037be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037be8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037bee:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bf2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037bf5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037bf9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bfc:	89 04 24             	mov    %eax,(%esp)
c0037bff:	e8 4c f2 ff ff       	call   c0036e50 <__ssprint_r>
c0037c04:	85 c0                	test   %eax,%eax
c0037c06:	0f 85 3c fe ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037c0c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037c0f:	e9 e9 f4 ff ff       	jmp    c00370fd <_svfiprintf_r+0xbd>
c0037c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c18:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c1e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c22:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037c25:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c29:	8b 45 08             	mov    0x8(%ebp),%eax
c0037c2c:	89 04 24             	mov    %eax,(%esp)
c0037c2f:	e8 1c f2 ff ff       	call   c0036e50 <__ssprint_r>
c0037c34:	85 c0                	test   %eax,%eax
c0037c36:	0f 85 0c fe ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037c3c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037c42:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037c45:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037c4b:	e9 83 fb ff ff       	jmp    c00377d3 <_svfiprintf_r+0x793>
c0037c50:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c56:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c5a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037c5d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c61:	8b 45 08             	mov    0x8(%ebp),%eax
c0037c64:	89 04 24             	mov    %eax,(%esp)
c0037c67:	e8 e4 f1 ff ff       	call   c0036e50 <__ssprint_r>
c0037c6c:	85 c0                	test   %eax,%eax
c0037c6e:	0f 85 d4 fd ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037c74:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037c7a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037c7d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037c83:	e9 13 fb ff ff       	jmp    c003779b <_svfiprintf_r+0x75b>
c0037c88:	83 f9 09             	cmp    $0x9,%ecx
c0037c8b:	76 56                	jbe    c0037ce3 <_svfiprintf_r+0xca3>
c0037c8d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037c90:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037c95:	83 eb 01             	sub    $0x1,%ebx
c0037c98:	f7 e1                	mul    %ecx
c0037c9a:	c1 ea 03             	shr    $0x3,%edx
c0037c9d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037ca0:	01 c0                	add    %eax,%eax
c0037ca2:	29 c1                	sub    %eax,%ecx
c0037ca4:	83 c1 30             	add    $0x30,%ecx
c0037ca7:	85 d2                	test   %edx,%edx
c0037ca9:	88 0b                	mov    %cl,(%ebx)
c0037cab:	89 d1                	mov    %edx,%ecx
c0037cad:	75 e1                	jne    c0037c90 <_svfiprintf_r+0xc50>
c0037caf:	e9 71 f5 ff ff       	jmp    c0037225 <_svfiprintf_r+0x1e5>
c0037cb4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037cba:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037cbe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037cc1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037cc5:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cc8:	89 04 24             	mov    %eax,(%esp)
c0037ccb:	e8 80 f1 ff ff       	call   c0036e50 <__ssprint_r>
c0037cd0:	85 c0                	test   %eax,%eax
c0037cd2:	0f 85 70 fd ff ff    	jne    c0037a48 <_svfiprintf_r+0xa08>
c0037cd8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037cde:	e9 e3 fc ff ff       	jmp    c00379c6 <_svfiprintf_r+0x986>
c0037ce3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037ce9:	83 c1 30             	add    $0x30,%ecx
c0037cec:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037cef:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037cf2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037cf8:	e9 33 f5 ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c0037cfd:	8b 45 14             	mov    0x14(%ebp),%eax
c0037d00:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037d06:	8b 00                	mov    (%eax),%eax
c0037d08:	89 18                	mov    %ebx,(%eax)
c0037d0a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037d0d:	83 c0 04             	add    $0x4,%eax
c0037d10:	89 45 14             	mov    %eax,0x14(%ebp)
c0037d13:	e9 86 f3 ff ff       	jmp    c003709e <_svfiprintf_r+0x5e>
c0037d18:	0f b7 0b             	movzwl (%ebx),%ecx
c0037d1b:	83 c3 04             	add    $0x4,%ebx
c0037d1e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037d21:	e9 95 f8 ff ff       	jmp    c00375bb <_svfiprintf_r+0x57b>
c0037d26:	0f bf 08             	movswl (%eax),%ecx
c0037d29:	83 c0 04             	add    $0x4,%eax
c0037d2c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037d2f:	85 c9                	test   %ecx,%ecx
c0037d31:	0f 89 0d f7 ff ff    	jns    c0037444 <_svfiprintf_r+0x404>
c0037d37:	f7 d9                	neg    %ecx
c0037d39:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037d3e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037d45:	ba 01 00 00 00       	mov    $0x1,%edx
c0037d4a:	e9 7a f4 ff ff       	jmp    c00371c9 <_svfiprintf_r+0x189>
c0037d4f:	89 1c 24             	mov    %ebx,(%esp)
c0037d52:	e8 79 f0 ff ff       	call   c0036dd0 <strlen>
c0037d57:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037d5d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037d64:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037d6b:	00 00 00 
c0037d6e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037d71:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037d77:	e9 b4 f4 ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c0037d7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d7f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037d86:	00 
c0037d87:	89 04 24             	mov    %eax,(%esp)
c0037d8a:	e8 b1 d9 ff ff       	call   c0035740 <_malloc_r>
c0037d8f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d92:	85 c0                	test   %eax,%eax
c0037d94:	89 06                	mov    %eax,(%esi)
c0037d96:	89 46 10             	mov    %eax,0x10(%esi)
c0037d99:	0f 84 a3 00 00 00    	je     c0037e42 <_svfiprintf_r+0xe02>
c0037d9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037da2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037da9:	e9 b2 f2 ff ff       	jmp    c0037060 <_svfiprintf_r+0x20>
c0037dae:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037db4:	b8 06 00 00 00       	mov    $0x6,%eax
c0037db9:	89 55 14             	mov    %edx,0x14(%ebp)
c0037dbc:	83 ff 06             	cmp    $0x6,%edi
c0037dbf:	0f 46 c7             	cmovbe %edi,%eax
c0037dc2:	85 c0                	test   %eax,%eax
c0037dc4:	0f 49 d8             	cmovns %eax,%ebx
c0037dc7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037dcd:	bb 1c 90 03 c0       	mov    $0xc003901c,%ebx
c0037dd2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037dd8:	e9 61 f8 ff ff       	jmp    c003763e <_svfiprintf_r+0x5fe>
c0037ddd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037de3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037dea:	89 55 14             	mov    %edx,0x14(%ebp)
c0037ded:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037df4:	00 00 00 
c0037df7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037dfd:	e9 2e f4 ff ff       	jmp    c0037230 <_svfiprintf_r+0x1f0>
c0037e02:	89 da                	mov    %ebx,%edx
c0037e04:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037e0b:	00 00 00 
c0037e0e:	e9 29 f3 ff ff       	jmp    c003713c <_svfiprintf_r+0xfc>
c0037e13:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037e16:	89 da                	mov    %ebx,%edx
c0037e18:	8b 45 14             	mov    0x14(%ebp),%eax
c0037e1b:	8b 09                	mov    (%ecx),%ecx
c0037e1d:	83 c0 04             	add    $0x4,%eax
c0037e20:	89 45 14             	mov    %eax,0x14(%ebp)
c0037e23:	85 c9                	test   %ecx,%ecx
c0037e25:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037e2b:	0f 89 26 f3 ff ff    	jns    c0037157 <_svfiprintf_r+0x117>
c0037e31:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037e38:	ff ff ff 
c0037e3b:	89 d0                	mov    %edx,%eax
c0037e3d:	e9 f4 f2 ff ff       	jmp    c0037136 <_svfiprintf_r+0xf6>
c0037e42:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e45:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037e4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037e50:	e9 06 fc ff ff       	jmp    c0037a5b <_svfiprintf_r+0xa1b>
c0037e55:	66 90                	xchg   %ax,%ax
c0037e57:	66 90                	xchg   %ax,%ax
c0037e59:	66 90                	xchg   %ax,%ax
c0037e5b:	66 90                	xchg   %ax,%ax
c0037e5d:	66 90                	xchg   %ax,%ax
c0037e5f:	90                   	nop

c0037e60 <_calloc_r>:
c0037e60:	55                   	push   %ebp
c0037e61:	89 e5                	mov    %esp,%ebp
c0037e63:	53                   	push   %ebx
c0037e64:	83 ec 14             	sub    $0x14,%esp
c0037e67:	8b 45 10             	mov    0x10(%ebp),%eax
c0037e6a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037e6e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e72:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e75:	89 04 24             	mov    %eax,(%esp)
c0037e78:	e8 c3 d8 ff ff       	call   c0035740 <_malloc_r>
c0037e7d:	85 c0                	test   %eax,%eax
c0037e7f:	89 c3                	mov    %eax,%ebx
c0037e81:	0f 84 91 00 00 00    	je     c0037f18 <_calloc_r+0xb8>
c0037e87:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037e8a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037e8d:	83 e8 04             	sub    $0x4,%eax
c0037e90:	83 f8 24             	cmp    $0x24,%eax
c0037e93:	77 63                	ja     c0037ef8 <_calloc_r+0x98>
c0037e95:	83 f8 13             	cmp    $0x13,%eax
c0037e98:	89 da                	mov    %ebx,%edx
c0037e9a:	77 1c                	ja     c0037eb8 <_calloc_r+0x58>
c0037e9c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037ea2:	89 d8                	mov    %ebx,%eax
c0037ea4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037eab:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037eb2:	83 c4 14             	add    $0x14,%esp
c0037eb5:	5b                   	pop    %ebx
c0037eb6:	5d                   	pop    %ebp
c0037eb7:	c3                   	ret    
c0037eb8:	83 f8 1b             	cmp    $0x1b,%eax
c0037ebb:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037ec1:	8d 53 08             	lea    0x8(%ebx),%edx
c0037ec4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037ecb:	76 cf                	jbe    c0037e9c <_calloc_r+0x3c>
c0037ecd:	83 f8 24             	cmp    $0x24,%eax
c0037ed0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037ed7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037eda:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037ee1:	75 b9                	jne    c0037e9c <_calloc_r+0x3c>
c0037ee3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037eea:	8d 53 18             	lea    0x18(%ebx),%edx
c0037eed:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037ef4:	eb a6                	jmp    c0037e9c <_calloc_r+0x3c>
c0037ef6:	66 90                	xchg   %ax,%ax
c0037ef8:	89 1c 24             	mov    %ebx,(%esp)
c0037efb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037eff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037f06:	00 
c0037f07:	e8 50 a2 ff ff       	call   c003215c <memset>
c0037f0c:	83 c4 14             	add    $0x14,%esp
c0037f0f:	89 d8                	mov    %ebx,%eax
c0037f11:	5b                   	pop    %ebx
c0037f12:	5d                   	pop    %ebp
c0037f13:	c3                   	ret    
c0037f14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037f18:	31 c0                	xor    %eax,%eax
c0037f1a:	eb 96                	jmp    c0037eb2 <_calloc_r+0x52>
c0037f1c:	66 90                	xchg   %ax,%ax
c0037f1e:	66 90                	xchg   %ax,%ax

c0037f20 <_malloc_trim_r>:
c0037f20:	55                   	push   %ebp
c0037f21:	89 e5                	mov    %esp,%ebp
c0037f23:	57                   	push   %edi
c0037f24:	56                   	push   %esi
c0037f25:	53                   	push   %ebx
c0037f26:	83 ec 1c             	sub    $0x1c,%esp
c0037f29:	8b 75 08             	mov    0x8(%ebp),%esi
c0037f2c:	89 34 24             	mov    %esi,(%esp)
c0037f2f:	e8 ec df ff ff       	call   c0035f20 <__malloc_lock>
c0037f34:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037f39:	8b 58 04             	mov    0x4(%eax),%ebx
c0037f3c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037f3f:	89 d8                	mov    %ebx,%eax
c0037f41:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037f44:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037f49:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037f4e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037f54:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037f5a:	7e 1c                	jle    c0037f78 <_malloc_trim_r+0x58>
c0037f5c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037f63:	00 
c0037f64:	89 34 24             	mov    %esi,(%esp)
c0037f67:	e8 b4 ed ff ff       	call   c0036d20 <_sbrk_r>
c0037f6c:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037f72:	01 da                	add    %ebx,%edx
c0037f74:	39 d0                	cmp    %edx,%eax
c0037f76:	74 18                	je     c0037f90 <_malloc_trim_r+0x70>
c0037f78:	89 34 24             	mov    %esi,(%esp)
c0037f7b:	e8 b0 df ff ff       	call   c0035f30 <__malloc_unlock>
c0037f80:	83 c4 1c             	add    $0x1c,%esp
c0037f83:	31 c0                	xor    %eax,%eax
c0037f85:	5b                   	pop    %ebx
c0037f86:	5e                   	pop    %esi
c0037f87:	5f                   	pop    %edi
c0037f88:	5d                   	pop    %ebp
c0037f89:	c3                   	ret    
c0037f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f90:	89 f8                	mov    %edi,%eax
c0037f92:	f7 d8                	neg    %eax
c0037f94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037f98:	89 34 24             	mov    %esi,(%esp)
c0037f9b:	e8 80 ed ff ff       	call   c0036d20 <_sbrk_r>
c0037fa0:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037fa3:	74 2b                	je     c0037fd0 <_malloc_trim_r+0xb0>
c0037fa5:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037faa:	29 fb                	sub    %edi,%ebx
c0037fac:	83 cb 01             	or     $0x1,%ebx
c0037faf:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037fb5:	89 58 04             	mov    %ebx,0x4(%eax)
c0037fb8:	89 34 24             	mov    %esi,(%esp)
c0037fbb:	e8 70 df ff ff       	call   c0035f30 <__malloc_unlock>
c0037fc0:	83 c4 1c             	add    $0x1c,%esp
c0037fc3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037fc8:	5b                   	pop    %ebx
c0037fc9:	5e                   	pop    %esi
c0037fca:	5f                   	pop    %edi
c0037fcb:	5d                   	pop    %ebp
c0037fcc:	c3                   	ret    
c0037fcd:	8d 76 00             	lea    0x0(%esi),%esi
c0037fd0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037fd7:	00 
c0037fd8:	89 34 24             	mov    %esi,(%esp)
c0037fdb:	e8 40 ed ff ff       	call   c0036d20 <_sbrk_r>
c0037fe0:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037fe6:	89 c1                	mov    %eax,%ecx
c0037fe8:	29 d1                	sub    %edx,%ecx
c0037fea:	83 f9 0f             	cmp    $0xf,%ecx
c0037fed:	7e 89                	jle    c0037f78 <_malloc_trim_r+0x58>
c0037fef:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037ff5:	83 c9 01             	or     $0x1,%ecx
c0037ff8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ffb:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0038000:	e9 73 ff ff ff       	jmp    c0037f78 <_malloc_trim_r+0x58>
c0038005:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0038010 <_free_r>:
c0038010:	55                   	push   %ebp
c0038011:	89 e5                	mov    %esp,%ebp
c0038013:	57                   	push   %edi
c0038014:	56                   	push   %esi
c0038015:	53                   	push   %ebx
c0038016:	83 ec 1c             	sub    $0x1c,%esp
c0038019:	8b 75 0c             	mov    0xc(%ebp),%esi
c003801c:	8b 45 08             	mov    0x8(%ebp),%eax
c003801f:	85 f6                	test   %esi,%esi
c0038021:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038024:	0f 84 fe 00 00 00    	je     c0038128 <_free_r+0x118>
c003802a:	89 04 24             	mov    %eax,(%esp)
c003802d:	e8 ee de ff ff       	call   c0035f20 <__malloc_lock>
c0038032:	8b 7e fc             	mov    -0x4(%esi),%edi
c0038035:	8d 56 f8             	lea    -0x8(%esi),%edx
c0038038:	89 f8                	mov    %edi,%eax
c003803a:	83 e0 fe             	and    $0xfffffffe,%eax
c003803d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0038040:	8b 59 04             	mov    0x4(%ecx),%ebx
c0038043:	83 e3 fc             	and    $0xfffffffc,%ebx
c0038046:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c003804c:	0f 84 0e 01 00 00    	je     c0038160 <_free_r+0x150>
c0038052:	83 e7 01             	and    $0x1,%edi
c0038055:	89 59 04             	mov    %ebx,0x4(%ecx)
c0038058:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c003805f:	75 1f                	jne    c0038080 <_free_r+0x70>
c0038061:	8b 76 f8             	mov    -0x8(%esi),%esi
c0038064:	29 f2                	sub    %esi,%edx
c0038066:	01 f0                	add    %esi,%eax
c0038068:	8b 72 08             	mov    0x8(%edx),%esi
c003806b:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0038071:	0f 84 39 01 00 00    	je     c00381b0 <_free_r+0x1a0>
c0038077:	8b 7a 0c             	mov    0xc(%edx),%edi
c003807a:	89 7e 0c             	mov    %edi,0xc(%esi)
c003807d:	89 77 08             	mov    %esi,0x8(%edi)
c0038080:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0038085:	75 21                	jne    c00380a8 <_free_r+0x98>
c0038087:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003808a:	01 d8                	add    %ebx,%eax
c003808c:	8b 59 08             	mov    0x8(%ecx),%ebx
c003808f:	85 f6                	test   %esi,%esi
c0038091:	75 0c                	jne    c003809f <_free_r+0x8f>
c0038093:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0038099:	0f 84 21 01 00 00    	je     c00381c0 <_free_r+0x1b0>
c003809f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c00380a2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c00380a5:	89 59 08             	mov    %ebx,0x8(%ecx)
c00380a8:	89 c1                	mov    %eax,%ecx
c00380aa:	83 c9 01             	or     $0x1,%ecx
c00380ad:	89 4a 04             	mov    %ecx,0x4(%edx)
c00380b0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00380b3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00380b6:	85 c9                	test   %ecx,%ecx
c00380b8:	75 56                	jne    c0038110 <_free_r+0x100>
c00380ba:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c00380bf:	76 6f                	jbe    c0038130 <_free_r+0x120>
c00380c1:	89 c1                	mov    %eax,%ecx
c00380c3:	c1 e9 09             	shr    $0x9,%ecx
c00380c6:	83 f9 04             	cmp    $0x4,%ecx
c00380c9:	0f 87 21 01 00 00    	ja     c00381f0 <_free_r+0x1e0>
c00380cf:	89 c1                	mov    %eax,%ecx
c00380d1:	c1 e9 06             	shr    $0x6,%ecx
c00380d4:	83 c1 38             	add    $0x38,%ecx
c00380d7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00380da:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c00380e1:	8b 5e 08             	mov    0x8(%esi),%ebx
c00380e4:	39 f3                	cmp    %esi,%ebx
c00380e6:	0f 84 14 01 00 00    	je     c0038200 <_free_r+0x1f0>
c00380ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00380f0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c00380f3:	83 e1 fc             	and    $0xfffffffc,%ecx
c00380f6:	39 c8                	cmp    %ecx,%eax
c00380f8:	73 07                	jae    c0038101 <_free_r+0xf1>
c00380fa:	8b 5b 08             	mov    0x8(%ebx),%ebx
c00380fd:	39 de                	cmp    %ebx,%esi
c00380ff:	75 ef                	jne    c00380f0 <_free_r+0xe0>
c0038101:	8b 43 0c             	mov    0xc(%ebx),%eax
c0038104:	89 42 0c             	mov    %eax,0xc(%edx)
c0038107:	89 5a 08             	mov    %ebx,0x8(%edx)
c003810a:	89 50 08             	mov    %edx,0x8(%eax)
c003810d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0038110:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038113:	89 45 08             	mov    %eax,0x8(%ebp)
c0038116:	83 c4 1c             	add    $0x1c,%esp
c0038119:	5b                   	pop    %ebx
c003811a:	5e                   	pop    %esi
c003811b:	5f                   	pop    %edi
c003811c:	5d                   	pop    %ebp
c003811d:	e9 0e de ff ff       	jmp    c0035f30 <__malloc_unlock>
c0038122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038128:	83 c4 1c             	add    $0x1c,%esp
c003812b:	5b                   	pop    %ebx
c003812c:	5e                   	pop    %esi
c003812d:	5f                   	pop    %edi
c003812e:	5d                   	pop    %ebp
c003812f:	c3                   	ret    
c0038130:	c1 e8 03             	shr    $0x3,%eax
c0038133:	bb 01 00 00 00       	mov    $0x1,%ebx
c0038138:	89 c1                	mov    %eax,%ecx
c003813a:	c1 f9 02             	sar    $0x2,%ecx
c003813d:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0038144:	d3 e3                	shl    %cl,%ebx
c0038146:	8b 48 08             	mov    0x8(%eax),%ecx
c0038149:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c003814f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038152:	89 4a 08             	mov    %ecx,0x8(%edx)
c0038155:	89 50 08             	mov    %edx,0x8(%eax)
c0038158:	89 51 0c             	mov    %edx,0xc(%ecx)
c003815b:	eb b3                	jmp    c0038110 <_free_r+0x100>
c003815d:	8d 76 00             	lea    0x0(%esi),%esi
c0038160:	01 d8                	add    %ebx,%eax
c0038162:	83 e7 01             	and    $0x1,%edi
c0038165:	75 13                	jne    c003817a <_free_r+0x16a>
c0038167:	8b 4e f8             	mov    -0x8(%esi),%ecx
c003816a:	29 ca                	sub    %ecx,%edx
c003816c:	01 c8                	add    %ecx,%eax
c003816e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0038171:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0038174:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0038177:	89 59 08             	mov    %ebx,0x8(%ecx)
c003817a:	89 c1                	mov    %eax,%ecx
c003817c:	83 c9 01             	or     $0x1,%ecx
c003817f:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0038185:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038188:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c003818e:	72 80                	jb     c0038110 <_free_r+0x100>
c0038190:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0038195:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038199:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003819c:	89 04 24             	mov    %eax,(%esp)
c003819f:	e8 7c fd ff ff       	call   c0037f20 <_malloc_trim_r>
c00381a4:	e9 67 ff ff ff       	jmp    c0038110 <_free_r+0x100>
c00381a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00381b0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c00381b7:	e9 c4 fe ff ff       	jmp    c0038080 <_free_r+0x70>
c00381bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00381c0:	89 c1                	mov    %eax,%ecx
c00381c2:	83 c9 01             	or     $0x1,%ecx
c00381c5:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c00381cb:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c00381d1:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c00381d8:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c00381df:	89 4a 04             	mov    %ecx,0x4(%edx)
c00381e2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00381e5:	e9 26 ff ff ff       	jmp    c0038110 <_free_r+0x100>
c00381ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00381f0:	83 f9 14             	cmp    $0x14,%ecx
c00381f3:	77 23                	ja     c0038218 <_free_r+0x208>
c00381f5:	83 c1 5b             	add    $0x5b,%ecx
c00381f8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00381fb:	e9 da fe ff ff       	jmp    c00380da <_free_r+0xca>
c0038200:	c1 f9 02             	sar    $0x2,%ecx
c0038203:	b8 01 00 00 00       	mov    $0x1,%eax
c0038208:	d3 e0                	shl    %cl,%eax
c003820a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0038210:	89 d8                	mov    %ebx,%eax
c0038212:	e9 ed fe ff ff       	jmp    c0038104 <_free_r+0xf4>
c0038217:	90                   	nop
c0038218:	83 f9 54             	cmp    $0x54,%ecx
c003821b:	77 10                	ja     c003822d <_free_r+0x21d>
c003821d:	89 c1                	mov    %eax,%ecx
c003821f:	c1 e9 0c             	shr    $0xc,%ecx
c0038222:	83 c1 6e             	add    $0x6e,%ecx
c0038225:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038228:	e9 ad fe ff ff       	jmp    c00380da <_free_r+0xca>
c003822d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0038233:	77 10                	ja     c0038245 <_free_r+0x235>
c0038235:	89 c1                	mov    %eax,%ecx
c0038237:	c1 e9 0f             	shr    $0xf,%ecx
c003823a:	83 c1 77             	add    $0x77,%ecx
c003823d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038240:	e9 95 fe ff ff       	jmp    c00380da <_free_r+0xca>
c0038245:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c003824b:	77 10                	ja     c003825d <_free_r+0x24d>
c003824d:	89 c1                	mov    %eax,%ecx
c003824f:	c1 e9 12             	shr    $0x12,%ecx
c0038252:	83 c1 7c             	add    $0x7c,%ecx
c0038255:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038258:	e9 7d fe ff ff       	jmp    c00380da <_free_r+0xca>
c003825d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0038262:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0038267:	e9 6e fe ff ff       	jmp    c00380da <_free_r+0xca>
c003826c:	66 90                	xchg   %ax,%ax
c003826e:	66 90                	xchg   %ax,%ax

c0038270 <memmove>:
c0038270:	55                   	push   %ebp
c0038271:	89 e5                	mov    %esp,%ebp
c0038273:	56                   	push   %esi
c0038274:	57                   	push   %edi
c0038275:	53                   	push   %ebx
c0038276:	8b 7d 08             	mov    0x8(%ebp),%edi
c0038279:	8b 4d 10             	mov    0x10(%ebp),%ecx
c003827c:	8b 75 0c             	mov    0xc(%ebp),%esi
c003827f:	fc                   	cld    
c0038280:	39 fe                	cmp    %edi,%esi
c0038282:	73 43                	jae    c00382c7 <memmove+0x57>
c0038284:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0038288:	39 df                	cmp    %ebx,%edi
c003828a:	77 3b                	ja     c00382c7 <memmove+0x57>
c003828c:	01 ce                	add    %ecx,%esi
c003828e:	01 cf                	add    %ecx,%edi
c0038290:	fd                   	std    
c0038291:	83 f9 08             	cmp    $0x8,%ecx
c0038294:	76 2b                	jbe    c00382c1 <memmove+0x51>
c0038296:	89 fa                	mov    %edi,%edx
c0038298:	89 cb                	mov    %ecx,%ebx
c003829a:	83 e2 03             	and    $0x3,%edx
c003829d:	74 0c                	je     c00382ab <memmove+0x3b>
c003829f:	89 d1                	mov    %edx,%ecx
c00382a1:	4e                   	dec    %esi
c00382a2:	4f                   	dec    %edi
c00382a3:	29 cb                	sub    %ecx,%ebx
c00382a5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00382a7:	89 d9                	mov    %ebx,%ecx
c00382a9:	46                   	inc    %esi
c00382aa:	47                   	inc    %edi
c00382ab:	c1 e9 02             	shr    $0x2,%ecx
c00382ae:	83 ee 04             	sub    $0x4,%esi
c00382b1:	83 ef 04             	sub    $0x4,%edi
c00382b4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c00382b6:	83 c6 04             	add    $0x4,%esi
c00382b9:	83 c7 04             	add    $0x4,%edi
c00382bc:	89 d9                	mov    %ebx,%ecx
c00382be:	83 e1 03             	and    $0x3,%ecx
c00382c1:	4e                   	dec    %esi
c00382c2:	4f                   	dec    %edi
c00382c3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00382c5:	eb 2a                	jmp    c00382f1 <memmove+0x81>
c00382c7:	83 f9 08             	cmp    $0x8,%ecx
c00382ca:	76 23                	jbe    c00382ef <memmove+0x7f>
c00382cc:	89 fa                	mov    %edi,%edx
c00382ce:	89 cb                	mov    %ecx,%ebx
c00382d0:	83 e2 03             	and    $0x3,%edx
c00382d3:	74 10                	je     c00382e5 <memmove+0x75>
c00382d5:	b9 04 00 00 00       	mov    $0x4,%ecx
c00382da:	29 d1                	sub    %edx,%ecx
c00382dc:	83 e1 03             	and    $0x3,%ecx
c00382df:	29 cb                	sub    %ecx,%ebx
c00382e1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00382e3:	89 d9                	mov    %ebx,%ecx
c00382e5:	c1 e9 02             	shr    $0x2,%ecx
c00382e8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c00382ea:	89 d9                	mov    %ebx,%ecx
c00382ec:	83 e1 03             	and    $0x3,%ecx
c00382ef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00382f1:	8b 45 08             	mov    0x8(%ebp),%eax
c00382f4:	fc                   	cld    
c00382f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00382f8:	5b                   	pop    %ebx
c00382f9:	5f                   	pop    %edi
c00382fa:	5e                   	pop    %esi
c00382fb:	c9                   	leave  
c00382fc:	c3                   	ret    
c00382fd:	66 90                	xchg   %ax,%ax
c00382ff:	90                   	nop

c0038300 <_realloc_r>:
c0038300:	55                   	push   %ebp
c0038301:	89 e5                	mov    %esp,%ebp
c0038303:	57                   	push   %edi
c0038304:	56                   	push   %esi
c0038305:	53                   	push   %ebx
c0038306:	83 ec 3c             	sub    $0x3c,%esp
c0038309:	8b 45 08             	mov    0x8(%ebp),%eax
c003830c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003830f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038312:	8b 45 10             	mov    0x10(%ebp),%eax
c0038315:	85 ff                	test   %edi,%edi
c0038317:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003831a:	0f 84 50 02 00 00    	je     c0038570 <_realloc_r+0x270>
c0038320:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038323:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038326:	89 04 24             	mov    %eax,(%esp)
c0038329:	e8 f2 db ff ff       	call   c0035f20 <__malloc_lock>
c003832e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038331:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038334:	89 c3                	mov    %eax,%ebx
c0038336:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038339:	83 e3 fc             	and    $0xfffffffc,%ebx
c003833c:	83 fa 16             	cmp    $0x16,%edx
c003833f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038342:	0f 87 00 01 00 00    	ja     c0038448 <_realloc_r+0x148>
c0038348:	31 d2                	xor    %edx,%edx
c003834a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038351:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038358:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003835b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003835e:	0f 82 1c 02 00 00    	jb     c0038580 <_realloc_r+0x280>
c0038364:	84 d2                	test   %dl,%dl
c0038366:	0f 85 14 02 00 00    	jne    c0038580 <_realloc_r+0x280>
c003836c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003836f:	0f 8d eb 00 00 00    	jge    c0038460 <_realloc_r+0x160>
c0038375:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c003837b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003837e:	39 d1                	cmp    %edx,%ecx
c0038380:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038383:	0f 84 6f 02 00 00    	je     c00385f8 <_realloc_r+0x2f8>
c0038389:	8b 4a 04             	mov    0x4(%edx),%ecx
c003838c:	89 c8                	mov    %ecx,%eax
c003838e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038391:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038396:	0f 84 f4 00 00 00    	je     c0038490 <_realloc_r+0x190>
c003839c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00383a3:	31 d2                	xor    %edx,%edx
c00383a5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00383a9:	0f 85 39 01 00 00    	jne    c00384e8 <_realloc_r+0x1e8>
c00383af:	89 f1                	mov    %esi,%ecx
c00383b1:	2b 4f f8             	sub    -0x8(%edi),%ecx
c00383b4:	8b 41 04             	mov    0x4(%ecx),%eax
c00383b7:	83 e0 fc             	and    $0xfffffffc,%eax
c00383ba:	85 d2                	test   %edx,%edx
c00383bc:	0f 84 f6 02 00 00    	je     c00386b8 <_realloc_r+0x3b8>
c00383c2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00383c5:	0f 84 f5 02 00 00    	je     c00386c0 <_realloc_r+0x3c0>
c00383cb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00383ce:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00383d1:	01 d8                	add    %ebx,%eax
c00383d3:	01 c2                	add    %eax,%edx
c00383d5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00383d8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00383db:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00383de:	0f 8c ac 01 00 00    	jl     c0038590 <_realloc_r+0x290>
c00383e4:	8b 42 0c             	mov    0xc(%edx),%eax
c00383e7:	83 eb 04             	sub    $0x4,%ebx
c00383ea:	8b 52 08             	mov    0x8(%edx),%edx
c00383ed:	83 fb 24             	cmp    $0x24,%ebx
c00383f0:	8d 71 08             	lea    0x8(%ecx),%esi
c00383f3:	89 42 0c             	mov    %eax,0xc(%edx)
c00383f6:	89 50 08             	mov    %edx,0x8(%eax)
c00383f9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383fc:	8b 51 08             	mov    0x8(%ecx),%edx
c00383ff:	89 42 0c             	mov    %eax,0xc(%edx)
c0038402:	89 50 08             	mov    %edx,0x8(%eax)
c0038405:	0f 87 85 03 00 00    	ja     c0038790 <_realloc_r+0x490>
c003840b:	83 fb 13             	cmp    $0x13,%ebx
c003840e:	89 f0                	mov    %esi,%eax
c0038410:	76 1a                	jbe    c003842c <_realloc_r+0x12c>
c0038412:	8b 07                	mov    (%edi),%eax
c0038414:	83 fb 1b             	cmp    $0x1b,%ebx
c0038417:	89 41 08             	mov    %eax,0x8(%ecx)
c003841a:	8b 47 04             	mov    0x4(%edi),%eax
c003841d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038420:	0f 87 8f 03 00 00    	ja     c00387b5 <_realloc_r+0x4b5>
c0038426:	8d 41 10             	lea    0x10(%ecx),%eax
c0038429:	83 c7 08             	add    $0x8,%edi
c003842c:	8b 17                	mov    (%edi),%edx
c003842e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038431:	89 10                	mov    %edx,(%eax)
c0038433:	8b 57 04             	mov    0x4(%edi),%edx
c0038436:	89 50 04             	mov    %edx,0x4(%eax)
c0038439:	8b 57 08             	mov    0x8(%edi),%edx
c003843c:	89 f7                	mov    %esi,%edi
c003843e:	89 ce                	mov    %ecx,%esi
c0038440:	89 50 08             	mov    %edx,0x8(%eax)
c0038443:	8b 41 04             	mov    0x4(%ecx),%eax
c0038446:	eb 1b                	jmp    c0038463 <_realloc_r+0x163>
c0038448:	83 e2 f8             	and    $0xfffffff8,%edx
c003844b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003844e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038451:	c1 ea 1f             	shr    $0x1f,%edx
c0038454:	e9 ff fe ff ff       	jmp    c0038358 <_realloc_r+0x58>
c0038459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038460:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038463:	89 da                	mov    %ebx,%edx
c0038465:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038468:	83 fa 0f             	cmp    $0xf,%edx
c003846b:	77 4b                	ja     c00384b8 <_realloc_r+0x1b8>
c003846d:	83 e0 01             	and    $0x1,%eax
c0038470:	09 d8                	or     %ebx,%eax
c0038472:	89 46 04             	mov    %eax,0x4(%esi)
c0038475:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003847a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003847d:	89 04 24             	mov    %eax,(%esp)
c0038480:	e8 ab da ff ff       	call   c0035f30 <__malloc_unlock>
c0038485:	89 f8                	mov    %edi,%eax
c0038487:	83 c4 3c             	add    $0x3c,%esp
c003848a:	5b                   	pop    %ebx
c003848b:	5e                   	pop    %esi
c003848c:	5f                   	pop    %edi
c003848d:	5d                   	pop    %ebp
c003848e:	c3                   	ret    
c003848f:	90                   	nop
c0038490:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038493:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038496:	01 d9                	add    %ebx,%ecx
c0038498:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003849b:	0f 8c 04 ff ff ff    	jl     c00383a5 <_realloc_r+0xa5>
c00384a1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00384a4:	8b 52 08             	mov    0x8(%edx),%edx
c00384a7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00384aa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00384ad:	89 53 08             	mov    %edx,0x8(%ebx)
c00384b0:	89 cb                	mov    %ecx,%ebx
c00384b2:	eb af                	jmp    c0038463 <_realloc_r+0x163>
c00384b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00384b8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00384bb:	83 e0 01             	and    $0x1,%eax
c00384be:	09 d8                	or     %ebx,%eax
c00384c0:	89 46 04             	mov    %eax,0x4(%esi)
c00384c3:	89 d0                	mov    %edx,%eax
c00384c5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00384c8:	83 c8 01             	or     $0x1,%eax
c00384cb:	89 41 04             	mov    %eax,0x4(%ecx)
c00384ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384d1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00384d6:	83 c1 08             	add    $0x8,%ecx
c00384d9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00384dd:	89 04 24             	mov    %eax,(%esp)
c00384e0:	e8 2b fb ff ff       	call   c0038010 <_free_r>
c00384e5:	eb 93                	jmp    c003847a <_realloc_r+0x17a>
c00384e7:	90                   	nop
c00384e8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00384eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00384ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384f2:	89 04 24             	mov    %eax,(%esp)
c00384f5:	e8 46 d2 ff ff       	call   c0035740 <_malloc_r>
c00384fa:	85 c0                	test   %eax,%eax
c00384fc:	89 c1                	mov    %eax,%ecx
c00384fe:	0f 84 65 03 00 00    	je     c0038869 <_realloc_r+0x569>
c0038504:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038507:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003850a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003850d:	89 c2                	mov    %eax,%edx
c003850f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038512:	01 f2                	add    %esi,%edx
c0038514:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038517:	0f 84 63 02 00 00    	je     c0038780 <_realloc_r+0x480>
c003851d:	83 eb 04             	sub    $0x4,%ebx
c0038520:	83 fb 24             	cmp    $0x24,%ebx
c0038523:	0f 87 6f 01 00 00    	ja     c0038698 <_realloc_r+0x398>
c0038529:	83 fb 13             	cmp    $0x13,%ebx
c003852c:	0f 87 ee 00 00 00    	ja     c0038620 <_realloc_r+0x320>
c0038532:	89 c8                	mov    %ecx,%eax
c0038534:	89 fa                	mov    %edi,%edx
c0038536:	8b 1a                	mov    (%edx),%ebx
c0038538:	89 18                	mov    %ebx,(%eax)
c003853a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003853d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038540:	8b 52 08             	mov    0x8(%edx),%edx
c0038543:	89 50 08             	mov    %edx,0x8(%eax)
c0038546:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038549:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003854d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038550:	89 34 24             	mov    %esi,(%esp)
c0038553:	e8 b8 fa ff ff       	call   c0038010 <_free_r>
c0038558:	89 34 24             	mov    %esi,(%esp)
c003855b:	e8 d0 d9 ff ff       	call   c0035f30 <__malloc_unlock>
c0038560:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038563:	83 c4 3c             	add    $0x3c,%esp
c0038566:	5b                   	pop    %ebx
c0038567:	5e                   	pop    %esi
c0038568:	5f                   	pop    %edi
c0038569:	89 c8                	mov    %ecx,%eax
c003856b:	5d                   	pop    %ebp
c003856c:	c3                   	ret    
c003856d:	8d 76 00             	lea    0x0(%esi),%esi
c0038570:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038573:	83 c4 3c             	add    $0x3c,%esp
c0038576:	5b                   	pop    %ebx
c0038577:	5e                   	pop    %esi
c0038578:	5f                   	pop    %edi
c0038579:	5d                   	pop    %ebp
c003857a:	e9 c1 d1 ff ff       	jmp    c0035740 <_malloc_r>
c003857f:	90                   	nop
c0038580:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038583:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038589:	31 c0                	xor    %eax,%eax
c003858b:	e9 f7 fe ff ff       	jmp    c0038487 <_realloc_r+0x187>
c0038590:	89 c2                	mov    %eax,%edx
c0038592:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038595:	0f 8c 4d ff ff ff    	jl     c00384e8 <_realloc_r+0x1e8>
c003859b:	8b 71 08             	mov    0x8(%ecx),%esi
c003859e:	83 eb 04             	sub    $0x4,%ebx
c00385a1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00385a4:	83 fb 24             	cmp    $0x24,%ebx
c00385a7:	89 46 0c             	mov    %eax,0xc(%esi)
c00385aa:	89 70 08             	mov    %esi,0x8(%eax)
c00385ad:	8d 71 08             	lea    0x8(%ecx),%esi
c00385b0:	0f 87 88 00 00 00    	ja     c003863e <_realloc_r+0x33e>
c00385b6:	83 fb 13             	cmp    $0x13,%ebx
c00385b9:	89 f0                	mov    %esi,%eax
c00385bb:	76 1a                	jbe    c00385d7 <_realloc_r+0x2d7>
c00385bd:	8b 07                	mov    (%edi),%eax
c00385bf:	83 fb 1b             	cmp    $0x1b,%ebx
c00385c2:	89 41 08             	mov    %eax,0x8(%ecx)
c00385c5:	8b 47 04             	mov    0x4(%edi),%eax
c00385c8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00385cb:	0f 87 17 02 00 00    	ja     c00387e8 <_realloc_r+0x4e8>
c00385d1:	8d 41 10             	lea    0x10(%ecx),%eax
c00385d4:	83 c7 08             	add    $0x8,%edi
c00385d7:	8b 1f                	mov    (%edi),%ebx
c00385d9:	89 18                	mov    %ebx,(%eax)
c00385db:	8b 5f 04             	mov    0x4(%edi),%ebx
c00385de:	89 58 04             	mov    %ebx,0x4(%eax)
c00385e1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00385e4:	89 f7                	mov    %esi,%edi
c00385e6:	89 ce                	mov    %ecx,%esi
c00385e8:	89 58 08             	mov    %ebx,0x8(%eax)
c00385eb:	89 d3                	mov    %edx,%ebx
c00385ed:	8b 41 04             	mov    0x4(%ecx),%eax
c00385f0:	e9 6e fe ff ff       	jmp    c0038463 <_realloc_r+0x163>
c00385f5:	8d 76 00             	lea    0x0(%esi),%esi
c00385f8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00385fb:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00385fe:	8b 48 04             	mov    0x4(%eax),%ecx
c0038601:	83 c2 10             	add    $0x10,%edx
c0038604:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038607:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003860b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003860e:	01 d9                	add    %ebx,%ecx
c0038610:	39 d1                	cmp    %edx,%ecx
c0038612:	7d 54                	jge    c0038668 <_realloc_r+0x368>
c0038614:	89 c2                	mov    %eax,%edx
c0038616:	e9 8a fd ff ff       	jmp    c00383a5 <_realloc_r+0xa5>
c003861b:	90                   	nop
c003861c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038620:	8b 07                	mov    (%edi),%eax
c0038622:	83 fb 1b             	cmp    $0x1b,%ebx
c0038625:	89 01                	mov    %eax,(%ecx)
c0038627:	8b 47 04             	mov    0x4(%edi),%eax
c003862a:	89 41 04             	mov    %eax,0x4(%ecx)
c003862d:	0f 87 2d 01 00 00    	ja     c0038760 <_realloc_r+0x460>
c0038633:	8d 41 08             	lea    0x8(%ecx),%eax
c0038636:	8d 57 08             	lea    0x8(%edi),%edx
c0038639:	e9 f8 fe ff ff       	jmp    c0038536 <_realloc_r+0x236>
c003863e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038642:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038646:	89 f7                	mov    %esi,%edi
c0038648:	89 34 24             	mov    %esi,(%esp)
c003864b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003864e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038651:	e8 1a fc ff ff       	call   c0038270 <memmove>
c0038656:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038659:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003865c:	8b 41 04             	mov    0x4(%ecx),%eax
c003865f:	89 ce                	mov    %ecx,%esi
c0038661:	89 d3                	mov    %edx,%ebx
c0038663:	e9 fb fd ff ff       	jmp    c0038463 <_realloc_r+0x163>
c0038668:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003866b:	29 d9                	sub    %ebx,%ecx
c003866d:	01 de                	add    %ebx,%esi
c003866f:	83 c9 01             	or     $0x1,%ecx
c0038672:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c0038678:	89 4e 04             	mov    %ecx,0x4(%esi)
c003867b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003867e:	83 e0 01             	and    $0x1,%eax
c0038681:	09 d8                	or     %ebx,%eax
c0038683:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038686:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038689:	89 04 24             	mov    %eax,(%esp)
c003868c:	e8 9f d8 ff ff       	call   c0035f30 <__malloc_unlock>
c0038691:	89 f8                	mov    %edi,%eax
c0038693:	e9 ef fd ff ff       	jmp    c0038487 <_realloc_r+0x187>
c0038698:	89 0c 24             	mov    %ecx,(%esp)
c003869b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003869f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00386a3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00386a6:	e8 c5 fb ff ff       	call   c0038270 <memmove>
c00386ab:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00386ae:	e9 93 fe ff ff       	jmp    c0038546 <_realloc_r+0x246>
c00386b3:	90                   	nop
c00386b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00386b8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00386bb:	e9 d2 fe ff ff       	jmp    c0038592 <_realloc_r+0x292>
c00386c0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00386c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00386c6:	01 d0                	add    %edx,%eax
c00386c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00386cb:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00386ce:	83 c0 10             	add    $0x10,%eax
c00386d1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00386d4:	0f 8c b8 fe ff ff    	jl     c0038592 <_realloc_r+0x292>
c00386da:	8b 41 0c             	mov    0xc(%ecx),%eax
c00386dd:	83 eb 04             	sub    $0x4,%ebx
c00386e0:	8b 51 08             	mov    0x8(%ecx),%edx
c00386e3:	83 fb 24             	cmp    $0x24,%ebx
c00386e6:	8d 71 08             	lea    0x8(%ecx),%esi
c00386e9:	89 42 0c             	mov    %eax,0xc(%edx)
c00386ec:	89 50 08             	mov    %edx,0x8(%eax)
c00386ef:	0f 87 3d 01 00 00    	ja     c0038832 <_realloc_r+0x532>
c00386f5:	83 fb 13             	cmp    $0x13,%ebx
c00386f8:	89 f0                	mov    %esi,%eax
c00386fa:	76 1a                	jbe    c0038716 <_realloc_r+0x416>
c00386fc:	8b 07                	mov    (%edi),%eax
c00386fe:	83 fb 1b             	cmp    $0x1b,%ebx
c0038701:	89 41 08             	mov    %eax,0x8(%ecx)
c0038704:	8b 47 04             	mov    0x4(%edi),%eax
c0038707:	89 41 0c             	mov    %eax,0xc(%ecx)
c003870a:	0f 87 3d 01 00 00    	ja     c003884d <_realloc_r+0x54d>
c0038710:	8d 41 10             	lea    0x10(%ecx),%eax
c0038713:	83 c7 08             	add    $0x8,%edi
c0038716:	8b 17                	mov    (%edi),%edx
c0038718:	89 10                	mov    %edx,(%eax)
c003871a:	8b 57 04             	mov    0x4(%edi),%edx
c003871d:	89 50 04             	mov    %edx,0x4(%eax)
c0038720:	8b 57 08             	mov    0x8(%edi),%edx
c0038723:	89 50 08             	mov    %edx,0x8(%eax)
c0038726:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038729:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003872c:	89 d8                	mov    %ebx,%eax
c003872e:	29 df                	sub    %ebx,%edi
c0038730:	01 c8                	add    %ecx,%eax
c0038732:	83 cf 01             	or     $0x1,%edi
c0038735:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c003873a:	89 78 04             	mov    %edi,0x4(%eax)
c003873d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038740:	83 e0 01             	and    $0x1,%eax
c0038743:	09 d8                	or     %ebx,%eax
c0038745:	89 41 04             	mov    %eax,0x4(%ecx)
c0038748:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003874b:	89 04 24             	mov    %eax,(%esp)
c003874e:	e8 dd d7 ff ff       	call   c0035f30 <__malloc_unlock>
c0038753:	89 f0                	mov    %esi,%eax
c0038755:	e9 2d fd ff ff       	jmp    c0038487 <_realloc_r+0x187>
c003875a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038760:	8b 47 08             	mov    0x8(%edi),%eax
c0038763:	83 fb 24             	cmp    $0x24,%ebx
c0038766:	89 41 08             	mov    %eax,0x8(%ecx)
c0038769:	8b 47 0c             	mov    0xc(%edi),%eax
c003876c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003876f:	74 60                	je     c00387d1 <_realloc_r+0x4d1>
c0038771:	8d 41 10             	lea    0x10(%ecx),%eax
c0038774:	8d 57 10             	lea    0x10(%edi),%edx
c0038777:	e9 ba fd ff ff       	jmp    c0038536 <_realloc_r+0x236>
c003877c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038780:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038783:	83 e2 fc             	and    $0xfffffffc,%edx
c0038786:	01 d3                	add    %edx,%ebx
c0038788:	e9 d6 fc ff ff       	jmp    c0038463 <_realloc_r+0x163>
c003878d:	8d 76 00             	lea    0x0(%esi),%esi
c0038790:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038794:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038798:	89 f7                	mov    %esi,%edi
c003879a:	89 34 24             	mov    %esi,(%esp)
c003879d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00387a0:	e8 cb fa ff ff       	call   c0038270 <memmove>
c00387a5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00387a8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00387ab:	8b 41 04             	mov    0x4(%ecx),%eax
c00387ae:	89 ce                	mov    %ecx,%esi
c00387b0:	e9 ae fc ff ff       	jmp    c0038463 <_realloc_r+0x163>
c00387b5:	8b 47 08             	mov    0x8(%edi),%eax
c00387b8:	83 fb 24             	cmp    $0x24,%ebx
c00387bb:	89 41 10             	mov    %eax,0x10(%ecx)
c00387be:	8b 47 0c             	mov    0xc(%edi),%eax
c00387c1:	89 41 14             	mov    %eax,0x14(%ecx)
c00387c4:	74 3e                	je     c0038804 <_realloc_r+0x504>
c00387c6:	8d 41 18             	lea    0x18(%ecx),%eax
c00387c9:	83 c7 10             	add    $0x10,%edi
c00387cc:	e9 5b fc ff ff       	jmp    c003842c <_realloc_r+0x12c>
c00387d1:	8b 47 10             	mov    0x10(%edi),%eax
c00387d4:	8d 57 18             	lea    0x18(%edi),%edx
c00387d7:	89 41 10             	mov    %eax,0x10(%ecx)
c00387da:	8b 5f 14             	mov    0x14(%edi),%ebx
c00387dd:	8d 41 18             	lea    0x18(%ecx),%eax
c00387e0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00387e3:	e9 4e fd ff ff       	jmp    c0038536 <_realloc_r+0x236>
c00387e8:	8b 47 08             	mov    0x8(%edi),%eax
c00387eb:	83 fb 24             	cmp    $0x24,%ebx
c00387ee:	89 41 10             	mov    %eax,0x10(%ecx)
c00387f1:	8b 47 0c             	mov    0xc(%edi),%eax
c00387f4:	89 41 14             	mov    %eax,0x14(%ecx)
c00387f7:	74 22                	je     c003881b <_realloc_r+0x51b>
c00387f9:	8d 41 18             	lea    0x18(%ecx),%eax
c00387fc:	83 c7 10             	add    $0x10,%edi
c00387ff:	e9 d3 fd ff ff       	jmp    c00385d7 <_realloc_r+0x2d7>
c0038804:	8b 47 10             	mov    0x10(%edi),%eax
c0038807:	83 c7 18             	add    $0x18,%edi
c003880a:	89 41 18             	mov    %eax,0x18(%ecx)
c003880d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038810:	8d 41 20             	lea    0x20(%ecx),%eax
c0038813:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038816:	e9 11 fc ff ff       	jmp    c003842c <_realloc_r+0x12c>
c003881b:	8b 47 10             	mov    0x10(%edi),%eax
c003881e:	83 c7 18             	add    $0x18,%edi
c0038821:	89 41 18             	mov    %eax,0x18(%ecx)
c0038824:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038827:	8d 41 20             	lea    0x20(%ecx),%eax
c003882a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003882d:	e9 a5 fd ff ff       	jmp    c00385d7 <_realloc_r+0x2d7>
c0038832:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038836:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003883a:	89 34 24             	mov    %esi,(%esp)
c003883d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038840:	e8 2b fa ff ff       	call   c0038270 <memmove>
c0038845:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038848:	e9 d9 fe ff ff       	jmp    c0038726 <_realloc_r+0x426>
c003884d:	8b 47 08             	mov    0x8(%edi),%eax
c0038850:	83 fb 24             	cmp    $0x24,%ebx
c0038853:	89 41 10             	mov    %eax,0x10(%ecx)
c0038856:	8b 47 0c             	mov    0xc(%edi),%eax
c0038859:	89 41 14             	mov    %eax,0x14(%ecx)
c003885c:	74 1d                	je     c003887b <_realloc_r+0x57b>
c003885e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038861:	83 c7 10             	add    $0x10,%edi
c0038864:	e9 ad fe ff ff       	jmp    c0038716 <_realloc_r+0x416>
c0038869:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003886c:	89 04 24             	mov    %eax,(%esp)
c003886f:	e8 bc d6 ff ff       	call   c0035f30 <__malloc_unlock>
c0038874:	31 c0                	xor    %eax,%eax
c0038876:	e9 0c fc ff ff       	jmp    c0038487 <_realloc_r+0x187>
c003887b:	8b 47 10             	mov    0x10(%edi),%eax
c003887e:	83 c7 18             	add    $0x18,%edi
c0038881:	89 41 18             	mov    %eax,0x18(%ecx)
c0038884:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038887:	8d 41 20             	lea    0x20(%ecx),%eax
c003888a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003888d:	e9 84 fe ff ff       	jmp    c0038716 <_realloc_r+0x416>
c0038892:	66 90                	xchg   %ax,%ax
c0038894:	66 90                	xchg   %ax,%ax
c0038896:	66 90                	xchg   %ax,%ax
c0038898:	66 90                	xchg   %ax,%ax
c003889a:	66 90                	xchg   %ax,%ax
c003889c:	66 90                	xchg   %ax,%ax
c003889e:	66 90                	xchg   %ax,%ax

c00388a0 <cleanup_glue>:
c00388a0:	55                   	push   %ebp
c00388a1:	89 e5                	mov    %esp,%ebp
c00388a3:	56                   	push   %esi
c00388a4:	53                   	push   %ebx
c00388a5:	83 ec 10             	sub    $0x10,%esp
c00388a8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00388ab:	8b 75 08             	mov    0x8(%ebp),%esi
c00388ae:	8b 03                	mov    (%ebx),%eax
c00388b0:	85 c0                	test   %eax,%eax
c00388b2:	74 0c                	je     c00388c0 <cleanup_glue+0x20>
c00388b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00388b8:	89 34 24             	mov    %esi,(%esp)
c00388bb:	e8 e0 ff ff ff       	call   c00388a0 <cleanup_glue>
c00388c0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00388c3:	89 75 08             	mov    %esi,0x8(%ebp)
c00388c6:	83 c4 10             	add    $0x10,%esp
c00388c9:	5b                   	pop    %ebx
c00388ca:	5e                   	pop    %esi
c00388cb:	5d                   	pop    %ebp
c00388cc:	e9 3f f7 ff ff       	jmp    c0038010 <_free_r>
c00388d1:	eb 0d                	jmp    c00388e0 <_reclaim_reent>
c00388d3:	90                   	nop
c00388d4:	90                   	nop
c00388d5:	90                   	nop
c00388d6:	90                   	nop
c00388d7:	90                   	nop
c00388d8:	90                   	nop
c00388d9:	90                   	nop
c00388da:	90                   	nop
c00388db:	90                   	nop
c00388dc:	90                   	nop
c00388dd:	90                   	nop
c00388de:	90                   	nop
c00388df:	90                   	nop

c00388e0 <_reclaim_reent>:
c00388e0:	55                   	push   %ebp
c00388e1:	89 e5                	mov    %esp,%ebp
c00388e3:	57                   	push   %edi
c00388e4:	56                   	push   %esi
c00388e5:	53                   	push   %ebx
c00388e6:	83 ec 1c             	sub    $0x1c,%esp
c00388e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00388ec:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c00388f2:	0f 84 a6 00 00 00    	je     c003899e <_reclaim_reent+0xbe>
c00388f8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00388fb:	85 d2                	test   %edx,%edx
c00388fd:	74 46                	je     c0038945 <_reclaim_reent+0x65>
c00388ff:	31 c0                	xor    %eax,%eax
c0038901:	31 f6                	xor    %esi,%esi
c0038903:	90                   	nop
c0038904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038908:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003890b:	85 c0                	test   %eax,%eax
c003890d:	75 0b                	jne    c003891a <_reclaim_reent+0x3a>
c003890f:	eb 1e                	jmp    c003892f <_reclaim_reent+0x4f>
c0038911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038918:	89 f8                	mov    %edi,%eax
c003891a:	8b 38                	mov    (%eax),%edi
c003891c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038920:	89 1c 24             	mov    %ebx,(%esp)
c0038923:	e8 e8 f6 ff ff       	call   c0038010 <_free_r>
c0038928:	85 ff                	test   %edi,%edi
c003892a:	75 ec                	jne    c0038918 <_reclaim_reent+0x38>
c003892c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003892f:	83 c6 01             	add    $0x1,%esi
c0038932:	83 fe 20             	cmp    $0x20,%esi
c0038935:	89 f0                	mov    %esi,%eax
c0038937:	75 cf                	jne    c0038908 <_reclaim_reent+0x28>
c0038939:	89 54 24 04          	mov    %edx,0x4(%esp)
c003893d:	89 1c 24             	mov    %ebx,(%esp)
c0038940:	e8 cb f6 ff ff       	call   c0038010 <_free_r>
c0038945:	8b 43 40             	mov    0x40(%ebx),%eax
c0038948:	85 c0                	test   %eax,%eax
c003894a:	74 0c                	je     c0038958 <_reclaim_reent+0x78>
c003894c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038950:	89 1c 24             	mov    %ebx,(%esp)
c0038953:	e8 b8 f6 ff ff       	call   c0038010 <_free_r>
c0038958:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003895e:	85 c0                	test   %eax,%eax
c0038960:	74 22                	je     c0038984 <_reclaim_reent+0xa4>
c0038962:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038968:	39 f0                	cmp    %esi,%eax
c003896a:	75 06                	jne    c0038972 <_reclaim_reent+0x92>
c003896c:	eb 16                	jmp    c0038984 <_reclaim_reent+0xa4>
c003896e:	66 90                	xchg   %ax,%ax
c0038970:	89 f8                	mov    %edi,%eax
c0038972:	8b 38                	mov    (%eax),%edi
c0038974:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038978:	89 1c 24             	mov    %ebx,(%esp)
c003897b:	e8 90 f6 ff ff       	call   c0038010 <_free_r>
c0038980:	39 fe                	cmp    %edi,%esi
c0038982:	75 ec                	jne    c0038970 <_reclaim_reent+0x90>
c0038984:	8b 43 54             	mov    0x54(%ebx),%eax
c0038987:	85 c0                	test   %eax,%eax
c0038989:	74 0c                	je     c0038997 <_reclaim_reent+0xb7>
c003898b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003898f:	89 1c 24             	mov    %ebx,(%esp)
c0038992:	e8 79 f6 ff ff       	call   c0038010 <_free_r>
c0038997:	8b 43 38             	mov    0x38(%ebx),%eax
c003899a:	85 c0                	test   %eax,%eax
c003899c:	75 08                	jne    c00389a6 <_reclaim_reent+0xc6>
c003899e:	83 c4 1c             	add    $0x1c,%esp
c00389a1:	5b                   	pop    %ebx
c00389a2:	5e                   	pop    %esi
c00389a3:	5f                   	pop    %edi
c00389a4:	5d                   	pop    %ebp
c00389a5:	c3                   	ret    
c00389a6:	89 1c 24             	mov    %ebx,(%esp)
c00389a9:	ff 53 3c             	call   *0x3c(%ebx)
c00389ac:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c00389b2:	85 c0                	test   %eax,%eax
c00389b4:	74 e8                	je     c003899e <_reclaim_reent+0xbe>
c00389b6:	89 1c 24             	mov    %ebx,(%esp)
c00389b9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00389bd:	e8 de fe ff ff       	call   c00388a0 <cleanup_glue>
c00389c2:	83 c4 1c             	add    $0x1c,%esp
c00389c5:	5b                   	pop    %ebx
c00389c6:	5e                   	pop    %esi
c00389c7:	5f                   	pop    %edi
c00389c8:	5d                   	pop    %ebp
c00389c9:	c3                   	ret    
