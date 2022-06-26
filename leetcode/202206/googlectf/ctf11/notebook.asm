
notebook:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 3a 3f 00 00    	pushq  0x3f3a(%rip)        # 4f60 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 3b 3f 00 00 	bnd jmpq *0x3f3b(%rip)        # 4f68 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop

Disassembly of section .plt.got:

0000000000001100 <__cxa_finalize@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ed 3e 00 00 	bnd jmpq *0x3eed(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001110 <putchar@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 55 3e 00 00 	bnd jmpq *0x3e55(%rip)        # 4f70 <putchar@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <strncpy@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 4d 3e 00 00 	bnd jmpq *0x3e4d(%rip)        # 4f78 <strncpy@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__isoc99_fscanf@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 45 3e 00 00 	bnd jmpq *0x3e45(%rip)        # 4f80 <__isoc99_fscanf@GLIBC_2.7>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <puts@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 3d 3e 00 00 	bnd jmpq *0x3e3d(%rip)        # 4f88 <puts@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <fclose@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 35 3e 00 00 	bnd jmpq *0x3e35(%rip)        # 4f90 <fclose@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <strlen@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 2d 3e 00 00 	bnd jmpq *0x3e2d(%rip)        # 4f98 <strlen@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <__stack_chk_fail@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 25 3e 00 00 	bnd jmpq *0x3e25(%rip)        # 4fa0 <__stack_chk_fail@GLIBC_2.4>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <printf@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 1d 3e 00 00 	bnd jmpq *0x3e1d(%rip)        # 4fa8 <printf@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <snprintf@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 15 3e 00 00 	bnd jmpq *0x3e15(%rip)        # 4fb0 <snprintf@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <strncat@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 0d 3e 00 00 	bnd jmpq *0x3e0d(%rip)        # 4fb8 <strncat@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <setvbuf@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 05 3e 00 00 	bnd jmpq *0x3e05(%rip)        # 4fc0 <setvbuf@GLIBC_2.2.5>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <fopen@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 fd 3d 00 00 	bnd jmpq *0x3dfd(%rip)        # 4fc8 <fopen@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <__isoc99_scanf@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 f5 3d 00 00 	bnd jmpq *0x3df5(%rip)        # 4fd0 <__isoc99_scanf@GLIBC_2.7>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011e0 <_start>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	31 ed                	xor    %ebp,%ebp
    11e6:	49 89 d1             	mov    %rdx,%r9
    11e9:	5e                   	pop    %rsi
    11ea:	48 89 e2             	mov    %rsp,%rdx
    11ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11f1:	50                   	push   %rax
    11f2:	54                   	push   %rsp
    11f3:	4c 8d 05 56 0f 00 00 	lea    0xf56(%rip),%r8        # 2150 <__libc_csu_fini>
    11fa:	48 8d 0d df 0e 00 00 	lea    0xedf(%rip),%rcx        # 20e0 <__libc_csu_init>
    1201:	48 8d 3d a3 0c 00 00 	lea    0xca3(%rip),%rdi        # 1eab <main>
    1208:	ff 15 d2 3d 00 00    	callq  *0x3dd2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    120e:	f4                   	hlt    
    120f:	90                   	nop

0000000000001210 <deregister_tm_clones>:
    1210:	48 8d 3d f9 3d 00 00 	lea    0x3df9(%rip),%rdi        # 5010 <__TMC_END__>
    1217:	48 8d 05 f2 3d 00 00 	lea    0x3df2(%rip),%rax        # 5010 <__TMC_END__>
    121e:	48 39 f8             	cmp    %rdi,%rax
    1221:	74 15                	je     1238 <deregister_tm_clones+0x28>
    1223:	48 8b 05 ae 3d 00 00 	mov    0x3dae(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    122a:	48 85 c0             	test   %rax,%rax
    122d:	74 09                	je     1238 <deregister_tm_clones+0x28>
    122f:	ff e0                	jmpq   *%rax
    1231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1238:	c3                   	retq   
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d c9 3d 00 00 	lea    0x3dc9(%rip),%rdi        # 5010 <__TMC_END__>
    1247:	48 8d 35 c2 3d 00 00 	lea    0x3dc2(%rip),%rsi        # 5010 <__TMC_END__>
    124e:	48 29 fe             	sub    %rdi,%rsi
    1251:	48 89 f0             	mov    %rsi,%rax
    1254:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1258:	48 c1 f8 03          	sar    $0x3,%rax
    125c:	48 01 c6             	add    %rax,%rsi
    125f:	48 d1 fe             	sar    %rsi
    1262:	74 14                	je     1278 <register_tm_clones+0x38>
    1264:	48 8b 05 85 3d 00 00 	mov    0x3d85(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    126b:	48 85 c0             	test   %rax,%rax
    126e:	74 08                	je     1278 <register_tm_clones+0x38>
    1270:	ff e0                	jmpq   *%rax
    1272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1278:	c3                   	retq   
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	80 3d bd 3d 00 00 00 	cmpb   $0x0,0x3dbd(%rip)        # 5048 <completed.8060>
    128b:	75 2b                	jne    12b8 <__do_global_dtors_aux+0x38>
    128d:	55                   	push   %rbp
    128e:	48 83 3d 62 3d 00 00 	cmpq   $0x0,0x3d62(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1295:	00 
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	74 0c                	je     12a7 <__do_global_dtors_aux+0x27>
    129b:	48 8b 3d 66 3d 00 00 	mov    0x3d66(%rip),%rdi        # 5008 <__dso_handle>
    12a2:	e8 59 fe ff ff       	callq  1100 <__cxa_finalize@plt>
    12a7:	e8 64 ff ff ff       	callq  1210 <deregister_tm_clones>
    12ac:	c6 05 95 3d 00 00 01 	movb   $0x1,0x3d95(%rip)        # 5048 <completed.8060>
    12b3:	5d                   	pop    %rbp
    12b4:	c3                   	retq   
    12b5:	0f 1f 00             	nopl   (%rax)
    12b8:	c3                   	retq   
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012c0 <frame_dummy>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	e9 77 ff ff ff       	jmpq   1240 <register_tm_clones>

00000000000012c9 <next_word_len>:
    12c9:	f3 0f 1e fa          	endbr64 
    12cd:	55                   	push   %rbp
    12ce:	48 89 e5             	mov    %rsp,%rbp
    12d1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12d9:	0f b6 00             	movzbl (%rax),%eax
    12dc:	84 c0                	test   %al,%al
    12de:	75 07                	jne    12e7 <next_word_len+0x1e>
    12e0:	b8 00 00 00 00       	mov    $0x0,%eax
    12e5:	eb 38                	jmp    131f <next_word_len+0x56>
    12e7:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    12ee:	eb 04                	jmp    12f4 <next_word_len+0x2b>
    12f0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12f4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12f7:	48 63 d0             	movslq %eax,%rdx
    12fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12fe:	48 01 d0             	add    %rdx,%rax
    1301:	0f b6 00             	movzbl (%rax),%eax
    1304:	84 c0                	test   %al,%al
    1306:	74 14                	je     131c <next_word_len+0x53>
    1308:	8b 45 fc             	mov    -0x4(%rbp),%eax
    130b:	48 63 d0             	movslq %eax,%rdx
    130e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1312:	48 01 d0             	add    %rdx,%rax
    1315:	0f b6 00             	movzbl (%rax),%eax
    1318:	3c 20                	cmp    $0x20,%al
    131a:	75 d4                	jne    12f0 <next_word_len+0x27>
    131c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    131f:	5d                   	pop    %rbp
    1320:	c3                   	retq   

0000000000001321 <next_line_len>:
    1321:	f3 0f 1e fa          	endbr64 
    1325:	55                   	push   %rbp
    1326:	48 89 e5             	mov    %rsp,%rbp
    1329:	48 83 ec 18          	sub    $0x18,%rsp
    132d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1331:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1338:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    133f:	eb 2b                	jmp    136c <next_line_len+0x4b>
    1341:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    1345:	75 0d                	jne    1354 <next_line_len+0x33>
    1347:	83 7d fc 28          	cmpl   $0x28,-0x4(%rbp)
    134b:	7e 07                	jle    1354 <next_line_len+0x33>
    134d:	b8 28 00 00 00       	mov    $0x28,%eax
    1352:	eb 39                	jmp    138d <next_line_len+0x6c>
    1354:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1357:	8b 45 fc             	mov    -0x4(%rbp),%eax
    135a:	01 d0                	add    %edx,%eax
    135c:	83 f8 28             	cmp    $0x28,%eax
    135f:	7e 05                	jle    1366 <next_line_len+0x45>
    1361:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1364:	eb 27                	jmp    138d <next_line_len+0x6c>
    1366:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1369:	01 45 f8             	add    %eax,-0x8(%rbp)
    136c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    136f:	48 63 d0             	movslq %eax,%rdx
    1372:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1376:	48 01 d0             	add    %rdx,%rax
    1379:	48 89 c7             	mov    %rax,%rdi
    137c:	e8 48 ff ff ff       	callq  12c9 <next_word_len>
    1381:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1384:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1388:	75 b7                	jne    1341 <next_line_len+0x20>
    138a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    138d:	c9                   	leaveq 
    138e:	c3                   	retq   

000000000000138f <get_dimensions>:
    138f:	f3 0f 1e fa          	endbr64 
    1393:	55                   	push   %rbp
    1394:	48 89 e5             	mov    %rsp,%rbp
    1397:	48 83 ec 28          	sub    $0x28,%rsp
    139b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    139f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    13a3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    13a7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    13ae:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    13b2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    13b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13bc:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    13c2:	eb 59                	jmp    141d <get_dimensions+0x8e>
    13c4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13c7:	48 63 d0             	movslq %eax,%rdx
    13ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13ce:	48 01 d0             	add    %rdx,%rax
    13d1:	48 89 c7             	mov    %rax,%rdi
    13d4:	e8 48 ff ff ff       	callq  1321 <next_line_len>
    13d9:	89 45 fc             	mov    %eax,-0x4(%rbp)
    13dc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13e0:	8b 00                	mov    (%rax),%eax
    13e2:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    13e5:	7e 09                	jle    13f0 <get_dimensions+0x61>
    13e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13eb:	8b 55 fc             	mov    -0x4(%rbp),%edx
    13ee:	89 10                	mov    %edx,(%rax)
    13f0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    13f3:	01 45 f8             	add    %eax,-0x8(%rbp)
    13f6:	8b 45 f8             	mov    -0x8(%rbp),%eax
    13f9:	48 63 d0             	movslq %eax,%rdx
    13fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1400:	48 01 d0             	add    %rdx,%rax
    1403:	0f b6 00             	movzbl (%rax),%eax
    1406:	3c 20                	cmp    $0x20,%al
    1408:	75 04                	jne    140e <get_dimensions+0x7f>
    140a:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    140e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1412:	8b 00                	mov    (%rax),%eax
    1414:	8d 50 01             	lea    0x1(%rax),%edx
    1417:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    141b:	89 10                	mov    %edx,(%rax)
    141d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1420:	48 63 d0             	movslq %eax,%rdx
    1423:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1427:	48 01 d0             	add    %rdx,%rax
    142a:	0f b6 00             	movzbl (%rax),%eax
    142d:	84 c0                	test   %al,%al
    142f:	75 93                	jne    13c4 <get_dimensions+0x35>
    1431:	90                   	nop
    1432:	90                   	nop
    1433:	c9                   	leaveq 
    1434:	c3                   	retq   

0000000000001435 <prepare>:
    1435:	f3 0f 1e fa          	endbr64 
    1439:	55                   	push   %rbp
    143a:	48 89 e5             	mov    %rsp,%rbp
    143d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1441:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1448:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    144f:	e9 be 00 00 00       	jmpq   1512 <prepare+0xdd>
    1454:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1457:	48 63 d0             	movslq %eax,%rdx
    145a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    145e:	48 01 d0             	add    %rdx,%rax
    1461:	0f b6 00             	movzbl (%rax),%eax
    1464:	3c 0a                	cmp    $0xa,%al
    1466:	74 14                	je     147c <prepare+0x47>
    1468:	8b 45 f8             	mov    -0x8(%rbp),%eax
    146b:	48 63 d0             	movslq %eax,%rdx
    146e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1472:	48 01 d0             	add    %rdx,%rax
    1475:	0f b6 00             	movzbl (%rax),%eax
    1478:	3c 09                	cmp    $0x9,%al
    147a:	75 10                	jne    148c <prepare+0x57>
    147c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    147f:	48 63 d0             	movslq %eax,%rdx
    1482:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1486:	48 01 d0             	add    %rdx,%rax
    1489:	c6 00 20             	movb   $0x20,(%rax)
    148c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    148f:	48 63 d0             	movslq %eax,%rdx
    1492:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1496:	48 01 d0             	add    %rdx,%rax
    1499:	0f b6 00             	movzbl (%rax),%eax
    149c:	3c 20                	cmp    $0x20,%al
    149e:	75 46                	jne    14e6 <prepare+0xb1>
    14a0:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    14a4:	75 14                	jne    14ba <prepare+0x85>
    14a6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14a9:	48 63 d0             	movslq %eax,%rdx
    14ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14b0:	48 01 d0             	add    %rdx,%rax
    14b3:	0f b6 00             	movzbl (%rax),%eax
    14b6:	3c 20                	cmp    $0x20,%al
    14b8:	75 26                	jne    14e0 <prepare+0xab>
    14ba:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14bd:	48 63 d0             	movslq %eax,%rdx
    14c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14c4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    14c8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14cb:	8d 50 01             	lea    0x1(%rax),%edx
    14ce:	89 55 fc             	mov    %edx,-0x4(%rbp)
    14d1:	48 63 d0             	movslq %eax,%rdx
    14d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14d8:	48 01 c2             	add    %rax,%rdx
    14db:	0f b6 01             	movzbl (%rcx),%eax
    14de:	88 02                	mov    %al,(%rdx)
    14e0:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    14e4:	eb 2c                	jmp    1512 <prepare+0xdd>
    14e6:	8b 45 f8             	mov    -0x8(%rbp),%eax
    14e9:	8d 50 01             	lea    0x1(%rax),%edx
    14ec:	89 55 f8             	mov    %edx,-0x8(%rbp)
    14ef:	48 63 d0             	movslq %eax,%rdx
    14f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14f6:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    14fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14fd:	8d 50 01             	lea    0x1(%rax),%edx
    1500:	89 55 fc             	mov    %edx,-0x4(%rbp)
    1503:	48 63 d0             	movslq %eax,%rdx
    1506:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    150a:	48 01 c2             	add    %rax,%rdx
    150d:	0f b6 01             	movzbl (%rcx),%eax
    1510:	88 02                	mov    %al,(%rdx)
    1512:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1515:	48 63 d0             	movslq %eax,%rdx
    1518:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    151c:	48 01 d0             	add    %rdx,%rax
    151f:	0f b6 00             	movzbl (%rax),%eax
    1522:	84 c0                	test   %al,%al
    1524:	0f 85 2a ff ff ff    	jne    1454 <prepare+0x1f>
    152a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    152d:	48 63 d0             	movslq %eax,%rdx
    1530:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1534:	48 01 d0             	add    %rdx,%rax
    1537:	c6 00 00             	movb   $0x0,(%rax)
    153a:	eb 10                	jmp    154c <prepare+0x117>
    153c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    153f:	48 63 d0             	movslq %eax,%rdx
    1542:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1546:	48 01 d0             	add    %rdx,%rax
    1549:	c6 00 00             	movb   $0x0,(%rax)
    154c:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
    1550:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1553:	48 63 d0             	movslq %eax,%rdx
    1556:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    155a:	48 01 d0             	add    %rdx,%rax
    155d:	0f b6 00             	movzbl (%rax),%eax
    1560:	3c 20                	cmp    $0x20,%al
    1562:	74 d8                	je     153c <prepare+0x107>
    1564:	90                   	nop
    1565:	90                   	nop
    1566:	5d                   	pop    %rbp
    1567:	c3                   	retq   

0000000000001568 <print_line>:
    1568:	f3 0f 1e fa          	endbr64 
    156c:	55                   	push   %rbp
    156d:	48 89 e5             	mov    %rsp,%rbp
    1570:	48 83 ec 70          	sub    $0x70,%rsp
    1574:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    1578:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    157c:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    1580:	89 4d 94             	mov    %ecx,-0x6c(%rbp)
    1583:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    158a:	00 00 
    158c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1590:	31 c0                	xor    %eax,%eax
    1592:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1596:	48 89 c7             	mov    %rax,%rdi
    1599:	e8 83 fd ff ff       	callq  1321 <next_line_len>
    159e:	89 45 b8             	mov    %eax,-0x48(%rbp)
    15a1:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
    15a8:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    15af:	00 
    15b0:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    15b7:	00 
    15b8:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    15bf:	00 
    15c0:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    15c7:	00 
    15c8:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    15cf:	00 
    15d0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    15d7:	00 
    15d8:	66 c7 45 f0 00 00    	movw   $0x0,-0x10(%rbp)
    15de:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    15e2:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    15e6:	ba 04 00 00 00       	mov    $0x4,%edx
    15eb:	48 89 ce             	mov    %rcx,%rsi
    15ee:	48 89 c7             	mov    %rax,%rdi
    15f1:	e8 2a fb ff ff       	callq  1120 <strncpy@plt>
    15f6:	8b 45 b8             	mov    -0x48(%rbp),%eax
    15f9:	48 63 d0             	movslq %eax,%rdx
    15fc:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    1600:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1604:	48 89 ce             	mov    %rcx,%rsi
    1607:	48 89 c7             	mov    %rax,%rdi
    160a:	e8 91 fb ff ff       	callq  11a0 <strncat@plt>
    160f:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%rbp)
    1616:	eb 32                	jmp    164a <print_line+0xe2>
    1618:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    161c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1623:	48 89 c2             	mov    %rax,%rdx
    1626:	b8 00 00 00 00       	mov    $0x0,%eax
    162b:	48 89 d7             	mov    %rdx,%rdi
    162e:	f2 ae                	repnz scas %es:(%rdi),%al
    1630:	48 89 c8             	mov    %rcx,%rax
    1633:	48 f7 d0             	not    %rax
    1636:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    163a:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    163e:	48 01 d0             	add    %rdx,%rax
    1641:	66 c7 00 20 00       	movw   $0x20,(%rax)
    1646:	83 45 b4 01          	addl   $0x1,-0x4c(%rbp)
    164a:	8b 45 94             	mov    -0x6c(%rbp),%eax
    164d:	2b 45 b8             	sub    -0x48(%rbp),%eax
    1650:	39 45 b4             	cmp    %eax,-0x4c(%rbp)
    1653:	7c c3                	jl     1618 <print_line+0xb0>
    1655:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    1659:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    165d:	ba 04 00 00 00       	mov    $0x4,%edx
    1662:	48 89 ce             	mov    %rcx,%rsi
    1665:	48 89 c7             	mov    %rax,%rdi
    1668:	e8 33 fb ff ff       	callq  11a0 <strncat@plt>
    166d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1671:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1678:	48 89 c2             	mov    %rax,%rdx
    167b:	b8 00 00 00 00       	mov    $0x0,%eax
    1680:	48 89 d7             	mov    %rdx,%rdi
    1683:	f2 ae                	repnz scas %es:(%rdi),%al
    1685:	48 89 c8             	mov    %rcx,%rax
    1688:	48 f7 d0             	not    %rax
    168b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    168f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    1693:	48 01 d0             	add    %rdx,%rax
    1696:	66 c7 00 0a 00       	movw   $0xa,(%rax)
    169b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    169f:	48 89 c7             	mov    %rax,%rdi
    16a2:	b8 00 00 00 00       	mov    $0x0,%eax
    16a7:	e8 d4 fa ff ff       	callq  1180 <printf@plt>
    16ac:	8b 45 b8             	mov    -0x48(%rbp),%eax
    16af:	48 63 d0             	movslq %eax,%rdx
    16b2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    16b6:	48 01 d0             	add    %rdx,%rax
    16b9:	0f b6 00             	movzbl (%rax),%eax
    16bc:	3c 20                	cmp    $0x20,%al
    16be:	75 08                	jne    16c8 <print_line+0x160>
    16c0:	8b 45 b8             	mov    -0x48(%rbp),%eax
    16c3:	83 c0 01             	add    $0x1,%eax
    16c6:	eb 03                	jmp    16cb <print_line+0x163>
    16c8:	8b 45 b8             	mov    -0x48(%rbp),%eax
    16cb:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    16cf:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16d6:	00 00 
    16d8:	74 05                	je     16df <print_line+0x177>
    16da:	e8 91 fa ff ff       	callq  1170 <__stack_chk_fail@plt>
    16df:	c9                   	leaveq 
    16e0:	c3                   	retq   

00000000000016e1 <catsay>:
    16e1:	f3 0f 1e fa          	endbr64 
    16e5:	55                   	push   %rbp
    16e6:	48 89 e5             	mov    %rsp,%rbp
    16e9:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
    16f0:	48 89 bd c8 fd ff ff 	mov    %rdi,-0x238(%rbp)
    16f7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16fe:	00 00 
    1700:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1704:	31 c0                	xor    %eax,%eax
    1706:	48 c7 85 f0 fd ff ff 	movq   $0x0,-0x210(%rbp)
    170d:	00 00 00 00 
    1711:	48 c7 85 f8 fd ff ff 	movq   $0x0,-0x208(%rbp)
    1718:	00 00 00 00 
    171c:	48 8d 95 00 fe ff ff 	lea    -0x200(%rbp),%rdx
    1723:	b8 00 00 00 00       	mov    $0x0,%eax
    1728:	b9 3e 00 00 00       	mov    $0x3e,%ecx
    172d:	48 89 d7             	mov    %rdx,%rdi
    1730:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1733:	48 8b 8d c8 fd ff ff 	mov    -0x238(%rbp),%rcx
    173a:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    1741:	ba ff 01 00 00       	mov    $0x1ff,%edx
    1746:	48 89 ce             	mov    %rcx,%rsi
    1749:	48 89 c7             	mov    %rax,%rdi
    174c:	e8 cf f9 ff ff       	callq  1120 <strncpy@plt>
    1751:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    1758:	48 89 c7             	mov    %rax,%rdi
    175b:	e8 d5 fc ff ff       	callq  1435 <prepare>
    1760:	48 8d 95 dc fd ff ff 	lea    -0x224(%rbp),%rdx
    1767:	48 8d 8d d8 fd ff ff 	lea    -0x228(%rbp),%rcx
    176e:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    1775:	48 89 ce             	mov    %rcx,%rsi
    1778:	48 89 c7             	mov    %rax,%rdi
    177b:	e8 0f fc ff ff       	callq  138f <get_dimensions>
    1780:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    1786:	85 c0                	test   %eax,%eax
    1788:	0f 84 92 01 00 00    	je     1920 <catsay+0x23f>
    178e:	bf 20 00 00 00       	mov    $0x20,%edi
    1793:	e8 78 f9 ff ff       	callq  1110 <putchar@plt>
    1798:	c7 85 e0 fd ff ff 00 	movl   $0x0,-0x220(%rbp)
    179f:	00 00 00 
    17a2:	eb 11                	jmp    17b5 <catsay+0xd4>
    17a4:	bf 5f 00 00 00       	mov    $0x5f,%edi
    17a9:	e8 62 f9 ff ff       	callq  1110 <putchar@plt>
    17ae:	83 85 e0 fd ff ff 01 	addl   $0x1,-0x220(%rbp)
    17b5:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
    17bb:	83 c0 01             	add    $0x1,%eax
    17be:	39 85 e0 fd ff ff    	cmp    %eax,-0x220(%rbp)
    17c4:	7e de                	jle    17a4 <catsay+0xc3>
    17c6:	bf 0a 00 00 00       	mov    $0xa,%edi
    17cb:	e8 40 f9 ff ff       	callq  1110 <putchar@plt>
    17d0:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    17d6:	83 f8 01             	cmp    $0x1,%eax
    17d9:	75 2a                	jne    1805 <catsay+0x124>
    17db:	8b 95 dc fd ff ff    	mov    -0x224(%rbp),%edx
    17e1:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    17e8:	89 d1                	mov    %edx,%ecx
    17ea:	48 8d 15 17 18 00 00 	lea    0x1817(%rip),%rdx        # 3008 <_IO_stdin_used+0x8>
    17f1:	48 89 c6             	mov    %rax,%rsi
    17f4:	48 8d 3d 10 18 00 00 	lea    0x1810(%rip),%rdi        # 300b <_IO_stdin_used+0xb>
    17fb:	e8 68 fd ff ff       	callq  1568 <print_line>
    1800:	e9 b3 00 00 00       	jmpq   18b8 <catsay+0x1d7>
    1805:	8b 95 dc fd ff ff    	mov    -0x224(%rbp),%edx
    180b:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    1812:	89 d1                	mov    %edx,%ecx
    1814:	48 8d 15 f3 17 00 00 	lea    0x17f3(%rip),%rdx        # 300e <_IO_stdin_used+0xe>
    181b:	48 89 c6             	mov    %rax,%rsi
    181e:	48 8d 3d ec 17 00 00 	lea    0x17ec(%rip),%rdi        # 3011 <_IO_stdin_used+0x11>
    1825:	e8 3e fd ff ff       	callq  1568 <print_line>
    182a:	89 85 e4 fd ff ff    	mov    %eax,-0x21c(%rbp)
    1830:	c7 85 e8 fd ff ff 01 	movl   $0x1,-0x218(%rbp)
    1837:	00 00 00 
    183a:	eb 3c                	jmp    1878 <catsay+0x197>
    183c:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
    1842:	48 8d 8d f0 fd ff ff 	lea    -0x210(%rbp),%rcx
    1849:	8b 95 e4 fd ff ff    	mov    -0x21c(%rbp),%edx
    184f:	48 63 d2             	movslq %edx,%rdx
    1852:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
    1856:	89 c1                	mov    %eax,%ecx
    1858:	48 8d 15 b5 17 00 00 	lea    0x17b5(%rip),%rdx        # 3014 <_IO_stdin_used+0x14>
    185f:	48 8d 3d b1 17 00 00 	lea    0x17b1(%rip),%rdi        # 3017 <_IO_stdin_used+0x17>
    1866:	e8 fd fc ff ff       	callq  1568 <print_line>
    186b:	01 85 e4 fd ff ff    	add    %eax,-0x21c(%rbp)
    1871:	83 85 e8 fd ff ff 01 	addl   $0x1,-0x218(%rbp)
    1878:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    187e:	83 e8 01             	sub    $0x1,%eax
    1881:	39 85 e8 fd ff ff    	cmp    %eax,-0x218(%rbp)
    1887:	7c b3                	jl     183c <catsay+0x15b>
    1889:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
    188f:	48 8d 8d f0 fd ff ff 	lea    -0x210(%rbp),%rcx
    1896:	8b 95 e4 fd ff ff    	mov    -0x21c(%rbp),%edx
    189c:	48 63 d2             	movslq %edx,%rdx
    189f:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
    18a3:	89 c1                	mov    %eax,%ecx
    18a5:	48 8d 15 6e 17 00 00 	lea    0x176e(%rip),%rdx        # 301a <_IO_stdin_used+0x1a>
    18ac:	48 8d 3d 6a 17 00 00 	lea    0x176a(%rip),%rdi        # 301d <_IO_stdin_used+0x1d>
    18b3:	e8 b0 fc ff ff       	callq  1568 <print_line>
    18b8:	bf 20 00 00 00       	mov    $0x20,%edi
    18bd:	e8 4e f8 ff ff       	callq  1110 <putchar@plt>
    18c2:	c7 85 ec fd ff ff 00 	movl   $0x0,-0x214(%rbp)
    18c9:	00 00 00 
    18cc:	eb 11                	jmp    18df <catsay+0x1fe>
    18ce:	bf 2d 00 00 00       	mov    $0x2d,%edi
    18d3:	e8 38 f8 ff ff       	callq  1110 <putchar@plt>
    18d8:	83 85 ec fd ff ff 01 	addl   $0x1,-0x214(%rbp)
    18df:	8b 85 dc fd ff ff    	mov    -0x224(%rbp),%eax
    18e5:	83 c0 01             	add    $0x1,%eax
    18e8:	39 85 ec fd ff ff    	cmp    %eax,-0x214(%rbp)
    18ee:	7e de                	jle    18ce <catsay+0x1ed>
    18f0:	bf 0a 00 00 00       	mov    $0xa,%edi
    18f5:	e8 16 f8 ff ff       	callq  1110 <putchar@plt>
    18fa:	48 8d 3d 1f 17 00 00 	lea    0x171f(%rip),%rdi        # 3020 <_IO_stdin_used+0x20>
    1901:	e8 3a f8 ff ff       	callq  1140 <puts@plt>
    1906:	48 8d 3d 23 17 00 00 	lea    0x1723(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    190d:	e8 2e f8 ff ff       	callq  1140 <puts@plt>
    1912:	48 8d 3d 27 17 00 00 	lea    0x1727(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    1919:	e8 22 f8 ff ff       	callq  1140 <puts@plt>
    191e:	eb 01                	jmp    1921 <catsay+0x240>
    1920:	90                   	nop
    1921:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1925:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    192c:	00 00 
    192e:	74 05                	je     1935 <catsay+0x254>
    1930:	e8 3b f8 ff ff       	callq  1170 <__stack_chk_fail@plt>
    1935:	c9                   	leaveq 
    1936:	c3                   	retq   

0000000000001937 <read_notes>:
    1937:	f3 0f 1e fa          	endbr64 
    193b:	55                   	push   %rbp
    193c:	48 89 e5             	mov    %rsp,%rbp
    193f:	48 83 ec 20          	sub    $0x20,%rsp
    1943:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1947:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    194e:	48 8d 35 fb 16 00 00 	lea    0x16fb(%rip),%rsi        # 3050 <_IO_stdin_used+0x50>
    1955:	48 8d 3d f6 16 00 00 	lea    0x16f6(%rip),%rdi        # 3052 <_IO_stdin_used+0x52>
    195c:	e8 5f f8 ff ff       	callq  11c0 <fopen@plt>
    1961:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1965:	eb 2c                	jmp    1993 <read_notes+0x5c>
    1967:	8b 45 f4             	mov    -0xc(%rbp),%eax
    196a:	48 63 d0             	movslq %eax,%rdx
    196d:	48 89 d0             	mov    %rdx,%rax
    1970:	48 c1 e0 07          	shl    $0x7,%rax
    1974:	48 01 d0             	add    %rdx,%rax
    1977:	48 c1 e0 02          	shl    $0x2,%rax
    197b:	48 89 c2             	mov    %rax,%rdx
    197e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1982:	48 01 d0             	add    %rdx,%rax
    1985:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%rax)
    198c:	00 00 00 
    198f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1993:	83 7d f4 09          	cmpl   $0x9,-0xc(%rbp)
    1997:	7f 3e                	jg     19d7 <read_notes+0xa0>
    1999:	8b 45 f4             	mov    -0xc(%rbp),%eax
    199c:	48 63 d0             	movslq %eax,%rdx
    199f:	48 89 d0             	mov    %rdx,%rax
    19a2:	48 c1 e0 07          	shl    $0x7,%rax
    19a6:	48 01 d0             	add    %rdx,%rax
    19a9:	48 c1 e0 02          	shl    $0x2,%rax
    19ad:	48 89 c2             	mov    %rax,%rdx
    19b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19b4:	48 01 d0             	add    %rdx,%rax
    19b7:	48 89 c2             	mov    %rax,%rdx
    19ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19be:	48 8d 35 97 16 00 00 	lea    0x1697(%rip),%rsi        # 305c <_IO_stdin_used+0x5c>
    19c5:	48 89 c7             	mov    %rax,%rdi
    19c8:	b8 00 00 00 00       	mov    $0x0,%eax
    19cd:	e8 5e f7 ff ff       	callq  1130 <__isoc99_fscanf@plt>
    19d2:	83 f8 ff             	cmp    $0xffffffff,%eax
    19d5:	75 90                	jne    1967 <read_notes+0x30>
    19d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19db:	48 89 c7             	mov    %rax,%rdi
    19de:	e8 6d f7 ff ff       	callq  1150 <fclose@plt>
    19e3:	90                   	nop
    19e4:	c9                   	leaveq 
    19e5:	c3                   	retq   

00000000000019e6 <list>:
    19e6:	f3 0f 1e fa          	endbr64 
    19ea:	55                   	push   %rbp
    19eb:	48 89 e5             	mov    %rsp,%rbp
    19ee:	53                   	push   %rbx
    19ef:	48 83 ec 28          	sub    $0x28,%rsp
    19f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    19f7:	48 8d 3d 6a 16 00 00 	lea    0x166a(%rip),%rdi        # 3068 <_IO_stdin_used+0x68>
    19fe:	e8 3d f7 ff ff       	callq  1140 <puts@plt>
    1a03:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1a0a:	eb 7f                	jmp    1a8b <list+0xa5>
    1a0c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1a0f:	48 63 d0             	movslq %eax,%rdx
    1a12:	48 89 d0             	mov    %rdx,%rax
    1a15:	48 c1 e0 07          	shl    $0x7,%rax
    1a19:	48 01 d0             	add    %rdx,%rax
    1a1c:	48 c1 e0 02          	shl    $0x2,%rax
    1a20:	48 89 c2             	mov    %rax,%rdx
    1a23:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a27:	48 01 d0             	add    %rdx,%rax
    1a2a:	8b 80 00 02 00 00    	mov    0x200(%rax),%eax
    1a30:	83 f8 01             	cmp    $0x1,%eax
    1a33:	75 09                	jne    1a3e <list+0x58>
    1a35:	48 8d 1d 48 16 00 00 	lea    0x1648(%rip),%rbx        # 3084 <_IO_stdin_used+0x84>
    1a3c:	eb 07                	jmp    1a45 <list+0x5f>
    1a3e:	48 8d 1d 47 16 00 00 	lea    0x1647(%rip),%rbx        # 308c <_IO_stdin_used+0x8c>
    1a45:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1a48:	48 63 d0             	movslq %eax,%rdx
    1a4b:	48 89 d0             	mov    %rdx,%rax
    1a4e:	48 c1 e0 07          	shl    $0x7,%rax
    1a52:	48 01 d0             	add    %rdx,%rax
    1a55:	48 c1 e0 02          	shl    $0x2,%rax
    1a59:	48 89 c2             	mov    %rax,%rdx
    1a5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a60:	48 01 d0             	add    %rdx,%rax
    1a63:	48 89 c7             	mov    %rax,%rdi
    1a66:	e8 f5 f6 ff ff       	callq  1160 <strlen@plt>
    1a6b:	48 89 c2             	mov    %rax,%rdx
    1a6e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1a71:	48 89 d9             	mov    %rbx,%rcx
    1a74:	89 c6                	mov    %eax,%esi
    1a76:	48 8d 3d 1b 16 00 00 	lea    0x161b(%rip),%rdi        # 3098 <_IO_stdin_used+0x98>
    1a7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1a82:	e8 f9 f6 ff ff       	callq  1180 <printf@plt>
    1a87:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1a8b:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    1a8f:	0f 8e 77 ff ff ff    	jle    1a0c <list+0x26>
    1a95:	90                   	nop
    1a96:	90                   	nop
    1a97:	48 83 c4 28          	add    $0x28,%rsp
    1a9b:	5b                   	pop    %rbx
    1a9c:	5d                   	pop    %rbp
    1a9d:	c3                   	retq   

0000000000001a9e <print_note>:
    1a9e:	f3 0f 1e fa          	endbr64 
    1aa2:	55                   	push   %rbp
    1aa3:	48 89 e5             	mov    %rsp,%rbp
    1aa6:	48 83 ec 20          	sub    $0x20,%rsp
    1aaa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1aae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ab5:	00 00 
    1ab7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1abb:	31 c0                	xor    %eax,%eax
    1abd:	48 8d 3d fc 15 00 00 	lea    0x15fc(%rip),%rdi        # 30c0 <_IO_stdin_used+0xc0>
    1ac4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ac9:	e8 b2 f6 ff ff       	callq  1180 <printf@plt>
    1ace:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    1ad2:	48 89 c6             	mov    %rax,%rsi
    1ad5:	48 8d 3d 0d 16 00 00 	lea    0x160d(%rip),%rdi        # 30e9 <_IO_stdin_used+0xe9>
    1adc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae1:	e8 ea f6 ff ff       	callq  11d0 <__isoc99_scanf@plt>
    1ae6:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1ae9:	83 f8 09             	cmp    $0x9,%eax
    1aec:	7e 0e                	jle    1afc <print_note+0x5e>
    1aee:	48 8d 3d fb 15 00 00 	lea    0x15fb(%rip),%rdi        # 30f0 <_IO_stdin_used+0xf0>
    1af5:	e8 46 f6 ff ff       	callq  1140 <puts@plt>
    1afa:	eb 58                	jmp    1b54 <print_note+0xb6>
    1afc:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1aff:	48 63 d0             	movslq %eax,%rdx
    1b02:	48 89 d0             	mov    %rdx,%rax
    1b05:	48 c1 e0 07          	shl    $0x7,%rax
    1b09:	48 01 d0             	add    %rdx,%rax
    1b0c:	48 c1 e0 02          	shl    $0x2,%rax
    1b10:	48 89 c2             	mov    %rax,%rdx
    1b13:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b17:	48 01 d0             	add    %rdx,%rax
    1b1a:	8b 80 00 02 00 00    	mov    0x200(%rax),%eax
    1b20:	83 f8 01             	cmp    $0x1,%eax
    1b23:	74 20                	je     1b45 <print_note+0xa7>
    1b25:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1b28:	48 63 d0             	movslq %eax,%rdx
    1b2b:	48 89 d0             	mov    %rdx,%rax
    1b2e:	48 c1 e0 07          	shl    $0x7,%rax
    1b32:	48 01 d0             	add    %rdx,%rax
    1b35:	48 c1 e0 02          	shl    $0x2,%rax
    1b39:	48 89 c2             	mov    %rax,%rdx
    1b3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b40:	48 01 d0             	add    %rdx,%rax
    1b43:	eb 07                	jmp    1b4c <print_note+0xae>
    1b45:	48 8d 05 38 15 00 00 	lea    0x1538(%rip),%rax        # 3084 <_IO_stdin_used+0x84>
    1b4c:	48 89 c7             	mov    %rax,%rdi
    1b4f:	e8 8d fb ff ff       	callq  16e1 <catsay>
    1b54:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b58:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b5f:	00 00 
    1b61:	74 05                	je     1b68 <print_note+0xca>
    1b63:	e8 08 f6 ff ff       	callq  1170 <__stack_chk_fail@plt>
    1b68:	c9                   	leaveq 
    1b69:	c3                   	retq   

0000000000001b6a <draft_note>:
    1b6a:	f3 0f 1e fa          	endbr64 
    1b6e:	55                   	push   %rbp
    1b6f:	48 89 e5             	mov    %rsp,%rbp
    1b72:	48 81 ec 30 02 00 00 	sub    $0x230,%rsp
    1b79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b80:	00 00 
    1b82:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b86:	31 c0                	xor    %eax,%eax
    1b88:	48 c7 85 f0 fd ff ff 	movq   $0x0,-0x210(%rbp)
    1b8f:	00 00 00 00 
    1b93:	48 c7 85 f8 fd ff ff 	movq   $0x0,-0x208(%rbp)
    1b9a:	00 00 00 00 
    1b9e:	48 8d 95 00 fe ff ff 	lea    -0x200(%rbp),%rdx
    1ba5:	b8 00 00 00 00       	mov    $0x0,%eax
    1baa:	b9 3e 00 00 00       	mov    $0x3e,%ecx
    1baf:	48 89 d7             	mov    %rdx,%rdi
    1bb2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1bb5:	48 c7 85 d0 fd ff ff 	movq   $0x0,-0x230(%rbp)
    1bbc:	00 00 00 00 
    1bc0:	48 c7 85 d8 fd ff ff 	movq   $0x0,-0x228(%rbp)
    1bc7:	00 00 00 00 
    1bcb:	48 c7 85 e0 fd ff ff 	movq   $0x0,-0x220(%rbp)
    1bd2:	00 00 00 00 
    1bd6:	48 c7 85 e8 fd ff ff 	movq   $0x0,-0x218(%rbp)
    1bdd:	00 00 00 00 
    1be1:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 3115 <_IO_stdin_used+0x115>
    1be8:	b8 00 00 00 00       	mov    $0x0,%eax
    1bed:	e8 8e f5 ff ff       	callq  1180 <printf@plt>
    1bf2:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    1bf9:	b9 ff 01 00 00       	mov    $0x1ff,%ecx
    1bfe:	48 8d 15 18 15 00 00 	lea    0x1518(%rip),%rdx        # 311d <_IO_stdin_used+0x11d>
    1c05:	be 1f 00 00 00       	mov    $0x1f,%esi
    1c0a:	48 89 c7             	mov    %rax,%rdi
    1c0d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c12:	e8 79 f5 ff ff       	callq  1190 <snprintf@plt>
    1c17:	48 8d 95 f0 fd ff ff 	lea    -0x210(%rbp),%rdx
    1c1e:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    1c25:	48 89 d6             	mov    %rdx,%rsi
    1c28:	48 89 c7             	mov    %rax,%rdi
    1c2b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c30:	e8 9b f5 ff ff       	callq  11d0 <__isoc99_scanf@plt>
    1c35:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
    1c3c:	48 89 c7             	mov    %rax,%rdi
    1c3f:	e8 9d fa ff ff       	callq  16e1 <catsay>
    1c44:	90                   	nop
    1c45:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c49:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c50:	00 00 
    1c52:	74 05                	je     1c59 <draft_note+0xef>
    1c54:	e8 17 f5 ff ff       	callq  1170 <__stack_chk_fail@plt>
    1c59:	c9                   	leaveq 
    1c5a:	c3                   	retq   

0000000000001c5b <add_note>:
    1c5b:	f3 0f 1e fa          	endbr64 
    1c5f:	55                   	push   %rbp
    1c60:	48 89 e5             	mov    %rsp,%rbp
    1c63:	48 83 ec 50          	sub    $0x50,%rsp
    1c67:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    1c6b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c72:	00 00 
    1c74:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1c78:	31 c0                	xor    %eax,%eax
    1c7a:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1c81:	00 
    1c82:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1c89:	00 
    1c8a:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1c91:	00 
    1c92:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1c99:	00 
    1c9a:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    1ca1:	eb 04                	jmp    1ca7 <add_note+0x4c>
    1ca3:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1ca7:	83 7d cc 09          	cmpl   $0x9,-0x34(%rbp)
    1cab:	7f 29                	jg     1cd6 <add_note+0x7b>
    1cad:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1cb0:	48 63 d0             	movslq %eax,%rdx
    1cb3:	48 89 d0             	mov    %rdx,%rax
    1cb6:	48 c1 e0 07          	shl    $0x7,%rax
    1cba:	48 01 d0             	add    %rdx,%rax
    1cbd:	48 c1 e0 02          	shl    $0x2,%rax
    1cc1:	48 89 c2             	mov    %rax,%rdx
    1cc4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1cc8:	48 01 d0             	add    %rdx,%rax
    1ccb:	8b 80 00 02 00 00    	mov    0x200(%rax),%eax
    1cd1:	83 f8 01             	cmp    $0x1,%eax
    1cd4:	75 cd                	jne    1ca3 <add_note+0x48>
    1cd6:	83 7d cc 09          	cmpl   $0x9,-0x34(%rbp)
    1cda:	7e 11                	jle    1ced <add_note+0x92>
    1cdc:	48 8d 3d 45 14 00 00 	lea    0x1445(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1ce3:	e8 58 f4 ff ff       	callq  1140 <puts@plt>
    1ce8:	e9 90 00 00 00       	jmpq   1d7d <add_note+0x122>
    1ced:	48 8d 3d 71 14 00 00 	lea    0x1471(%rip),%rdi        # 3165 <_IO_stdin_used+0x165>
    1cf4:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf9:	e8 82 f4 ff ff       	callq  1180 <printf@plt>
    1cfe:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1d02:	b9 ff 01 00 00       	mov    $0x1ff,%ecx
    1d07:	48 8d 15 0f 14 00 00 	lea    0x140f(%rip),%rdx        # 311d <_IO_stdin_used+0x11d>
    1d0e:	be 1f 00 00 00       	mov    $0x1f,%esi
    1d13:	48 89 c7             	mov    %rax,%rdi
    1d16:	b8 00 00 00 00       	mov    $0x0,%eax
    1d1b:	e8 70 f4 ff ff       	callq  1190 <snprintf@plt>
    1d20:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1d23:	48 63 d0             	movslq %eax,%rdx
    1d26:	48 89 d0             	mov    %rdx,%rax
    1d29:	48 c1 e0 07          	shl    $0x7,%rax
    1d2d:	48 01 d0             	add    %rdx,%rax
    1d30:	48 c1 e0 02          	shl    $0x2,%rax
    1d34:	48 89 c2             	mov    %rax,%rdx
    1d37:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d3b:	48 01 d0             	add    %rdx,%rax
    1d3e:	48 89 c2             	mov    %rax,%rdx
    1d41:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1d45:	48 89 d6             	mov    %rdx,%rsi
    1d48:	48 89 c7             	mov    %rax,%rdi
    1d4b:	b8 00 00 00 00       	mov    $0x0,%eax
    1d50:	e8 7b f4 ff ff       	callq  11d0 <__isoc99_scanf@plt>
    1d55:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1d58:	48 63 d0             	movslq %eax,%rdx
    1d5b:	48 89 d0             	mov    %rdx,%rax
    1d5e:	48 c1 e0 07          	shl    $0x7,%rax
    1d62:	48 01 d0             	add    %rdx,%rax
    1d65:	48 c1 e0 02          	shl    $0x2,%rax
    1d69:	48 89 c2             	mov    %rax,%rdx
    1d6c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1d70:	48 01 d0             	add    %rdx,%rax
    1d73:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%rax)
    1d7a:	00 00 00 
    1d7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1d81:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d88:	00 00 
    1d8a:	74 05                	je     1d91 <add_note+0x136>
    1d8c:	e8 df f3 ff ff       	callq  1170 <__stack_chk_fail@plt>
    1d91:	c9                   	leaveq 
    1d92:	c3                   	retq   

0000000000001d93 <delete_note>:
    1d93:	f3 0f 1e fa          	endbr64 
    1d97:	55                   	push   %rbp
    1d98:	48 89 e5             	mov    %rsp,%rbp
    1d9b:	48 83 ec 20          	sub    $0x20,%rsp
    1d9f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1da3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1daa:	00 00 
    1dac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1db0:	31 c0                	xor    %eax,%eax
    1db2:	48 8d 3d b7 13 00 00 	lea    0x13b7(%rip),%rdi        # 3170 <_IO_stdin_used+0x170>
    1db9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbe:	e8 bd f3 ff ff       	callq  1180 <printf@plt>
    1dc3:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    1dc7:	48 89 c6             	mov    %rax,%rsi
    1dca:	48 8d 3d 18 13 00 00 	lea    0x1318(%rip),%rdi        # 30e9 <_IO_stdin_used+0xe9>
    1dd1:	b8 00 00 00 00       	mov    $0x0,%eax
    1dd6:	e8 f5 f3 ff ff       	callq  11d0 <__isoc99_scanf@plt>
    1ddb:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1dde:	83 f8 0a             	cmp    $0xa,%eax
    1de1:	7e 0e                	jle    1df1 <delete_note+0x5e>
    1de3:	48 8d 3d ac 13 00 00 	lea    0x13ac(%rip),%rdi        # 3196 <_IO_stdin_used+0x196>
    1dea:	e8 51 f3 ff ff       	callq  1140 <puts@plt>
    1def:	eb 34                	jmp    1e25 <delete_note+0x92>
    1df1:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1df4:	48 63 d0             	movslq %eax,%rdx
    1df7:	48 89 d0             	mov    %rdx,%rax
    1dfa:	48 c1 e0 07          	shl    $0x7,%rax
    1dfe:	48 01 d0             	add    %rdx,%rax
    1e01:	48 c1 e0 02          	shl    $0x2,%rax
    1e05:	48 89 c2             	mov    %rax,%rdx
    1e08:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e0c:	48 01 d0             	add    %rdx,%rax
    1e0f:	c7 80 00 02 00 00 01 	movl   $0x1,0x200(%rax)
    1e16:	00 00 00 
    1e19:	48 8d 3d 90 13 00 00 	lea    0x1390(%rip),%rdi        # 31b0 <_IO_stdin_used+0x1b0>
    1e20:	e8 1b f3 ff ff       	callq  1140 <puts@plt>
    1e25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e29:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e30:	00 00 
    1e32:	74 05                	je     1e39 <delete_note+0xa6>
    1e34:	e8 37 f3 ff ff       	callq  1170 <__stack_chk_fail@plt>
    1e39:	c9                   	leaveq 
    1e3a:	c3                   	retq   

0000000000001e3b <menu>:
    1e3b:	f3 0f 1e fa          	endbr64 
    1e3f:	55                   	push   %rbp
    1e40:	48 89 e5             	mov    %rsp,%rbp
    1e43:	48 8d 3d 76 13 00 00 	lea    0x1376(%rip),%rdi        # 31c0 <_IO_stdin_used+0x1c0>
    1e4a:	e8 f1 f2 ff ff       	callq  1140 <puts@plt>
    1e4f:	48 8d 3d 92 13 00 00 	lea    0x1392(%rip),%rdi        # 31e8 <_IO_stdin_used+0x1e8>
    1e56:	e8 e5 f2 ff ff       	callq  1140 <puts@plt>
    1e5b:	48 8d 3d a6 13 00 00 	lea    0x13a6(%rip),%rdi        # 3208 <_IO_stdin_used+0x208>
    1e62:	e8 d9 f2 ff ff       	callq  1140 <puts@plt>
    1e67:	48 8d 3d b8 13 00 00 	lea    0x13b8(%rip),%rdi        # 3226 <_IO_stdin_used+0x226>
    1e6e:	e8 cd f2 ff ff       	callq  1140 <puts@plt>
    1e73:	48 8d 3d c7 13 00 00 	lea    0x13c7(%rip),%rdi        # 3241 <_IO_stdin_used+0x241>
    1e7a:	e8 c1 f2 ff ff       	callq  1140 <puts@plt>
    1e7f:	48 8d 3d d4 13 00 00 	lea    0x13d4(%rip),%rdi        # 325a <_IO_stdin_used+0x25a>
    1e86:	e8 b5 f2 ff ff       	callq  1140 <puts@plt>
    1e8b:	48 8d 3d d8 13 00 00 	lea    0x13d8(%rip),%rdi        # 326a <_IO_stdin_used+0x26a>
    1e92:	e8 a9 f2 ff ff       	callq  1140 <puts@plt>
    1e97:	48 8d 3d d5 13 00 00 	lea    0x13d5(%rip),%rdi        # 3273 <_IO_stdin_used+0x273>
    1e9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea3:	e8 d8 f2 ff ff       	callq  1180 <printf@plt>
    1ea8:	90                   	nop
    1ea9:	5d                   	pop    %rbp
    1eaa:	c3                   	retq   

0000000000001eab <main>:
    1eab:	f3 0f 1e fa          	endbr64 
    1eaf:	55                   	push   %rbp
    1eb0:	48 89 e5             	mov    %rsp,%rbp
    1eb3:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1eba:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1ebf:	48 81 ec 50 04 00 00 	sub    $0x450,%rsp
    1ec6:	89 bd bc eb ff ff    	mov    %edi,-0x1444(%rbp)
    1ecc:	48 89 b5 b0 eb ff ff 	mov    %rsi,-0x1450(%rbp)
    1ed3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1eda:	00 00 
    1edc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ee0:	31 c0                	xor    %eax,%eax
    1ee2:	48 8b 05 47 31 00 00 	mov    0x3147(%rip),%rax        # 5030 <stdin@@GLIBC_2.2.5>
    1ee9:	b9 00 00 00 00       	mov    $0x0,%ecx
    1eee:	ba 02 00 00 00       	mov    $0x2,%edx
    1ef3:	be 00 00 00 00       	mov    $0x0,%esi
    1ef8:	48 89 c7             	mov    %rax,%rdi
    1efb:	e8 b0 f2 ff ff       	callq  11b0 <setvbuf@plt>
    1f00:	48 8b 05 19 31 00 00 	mov    0x3119(%rip),%rax        # 5020 <stdout@@GLIBC_2.2.5>
    1f07:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f0c:	ba 02 00 00 00       	mov    $0x2,%edx
    1f11:	be 00 00 00 00       	mov    $0x0,%esi
    1f16:	48 89 c7             	mov    %rax,%rdi
    1f19:	e8 92 f2 ff ff       	callq  11b0 <setvbuf@plt>
    1f1e:	48 8b 05 1b 31 00 00 	mov    0x311b(%rip),%rax        # 5040 <stderr@@GLIBC_2.2.5>
    1f25:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f2a:	ba 02 00 00 00       	mov    $0x2,%edx
    1f2f:	be 00 00 00 00       	mov    $0x0,%esi
    1f34:	48 89 c7             	mov    %rax,%rdi
    1f37:	e8 74 f2 ff ff       	callq  11b0 <setvbuf@plt>
    1f3c:	c7 85 cc eb ff ff 00 	movl   $0x0,-0x1434(%rbp)
    1f43:	00 00 00 
    1f46:	eb 50                	jmp    1f98 <main+0xed>
    1f48:	8b 85 cc eb ff ff    	mov    -0x1434(%rbp),%eax
    1f4e:	48 63 d0             	movslq %eax,%rdx
    1f51:	48 89 d0             	mov    %rdx,%rax
    1f54:	48 c1 e0 07          	shl    $0x7,%rax
    1f58:	48 01 d0             	add    %rdx,%rax
    1f5b:	48 c1 e0 02          	shl    $0x2,%rax
    1f5f:	48 01 e8             	add    %rbp,%rax
    1f62:	48 2d 30 12 00 00    	sub    $0x1230,%rax
    1f68:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
    1f6e:	8b 85 cc eb ff ff    	mov    -0x1434(%rbp),%eax
    1f74:	48 63 d0             	movslq %eax,%rdx
    1f77:	48 89 d0             	mov    %rdx,%rax
    1f7a:	48 c1 e0 07          	shl    $0x7,%rax
    1f7e:	48 01 d0             	add    %rdx,%rax
    1f81:	48 c1 e0 02          	shl    $0x2,%rax
    1f85:	48 01 e8             	add    %rbp,%rax
    1f88:	48 2d 30 14 00 00    	sub    $0x1430,%rax
    1f8e:	c6 00 00             	movb   $0x0,(%rax)
    1f91:	83 85 cc eb ff ff 01 	addl   $0x1,-0x1434(%rbp)
    1f98:	83 bd cc eb ff ff 09 	cmpl   $0x9,-0x1434(%rbp)
    1f9f:	7e a7                	jle    1f48 <main+0x9d>
    1fa1:	48 8d 85 d0 eb ff ff 	lea    -0x1430(%rbp),%rax
    1fa8:	48 89 c7             	mov    %rax,%rdi
    1fab:	e8 87 f9 ff ff       	callq  1937 <read_notes>
    1fb0:	c7 85 dc f3 ff ff 01 	movl   $0x1,-0xc24(%rbp)
    1fb7:	00 00 00 
    1fba:	c7 85 c8 eb ff ff 00 	movl   $0x0,-0x1438(%rbp)
    1fc1:	00 00 00 
    1fc4:	48 8d 3d ad 12 00 00 	lea    0x12ad(%rip),%rdi        # 3278 <_IO_stdin_used+0x278>
    1fcb:	e8 70 f1 ff ff       	callq  1140 <puts@plt>
    1fd0:	48 8d 3d c9 12 00 00 	lea    0x12c9(%rip),%rdi        # 32a0 <_IO_stdin_used+0x2a0>
    1fd7:	e8 64 f1 ff ff       	callq  1140 <puts@plt>
    1fdc:	48 8d 3d eb 12 00 00 	lea    0x12eb(%rip),%rdi        # 32ce <_IO_stdin_used+0x2ce>
    1fe3:	e8 58 f1 ff ff       	callq  1140 <puts@plt>
    1fe8:	e9 b5 00 00 00       	jmpq   20a2 <main+0x1f7>
    1fed:	b8 00 00 00 00       	mov    $0x0,%eax
    1ff2:	e8 44 fe ff ff       	callq  1e3b <menu>
    1ff7:	48 8d 85 c8 eb ff ff 	lea    -0x1438(%rbp),%rax
    1ffe:	48 89 c6             	mov    %rax,%rsi
    2001:	48 8d 3d e1 10 00 00 	lea    0x10e1(%rip),%rdi        # 30e9 <_IO_stdin_used+0xe9>
    2008:	b8 00 00 00 00       	mov    $0x0,%eax
    200d:	e8 be f1 ff ff       	callq  11d0 <__isoc99_scanf@plt>
    2012:	8b 85 c8 eb ff ff    	mov    -0x1438(%rbp),%eax
    2018:	83 f8 09             	cmp    $0x9,%eax
    201b:	77 73                	ja     2090 <main+0x1e5>
    201d:	89 c0                	mov    %eax,%eax
    201f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2026:	00 
    2027:	48 8d 05 e2 12 00 00 	lea    0x12e2(%rip),%rax        # 3310 <_IO_stdin_used+0x310>
    202e:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    2031:	48 98                	cltq   
    2033:	48 8d 15 d6 12 00 00 	lea    0x12d6(%rip),%rdx        # 3310 <_IO_stdin_used+0x310>
    203a:	48 01 d0             	add    %rdx,%rax
    203d:	3e ff e0             	notrack jmpq *%rax
    2040:	48 8d 85 d0 eb ff ff 	lea    -0x1430(%rbp),%rax
    2047:	48 89 c7             	mov    %rax,%rdi
    204a:	e8 97 f9 ff ff       	callq  19e6 <list>
    204f:	eb 51                	jmp    20a2 <main+0x1f7>
    2051:	48 8d 85 d0 eb ff ff 	lea    -0x1430(%rbp),%rax
    2058:	48 89 c7             	mov    %rax,%rdi
    205b:	e8 3e fa ff ff       	callq  1a9e <print_note>
    2060:	eb 40                	jmp    20a2 <main+0x1f7>
    2062:	b8 00 00 00 00       	mov    $0x0,%eax
    2067:	e8 fe fa ff ff       	callq  1b6a <draft_note>
    206c:	eb 34                	jmp    20a2 <main+0x1f7>
    206e:	48 8d 85 d0 eb ff ff 	lea    -0x1430(%rbp),%rax
    2075:	48 89 c7             	mov    %rax,%rdi
    2078:	e8 de fb ff ff       	callq  1c5b <add_note>
    207d:	eb 23                	jmp    20a2 <main+0x1f7>
    207f:	48 8d 85 d0 eb ff ff 	lea    -0x1430(%rbp),%rax
    2086:	48 89 c7             	mov    %rax,%rdi
    2089:	e8 05 fd ff ff       	callq  1d93 <delete_note>
    208e:	eb 12                	jmp    20a2 <main+0x1f7>
    2090:	48 8d 3d 49 12 00 00 	lea    0x1249(%rip),%rdi        # 32e0 <_IO_stdin_used+0x2e0>
    2097:	b8 00 00 00 00       	mov    $0x0,%eax
    209c:	e8 df f0 ff ff       	callq  1180 <printf@plt>
    20a1:	90                   	nop
    20a2:	8b 85 c8 eb ff ff    	mov    -0x1438(%rbp),%eax
    20a8:	83 f8 09             	cmp    $0x9,%eax
    20ab:	0f 85 3c ff ff ff    	jne    1fed <main+0x142>
    20b1:	48 8d 3d 4d 12 00 00 	lea    0x124d(%rip),%rdi        # 3305 <_IO_stdin_used+0x305>
    20b8:	e8 24 f6 ff ff       	callq  16e1 <catsay>
    20bd:	b8 00 00 00 00       	mov    $0x0,%eax
    20c2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    20c6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    20cd:	00 00 
    20cf:	74 05                	je     20d6 <main+0x22b>
    20d1:	e8 9a f0 ff ff       	callq  1170 <__stack_chk_fail@plt>
    20d6:	c9                   	leaveq 
    20d7:	c3                   	retq   
    20d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    20df:	00 

00000000000020e0 <__libc_csu_init>:
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	41 57                	push   %r15
    20e6:	4c 8d 3d 6b 2c 00 00 	lea    0x2c6b(%rip),%r15        # 4d58 <__frame_dummy_init_array_entry>
    20ed:	41 56                	push   %r14
    20ef:	49 89 d6             	mov    %rdx,%r14
    20f2:	41 55                	push   %r13
    20f4:	49 89 f5             	mov    %rsi,%r13
    20f7:	41 54                	push   %r12
    20f9:	41 89 fc             	mov    %edi,%r12d
    20fc:	55                   	push   %rbp
    20fd:	48 8d 2d 5c 2c 00 00 	lea    0x2c5c(%rip),%rbp        # 4d60 <__do_global_dtors_aux_fini_array_entry>
    2104:	53                   	push   %rbx
    2105:	4c 29 fd             	sub    %r15,%rbp
    2108:	48 83 ec 08          	sub    $0x8,%rsp
    210c:	e8 ef ee ff ff       	callq  1000 <_init>
    2111:	48 c1 fd 03          	sar    $0x3,%rbp
    2115:	74 1f                	je     2136 <__libc_csu_init+0x56>
    2117:	31 db                	xor    %ebx,%ebx
    2119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2120:	4c 89 f2             	mov    %r14,%rdx
    2123:	4c 89 ee             	mov    %r13,%rsi
    2126:	44 89 e7             	mov    %r12d,%edi
    2129:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    212d:	48 83 c3 01          	add    $0x1,%rbx
    2131:	48 39 dd             	cmp    %rbx,%rbp
    2134:	75 ea                	jne    2120 <__libc_csu_init+0x40>
    2136:	48 83 c4 08          	add    $0x8,%rsp
    213a:	5b                   	pop    %rbx
    213b:	5d                   	pop    %rbp
    213c:	41 5c                	pop    %r12
    213e:	41 5d                	pop    %r13
    2140:	41 5e                	pop    %r14
    2142:	41 5f                	pop    %r15
    2144:	c3                   	retq   
    2145:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    214c:	00 00 00 00 

0000000000002150 <__libc_csu_fini>:
    2150:	f3 0f 1e fa          	endbr64 
    2154:	c3                   	retq   

Disassembly of section .fini:

0000000000002158 <_fini>:
    2158:	f3 0f 1e fa          	endbr64 
    215c:	48 83 ec 08          	sub    $0x8,%rsp
    2160:	48 83 c4 08          	add    $0x8,%rsp
    2164:	c3                   	retq   
