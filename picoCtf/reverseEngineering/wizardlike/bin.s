
game:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <endwin@plt+0x3eb8>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <__cxa_finalize@plt-0x9a>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 3f 00 00    	pushq  0x3f62(%rip)        # 4f88 <endwin@plt+0x3e58>
    1026:	f2 ff 25 63 3f 00 00 	bnd jmpq *0x3f63(%rip)        # 4f90 <endwin@plt+0x3e60>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <__cxa_finalize@plt-0x90>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 3d 3f 00 00 	bnd jmpq *0x3f3d(%rip)        # 4ff8 <endwin@plt+0x3ec8>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <curs_set@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 cd 3e 00 00 	bnd jmpq *0x3ecd(%rip)        # 4f98 <endwin@plt+0x3e68>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <wgetch@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 c5 3e 00 00 	bnd jmpq *0x3ec5(%rip)        # 4fa0 <endwin@plt+0x3e70>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <noecho@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 bd 3e 00 00 	bnd jmpq *0x3ebd(%rip)        # 4fa8 <endwin@plt+0x3e78>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <__stack_chk_fail@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 b5 3e 00 00 	bnd jmpq *0x3eb5(%rip)        # 4fb0 <endwin@plt+0x3e80>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <initscr@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ad 3e 00 00 	bnd jmpq *0x3ead(%rip)        # 4fb8 <endwin@plt+0x3e88>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <wrefresh@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 a5 3e 00 00 	bnd jmpq *0x3ea5(%rip)        # 4fc0 <endwin@plt+0x3e90>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <mvprintw@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 9d 3e 00 00 	bnd jmpq *0x3e9d(%rip)        # 4fc8 <endwin@plt+0x3e98>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <endwin@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 95 3e 00 00 	bnd jmpq *0x3e95(%rip)        # 4fd0 <endwin@plt+0x3ea0>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <.text>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	4c 8d 05 06 0f 00 00 	lea    0xf06(%rip),%r8        # 2060 <endwin@plt+0xf30>
    115a:	48 8d 0d 8f 0e 00 00 	lea    0xe8f(%rip),%rcx        # 1ff0 <endwin@plt+0xec0>
    1161:	48 8d 3d f3 06 00 00 	lea    0x6f3(%rip),%rdi        # 185b <endwin@plt+0x72b>
    1168:	ff 15 72 3e 00 00    	callq  *0x3e72(%rip)        # 4fe0 <endwin@plt+0x3eb0>
    116e:	f4                   	hlt    
    116f:	90                   	nop
    1170:	48 8d 3d 09 ed 01 00 	lea    0x1ed09(%rip),%rdi        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    1177:	48 8d 05 02 ed 01 00 	lea    0x1ed02(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <endwin@plt+0x68>
    1183:	48 8b 05 4e 3e 00 00 	mov    0x3e4e(%rip),%rax        # 4fd8 <endwin@plt+0x3ea8>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <endwin@plt+0x68>
    118f:	ff e0                	jmpq   *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11a0:	48 8d 3d d9 ec 01 00 	lea    0x1ecd9(%rip),%rdi        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    11a7:	48 8d 35 d2 ec 01 00 	lea    0x1ecd2(%rip),%rsi        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <endwin@plt+0xa8>
    11c4:	48 8b 05 25 3e 00 00 	mov    0x3e25(%rip),%rax        # 4ff0 <endwin@plt+0x3ec0>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <endwin@plt+0xa8>
    11d0:	ff e0                	jmpq   *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	retq   
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 9d ec 01 00 00 	cmpb   $0x0,0x1ec9d(%rip)        # 1fe88 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x8>
    11eb:	75 2b                	jne    1218 <endwin@plt+0xe8>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 3e 00 00 	cmpq   $0x0,0x3e02(%rip)        # 4ff8 <endwin@plt+0x3ec8>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <endwin@plt+0xd7>
    11fb:	48 8b 3d 06 3e 00 00 	mov    0x3e06(%rip),%rdi        # 5008 <endwin@plt+0x3ed8>
    1202:	e8 a9 fe ff ff       	callq  10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	callq  1170 <endwin@plt+0x40>
    120c:	c6 05 75 ec 01 00 01 	movb   $0x1,0x1ec75(%rip)        # 1fe88 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x8>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	retq   
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	retq   
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmpq   11a0 <endwin@plt+0x70>
    1229:	f3 0f 1e fa          	endbr64 
    122d:	55                   	push   %rbp
    122e:	48 89 e5             	mov    %rsp,%rbp
    1231:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1238:	eb 4d                	jmp    1287 <endwin@plt+0x157>
    123a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1241:	eb 3a                	jmp    127d <endwin@plt+0x14d>
    1243:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1246:	48 63 c8             	movslq %eax,%rcx
    1249:	8b 45 f8             	mov    -0x8(%rbp),%eax
    124c:	48 63 d0             	movslq %eax,%rdx
    124f:	48 89 d0             	mov    %rdx,%rax
    1252:	48 c1 e0 02          	shl    $0x2,%rax
    1256:	48 01 d0             	add    %rdx,%rax
    1259:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1260:	00 
    1261:	48 01 d0             	add    %rdx,%rax
    1264:	48 c1 e0 02          	shl    $0x2,%rax
    1268:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    126c:	48 8d 05 4d 13 02 00 	lea    0x2134d(%rip),%rax        # 225c0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x2740>
    1273:	48 01 d0             	add    %rdx,%rax
    1276:	c6 00 00             	movb   $0x0,(%rax)
    1279:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    127d:	83 7d fc 63          	cmpl   $0x63,-0x4(%rbp)
    1281:	7e c0                	jle    1243 <endwin@plt+0x113>
    1283:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1287:	83 7d f8 63          	cmpl   $0x63,-0x8(%rbp)
    128b:	7e ad                	jle    123a <endwin@plt+0x10a>
    128d:	90                   	nop
    128e:	90                   	nop
    128f:	5d                   	pop    %rbp
    1290:	c3                   	retq   
    1291:	f3 0f 1e fa          	endbr64 
    1295:	55                   	push   %rbp
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    129d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    12a4:	eb 7e                	jmp    1324 <endwin@plt+0x1f4>
    12a6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12ad:	eb 6b                	jmp    131a <endwin@plt+0x1ea>
    12af:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12b2:	48 63 d0             	movslq %eax,%rdx
    12b5:	48 89 d0             	mov    %rdx,%rax
    12b8:	48 c1 e0 02          	shl    $0x2,%rax
    12bc:	48 01 d0             	add    %rdx,%rax
    12bf:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    12c6:	00 
    12c7:	48 01 d0             	add    %rdx,%rax
    12ca:	48 c1 e0 02          	shl    $0x2,%rax
    12ce:	48 89 c2             	mov    %rax,%rdx
    12d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12d5:	48 01 c2             	add    %rax,%rdx
    12d8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12db:	48 98                	cltq   
    12dd:	0f b6 0c 02          	movzbl (%rdx,%rax,1),%ecx
    12e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12e4:	48 63 f0             	movslq %eax,%rsi
    12e7:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12ea:	48 63 d0             	movslq %eax,%rdx
    12ed:	48 89 d0             	mov    %rdx,%rax
    12f0:	48 c1 e0 02          	shl    $0x2,%rax
    12f4:	48 01 d0             	add    %rdx,%rax
    12f7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    12fe:	00 
    12ff:	48 01 d0             	add    %rdx,%rax
    1302:	48 c1 e0 02          	shl    $0x2,%rax
    1306:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
    130a:	48 8d 05 8f eb 01 00 	lea    0x1eb8f(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1311:	48 01 d0             	add    %rdx,%rax
    1314:	88 08                	mov    %cl,(%rax)
    1316:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    131a:	83 7d fc 63          	cmpl   $0x63,-0x4(%rbp)
    131e:	7e 8f                	jle    12af <endwin@plt+0x17f>
    1320:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1324:	83 7d f8 63          	cmpl   $0x63,-0x8(%rbp)
    1328:	0f 8e 78 ff ff ff    	jle    12a6 <endwin@plt+0x176>
    132e:	90                   	nop
    132f:	90                   	nop
    1330:	5d                   	pop    %rbp
    1331:	c3                   	retq   
    1332:	f3 0f 1e fa          	endbr64 
    1336:	55                   	push   %rbp
    1337:	48 89 e5             	mov    %rsp,%rbp
    133a:	89 7d cc             	mov    %edi,-0x34(%rbp)
    133d:	89 75 c8             	mov    %esi,-0x38(%rbp)
    1340:	89 55 c4             	mov    %edx,-0x3c(%rbp)
    1343:	89 4d c0             	mov    %ecx,-0x40(%rbp)
    1346:	f3 0f 2a 45 cc       	cvtsi2ssl -0x34(%rbp),%xmm0
    134b:	f3 0f 2a 4d c4       	cvtsi2ssl -0x3c(%rbp),%xmm1
    1350:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1354:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    1358:	99                   	cltd   
    1359:	31 d0                	xor    %edx,%eax
    135b:	29 d0                	sub    %edx,%eax
    135d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1361:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
    1366:	f3 0f 2a 45 c8       	cvtsi2ssl -0x38(%rbp),%xmm0
    136b:	f3 0f 2a 4d c0       	cvtsi2ssl -0x40(%rbp),%xmm1
    1370:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1374:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    1378:	99                   	cltd   
    1379:	31 d0                	xor    %edx,%eax
    137b:	29 d0                	sub    %edx,%eax
    137d:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1381:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
    1386:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1389:	89 45 e0             	mov    %eax,-0x20(%rbp)
    138c:	8b 45 c0             	mov    -0x40(%rbp),%eax
    138f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1392:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    1399:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    13a0:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    13a3:	3b 45 cc             	cmp    -0x34(%rbp),%eax
    13a6:	7e 07                	jle    13af <endwin@plt+0x27f>
    13a8:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%rbp)
    13af:	8b 45 c0             	mov    -0x40(%rbp),%eax
    13b2:	3b 45 c8             	cmp    -0x38(%rbp),%eax
    13b5:	7e 07                	jle    13be <endwin@plt+0x28e>
    13b7:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%rbp)
    13be:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
    13c3:	0f 2f 45 f4          	comiss -0xc(%rbp),%xmm0
    13c7:	0f 86 c0 00 00 00    	jbe    148d <endwin@plt+0x35d>
    13cd:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
    13d2:	f3 0f 10 0d 2e 1c 00 	movss  0x1c2e(%rip),%xmm1        # 3008 <endwin@plt+0x1ed8>
    13d9:	00 
    13da:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    13de:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    13e3:	e9 94 00 00 00       	jmpq   147c <endwin@plt+0x34c>
    13e8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    13eb:	89 45 f8             	mov    %eax,-0x8(%rbp)
    13ee:	8b 45 e0             	mov    -0x20(%rbp),%eax
    13f1:	89 45 fc             	mov    %eax,-0x4(%rbp)
    13f4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13f7:	48 63 c8             	movslq %eax,%rcx
    13fa:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13fd:	48 63 d0             	movslq %eax,%rdx
    1400:	48 89 d0             	mov    %rdx,%rax
    1403:	48 c1 e0 02          	shl    $0x2,%rax
    1407:	48 01 d0             	add    %rdx,%rax
    140a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1411:	00 
    1412:	48 01 d0             	add    %rdx,%rax
    1415:	48 c1 e0 02          	shl    $0x2,%rax
    1419:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    141d:	48 8d 05 7c ea 01 00 	lea    0x1ea7c(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1424:	48 01 d0             	add    %rdx,%rax
    1427:	0f b6 00             	movzbl (%rax),%eax
    142a:	3c 23                	cmp    $0x23,%al
    142c:	75 1a                	jne    1448 <endwin@plt+0x318>
    142e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1431:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    1434:	75 08                	jne    143e <endwin@plt+0x30e>
    1436:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1439:	3b 45 c0             	cmp    -0x40(%rbp),%eax
    143c:	74 0a                	je     1448 <endwin@plt+0x318>
    143e:	b8 00 00 00 00       	mov    $0x0,%eax
    1443:	e9 62 01 00 00       	jmpq   15aa <endwin@plt+0x47a>
    1448:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
    144d:	f3 0f 5c 45 f4       	subss  -0xc(%rbp),%xmm0
    1452:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    1457:	66 0f ef c0          	pxor   %xmm0,%xmm0
    145b:	0f 2f 45 dc          	comiss -0x24(%rbp),%xmm0
    145f:	76 15                	jbe    1476 <endwin@plt+0x346>
    1461:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1464:	01 45 e4             	add    %eax,-0x1c(%rbp)
    1467:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
    146c:	f3 0f 58 45 f0       	addss  -0x10(%rbp),%xmm0
    1471:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    1476:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1479:	01 45 e0             	add    %eax,-0x20(%rbp)
    147c:	8b 45 e0             	mov    -0x20(%rbp),%eax
    147f:	3b 45 cc             	cmp    -0x34(%rbp),%eax
    1482:	0f 85 60 ff ff ff    	jne    13e8 <endwin@plt+0x2b8>
    1488:	e9 bb 00 00 00       	jmpq   1548 <endwin@plt+0x418>
    148d:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
    1492:	f3 0f 10 0d 6e 1b 00 	movss  0x1b6e(%rip),%xmm1        # 3008 <endwin@plt+0x1ed8>
    1499:	00 
    149a:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    149e:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    14a3:	e9 94 00 00 00       	jmpq   153c <endwin@plt+0x40c>
    14a8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    14ab:	89 45 f8             	mov    %eax,-0x8(%rbp)
    14ae:	8b 45 e0             	mov    -0x20(%rbp),%eax
    14b1:	89 45 fc             	mov    %eax,-0x4(%rbp)
    14b4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14b7:	48 63 c8             	movslq %eax,%rcx
    14ba:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14bd:	48 63 d0             	movslq %eax,%rdx
    14c0:	48 89 d0             	mov    %rdx,%rax
    14c3:	48 c1 e0 02          	shl    $0x2,%rax
    14c7:	48 01 d0             	add    %rdx,%rax
    14ca:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    14d1:	00 
    14d2:	48 01 d0             	add    %rdx,%rax
    14d5:	48 c1 e0 02          	shl    $0x2,%rax
    14d9:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    14dd:	48 8d 05 bc e9 01 00 	lea    0x1e9bc(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    14e4:	48 01 d0             	add    %rdx,%rax
    14e7:	0f b6 00             	movzbl (%rax),%eax
    14ea:	3c 23                	cmp    $0x23,%al
    14ec:	75 1a                	jne    1508 <endwin@plt+0x3d8>
    14ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14f1:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    14f4:	75 08                	jne    14fe <endwin@plt+0x3ce>
    14f6:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14f9:	3b 45 c0             	cmp    -0x40(%rbp),%eax
    14fc:	74 0a                	je     1508 <endwin@plt+0x3d8>
    14fe:	b8 00 00 00 00       	mov    $0x0,%eax
    1503:	e9 a2 00 00 00       	jmpq   15aa <endwin@plt+0x47a>
    1508:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
    150d:	f3 0f 5c 45 f0       	subss  -0x10(%rbp),%xmm0
    1512:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    1517:	66 0f ef c0          	pxor   %xmm0,%xmm0
    151b:	0f 2f 45 dc          	comiss -0x24(%rbp),%xmm0
    151f:	76 15                	jbe    1536 <endwin@plt+0x406>
    1521:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1524:	01 45 e0             	add    %eax,-0x20(%rbp)
    1527:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
    152c:	f3 0f 58 45 f4       	addss  -0xc(%rbp),%xmm0
    1531:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
    1536:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1539:	01 45 e4             	add    %eax,-0x1c(%rbp)
    153c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    153f:	3b 45 c8             	cmp    -0x38(%rbp),%eax
    1542:	0f 85 60 ff ff ff    	jne    14a8 <endwin@plt+0x378>
    1548:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    154b:	89 45 f8             	mov    %eax,-0x8(%rbp)
    154e:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1551:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1554:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1557:	48 63 c8             	movslq %eax,%rcx
    155a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    155d:	48 63 d0             	movslq %eax,%rdx
    1560:	48 89 d0             	mov    %rdx,%rax
    1563:	48 c1 e0 02          	shl    $0x2,%rax
    1567:	48 01 d0             	add    %rdx,%rax
    156a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1571:	00 
    1572:	48 01 d0             	add    %rdx,%rax
    1575:	48 c1 e0 02          	shl    $0x2,%rax
    1579:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    157d:	48 8d 05 1c e9 01 00 	lea    0x1e91c(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1584:	48 01 d0             	add    %rdx,%rax
    1587:	0f b6 00             	movzbl (%rax),%eax
    158a:	3c 23                	cmp    $0x23,%al
    158c:	75 17                	jne    15a5 <endwin@plt+0x475>
    158e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1591:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    1594:	75 08                	jne    159e <endwin@plt+0x46e>
    1596:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1599:	3b 45 c0             	cmp    -0x40(%rbp),%eax
    159c:	74 07                	je     15a5 <endwin@plt+0x475>
    159e:	b8 00 00 00 00       	mov    $0x0,%eax
    15a3:	eb 05                	jmp    15aa <endwin@plt+0x47a>
    15a5:	b8 01 00 00 00       	mov    $0x1,%eax
    15aa:	5d                   	pop    %rbp
    15ab:	c3                   	retq   
    15ac:	f3 0f 1e fa          	endbr64 
    15b0:	55                   	push   %rbp
    15b1:	48 89 e5             	mov    %rsp,%rbp
    15b4:	89 7d fc             	mov    %edi,-0x4(%rbp)
    15b7:	89 75 f8             	mov    %esi,-0x8(%rbp)
    15ba:	83 7d fc 63          	cmpl   $0x63,-0x4(%rbp)
    15be:	0f 8f a0 00 00 00    	jg     1664 <endwin@plt+0x534>
    15c4:	83 7d f8 63          	cmpl   $0x63,-0x8(%rbp)
    15c8:	0f 8f 96 00 00 00    	jg     1664 <endwin@plt+0x534>
    15ce:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    15d2:	0f 88 8c 00 00 00    	js     1664 <endwin@plt+0x534>
    15d8:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    15dc:	0f 88 82 00 00 00    	js     1664 <endwin@plt+0x534>
    15e2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    15e5:	48 63 c8             	movslq %eax,%rcx
    15e8:	8b 45 f8             	mov    -0x8(%rbp),%eax
    15eb:	48 63 d0             	movslq %eax,%rdx
    15ee:	48 89 d0             	mov    %rdx,%rax
    15f1:	48 c1 e0 02          	shl    $0x2,%rax
    15f5:	48 01 d0             	add    %rdx,%rax
    15f8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    15ff:	00 
    1600:	48 01 d0             	add    %rdx,%rax
    1603:	48 c1 e0 02          	shl    $0x2,%rax
    1607:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    160b:	48 8d 05 8e e8 01 00 	lea    0x1e88e(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1612:	48 01 d0             	add    %rdx,%rax
    1615:	0f b6 00             	movzbl (%rax),%eax
    1618:	3c 23                	cmp    $0x23,%al
    161a:	74 3a                	je     1656 <endwin@plt+0x526>
    161c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    161f:	48 63 c8             	movslq %eax,%rcx
    1622:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1625:	48 63 d0             	movslq %eax,%rdx
    1628:	48 89 d0             	mov    %rdx,%rax
    162b:	48 c1 e0 02          	shl    $0x2,%rax
    162f:	48 01 d0             	add    %rdx,%rax
    1632:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1639:	00 
    163a:	48 01 d0             	add    %rdx,%rax
    163d:	48 c1 e0 02          	shl    $0x2,%rax
    1641:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1645:	48 8d 05 54 e8 01 00 	lea    0x1e854(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    164c:	48 01 d0             	add    %rdx,%rax
    164f:	0f b6 00             	movzbl (%rax),%eax
    1652:	3c 20                	cmp    $0x20,%al
    1654:	75 07                	jne    165d <endwin@plt+0x52d>
    1656:	b8 00 00 00 00       	mov    $0x0,%eax
    165b:	eb 0c                	jmp    1669 <endwin@plt+0x539>
    165d:	b8 01 00 00 00       	mov    $0x1,%eax
    1662:	eb 05                	jmp    1669 <endwin@plt+0x539>
    1664:	b8 00 00 00 00       	mov    $0x0,%eax
    1669:	5d                   	pop    %rbp
    166a:	c3                   	retq   
    166b:	f3 0f 1e fa          	endbr64 
    166f:	55                   	push   %rbp
    1670:	48 89 e5             	mov    %rsp,%rbp
    1673:	8b 05 fb e7 01 00    	mov    0x1e7fb(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    1679:	8d 50 ff             	lea    -0x1(%rax),%edx
    167c:	8b 05 ee e7 01 00    	mov    0x1e7ee(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    1682:	89 d6                	mov    %edx,%esi
    1684:	89 c7                	mov    %eax,%edi
    1686:	e8 21 ff ff ff       	callq  15ac <endwin@plt+0x47c>
    168b:	84 c0                	test   %al,%al
    168d:	74 55                	je     16e4 <endwin@plt+0x5b4>
    168f:	8b 15 df e7 01 00    	mov    0x1e7df(%rip),%edx        # 1fe74 <endwin@plt+0x1ed44>
    1695:	8b 05 01 e8 01 00    	mov    0x1e801(%rip),%eax        # 1fe9c <stdscr@@NCURSES6_TINFO_5.0.19991023+0x1c>
    169b:	89 c1                	mov    %eax,%ecx
    169d:	c1 e9 1f             	shr    $0x1f,%ecx
    16a0:	01 c8                	add    %ecx,%eax
    16a2:	d1 f8                	sar    %eax
    16a4:	39 c2                	cmp    %eax,%edx
    16a6:	7e 2d                	jle    16d5 <endwin@plt+0x5a5>
    16a8:	8b 15 c6 e7 01 00    	mov    0x1e7c6(%rip),%edx        # 1fe74 <endwin@plt+0x1ed44>
    16ae:	8b 05 e8 e7 01 00    	mov    0x1e7e8(%rip),%eax        # 1fe9c <stdscr@@NCURSES6_TINFO_5.0.19991023+0x1c>
    16b4:	89 c1                	mov    %eax,%ecx
    16b6:	c1 e9 1f             	shr    $0x1f,%ecx
    16b9:	01 c8                	add    %ecx,%eax
    16bb:	d1 f8                	sar    %eax
    16bd:	f7 d8                	neg    %eax
    16bf:	83 c0 64             	add    $0x64,%eax
    16c2:	39 c2                	cmp    %eax,%edx
    16c4:	7f 0f                	jg     16d5 <endwin@plt+0x5a5>
    16c6:	8b 05 c8 e7 01 00    	mov    0x1e7c8(%rip),%eax        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    16cc:	83 e8 01             	sub    $0x1,%eax
    16cf:	89 05 bf e7 01 00    	mov    %eax,0x1e7bf(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    16d5:	8b 05 99 e7 01 00    	mov    0x1e799(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    16db:	83 e8 01             	sub    $0x1,%eax
    16de:	89 05 90 e7 01 00    	mov    %eax,0x1e790(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    16e4:	90                   	nop
    16e5:	5d                   	pop    %rbp
    16e6:	c3                   	retq   
    16e7:	f3 0f 1e fa          	endbr64 
    16eb:	55                   	push   %rbp
    16ec:	48 89 e5             	mov    %rsp,%rbp
    16ef:	8b 05 7f e7 01 00    	mov    0x1e77f(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    16f5:	8d 50 01             	lea    0x1(%rax),%edx
    16f8:	8b 05 72 e7 01 00    	mov    0x1e772(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    16fe:	89 d6                	mov    %edx,%esi
    1700:	89 c7                	mov    %eax,%edi
    1702:	e8 a5 fe ff ff       	callq  15ac <endwin@plt+0x47c>
    1707:	84 c0                	test   %al,%al
    1709:	74 55                	je     1760 <endwin@plt+0x630>
    170b:	8b 15 63 e7 01 00    	mov    0x1e763(%rip),%edx        # 1fe74 <endwin@plt+0x1ed44>
    1711:	8b 05 85 e7 01 00    	mov    0x1e785(%rip),%eax        # 1fe9c <stdscr@@NCURSES6_TINFO_5.0.19991023+0x1c>
    1717:	89 c1                	mov    %eax,%ecx
    1719:	c1 e9 1f             	shr    $0x1f,%ecx
    171c:	01 c8                	add    %ecx,%eax
    171e:	d1 f8                	sar    %eax
    1720:	39 c2                	cmp    %eax,%edx
    1722:	7c 2d                	jl     1751 <endwin@plt+0x621>
    1724:	8b 05 72 e7 01 00    	mov    0x1e772(%rip),%eax        # 1fe9c <stdscr@@NCURSES6_TINFO_5.0.19991023+0x1c>
    172a:	89 c2                	mov    %eax,%edx
    172c:	c1 ea 1f             	shr    $0x1f,%edx
    172f:	01 d0                	add    %edx,%eax
    1731:	d1 f8                	sar    %eax
    1733:	f7 d8                	neg    %eax
    1735:	8d 50 63             	lea    0x63(%rax),%edx
    1738:	8b 05 36 e7 01 00    	mov    0x1e736(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    173e:	39 c2                	cmp    %eax,%edx
    1740:	7c 0f                	jl     1751 <endwin@plt+0x621>
    1742:	8b 05 4c e7 01 00    	mov    0x1e74c(%rip),%eax        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1748:	83 c0 01             	add    $0x1,%eax
    174b:	89 05 43 e7 01 00    	mov    %eax,0x1e743(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1751:	8b 05 1d e7 01 00    	mov    0x1e71d(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    1757:	83 c0 01             	add    $0x1,%eax
    175a:	89 05 14 e7 01 00    	mov    %eax,0x1e714(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1760:	90                   	nop
    1761:	5d                   	pop    %rbp
    1762:	c3                   	retq   
    1763:	f3 0f 1e fa          	endbr64 
    1767:	55                   	push   %rbp
    1768:	48 89 e5             	mov    %rsp,%rbp
    176b:	8b 05 03 e7 01 00    	mov    0x1e703(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    1771:	8b 15 f9 e6 01 00    	mov    0x1e6f9(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    1777:	83 ea 01             	sub    $0x1,%edx
    177a:	89 c6                	mov    %eax,%esi
    177c:	89 d7                	mov    %edx,%edi
    177e:	e8 29 fe ff ff       	callq  15ac <endwin@plt+0x47c>
    1783:	84 c0                	test   %al,%al
    1785:	74 55                	je     17dc <endwin@plt+0x6ac>
    1787:	8b 15 e3 e6 01 00    	mov    0x1e6e3(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    178d:	8b 05 05 e7 01 00    	mov    0x1e705(%rip),%eax        # 1fe98 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x18>
    1793:	89 c1                	mov    %eax,%ecx
    1795:	c1 e9 1f             	shr    $0x1f,%ecx
    1798:	01 c8                	add    %ecx,%eax
    179a:	d1 f8                	sar    %eax
    179c:	39 c2                	cmp    %eax,%edx
    179e:	7e 2d                	jle    17cd <endwin@plt+0x69d>
    17a0:	8b 15 ca e6 01 00    	mov    0x1e6ca(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    17a6:	8b 05 ec e6 01 00    	mov    0x1e6ec(%rip),%eax        # 1fe98 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x18>
    17ac:	89 c1                	mov    %eax,%ecx
    17ae:	c1 e9 1f             	shr    $0x1f,%ecx
    17b1:	01 c8                	add    %ecx,%eax
    17b3:	d1 f8                	sar    %eax
    17b5:	f7 d8                	neg    %eax
    17b7:	83 c0 64             	add    $0x64,%eax
    17ba:	39 c2                	cmp    %eax,%edx
    17bc:	7f 0f                	jg     17cd <endwin@plt+0x69d>
    17be:	8b 05 cc e6 01 00    	mov    0x1e6cc(%rip),%eax        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    17c4:	83 e8 01             	sub    $0x1,%eax
    17c7:	89 05 c3 e6 01 00    	mov    %eax,0x1e6c3(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    17cd:	8b 05 9d e6 01 00    	mov    0x1e69d(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    17d3:	83 e8 01             	sub    $0x1,%eax
    17d6:	89 05 94 e6 01 00    	mov    %eax,0x1e694(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    17dc:	90                   	nop
    17dd:	5d                   	pop    %rbp
    17de:	c3                   	retq   
    17df:	f3 0f 1e fa          	endbr64 
    17e3:	55                   	push   %rbp
    17e4:	48 89 e5             	mov    %rsp,%rbp
    17e7:	8b 05 87 e6 01 00    	mov    0x1e687(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    17ed:	8b 15 7d e6 01 00    	mov    0x1e67d(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    17f3:	83 c2 01             	add    $0x1,%edx
    17f6:	89 c6                	mov    %eax,%esi
    17f8:	89 d7                	mov    %edx,%edi
    17fa:	e8 ad fd ff ff       	callq  15ac <endwin@plt+0x47c>
    17ff:	84 c0                	test   %al,%al
    1801:	74 55                	je     1858 <endwin@plt+0x728>
    1803:	8b 15 67 e6 01 00    	mov    0x1e667(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    1809:	8b 05 89 e6 01 00    	mov    0x1e689(%rip),%eax        # 1fe98 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x18>
    180f:	89 c1                	mov    %eax,%ecx
    1811:	c1 e9 1f             	shr    $0x1f,%ecx
    1814:	01 c8                	add    %ecx,%eax
    1816:	d1 f8                	sar    %eax
    1818:	39 c2                	cmp    %eax,%edx
    181a:	7c 2d                	jl     1849 <endwin@plt+0x719>
    181c:	8b 05 76 e6 01 00    	mov    0x1e676(%rip),%eax        # 1fe98 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x18>
    1822:	89 c2                	mov    %eax,%edx
    1824:	c1 ea 1f             	shr    $0x1f,%edx
    1827:	01 d0                	add    %edx,%eax
    1829:	d1 f8                	sar    %eax
    182b:	f7 d8                	neg    %eax
    182d:	8d 50 63             	lea    0x63(%rax),%edx
    1830:	8b 05 3a e6 01 00    	mov    0x1e63a(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    1836:	39 c2                	cmp    %eax,%edx
    1838:	7c 0f                	jl     1849 <endwin@plt+0x719>
    183a:	8b 05 50 e6 01 00    	mov    0x1e650(%rip),%eax        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1840:	83 c0 01             	add    $0x1,%eax
    1843:	89 05 47 e6 01 00    	mov    %eax,0x1e647(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1849:	8b 05 21 e6 01 00    	mov    0x1e621(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    184f:	83 c0 01             	add    $0x1,%eax
    1852:	89 05 18 e6 01 00    	mov    %eax,0x1e618(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1858:	90                   	nop
    1859:	5d                   	pop    %rbp
    185a:	c3                   	retq   
    185b:	f3 0f 1e fa          	endbr64 
    185f:	55                   	push   %rbp
    1860:	48 89 e5             	mov    %rsp,%rbp
    1863:	48 83 ec 40          	sub    $0x40,%rsp
    1867:	89 7d cc             	mov    %edi,-0x34(%rbp)
    186a:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    186e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1875:	00 00 
    1877:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    187b:	31 c0                	xor    %eax,%eax
    187d:	c6 45 d6 01          	movb   $0x1,-0x2a(%rbp)
    1881:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1888:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    188f:	48 8d 3d aa 5e 00 00 	lea    0x5eaa(%rip),%rdi        # 7740 <endwin@plt+0x6610>
    1896:	e8 f6 f9 ff ff       	callq  1291 <endwin@plt+0x161>
    189b:	b8 00 00 00 00       	mov    $0x0,%eax
    18a0:	e8 84 f9 ff ff       	callq  1229 <endwin@plt+0xf9>
    18a5:	e8 56 f8 ff ff       	callq  1100 <initscr@plt>
    18aa:	48 8b 05 cf e5 01 00 	mov    0x1e5cf(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    18b1:	48 85 c0             	test   %rax,%rax
    18b4:	74 11                	je     18c7 <endwin@plt+0x797>
    18b6:	48 8b 05 c3 e5 01 00 	mov    0x1e5c3(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    18bd:	0f b7 40 04          	movzwl 0x4(%rax),%eax
    18c1:	98                   	cwtl   
    18c2:	83 c0 01             	add    $0x1,%eax
    18c5:	eb 05                	jmp    18cc <endwin@plt+0x79c>
    18c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    18cc:	89 45 e8             	mov    %eax,-0x18(%rbp)
    18cf:	48 8b 05 aa e5 01 00 	mov    0x1e5aa(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    18d6:	48 85 c0             	test   %rax,%rax
    18d9:	74 11                	je     18ec <endwin@plt+0x7bc>
    18db:	48 8b 05 9e e5 01 00 	mov    0x1e59e(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    18e2:	0f b7 40 06          	movzwl 0x6(%rax),%eax
    18e6:	98                   	cwtl   
    18e7:	83 c0 01             	add    $0x1,%eax
    18ea:	eb 05                	jmp    18f1 <endwin@plt+0x7c1>
    18ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    18f1:	89 45 ec             	mov    %eax,-0x14(%rbp)
    18f4:	8b 45 ec             	mov    -0x14(%rbp),%eax
    18f7:	89 05 9b e5 01 00    	mov    %eax,0x1e59b(%rip)        # 1fe98 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x18>
    18fd:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1900:	89 05 96 e5 01 00    	mov    %eax,0x1e596(%rip)        # 1fe9c <stdscr@@NCURSES6_TINFO_5.0.19991023+0x1c>
    1906:	e8 d5 f7 ff ff       	callq  10e0 <noecho@plt>
    190b:	bf 00 00 00 00       	mov    $0x0,%edi
    1910:	e8 ab f7 ff ff       	callq  10c0 <curs_set@plt>
    1915:	e9 a6 06 00 00       	jmpq   1fc0 <endwin@plt+0xe90>
    191a:	8b 15 58 e5 01 00    	mov    0x1e558(%rip),%edx        # 1fe78 <endwin@plt+0x1ed48>
    1920:	8b 05 56 e5 01 00    	mov    0x1e556(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1926:	39 c2                	cmp    %eax,%edx
    1928:	0f 84 68 03 00 00    	je     1c96 <endwin@plt+0xb66>
    192e:	8b 05 48 e5 01 00    	mov    0x1e548(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1934:	83 f8 01             	cmp    $0x1,%eax
    1937:	75 4d                	jne    1986 <endwin@plt+0x856>
    1939:	b8 00 00 00 00       	mov    $0x0,%eax
    193e:	e8 e6 f8 ff ff       	callq  1229 <endwin@plt+0xf9>
    1943:	48 8d 3d f6 5d 00 00 	lea    0x5df6(%rip),%rdi        # 7740 <endwin@plt+0x6610>
    194a:	e8 42 f9 ff ff       	callq  1291 <endwin@plt+0x161>
    194f:	c7 05 17 e5 01 00 02 	movl   $0x2,0x1e517(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1956:	00 00 00 
    1959:	c7 05 11 e5 01 00 01 	movl   $0x1,0x1e511(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1960:	00 00 00 
    1963:	c7 05 23 e5 01 00 00 	movl   $0x0,0x1e523(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    196a:	00 00 00 
    196d:	c7 05 1d e5 01 00 00 	movl   $0x0,0x1e51d(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1974:	00 00 00 
    1977:	c7 05 f7 e4 01 00 01 	movl   $0x1,0x1e4f7(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    197e:	00 00 00 
    1981:	e9 10 03 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1986:	8b 05 f0 e4 01 00    	mov    0x1e4f0(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    198c:	83 f8 02             	cmp    $0x2,%eax
    198f:	75 4d                	jne    19de <endwin@plt+0x8ae>
    1991:	b8 00 00 00 00       	mov    $0x0,%eax
    1996:	e8 8e f8 ff ff       	callq  1229 <endwin@plt+0xf9>
    199b:	48 8d 3d be 84 00 00 	lea    0x84be(%rip),%rdi        # 9e60 <endwin@plt+0x8d30>
    19a2:	e8 ea f8 ff ff       	callq  1291 <endwin@plt+0x161>
    19a7:	c7 05 bf e4 01 00 01 	movl   $0x1,0x1e4bf(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    19ae:	00 00 00 
    19b1:	c7 05 b9 e4 01 00 02 	movl   $0x2,0x1e4b9(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    19b8:	00 00 00 
    19bb:	c7 05 cb e4 01 00 00 	movl   $0x0,0x1e4cb(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    19c2:	00 00 00 
    19c5:	c7 05 c5 e4 01 00 00 	movl   $0x0,0x1e4c5(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    19cc:	00 00 00 
    19cf:	c7 05 9f e4 01 00 02 	movl   $0x2,0x1e49f(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    19d6:	00 00 00 
    19d9:	e9 b8 02 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    19de:	8b 05 98 e4 01 00    	mov    0x1e498(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    19e4:	83 f8 03             	cmp    $0x3,%eax
    19e7:	75 4d                	jne    1a36 <endwin@plt+0x906>
    19e9:	b8 00 00 00 00       	mov    $0x0,%eax
    19ee:	e8 36 f8 ff ff       	callq  1229 <endwin@plt+0xf9>
    19f3:	48 8d 3d 86 ab 00 00 	lea    0xab86(%rip),%rdi        # c580 <endwin@plt+0xb450>
    19fa:	e8 92 f8 ff ff       	callq  1291 <endwin@plt+0x161>
    19ff:	c7 05 67 e4 01 00 02 	movl   $0x2,0x1e467(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1a06:	00 00 00 
    1a09:	c7 05 61 e4 01 00 01 	movl   $0x1,0x1e461(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1a10:	00 00 00 
    1a13:	c7 05 73 e4 01 00 00 	movl   $0x0,0x1e473(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1a1a:	00 00 00 
    1a1d:	c7 05 6d e4 01 00 00 	movl   $0x0,0x1e46d(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1a24:	00 00 00 
    1a27:	c7 05 47 e4 01 00 03 	movl   $0x3,0x1e447(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1a2e:	00 00 00 
    1a31:	e9 60 02 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1a36:	8b 05 40 e4 01 00    	mov    0x1e440(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1a3c:	83 f8 04             	cmp    $0x4,%eax
    1a3f:	75 4d                	jne    1a8e <endwin@plt+0x95e>
    1a41:	b8 00 00 00 00       	mov    $0x0,%eax
    1a46:	e8 de f7 ff ff       	callq  1229 <endwin@plt+0xf9>
    1a4b:	48 8d 3d 4e d2 00 00 	lea    0xd24e(%rip),%rdi        # eca0 <endwin@plt+0xdb70>
    1a52:	e8 3a f8 ff ff       	callq  1291 <endwin@plt+0x161>
    1a57:	c7 05 0f e4 01 00 02 	movl   $0x2,0x1e40f(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1a5e:	00 00 00 
    1a61:	c7 05 09 e4 01 00 01 	movl   $0x1,0x1e409(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1a68:	00 00 00 
    1a6b:	c7 05 1b e4 01 00 00 	movl   $0x0,0x1e41b(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1a72:	00 00 00 
    1a75:	c7 05 15 e4 01 00 00 	movl   $0x0,0x1e415(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1a7c:	00 00 00 
    1a7f:	c7 05 ef e3 01 00 04 	movl   $0x4,0x1e3ef(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1a86:	00 00 00 
    1a89:	e9 08 02 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1a8e:	8b 05 e8 e3 01 00    	mov    0x1e3e8(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1a94:	83 f8 05             	cmp    $0x5,%eax
    1a97:	75 4d                	jne    1ae6 <endwin@plt+0x9b6>
    1a99:	b8 00 00 00 00       	mov    $0x0,%eax
    1a9e:	e8 86 f7 ff ff       	callq  1229 <endwin@plt+0xf9>
    1aa3:	48 8d 3d 16 f9 00 00 	lea    0xf916(%rip),%rdi        # 113c0 <endwin@plt+0x10290>
    1aaa:	e8 e2 f7 ff ff       	callq  1291 <endwin@plt+0x161>
    1aaf:	c7 05 b7 e3 01 00 02 	movl   $0x2,0x1e3b7(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1ab6:	00 00 00 
    1ab9:	c7 05 b1 e3 01 00 01 	movl   $0x1,0x1e3b1(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1ac0:	00 00 00 
    1ac3:	c7 05 c3 e3 01 00 00 	movl   $0x0,0x1e3c3(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1aca:	00 00 00 
    1acd:	c7 05 bd e3 01 00 00 	movl   $0x0,0x1e3bd(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1ad4:	00 00 00 
    1ad7:	c7 05 97 e3 01 00 05 	movl   $0x5,0x1e397(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1ade:	00 00 00 
    1ae1:	e9 b0 01 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1ae6:	8b 05 90 e3 01 00    	mov    0x1e390(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1aec:	83 f8 06             	cmp    $0x6,%eax
    1aef:	75 4d                	jne    1b3e <endwin@plt+0xa0e>
    1af1:	b8 00 00 00 00       	mov    $0x0,%eax
    1af6:	e8 2e f7 ff ff       	callq  1229 <endwin@plt+0xf9>
    1afb:	48 8d 3d de 1f 01 00 	lea    0x11fde(%rip),%rdi        # 13ae0 <endwin@plt+0x129b0>
    1b02:	e8 8a f7 ff ff       	callq  1291 <endwin@plt+0x161>
    1b07:	c7 05 5f e3 01 00 02 	movl   $0x2,0x1e35f(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1b0e:	00 00 00 
    1b11:	c7 05 59 e3 01 00 01 	movl   $0x1,0x1e359(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1b18:	00 00 00 
    1b1b:	c7 05 6b e3 01 00 00 	movl   $0x0,0x1e36b(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1b22:	00 00 00 
    1b25:	c7 05 65 e3 01 00 00 	movl   $0x0,0x1e365(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1b2c:	00 00 00 
    1b2f:	c7 05 3f e3 01 00 06 	movl   $0x6,0x1e33f(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1b36:	00 00 00 
    1b39:	e9 58 01 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1b3e:	8b 05 38 e3 01 00    	mov    0x1e338(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1b44:	83 f8 07             	cmp    $0x7,%eax
    1b47:	75 4d                	jne    1b96 <endwin@plt+0xa66>
    1b49:	b8 00 00 00 00       	mov    $0x0,%eax
    1b4e:	e8 d6 f6 ff ff       	callq  1229 <endwin@plt+0xf9>
    1b53:	48 8d 3d a6 46 01 00 	lea    0x146a6(%rip),%rdi        # 16200 <endwin@plt+0x150d0>
    1b5a:	e8 32 f7 ff ff       	callq  1291 <endwin@plt+0x161>
    1b5f:	c7 05 07 e3 01 00 02 	movl   $0x2,0x1e307(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1b66:	00 00 00 
    1b69:	c7 05 01 e3 01 00 01 	movl   $0x1,0x1e301(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1b70:	00 00 00 
    1b73:	c7 05 13 e3 01 00 00 	movl   $0x0,0x1e313(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1b7a:	00 00 00 
    1b7d:	c7 05 0d e3 01 00 00 	movl   $0x0,0x1e30d(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1b84:	00 00 00 
    1b87:	c7 05 e7 e2 01 00 07 	movl   $0x7,0x1e2e7(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1b8e:	00 00 00 
    1b91:	e9 00 01 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1b96:	8b 05 e0 e2 01 00    	mov    0x1e2e0(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1b9c:	83 f8 08             	cmp    $0x8,%eax
    1b9f:	75 4d                	jne    1bee <endwin@plt+0xabe>
    1ba1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba6:	e8 7e f6 ff ff       	callq  1229 <endwin@plt+0xf9>
    1bab:	48 8d 3d 6e 6d 01 00 	lea    0x16d6e(%rip),%rdi        # 18920 <endwin@plt+0x177f0>
    1bb2:	e8 da f6 ff ff       	callq  1291 <endwin@plt+0x161>
    1bb7:	c7 05 af e2 01 00 01 	movl   $0x1,0x1e2af(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1bbe:	00 00 00 
    1bc1:	c7 05 a9 e2 01 00 02 	movl   $0x2,0x1e2a9(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1bc8:	00 00 00 
    1bcb:	c7 05 bb e2 01 00 00 	movl   $0x0,0x1e2bb(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1bd2:	00 00 00 
    1bd5:	c7 05 b5 e2 01 00 00 	movl   $0x0,0x1e2b5(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1bdc:	00 00 00 
    1bdf:	c7 05 8f e2 01 00 08 	movl   $0x8,0x1e28f(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1be6:	00 00 00 
    1be9:	e9 a8 00 00 00       	jmpq   1c96 <endwin@plt+0xb66>
    1bee:	8b 05 88 e2 01 00    	mov    0x1e288(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1bf4:	83 f8 09             	cmp    $0x9,%eax
    1bf7:	75 4a                	jne    1c43 <endwin@plt+0xb13>
    1bf9:	b8 00 00 00 00       	mov    $0x0,%eax
    1bfe:	e8 26 f6 ff ff       	callq  1229 <endwin@plt+0xf9>
    1c03:	48 8d 3d 36 94 01 00 	lea    0x19436(%rip),%rdi        # 1b040 <endwin@plt+0x19f10>
    1c0a:	e8 82 f6 ff ff       	callq  1291 <endwin@plt+0x161>
    1c0f:	c7 05 57 e2 01 00 02 	movl   $0x2,0x1e257(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1c16:	00 00 00 
    1c19:	c7 05 51 e2 01 00 01 	movl   $0x1,0x1e251(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1c20:	00 00 00 
    1c23:	c7 05 63 e2 01 00 00 	movl   $0x0,0x1e263(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1c2a:	00 00 00 
    1c2d:	c7 05 5d e2 01 00 00 	movl   $0x0,0x1e25d(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1c34:	00 00 00 
    1c37:	c7 05 37 e2 01 00 09 	movl   $0x9,0x1e237(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1c3e:	00 00 00 
    1c41:	eb 53                	jmp    1c96 <endwin@plt+0xb66>
    1c43:	8b 05 33 e2 01 00    	mov    0x1e233(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1c49:	83 f8 0a             	cmp    $0xa,%eax
    1c4c:	75 48                	jne    1c96 <endwin@plt+0xb66>
    1c4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1c53:	e8 d1 f5 ff ff       	callq  1229 <endwin@plt+0xf9>
    1c58:	48 8d 3d 01 bb 01 00 	lea    0x1bb01(%rip),%rdi        # 1d760 <endwin@plt+0x1c630>
    1c5f:	e8 2d f6 ff ff       	callq  1291 <endwin@plt+0x161>
    1c64:	c7 05 02 e2 01 00 01 	movl   $0x1,0x1e202(%rip)        # 1fe70 <endwin@plt+0x1ed40>
    1c6b:	00 00 00 
    1c6e:	c7 05 fc e1 01 00 01 	movl   $0x1,0x1e1fc(%rip)        # 1fe74 <endwin@plt+0x1ed44>
    1c75:	00 00 00 
    1c78:	c7 05 0e e2 01 00 00 	movl   $0x0,0x1e20e(%rip)        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1c7f:	00 00 00 
    1c82:	c7 05 08 e2 01 00 00 	movl   $0x0,0x1e208(%rip)        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1c89:	00 00 00 
    1c8c:	c7 05 e2 e1 01 00 0a 	movl   $0xa,0x1e1e2(%rip)        # 1fe78 <endwin@plt+0x1ed48>
    1c93:	00 00 00 
    1c96:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    1c9d:	eb 34                	jmp    1cd3 <endwin@plt+0xba3>
    1c9f:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1ca6:	eb 1f                	jmp    1cc7 <endwin@plt+0xb97>
    1ca8:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    1cab:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1cae:	48 8d 15 4f 13 00 00 	lea    0x134f(%rip),%rdx        # 3004 <endwin@plt+0x1ed4>
    1cb5:	89 ce                	mov    %ecx,%esi
    1cb7:	89 c7                	mov    %eax,%edi
    1cb9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cbe:	e8 5d f4 ff ff       	callq  1120 <mvprintw@plt>
    1cc3:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1cc7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1cca:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1ccd:	7c d9                	jl     1ca8 <endwin@plt+0xb78>
    1ccf:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
    1cd3:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1cd6:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    1cd9:	7c c4                	jl     1c9f <endwin@plt+0xb6f>
    1cdb:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    1ce2:	e9 ba 01 00 00       	jmpq   1ea1 <endwin@plt+0xd71>
    1ce7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    1cee:	e9 9e 01 00 00       	jmpq   1e91 <endwin@plt+0xd61>
    1cf3:	8b 15 97 e1 01 00    	mov    0x1e197(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1cf9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1cfc:	01 d0                	add    %edx,%eax
    1cfe:	83 f8 63             	cmp    $0x63,%eax
    1d01:	0f 8f 68 01 00 00    	jg     1e6f <endwin@plt+0xd3f>
    1d07:	8b 15 87 e1 01 00    	mov    0x1e187(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1d0d:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1d10:	01 d0                	add    %edx,%eax
    1d12:	83 f8 63             	cmp    $0x63,%eax
    1d15:	0f 8f 54 01 00 00    	jg     1e6f <endwin@plt+0xd3f>
    1d1b:	8b 15 6f e1 01 00    	mov    0x1e16f(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1d21:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1d24:	01 d0                	add    %edx,%eax
    1d26:	85 c0                	test   %eax,%eax
    1d28:	0f 88 41 01 00 00    	js     1e6f <endwin@plt+0xd3f>
    1d2e:	8b 15 60 e1 01 00    	mov    0x1e160(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1d34:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1d37:	01 d0                	add    %edx,%eax
    1d39:	85 c0                	test   %eax,%eax
    1d3b:	0f 88 2e 01 00 00    	js     1e6f <endwin@plt+0xd3f>
    1d41:	8b 15 4d e1 01 00    	mov    0x1e14d(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1d47:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1d4a:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    1d4d:	8b 15 3d e1 01 00    	mov    0x1e13d(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1d53:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1d56:	01 c2                	add    %eax,%edx
    1d58:	8b 35 16 e1 01 00    	mov    0x1e116(%rip),%esi        # 1fe74 <endwin@plt+0x1ed44>
    1d5e:	8b 05 0c e1 01 00    	mov    0x1e10c(%rip),%eax        # 1fe70 <endwin@plt+0x1ed40>
    1d64:	89 c7                	mov    %eax,%edi
    1d66:	e8 c7 f5 ff ff       	callq  1332 <endwin@plt+0x202>
    1d6b:	84 c0                	test   %al,%al
    1d6d:	75 4f                	jne    1dbe <endwin@plt+0xc8e>
    1d6f:	8b 15 1f e1 01 00    	mov    0x1e11f(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1d75:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1d78:	8d 34 02             	lea    (%rdx,%rax,1),%esi
    1d7b:	8b 15 0f e1 01 00    	mov    0x1e10f(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1d81:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1d84:	01 d0                	add    %edx,%eax
    1d86:	48 63 c8             	movslq %eax,%rcx
    1d89:	48 63 d6             	movslq %esi,%rdx
    1d8c:	48 89 d0             	mov    %rdx,%rax
    1d8f:	48 c1 e0 02          	shl    $0x2,%rax
    1d93:	48 01 d0             	add    %rdx,%rax
    1d96:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1d9d:	00 
    1d9e:	48 01 d0             	add    %rdx,%rax
    1da1:	48 c1 e0 02          	shl    $0x2,%rax
    1da5:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1da9:	48 8d 05 10 08 02 00 	lea    0x20810(%rip),%rax        # 225c0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x2740>
    1db0:	48 01 d0             	add    %rdx,%rax
    1db3:	0f b6 00             	movzbl (%rax),%eax
    1db6:	84 c0                	test   %al,%al
    1db8:	0f 84 ce 00 00 00    	je     1e8c <endwin@plt+0xd5c>
    1dbe:	8b 15 d0 e0 01 00    	mov    0x1e0d0(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1dc4:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1dc7:	8d 34 02             	lea    (%rdx,%rax,1),%esi
    1dca:	8b 15 c0 e0 01 00    	mov    0x1e0c0(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1dd0:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1dd3:	01 d0                	add    %edx,%eax
    1dd5:	48 63 c8             	movslq %eax,%rcx
    1dd8:	48 63 d6             	movslq %esi,%rdx
    1ddb:	48 89 d0             	mov    %rdx,%rax
    1dde:	48 c1 e0 02          	shl    $0x2,%rax
    1de2:	48 01 d0             	add    %rdx,%rax
    1de5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1dec:	00 
    1ded:	48 01 d0             	add    %rdx,%rax
    1df0:	48 c1 e0 02          	shl    $0x2,%rax
    1df4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1df8:	48 8d 05 c1 07 02 00 	lea    0x207c1(%rip),%rax        # 225c0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x2740>
    1dff:	48 01 d0             	add    %rdx,%rax
    1e02:	c6 00 01             	movb   $0x1,(%rax)
    1e05:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%rbp)
    1e0b:	8b 15 83 e0 01 00    	mov    0x1e083(%rip),%edx        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1e11:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1e14:	8d 34 02             	lea    (%rdx,%rax,1),%esi
    1e17:	8b 15 73 e0 01 00    	mov    0x1e073(%rip),%edx        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1e1d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1e20:	01 d0                	add    %edx,%eax
    1e22:	48 63 c8             	movslq %eax,%rcx
    1e25:	48 63 d6             	movslq %esi,%rdx
    1e28:	48 89 d0             	mov    %rdx,%rax
    1e2b:	48 c1 e0 02          	shl    $0x2,%rax
    1e2f:	48 01 d0             	add    %rdx,%rax
    1e32:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1e39:	00 
    1e3a:	48 01 d0             	add    %rdx,%rax
    1e3d:	48 c1 e0 02          	shl    $0x2,%rax
    1e41:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1e45:	48 8d 05 54 e0 01 00 	lea    0x1e054(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1e4c:	48 01 d0             	add    %rdx,%rax
    1e4f:	0f b6 00             	movzbl (%rax),%eax
    1e52:	88 45 f6             	mov    %al,-0xa(%rbp)
    1e55:	48 8d 55 f6          	lea    -0xa(%rbp),%rdx
    1e59:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    1e5c:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1e5f:	89 ce                	mov    %ecx,%esi
    1e61:	89 c7                	mov    %eax,%edi
    1e63:	b8 00 00 00 00       	mov    $0x0,%eax
    1e68:	e8 b3 f2 ff ff       	callq  1120 <mvprintw@plt>
    1e6d:	eb 1d                	jmp    1e8c <endwin@plt+0xd5c>
    1e6f:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    1e72:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1e75:	48 8d 15 88 11 00 00 	lea    0x1188(%rip),%rdx        # 3004 <endwin@plt+0x1ed4>
    1e7c:	89 ce                	mov    %ecx,%esi
    1e7e:	89 c7                	mov    %eax,%edi
    1e80:	b8 00 00 00 00       	mov    $0x0,%eax
    1e85:	e8 96 f2 ff ff       	callq  1120 <mvprintw@plt>
    1e8a:	eb 01                	jmp    1e8d <endwin@plt+0xd5d>
    1e8c:	90                   	nop
    1e8d:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
    1e91:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1e94:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1e97:	0f 8c 56 fe ff ff    	jl     1cf3 <endwin@plt+0xbc3>
    1e9d:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    1ea1:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1ea4:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    1ea7:	0f 8c 3a fe ff ff    	jl     1ce7 <endwin@plt+0xbb7>
    1ead:	8b 15 bd df 01 00    	mov    0x1dfbd(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    1eb3:	8b 05 d7 df 01 00    	mov    0x1dfd7(%rip),%eax        # 1fe90 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x10>
    1eb9:	89 d1                	mov    %edx,%ecx
    1ebb:	29 c1                	sub    %eax,%ecx
    1ebd:	8b 15 b1 df 01 00    	mov    0x1dfb1(%rip),%edx        # 1fe74 <endwin@plt+0x1ed44>
    1ec3:	8b 05 cb df 01 00    	mov    0x1dfcb(%rip),%eax        # 1fe94 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x14>
    1ec9:	29 c2                	sub    %eax,%edx
    1ecb:	89 d0                	mov    %edx,%eax
    1ecd:	48 8d 15 32 11 00 00 	lea    0x1132(%rip),%rdx        # 3006 <endwin@plt+0x1ed6>
    1ed4:	89 ce                	mov    %ecx,%esi
    1ed6:	89 c7                	mov    %eax,%edi
    1ed8:	b8 00 00 00 00       	mov    $0x0,%eax
    1edd:	e8 3e f2 ff ff       	callq  1120 <mvprintw@plt>
    1ee2:	48 8b 05 97 df 01 00 	mov    0x1df97(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    1ee9:	48 89 c7             	mov    %rax,%rdi
    1eec:	e8 1f f2 ff ff       	callq  1110 <wrefresh@plt>
    1ef1:	48 8b 05 88 df 01 00 	mov    0x1df88(%rip),%rax        # 1fe80 <stdscr@@NCURSES6_TINFO_5.0.19991023>
    1ef8:	48 89 c7             	mov    %rax,%rdi
    1efb:	e8 d0 f1 ff ff       	callq  10d0 <wgetch@plt>
    1f00:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1f03:	83 7d f0 51          	cmpl   $0x51,-0x10(%rbp)
    1f07:	75 06                	jne    1f0f <endwin@plt+0xddf>
    1f09:	c6 45 d6 00          	movb   $0x0,-0x2a(%rbp)
    1f0d:	eb 46                	jmp    1f55 <endwin@plt+0xe25>
    1f0f:	83 7d f0 77          	cmpl   $0x77,-0x10(%rbp)
    1f13:	75 0c                	jne    1f21 <endwin@plt+0xdf1>
    1f15:	b8 00 00 00 00       	mov    $0x0,%eax
    1f1a:	e8 4c f7 ff ff       	callq  166b <endwin@plt+0x53b>
    1f1f:	eb 34                	jmp    1f55 <endwin@plt+0xe25>
    1f21:	83 7d f0 73          	cmpl   $0x73,-0x10(%rbp)
    1f25:	75 0c                	jne    1f33 <endwin@plt+0xe03>
    1f27:	b8 00 00 00 00       	mov    $0x0,%eax
    1f2c:	e8 b6 f7 ff ff       	callq  16e7 <endwin@plt+0x5b7>
    1f31:	eb 22                	jmp    1f55 <endwin@plt+0xe25>
    1f33:	83 7d f0 61          	cmpl   $0x61,-0x10(%rbp)
    1f37:	75 0c                	jne    1f45 <endwin@plt+0xe15>
    1f39:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3e:	e8 20 f8 ff ff       	callq  1763 <endwin@plt+0x633>
    1f43:	eb 10                	jmp    1f55 <endwin@plt+0xe25>
    1f45:	83 7d f0 64          	cmpl   $0x64,-0x10(%rbp)
    1f49:	75 0a                	jne    1f55 <endwin@plt+0xe25>
    1f4b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f50:	e8 8a f8 ff ff       	callq  17df <endwin@plt+0x6af>
    1f55:	8b 05 19 df 01 00    	mov    0x1df19(%rip),%eax        # 1fe74 <endwin@plt+0x1ed44>
    1f5b:	8b 15 0f df 01 00    	mov    0x1df0f(%rip),%edx        # 1fe70 <endwin@plt+0x1ed40>
    1f61:	48 63 ca             	movslq %edx,%rcx
    1f64:	48 63 d0             	movslq %eax,%rdx
    1f67:	48 89 d0             	mov    %rdx,%rax
    1f6a:	48 c1 e0 02          	shl    $0x2,%rax
    1f6e:	48 01 d0             	add    %rdx,%rax
    1f71:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1f78:	00 
    1f79:	48 01 d0             	add    %rdx,%rax
    1f7c:	48 c1 e0 02          	shl    $0x2,%rax
    1f80:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    1f84:	48 8d 05 15 df 01 00 	lea    0x1df15(%rip),%rax        # 1fea0 <stdscr@@NCURSES6_TINFO_5.0.19991023+0x20>
    1f8b:	48 01 d0             	add    %rdx,%rax
    1f8e:	0f b6 00             	movzbl (%rax),%eax
    1f91:	88 45 d7             	mov    %al,-0x29(%rbp)
    1f94:	80 7d d7 3e          	cmpb   $0x3e,-0x29(%rbp)
    1f98:	75 11                	jne    1fab <endwin@plt+0xe7b>
    1f9a:	8b 05 dc de 01 00    	mov    0x1dedc(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1fa0:	83 c0 01             	add    $0x1,%eax
    1fa3:	89 05 d3 de 01 00    	mov    %eax,0x1ded3(%rip)        # 1fe7c <endwin@plt+0x1ed4c>
    1fa9:	eb 15                	jmp    1fc0 <endwin@plt+0xe90>
    1fab:	80 7d d7 3c          	cmpb   $0x3c,-0x29(%rbp)
    1faf:	75 0f                	jne    1fc0 <endwin@plt+0xe90>
    1fb1:	8b 05 c5 de 01 00    	mov    0x1dec5(%rip),%eax        # 1fe7c <endwin@plt+0x1ed4c>
    1fb7:	83 e8 01             	sub    $0x1,%eax
    1fba:	89 05 bc de 01 00    	mov    %eax,0x1debc(%rip)        # 1fe7c <endwin@plt+0x1ed4c>
    1fc0:	80 7d d6 00          	cmpb   $0x0,-0x2a(%rbp)
    1fc4:	0f 85 50 f9 ff ff    	jne    191a <endwin@plt+0x7ea>
    1fca:	e8 61 f1 ff ff       	callq  1130 <endwin@plt>
    1fcf:	b8 00 00 00 00       	mov    $0x0,%eax
    1fd4:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    1fd8:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1fdf:	00 00 
    1fe1:	74 05                	je     1fe8 <endwin@plt+0xeb8>
    1fe3:	e8 08 f1 ff ff       	callq  10f0 <__stack_chk_fail@plt>
    1fe8:	c9                   	leaveq 
    1fe9:	c3                   	retq   
    1fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1ff0:	f3 0f 1e fa          	endbr64 
    1ff4:	41 57                	push   %r15
    1ff6:	4c 8d 3d 63 2d 00 00 	lea    0x2d63(%rip),%r15        # 4d60 <endwin@plt+0x3c30>
    1ffd:	41 56                	push   %r14
    1fff:	49 89 d6             	mov    %rdx,%r14
    2002:	41 55                	push   %r13
    2004:	49 89 f5             	mov    %rsi,%r13
    2007:	41 54                	push   %r12
    2009:	41 89 fc             	mov    %edi,%r12d
    200c:	55                   	push   %rbp
    200d:	48 8d 2d 54 2d 00 00 	lea    0x2d54(%rip),%rbp        # 4d68 <endwin@plt+0x3c38>
    2014:	53                   	push   %rbx
    2015:	4c 29 fd             	sub    %r15,%rbp
    2018:	48 83 ec 08          	sub    $0x8,%rsp
    201c:	e8 df ef ff ff       	callq  1000 <__cxa_finalize@plt-0xb0>
    2021:	48 c1 fd 03          	sar    $0x3,%rbp
    2025:	74 1f                	je     2046 <endwin@plt+0xf16>
    2027:	31 db                	xor    %ebx,%ebx
    2029:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2030:	4c 89 f2             	mov    %r14,%rdx
    2033:	4c 89 ee             	mov    %r13,%rsi
    2036:	44 89 e7             	mov    %r12d,%edi
    2039:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    203d:	48 83 c3 01          	add    $0x1,%rbx
    2041:	48 39 dd             	cmp    %rbx,%rbp
    2044:	75 ea                	jne    2030 <endwin@plt+0xf00>
    2046:	48 83 c4 08          	add    $0x8,%rsp
    204a:	5b                   	pop    %rbx
    204b:	5d                   	pop    %rbp
    204c:	41 5c                	pop    %r12
    204e:	41 5d                	pop    %r13
    2050:	41 5e                	pop    %r14
    2052:	41 5f                	pop    %r15
    2054:	c3                   	retq   
    2055:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    205c:	00 00 00 00 
    2060:	f3 0f 1e fa          	endbr64 
    2064:	c3                   	retq   

Disassembly of section .fini:

0000000000002068 <.fini>:
    2068:	f3 0f 1e fa          	endbr64 
    206c:	48 83 ec 08          	sub    $0x8,%rsp
    2070:	48 83 c4 08          	add    $0x8,%rsp
    2074:	c3                   	retq   
