
fib:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <start>:
  401000:	b8 09 00 00 00       	mov    $0x9,%eax
  401005:	bf 00 00 00 00       	mov    $0x0,%edi
  40100a:	be 00 00 00 10       	mov    $0x10000000,%esi
  40100f:	ba 03 00 00 00       	mov    $0x3,%edx
  401014:	41 ba 22 00 00 00    	mov    $0x22,%r10d
  40101a:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401021:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401027:	0f 05                	syscall 
  401029:	49 89 c4             	mov    %rax,%r12
  40102c:	48 89 e5             	mov    %rsp,%rbp
  40102f:	49 bf 1f 25 40 00 00 	movabs $0x40251f,%r15
  401036:	00 00 00 
  401039:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40103f:	4c 89 fc             	mov    %r15,%rsp
  401042:	4c 89 e3             	mov    %r12,%rbx
  401045:	49 83 c4 28          	add    $0x28,%r12
  401049:	49 83 fe 00          	cmp    $0x0,%r14
  40104d:	0f 84 7b 0c 00 00    	je     401cce <L.tmp.7>
  401053:	e9 ea 01 00 00       	jmpq   401242 <L.tmp.10>

0000000000401058 <L.tmp.45>:
  401058:	49 83 fe 00          	cmp    $0x0,%r14
  40105c:	0f 84 ff 00 00 00    	je     401161 <L.tmp.46>
  401062:	e9 51 07 00 00       	jmpq   4017b8 <L.tmp.34>

0000000000401067 <L.tmp.158>:
  401067:	b8 3e 04 00 00       	mov    $0x43e,%eax
  40106c:	49 83 fe 00          	cmp    $0x0,%r14
  401070:	75 02                	jne    401074 <L.tmp.313>
  401072:	ff e4                	jmpq   *%rsp

0000000000401074 <L.tmp.313>:
  401074:	4d 89 d2             	mov    %r10,%r10
  401077:	eb 0f                	jmp    401088 <L.tmp.27>

0000000000401079 <L.tmp.12>:
  401079:	49 83 fe 00          	cmp    $0x0,%r14
  40107d:	0f 84 9d 0b 00 00    	je     401c20 <L.tmp.13>
  401083:	e9 46 0c 00 00       	jmpq   401cce <L.tmp.7>

0000000000401088 <L.tmp.27>:
  401088:	49 83 c4 28          	add    $0x28,%r12
  40108c:	48 89 c9             	mov    %rcx,%rcx
  40108f:	48 83 c1 02          	add    $0x2,%rcx
  401093:	49 83 fe 00          	cmp    $0x0,%r14
  401097:	0f 84 82 09 00 00    	je     401a1f <L.tmp.28>
  40109d:	e9 4b 0d 00 00       	jmpq   401ded <L.tmp.21>

00000000004010a2 <L.tmp.172>:
  4010a2:	49 83 fe 00          	cmp    $0x0,%r14
  4010a6:	0f 84 b0 03 00 00    	je     40145c <L.tmp.173>
  4010ac:	eb 56                	jmp    401104 <L.tmp.169>

00000000004010ae <L.tmp.247>:
  4010ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b3:	49 83 fe 00          	cmp    $0x0,%r14
  4010b7:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
  4010bb:	75 03                	jne    4010c0 <L.tmp.314>
  4010bd:	41 ff e3             	jmpq   *%r11

00000000004010c0 <L.tmp.314>:
  4010c0:	4d 89 d2             	mov    %r10,%r10
  4010c3:	e9 f1 13 00 00       	jmpq   4024b9 <L.tmp.67>

00000000004010c8 <L.tmp.287>:
  4010c8:	49 83 fe 00          	cmp    $0x0,%r14
  4010cc:	0f 84 46 11 00 00    	je     402218 <L.tmp.288>
  4010d2:	e9 66 0a 00 00       	jmpq   401b3d <L.tmp.15>

00000000004010d7 <L.tmp.163>:
  4010d7:	48 83 fa 06          	cmp    $0x6,%rdx
  4010db:	0f 85 5d 07 00 00    	jne    40183e <L.tmp.159>
  4010e1:	e9 10 07 00 00       	jmpq   4017f6 <L.tmp.160>

00000000004010e6 <L.tmp.56>:
  4010e6:	49 83 fe 00          	cmp    $0x0,%r14
  4010ea:	0f 84 30 02 00 00    	je     401320 <L.tmp.57>
  4010f0:	e9 63 ff ff ff       	jmpq   401058 <L.tmp.45>

00000000004010f5 <L.tmp.86>:
  4010f5:	49 83 fe 00          	cmp    $0x0,%r14
  4010f9:	0f 84 13 14 00 00    	je     402512 <L.tmp.87>
  4010ff:	e9 36 13 00 00       	jmpq   40243a <L.tmp.75>

0000000000401104 <L.tmp.169>:
  401104:	49 83 fe 00          	cmp    $0x0,%r14
  401108:	0f 84 f4 00 00 00    	je     401202 <L.tmp.170>
  40110e:	e9 49 0b 00 00       	jmpq   401c5c <L.tmp.143>

0000000000401113 <L.tmp.157>:
  401113:	48 89 da             	mov    %rbx,%rdx
  401116:	48 83 e2 07          	and    $0x7,%rdx
  40111a:	48 83 fa 00          	cmp    $0x0,%rdx
  40111e:	0f 84 f9 10 00 00    	je     40221d <L.tmp.161>
  401124:	e9 ef 03 00 00       	jmpq   401518 <L.tmp.162>

0000000000401129 <L.tmp.249>:
  401129:	b8 08 00 00 00       	mov    $0x8,%eax
  40112e:	49 83 fe 00          	cmp    $0x0,%r14
  401132:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
  401136:	75 03                	jne    40113b <L.tmp.315>
  401138:	41 ff e3             	jmpq   *%r11

000000000040113b <L.tmp.315>:
  40113b:	4d 89 d2             	mov    %r10,%r10
  40113e:	e9 76 13 00 00       	jmpq   4024b9 <L.tmp.67>

0000000000401143 <L.tmp.262>:
  401143:	49 83 fe 00          	cmp    $0x0,%r14
  401147:	0f 84 cf 12 00 00    	je     40241c <L.tmp.263>
  40114d:	e9 cc 0e 00 00       	jmpq   40201e <L.tmp.149>

0000000000401152 <L.tmp.189>:
  401152:	49 83 fe 00          	cmp    $0x0,%r14
  401156:	0f 84 19 0c 00 00    	je     401d75 <L.tmp.190>
  40115c:	e9 e8 12 00 00       	jmpq   402449 <L.tmp.62>

0000000000401161 <L.tmp.46>:
  401161:	49 83 fe 00          	cmp    $0x0,%r14
  401165:	0f 84 77 11 00 00    	je     4022e2 <L.tmp.47>
  40116b:	e9 09 ff ff ff       	jmpq   401079 <L.tmp.12>

0000000000401170 <L.tmp.221>:
  401170:	49 83 fe 00          	cmp    $0x0,%r14
  401174:	0f 84 64 04 00 00    	je     4015de <L.tmp.222>
  40117a:	e9 0d 11 00 00       	jmpq   40228c <L.tmp.154>

000000000040117f <L.tmp.63>:
  40117f:	49 83 fe 00          	cmp    $0x0,%r14
  401183:	0f 84 5f 08 00 00    	je     4019e8 <L.tmp.64>
  401189:	e9 9a 00 00 00       	jmpq   401228 <L.tmp.25>

000000000040118e <L.tmp.303>:
  40118e:	49 83 fe 00          	cmp    $0x0,%r14
  401192:	0f 84 5f 07 00 00    	je     4018f7 <L.tmp.304>
  401198:	e9 8c 0e 00 00       	jmpq   402029 <L.tmp.41>

000000000040119d <L.tmp.283>:
  40119d:	49 83 fe 00          	cmp    $0x0,%r14
  4011a1:	0f 84 6f 04 00 00    	je     401616 <L.tmp.284>
  4011a7:	e9 15 01 00 00       	jmpq   4012c1 <L.tmp.230>

00000000004011ac <L.tmp.22>:
  4011ac:	49 83 fe 00          	cmp    $0x0,%r14
  4011b0:	0f 84 c8 07 00 00    	je     40197e <L.tmp.23>
  4011b6:	e9 13 0b 00 00       	jmpq   401cce <L.tmp.7>

00000000004011bb <L.tmp.196>:
  4011bb:	bc 0e 00 00 00       	mov    $0xe,%esp
  4011c0:	e9 fa 0a 00 00       	jmpq   401cbf <L.tmp.198>

00000000004011c5 <L.tmp.310>:
  4011c5:	bc 0e 00 00 00       	mov    $0xe,%esp
  4011ca:	e9 8a 05 00 00       	jmpq   401759 <L.tmp.312>

00000000004011cf <L.tmp.184>:
  4011cf:	48 c7 45 e0 3e 2b 00 	movq   $0x2b3e,-0x20(%rbp)
  4011d6:	00 
  4011d7:	e9 85 04 00 00       	jmpq   401661 <L.tmp.185>

00000000004011dc <L.tmp.121>:
  4011dc:	49 83 fe 00          	cmp    $0x0,%r14
  4011e0:	0f 84 bf 08 00 00    	je     401aa5 <L.tmp.122>
  4011e6:	e9 52 09 00 00       	jmpq   401b3d <L.tmp.15>

00000000004011eb <L.tmp.1>:
  4011eb:	4c 89 7d f0          	mov    %r15,-0x10(%rbp)
  4011ef:	48 89 fc             	mov    %rdi,%rsp
  4011f2:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  4011f6:	49 83 fe 00          	cmp    $0x0,%r14
  4011fa:	0f 84 67 0d 00 00    	je     401f67 <L.tmp.240>
  401200:	eb 40                	jmp    401242 <L.tmp.10>

0000000000401202 <L.tmp.170>:
  401202:	49 83 fe 00          	cmp    $0x0,%r14
  401206:	0f 84 9a 04 00 00    	je     4016a6 <L.tmp.171>
  40120c:	e9 30 07 00 00       	jmpq   401941 <L.tmp.145>

0000000000401211 <L.tmp.294>:
  401211:	49 83 fe 00          	cmp    $0x0,%r14
  401215:	74 58                	je     40126f <L.tmp.295>
  401217:	e9 c6 10 00 00       	jmpq   4022e2 <L.tmp.47>

000000000040121c <L.tmp.258>:
  40121c:	49 83 fe 00          	cmp    $0x0,%r14
  401220:	0f 84 5f 09 00 00    	je     401b85 <L.tmp.259>
  401226:	eb 0b                	jmp    401233 <L.tmp.133>

0000000000401228 <L.tmp.25>:
  401228:	49 83 fe 00          	cmp    $0x0,%r14
  40122c:	74 32                	je     401260 <L.tmp.26>
  40122e:	e9 79 ff ff ff       	jmpq   4011ac <L.tmp.22>

0000000000401233 <L.tmp.133>:
  401233:	49 83 fe 00          	cmp    $0x0,%r14
  401237:	0f 84 b1 00 00 00    	je     4012ee <L.tmp.134>
  40123d:	e9 f4 01 00 00       	jmpq   401436 <L.tmp.111>

0000000000401242 <L.tmp.10>:
  401242:	49 83 fe 00          	cmp    $0x0,%r14
  401246:	0f 84 47 03 00 00    	je     401593 <L.tmp.11>
  40124c:	e9 7d 0a 00 00       	jmpq   401cce <L.tmp.7>

0000000000401251 <L.tmp.202>:
  401251:	49 83 fe 00          	cmp    $0x0,%r14
  401255:	0f 84 30 0d 00 00    	je     401f8b <L.tmp.203>
  40125b:	e9 7b 11 00 00       	jmpq   4023db <L.tmp.137>

0000000000401260 <L.tmp.26>:
  401260:	49 83 fe 00          	cmp    $0x0,%r14
  401264:	0f 84 1e fe ff ff    	je     401088 <L.tmp.27>
  40126a:	e9 b1 09 00 00       	jmpq   401c20 <L.tmp.13>

000000000040126f <L.tmp.295>:
  40126f:	49 83 fe 00          	cmp    $0x0,%r14
  401273:	0f 84 37 01 00 00    	je     4013b0 <L.tmp.296>
  401279:	e9 0a 03 00 00       	jmpq   401588 <L.tmp.177>

000000000040127e <L.tmp.311>:
  40127e:	bc 06 00 00 00       	mov    $0x6,%esp
  401283:	e9 d1 04 00 00       	jmpq   401759 <L.tmp.312>

0000000000401288 <L.tmp.36>:
  401288:	49 83 fe 00          	cmp    $0x0,%r14
  40128c:	0f 84 dc 10 00 00    	je     40236e <L.tmp.37>
  401292:	e9 8e 03 00 00       	jmpq   401625 <L.tmp.24>

0000000000401297 <L.tmp.44>:
  401297:	49 83 fe 00          	cmp    $0x0,%r14
  40129b:	0f 84 b7 fd ff ff    	je     401058 <L.tmp.45>
  4012a1:	eb 9f                	jmp    401242 <L.tmp.10>

00000000004012a3 <L.tmp.168>:
  4012a3:	49 83 fe 00          	cmp    $0x0,%r14
  4012a7:	0f 84 57 fe ff ff    	je     401104 <L.tmp.169>
  4012ad:	e9 bc 10 00 00       	jmpq   40236e <L.tmp.37>

00000000004012b2 <L.tmp.33>:
  4012b2:	49 83 fe 00          	cmp    $0x0,%r14
  4012b6:	0f 84 fc 04 00 00    	je     4017b8 <L.tmp.34>
  4012bc:	e9 b8 fd ff ff       	jmpq   401079 <L.tmp.12>

00000000004012c1 <L.tmp.230>:
  4012c1:	49 83 fe 00          	cmp    $0x0,%r14
  4012c5:	0f 84 58 0e 00 00    	je     402123 <L.tmp.231>
  4012cb:	e9 0f 02 00 00       	jmpq   4014df <L.tmp.29>

00000000004012d0 <L.tmp.219>:
  4012d0:	49 83 fe 00          	cmp    $0x0,%r14
  4012d4:	0f 84 24 01 00 00    	je     4013fe <L.tmp.220>
  4012da:	e9 23 09 00 00       	jmpq   401c02 <L.tmp.35>

00000000004012df <L.tmp.228>:
  4012df:	49 83 fe 00          	cmp    $0x0,%r14
  4012e3:	0f 84 80 02 00 00    	je     401569 <L.tmp.229>
  4012e9:	e9 0f 10 00 00       	jmpq   4022fd <L.tmp.130>

00000000004012ee <L.tmp.134>:
  4012ee:	49 83 fe 00          	cmp    $0x0,%r14
  4012f2:	0f 84 00 12 00 00    	je     4024f8 <L.tmp.135>
  4012f8:	e9 9a 03 00 00       	jmpq   401697 <L.tmp.16>

00000000004012fd <L.tmp.211>:
  4012fd:	49 83 fe 00          	cmp    $0x0,%r14
  401301:	0f 84 16 04 00 00    	je     40171d <L.tmp.212>
  401307:	e9 28 09 00 00       	jmpq   401c34 <L.tmp.192>

000000000040130c <L.tmp.103>:
  40130c:	49 83 fe 00          	cmp    $0x0,%r14
  401310:	0f 84 d8 0e 00 00    	je     4021ee <L.tmp.104>
  401316:	e9 b7 03 00 00       	jmpq   4016d2 <L.tmp.71>

000000000040131b <L.tmp.188>:
  40131b:	e9 41 03 00 00       	jmpq   401661 <L.tmp.185>

0000000000401320 <L.tmp.57>:
  401320:	49 83 fe 00          	cmp    $0x0,%r14
  401324:	0f 84 56 09 00 00    	je     401c80 <L.tmp.58>
  40132a:	e9 e0 0c 00 00       	jmpq   40200f <L.tmp.31>

000000000040132f <L.tmp.183>:
  40132f:	4c 8b 5d e8          	mov    -0x18(%rbp),%r11
  401333:	49 8b 63 06          	mov    0x6(%r11),%rsp
  401337:	48 83 fc 08          	cmp    $0x8,%rsp
  40133b:	0f 84 7a fe ff ff    	je     4011bb <L.tmp.196>
  401341:	e9 cf 07 00 00       	jmpq   401b15 <L.tmp.197>

0000000000401346 <L.tmp.186>:
  401346:	4c 8b 55 e8          	mov    -0x18(%rbp),%r10
  40134a:	49 8b 62 fe          	mov    -0x2(%r10),%rsp
  40134e:	48 83 ed 48          	sub    $0x48,%rbp
  401352:	48 8b 75 40          	mov    0x40(%rbp),%rsi
  401356:	49 83 fe 00          	cmp    $0x0,%r14
  40135a:	0f 84 f2 fd ff ff    	je     401152 <L.tmp.189>
  401360:	e9 32 03 00 00       	jmpq   401697 <L.tmp.16>

0000000000401365 <L.tmp.206>:
  401365:	49 83 fe 00          	cmp    $0x0,%r14
  401369:	0f 84 64 0c 00 00    	je     401fd3 <L.tmp.207>
  40136f:	e9 ed 0a 00 00       	jmpq   401e61 <L.tmp.81>

0000000000401374 <L.rp.83>:
  401374:	48 83 c5 40          	add    $0x40,%rbp
  401378:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40137c:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
  401380:	4d 8b 53 fe          	mov    -0x2(%r11),%r10
  401384:	4c 89 55 c8          	mov    %r10,-0x38(%rbp)
  401388:	49 83 fe 00          	cmp    $0x0,%r14
  40138c:	0f 84 d4 0d 00 00    	je     402166 <L.tmp.272>
  401392:	e9 49 0d 00 00       	jmpq   4020e0 <L.tmp.132>

0000000000401397 <L.tmp.118>:
  401397:	48 89 d1             	mov    %rdx,%rcx
  40139a:	4c 89 e2             	mov    %r12,%rdx
  40139d:	49 83 c4 10          	add    $0x10,%r12
  4013a1:	49 83 fe 00          	cmp    $0x0,%r14
  4013a5:	0f 84 d2 0e 00 00    	je     40227d <L.tmp.119>
  4013ab:	e9 5f 0c 00 00       	jmpq   40200f <L.tmp.31>

00000000004013b0 <L.tmp.296>:
  4013b0:	49 83 fe 00          	cmp    $0x0,%r14
  4013b4:	0f 84 9d 0d 00 00    	je     402157 <L.tmp.297>
  4013ba:	e9 8c 01 00 00       	jmpq   40154b <L.tmp.174>

00000000004013bf <L.tmp.292>:
  4013bf:	48 89 e6             	mov    %rsp,%rsi
  4013c2:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  4013c6:	49 bf 5c 1a 40 00 00 	movabs $0x401a5c,%r15
  4013cd:	00 00 00 
  4013d0:	49 83 fe 00          	cmp    $0x0,%r14
  4013d4:	4c 8b 5d 08          	mov    0x8(%rbp),%r11
  4013d8:	75 03                	jne    4013dd <L.tmp.316>
  4013da:	41 ff e3             	jmpq   *%r11

00000000004013dd <L.tmp.316>:
  4013dd:	4d 89 d2             	mov    %r10,%r10
  4013e0:	e9 1f fd ff ff       	jmpq   401104 <L.tmp.169>

00000000004013e5 <L.tmp.147>:
  4013e5:	ba 0e 00 00 00       	mov    $0xe,%edx
  4013ea:	e9 2f 0c 00 00       	jmpq   40201e <L.tmp.149>

00000000004013ef <L.tmp.43>:
  4013ef:	49 83 fe 00          	cmp    $0x0,%r14
  4013f3:	0f 84 9e fe ff ff    	je     401297 <L.tmp.44>
  4013f9:	e9 95 01 00 00       	jmpq   401593 <L.tmp.11>

00000000004013fe <L.tmp.220>:
  4013fe:	49 83 fe 00          	cmp    $0x0,%r14
  401402:	0f 84 68 fd ff ff    	je     401170 <L.tmp.221>
  401408:	e9 0e ff ff ff       	jmpq   40131b <L.tmp.188>

000000000040140d <L.tmp.113>:
  40140d:	49 83 fe 00          	cmp    $0x0,%r14
  401411:	0f 84 da 0b 00 00    	je     401ff1 <L.tmp.114>
  401417:	e9 db 05 00 00       	jmpq   4019f7 <L.tmp.59>

000000000040141c <L.tmp.181>:
  40141c:	b8 16 00 00 00       	mov    $0x16,%eax
  401421:	49 83 fe 00          	cmp    $0x0,%r14
  401425:	4c 8b 5d 00          	mov    0x0(%rbp),%r11
  401429:	75 03                	jne    40142e <L.tmp.317>
  40142b:	41 ff e3             	jmpq   *%r11

000000000040142e <L.tmp.317>:
  40142e:	4d 89 d2             	mov    %r10,%r10
  401431:	e9 a3 05 00 00       	jmpq   4019d9 <L.tmp.167>

0000000000401436 <L.tmp.111>:
  401436:	48 89 cf             	mov    %rcx,%rdi
  401439:	49 89 e7             	mov    %rsp,%r15
  40143c:	49 83 fe 00          	cmp    $0x0,%r14
  401440:	75 03                	jne    401445 <L.tmp.318>
  401442:	41 ff e0             	jmpq   *%r8

0000000000401445 <L.tmp.318>:
  401445:	4d 89 db             	mov    %r11,%r11
  401448:	e9 99 fc ff ff       	jmpq   4010e6 <L.tmp.56>

000000000040144d <L.tmp.54>:
  40144d:	49 83 fe 00          	cmp    $0x0,%r14
  401451:	0f 84 5a 05 00 00    	je     4019b1 <L.tmp.55>
  401457:	e9 e1 0c 00 00       	jmpq   40213d <L.tmp.49>

000000000040145c <L.tmp.173>:
  40145c:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  401460:	4c 8b 54 24 0e       	mov    0xe(%rsp),%r10
  401465:	4c 89 55 d0          	mov    %r10,-0x30(%rbp)
  401469:	4c 8b 5c 24 16       	mov    0x16(%rsp),%r11
  40146e:	4c 89 5d d8          	mov    %r11,-0x28(%rbp)
  401472:	49 83 fe 00          	cmp    $0x0,%r14
  401476:	0f 84 cf 00 00 00    	je     40154b <L.tmp.174>
  40147c:	e9 8b fe ff ff       	jmpq   40130c <L.tmp.103>

0000000000401481 <L.tmp.276>:
  401481:	49 83 fe 00          	cmp    $0x0,%r14
  401485:	0f 84 f8 03 00 00    	je     401883 <L.tmp.277>
  40148b:	e9 43 0b 00 00       	jmpq   401fd3 <L.tmp.207>

0000000000401490 <L.tmp.117>:
  401490:	49 83 fe 00          	cmp    $0x0,%r14
  401494:	0f 84 fd fe ff ff    	je     401397 <L.tmp.118>
  40149a:	e9 58 05 00 00       	jmpq   4019f7 <L.tmp.59>

000000000040149f <L.tmp.96>:
  40149f:	49 83 fe 00          	cmp    $0x0,%r14
  4014a3:	0f 84 3d 0a 00 00    	je     401ee6 <L.tmp.97>
  4014a9:	e9 d1 09 00 00       	jmpq   401e7f <L.tmp.18>

00000000004014ae <L.tmp.245>:
  4014ae:	49 83 fe 00          	cmp    $0x0,%r14
  4014b2:	0f 84 dc 06 00 00    	je     401b94 <L.tmp.246>
  4014b8:	e9 75 04 00 00       	jmpq   401932 <L.tmp.128>

00000000004014bd <L.tmp.285>:
  4014bd:	48 8b 75 38          	mov    0x38(%rbp),%rsi
  4014c1:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
  4014c5:	49 bf bf 18 40 00 00 	movabs $0x4018bf,%r15
  4014cc:	00 00 00 
  4014cf:	49 83 fe 00          	cmp    $0x0,%r14
  4014d3:	75 02                	jne    4014d7 <L.tmp.319>
  4014d5:	ff e4                	jmpq   *%rsp

00000000004014d7 <L.tmp.319>:
  4014d7:	4d 89 d2             	mov    %r10,%r10
  4014da:	e9 c8 04 00 00       	jmpq   4019a7 <L.tmp.199>

00000000004014df <L.tmp.29>:
  4014df:	49 83 fe 00          	cmp    $0x0,%r14
  4014e3:	0f 84 b9 00 00 00    	je     4015a2 <L.tmp.30>
  4014e9:	e9 54 fd ff ff       	jmpq   401242 <L.tmp.10>

00000000004014ee <L.tmp.238>:
  4014ee:	bc 06 00 00 00       	mov    $0x6,%esp
  4014f3:	e9 e7 0c 00 00       	jmpq   4021df <L.tmp.239>

00000000004014f8 <L.tmp.278>:
  4014f8:	4c 8b 5d e8          	mov    -0x18(%rbp),%r11
  4014fc:	49 8b 63 fe          	mov    -0x2(%r11),%rsp
  401500:	48 83 ed 40          	sub    $0x40,%rbp
  401504:	ba 10 00 00 00       	mov    $0x10,%edx
  401509:	49 83 fe 00          	cmp    $0x0,%r14
  40150d:	0f 84 97 0d 00 00    	je     4022aa <L.tmp.279>
  401513:	e9 66 0b 00 00       	jmpq   40207e <L.tmp.267>

0000000000401518 <L.tmp.162>:
  401518:	ba 06 00 00 00       	mov    $0x6,%edx
  40151d:	e9 b5 fb ff ff       	jmpq   4010d7 <L.tmp.163>

0000000000401522 <L.tmp.275>:
  401522:	49 83 fe 00          	cmp    $0x0,%r14
  401526:	0f 84 55 ff ff ff    	je     401481 <L.tmp.276>
  40152c:	e9 2b ff ff ff       	jmpq   40145c <L.tmp.173>

0000000000401531 <L.tmp.178>:
  401531:	49 83 fe 00          	cmp    $0x0,%r14
  401535:	74 23                	je     40155a <L.tmp.179>
  401537:	e9 a0 fc ff ff       	jmpq   4011dc <L.tmp.121>

000000000040153c <L.tmp.293>:
  40153c:	49 83 fe 00          	cmp    $0x0,%r14
  401540:	0f 84 cb fc ff ff    	je     401211 <L.tmp.294>
  401546:	e9 fa 0d 00 00       	jmpq   402345 <L.tmp.76>

000000000040154b <L.tmp.174>:
  40154b:	49 83 fe 00          	cmp    $0x0,%r14
  40154f:	0f 84 93 03 00 00    	je     4018e8 <L.tmp.175>
  401555:	e9 3d fd ff ff       	jmpq   401297 <L.tmp.44>

000000000040155a <L.tmp.179>:
  40155a:	49 83 fe 00          	cmp    $0x0,%r14
  40155e:	0f 84 76 02 00 00    	je     4017da <L.tmp.180>
  401564:	e9 3d 01 00 00       	jmpq   4016a6 <L.tmp.171>

0000000000401569 <L.tmp.229>:
  401569:	49 bf 06 1a 40 00 00 	movabs $0x401a06,%r15
  401570:	00 00 00 
  401573:	49 83 fe 00          	cmp    $0x0,%r14
  401577:	4c 8b 55 38          	mov    0x38(%rbp),%r10
  40157b:	75 03                	jne    401580 <L.tmp.320>
  40157d:	41 ff e2             	jmpq   *%r10

0000000000401580 <L.tmp.320>:
  401580:	4d 89 db             	mov    %r11,%r11
  401583:	e9 4b 0f 00 00       	jmpq   4024d3 <L.tmp.99>

0000000000401588 <L.tmp.177>:
  401588:	49 83 fe 00          	cmp    $0x0,%r14
  40158c:	74 a3                	je     401531 <L.tmp.178>
  40158e:	e9 4f 0d 00 00       	jmpq   4022e2 <L.tmp.47>

0000000000401593 <L.tmp.11>:
  401593:	49 83 fe 00          	cmp    $0x0,%r14
  401597:	0f 84 dc fa ff ff    	je     401079 <L.tmp.12>
  40159d:	e9 cf 05 00 00       	jmpq   401b71 <L.tmp.8>

00000000004015a2 <L.tmp.30>:
  4015a2:	49 83 fe 00          	cmp    $0x0,%r14
  4015a6:	0f 84 63 0a 00 00    	je     40200f <L.tmp.31>
  4015ac:	e9 3c 08 00 00       	jmpq   401ded <L.tmp.21>

00000000004015b1 <L.tmp.210>:
  4015b1:	49 83 fe 00          	cmp    $0x0,%r14
  4015b5:	0f 84 42 fd ff ff    	je     4012fd <L.tmp.211>
  4015bb:	e9 6e 04 00 00       	jmpq   401a2e <L.tmp.9>

00000000004015c0 <L.tmp.110>:
  4015c0:	49 83 fe 00          	cmp    $0x0,%r14
  4015c4:	0f 84 6c fe ff ff    	je     401436 <L.tmp.111>
  4015ca:	e9 50 04 00 00       	jmpq   401a1f <L.tmp.28>

00000000004015cf <L.tmp.153>:
  4015cf:	49 83 fe 00          	cmp    $0x0,%r14
  4015d3:	0f 84 b3 0c 00 00    	je     40228c <L.tmp.154>
  4015d9:	e9 ad 01 00 00       	jmpq   40178b <L.tmp.105>

00000000004015de <L.tmp.222>:
  4015de:	48 89 e2             	mov    %rsp,%rdx
  4015e1:	48 8b 75 30          	mov    0x30(%rbp),%rsi
  4015e5:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  4015e9:	49 83 fe 00          	cmp    $0x0,%r14
  4015ed:	0f 84 e6 02 00 00    	je     4018d9 <L.tmp.223>
  4015f3:	e9 f0 03 00 00       	jmpq   4019e8 <L.tmp.64>

00000000004015f8 <L.tmp.14>:
  4015f8:	49 83 fe 00          	cmp    $0x0,%r14
  4015fc:	0f 84 3b 05 00 00    	je     401b3d <L.tmp.15>
  401602:	e9 6a 05 00 00       	jmpq   401b71 <L.tmp.8>

0000000000401607 <L.tmp.52>:
  401607:	49 83 fe 00          	cmp    $0x0,%r14
  40160b:	0f 84 ad 05 00 00    	je     401bbe <L.tmp.53>
  401611:	e9 c9 fe ff ff       	jmpq   4014df <L.tmp.29>

0000000000401616 <L.tmp.284>:
  401616:	49 83 fe 00          	cmp    $0x0,%r14
  40161a:	0f 84 9d fe ff ff    	je     4014bd <L.tmp.285>
  401620:	e9 89 0b 00 00       	jmpq   4021ae <L.tmp.51>

0000000000401625 <L.tmp.24>:
  401625:	49 83 fe 00          	cmp    $0x0,%r14
  401629:	0f 84 f9 fb ff ff    	je     401228 <L.tmp.25>
  40162f:	e9 0e fc ff ff       	jmpq   401242 <L.tmp.10>

0000000000401634 <L.tmp.176>:
  401634:	49 83 fe 00          	cmp    $0x0,%r14
  401638:	0f 84 4a ff ff ff    	je     401588 <L.tmp.177>
  40163e:	e9 45 fa ff ff       	jmpq   401088 <L.tmp.27>

0000000000401643 <L.tmp.269>:
  401643:	49 83 fe 00          	cmp    $0x0,%r14
  401647:	0f 84 de 0d 00 00    	je     40242b <L.tmp.270>
  40164d:	e9 15 09 00 00       	jmpq   401f67 <L.tmp.240>

0000000000401652 <L.tmp.65>:
  401652:	49 83 fe 00          	cmp    $0x0,%r14
  401656:	0f 84 d0 00 00 00    	je     40172c <L.tmp.66>
  40165c:	e9 04 03 00 00       	jmpq   401965 <L.tmp.48>

0000000000401661 <L.tmp.185>:
  401661:	4c 8b 55 c8          	mov    -0x38(%rbp),%r10
  401665:	4d 8b 5a fe          	mov    -0x2(%r10),%r11
  401669:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
  40166d:	4c 8b 55 d8          	mov    -0x28(%rbp),%r10
  401671:	49 8b 62 fe          	mov    -0x2(%r10),%rsp
  401675:	48 83 ed 48          	sub    $0x48,%rbp
  401679:	49 83 fe 00          	cmp    $0x0,%r14
  40167d:	0f 84 ce fb ff ff    	je     401251 <L.tmp.202>
  401683:	e9 31 0e 00 00       	jmpq   4024b9 <L.tmp.67>

0000000000401688 <L.tmp.94>:
  401688:	49 83 fe 00          	cmp    $0x0,%r14
  40168c:	0f 84 9d 01 00 00    	je     40182f <L.tmp.95>
  401692:	e9 00 fc ff ff       	jmpq   401297 <L.tmp.44>

0000000000401697 <L.tmp.16>:
  401697:	49 83 fe 00          	cmp    $0x0,%r14
  40169b:	0f 84 b0 09 00 00    	je     402051 <L.tmp.17>
  4016a1:	e9 cb 04 00 00       	jmpq   401b71 <L.tmp.8>

00000000004016a6 <L.tmp.171>:
  4016a6:	49 83 fe 00          	cmp    $0x0,%r14
  4016aa:	0f 84 f2 f9 ff ff    	je     4010a2 <L.tmp.172>
  4016b0:	e9 6a 03 00 00       	jmpq   401a1f <L.tmp.28>

00000000004016b5 <L.tmp.309>:
  4016b5:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  4016b9:	49 83 fb 00          	cmp    $0x0,%r11
  4016bd:	0f 84 02 fb ff ff    	je     4011c5 <L.tmp.310>
  4016c3:	e9 b6 fb ff ff       	jmpq   40127e <L.tmp.311>

00000000004016c8 <L.tmp.301>:
  4016c8:	bc 06 00 00 00       	mov    $0x6,%esp
  4016cd:	e9 fe 0a 00 00       	jmpq   4021d0 <L.tmp.302>

00000000004016d2 <L.tmp.71>:
  4016d2:	49 83 fe 00          	cmp    $0x0,%r14
  4016d6:	0f 84 25 08 00 00    	je     401f01 <L.tmp.72>
  4016dc:	e9 6c 06 00 00       	jmpq   401d4d <L.tmp.61>

00000000004016e1 <L.tmp.150>:
  4016e1:	49 83 fe 00          	cmp    $0x0,%r14
  4016e5:	0f 84 26 05 00 00    	je     401c11 <L.tmp.151>
  4016eb:	e9 a3 fe ff ff       	jmpq   401593 <L.tmp.11>

00000000004016f0 <L.tmp.201>:
  4016f0:	48 83 fc 06          	cmp    $0x6,%rsp
  4016f4:	0f 85 35 fc ff ff    	jne    40132f <L.tmp.183>
  4016fa:	e9 d0 fa ff ff       	jmpq   4011cf <L.tmp.184>

00000000004016ff <L.tmp.225>:
  4016ff:	49 83 fe 00          	cmp    $0x0,%r14
  401703:	0f 84 44 05 00 00    	je     401c4d <L.tmp.226>
  401709:	e9 d0 05 00 00       	jmpq   401cde <L.tmp.148>

000000000040170e <L.tmp.291>:
  40170e:	49 83 fe 00          	cmp    $0x0,%r14
  401712:	0f 84 a7 fc ff ff    	je     4013bf <L.tmp.292>
  401718:	e9 4c fe ff ff       	jmpq   401569 <L.tmp.229>

000000000040171d <L.tmp.212>:
  40171d:	49 83 fe 00          	cmp    $0x0,%r14
  401721:	0f 84 b0 07 00 00    	je     401ed7 <L.tmp.213>
  401727:	e9 5c f9 ff ff       	jmpq   401088 <L.tmp.27>

000000000040172c <L.tmp.66>:
  40172c:	49 83 fe 00          	cmp    $0x0,%r14
  401730:	0f 84 83 0d 00 00    	je     4024b9 <L.tmp.67>
  401736:	e9 12 06 00 00       	jmpq   401d4d <L.tmp.61>

000000000040173b <L.tmp.227>:
  40173b:	49 83 fe 00          	cmp    $0x0,%r14
  40173f:	0f 84 9a fb ff ff    	je     4012df <L.tmp.228>
  401745:	e9 ce fd ff ff       	jmpq   401518 <L.tmp.162>

000000000040174a <L.tmp.74>:
  40174a:	49 83 fe 00          	cmp    $0x0,%r14
  40174e:	0f 84 e6 0c 00 00    	je     40243a <L.tmp.75>
  401754:	e9 e4 09 00 00       	jmpq   40213d <L.tmp.49>

0000000000401759 <L.tmp.312>:
  401759:	48 83 fc 06          	cmp    $0x6,%rsp
  40175d:	0f 85 4b f9 ff ff    	jne    4010ae <L.tmp.247>
  401763:	e9 55 0a 00 00       	jmpq   4021bd <L.tmp.248>

0000000000401768 <L.tmp.182>:
  401768:	4c 8b 55 d0          	mov    -0x30(%rbp),%r10
  40176c:	4d 8b 5a fe          	mov    -0x2(%r10),%r11
  401770:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
  401774:	48 8b 65 e8          	mov    -0x18(%rbp),%rsp
  401778:	48 83 e4 07          	and    $0x7,%rsp
  40177c:	48 83 fc 02          	cmp    $0x2,%rsp
  401780:	0f 84 21 02 00 00    	je     4019a7 <L.tmp.199>
  401786:	e9 5e 04 00 00       	jmpq   401be9 <L.tmp.200>

000000000040178b <L.tmp.105>:
  40178b:	49 83 fe 00          	cmp    $0x0,%r14
  40178f:	0f 84 1b 01 00 00    	je     4018b0 <L.tmp.106>
  401795:	e9 78 0d 00 00       	jmpq   402512 <L.tmp.87>

000000000040179a <L.tmp.194>:
  40179a:	49 83 fe 00          	cmp    $0x0,%r14
  40179e:	0f 84 35 03 00 00    	je     401ad9 <L.tmp.195>
  4017a4:	e9 7f fa ff ff       	jmpq   401228 <L.tmp.25>

00000000004017a9 <L.tmp.218>:
  4017a9:	49 83 fe 00          	cmp    $0x0,%r14
  4017ad:	0f 84 1d fb ff ff    	je     4012d0 <L.tmp.219>
  4017b3:	e9 a9 fe ff ff       	jmpq   401661 <L.tmp.185>

00000000004017b8 <L.tmp.34>:
  4017b8:	48 c7 41 fe 0b 18 40 	movq   $0x40180b,-0x2(%rcx)
  4017bf:	00 
  4017c0:	48 c7 41 06 10 00 00 	movq   $0x10,0x6(%rcx)
  4017c7:	00 
  4017c8:	48 89 c9             	mov    %rcx,%rcx
  4017cb:	49 83 fe 00          	cmp    $0x0,%r14
  4017cf:	0f 84 2d 04 00 00    	je     401c02 <L.tmp.35>
  4017d5:	e9 9f f8 ff ff       	jmpq   401079 <L.tmp.12>

00000000004017da <L.tmp.180>:
  4017da:	4c 8b 54 24 1e       	mov    0x1e(%rsp),%r10
  4017df:	4c 89 55 c8          	mov    %r10,-0x38(%rbp)
  4017e3:	4c 8b 5d f8          	mov    -0x8(%rbp),%r11
  4017e7:	49 83 fb 00          	cmp    $0x0,%r11
  4017eb:	0f 84 52 04 00 00    	je     401c43 <L.tmp.237>
  4017f1:	e9 f8 fc ff ff       	jmpq   4014ee <L.tmp.238>

00000000004017f6 <L.tmp.160>:
  4017f6:	b8 3e 03 00 00       	mov    $0x33e,%eax
  4017fb:	49 83 fe 00          	cmp    $0x0,%r14
  4017ff:	75 02                	jne    401803 <L.tmp.321>
  401801:	ff e4                	jmpq   *%rsp

0000000000401803 <L.tmp.321>:
  401803:	4d 89 d2             	mov    %r10,%r10
  401806:	e9 fb 00 00 00       	jmpq   401906 <L.tmp.83>

000000000040180b <L.tmp.2>:
  40180b:	4c 89 7d 00          	mov    %r15,0x0(%rbp)
  40180f:	48 89 fc             	mov    %rdi,%rsp
  401812:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  401816:	49 83 fe 00          	cmp    $0x0,%r14
  40181a:	0f 84 b9 01 00 00    	je     4019d9 <L.tmp.167>
  401820:	e9 92 08 00 00       	jmpq   4020b7 <L.tmp.146>

0000000000401825 <L.tmp.144>:
  401825:	ba 0e 00 00 00       	mov    $0xe,%edx
  40182a:	e9 88 08 00 00       	jmpq   4020b7 <L.tmp.146>

000000000040182f <L.tmp.95>:
  40182f:	49 83 fe 00          	cmp    $0x0,%r14
  401833:	0f 84 66 fc ff ff    	je     40149f <L.tmp.96>
  401839:	e9 c4 03 00 00       	jmpq   401c02 <L.tmp.35>

000000000040183e <L.tmp.159>:
  40183e:	48 89 d8             	mov    %rbx,%rax
  401841:	48 29 c8             	sub    %rcx,%rax
  401844:	49 83 fe 00          	cmp    $0x0,%r14
  401848:	75 02                	jne    40184c <L.tmp.322>
  40184a:	ff e4                	jmpq   *%rsp

000000000040184c <L.tmp.322>:
  40184c:	4d 89 db             	mov    %r11,%r11
  40184f:	e9 ee f9 ff ff       	jmpq   401242 <L.tmp.10>

0000000000401854 <L.tmp.250>:
  401854:	4c 8b 55 d8          	mov    -0x28(%rbp),%r10
  401858:	4d 8b 5a fe          	mov    -0x2(%r10),%r11
  40185c:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
  401860:	4c 8b 55 d0          	mov    -0x30(%rbp),%r10
  401864:	4d 8b 5a fe          	mov    -0x2(%r10),%r11
  401868:	4c 89 5d 00          	mov    %r11,0x0(%rbp)
  40186c:	4c 8b 55 e8          	mov    -0x18(%rbp),%r10
  401870:	49 8b 62 fe          	mov    -0x2(%r10),%rsp
  401874:	49 83 fe 00          	cmp    $0x0,%r14
  401878:	0f 84 0e 0b 00 00    	je     40238c <L.tmp.251>
  40187e:	e9 80 0c 00 00       	jmpq   402503 <L.tmp.88>

0000000000401883 <L.tmp.277>:
  401883:	49 83 fe 00          	cmp    $0x0,%r14
  401887:	0f 84 6b fc ff ff    	je     4014f8 <L.tmp.278>
  40188d:	e9 e7 f7 ff ff       	jmpq   401079 <L.tmp.12>

0000000000401892 <L.tmp.32>:
  401892:	49 83 fe 00          	cmp    $0x0,%r14
  401896:	0f 84 16 fa ff ff    	je     4012b2 <L.tmp.33>
  40189c:	e9 a1 f9 ff ff       	jmpq   401242 <L.tmp.10>

00000000004018a1 <L.tmp.70>:
  4018a1:	49 83 fe 00          	cmp    $0x0,%r14
  4018a5:	0f 84 27 fe ff ff    	je     4016d2 <L.tmp.71>
  4018ab:	e9 16 08 00 00       	jmpq   4020c6 <L.tmp.38>

00000000004018b0 <L.tmp.106>:
  4018b0:	49 83 fe 00          	cmp    $0x0,%r14
  4018b4:	0f 84 8b 09 00 00    	je     402245 <L.tmp.107>
  4018ba:	e9 83 07 00 00       	jmpq   402042 <L.tmp.85>

00000000004018bf <L.rp.84>:
  4018bf:	48 83 c5 40          	add    $0x40,%rbp
  4018c3:	48 89 c4             	mov    %rax,%rsp
  4018c6:	48 83 ed 40          	sub    $0x40,%rbp
  4018ca:	49 83 fe 00          	cmp    $0x0,%r14
  4018ce:	0f 84 9d 03 00 00    	je     401c71 <L.tmp.286>
  4018d4:	e9 ce 00 00 00       	jmpq   4019a7 <L.tmp.199>

00000000004018d9 <L.tmp.223>:
  4018d9:	49 83 fe 00          	cmp    $0x0,%r14
  4018dd:	0f 84 05 04 00 00    	je     401ce8 <L.tmp.224>
  4018e3:	e9 47 04 00 00       	jmpq   401d2f <L.tmp.112>

00000000004018e8 <L.tmp.175>:
  4018e8:	49 83 fe 00          	cmp    $0x0,%r14
  4018ec:	0f 84 42 fd ff ff    	je     401634 <L.tmp.176>
  4018f2:	e9 cf 07 00 00       	jmpq   4020c6 <L.tmp.38>

00000000004018f7 <L.tmp.304>:
  4018f7:	49 83 fe 00          	cmp    $0x0,%r14
  4018fb:	0f 84 5f 07 00 00    	je     402060 <L.tmp.305>
  401901:	e9 c0 07 00 00       	jmpq   4020c6 <L.tmp.38>

0000000000401906 <L.tmp.83>:
  401906:	48 c7 47 fe f9 23 40 	movq   $0x4023f9,-0x2(%rdi)
  40190d:	00 
  40190e:	48 c7 47 06 10 00 00 	movq   $0x10,0x6(%rdi)
  401915:	00 
  401916:	48 89 ff             	mov    %rdi,%rdi
  401919:	49 83 fe 00          	cmp    $0x0,%r14
  40191d:	0f 84 73 01 00 00    	je     401a96 <L.tmp.84>
  401923:	e9 96 02 00 00       	jmpq   401bbe <L.tmp.53>

0000000000401928 <L.tmp.300>:
  401928:	bc 0e 00 00 00       	mov    $0xe,%esp
  40192d:	e9 9e 08 00 00       	jmpq   4021d0 <L.tmp.302>

0000000000401932 <L.tmp.128>:
  401932:	49 83 fe 00          	cmp    $0x0,%r14
  401936:	0f 84 ca 03 00 00    	je     401d06 <L.tmp.129>
  40193c:	e9 10 07 00 00       	jmpq   402051 <L.tmp.17>

0000000000401941 <L.tmp.145>:
  401941:	ba 06 00 00 00       	mov    $0x6,%edx
  401946:	e9 6c 07 00 00       	jmpq   4020b7 <L.tmp.146>

000000000040194b <L.rp.82>:
  40194b:	48 83 c5 40          	add    $0x40,%rbp
  40194f:	48 89 c4             	mov    %rax,%rsp
  401952:	48 83 ed 40          	sub    $0x40,%rbp
  401956:	49 83 fe 00          	cmp    $0x0,%r14
  40195a:	0f 84 3f 08 00 00    	je     40219f <L.tmp.265>
  401960:	e9 49 0b 00 00       	jmpq   4024ae <L.tmp.108>

0000000000401965 <L.tmp.48>:
  401965:	48 83 c2 02          	add    $0x2,%rdx
  401969:	48 c7 42 fe 59 1b 40 	movq   $0x401b59,-0x2(%rdx)
  401970:	00 
  401971:	48 c7 42 06 10 00 00 	movq   $0x10,0x6(%rdx)
  401978:	00 
  401979:	e9 bf 07 00 00       	jmpq   40213d <L.tmp.49>

000000000040197e <L.tmp.23>:
  40197e:	49 83 fe 00          	cmp    $0x0,%r14
  401982:	0f 84 9d fc ff ff    	je     401625 <L.tmp.24>
  401988:	e9 c4 06 00 00       	jmpq   402051 <L.tmp.17>

000000000040198d <L.tmp.215>:
  40198d:	49 bf 33 1a 40 00 00 	movabs $0x401a33,%r15
  401994:	00 00 00 
  401997:	49 83 fe 00          	cmp    $0x0,%r14
  40199b:	75 02                	jne    40199f <L.tmp.323>
  40199d:	ff e4                	jmpq   *%rsp

000000000040199f <L.tmp.323>:
  40199f:	4d 89 db             	mov    %r11,%r11
  4019a2:	e9 42 0b 00 00       	jmpq   4024e9 <L.tmp.91>

00000000004019a7 <L.tmp.199>:
  4019a7:	bc 0e 00 00 00       	mov    $0xe,%esp
  4019ac:	e9 3f fd ff ff       	jmpq   4016f0 <L.tmp.201>

00000000004019b1 <L.tmp.55>:
  4019b1:	48 89 d2             	mov    %rdx,%rdx
  4019b4:	4c 89 e6             	mov    %r12,%rsi
  4019b7:	49 83 c4 10          	add    $0x10,%r12
  4019bb:	49 83 fe 00          	cmp    $0x0,%r14
  4019bf:	0f 84 21 f7 ff ff    	je     4010e6 <L.tmp.56>
  4019c5:	e9 ea 00 00 00       	jmpq   401ab4 <L.tmp.40>

00000000004019ca <L.tmp.123>:
  4019ca:	49 83 fe 00          	cmp    $0x0,%r14
  4019ce:	0f 84 ff 02 00 00    	je     401cd3 <L.tmp.124>
  4019d4:	e9 ab 07 00 00       	jmpq   402184 <L.tmp.92>

00000000004019d9 <L.tmp.167>:
  4019d9:	49 83 fe 00          	cmp    $0x0,%r14
  4019dd:	0f 84 c0 f8 ff ff    	je     4012a3 <L.tmp.168>
  4019e3:	e9 30 fb ff ff       	jmpq   401518 <L.tmp.162>

00000000004019e8 <L.tmp.64>:
  4019e8:	49 83 fe 00          	cmp    $0x0,%r14
  4019ec:	0f 84 60 fc ff ff    	je     401652 <L.tmp.65>
  4019f2:	e9 ab fb ff ff       	jmpq   4015a2 <L.tmp.30>

00000000004019f7 <L.tmp.59>:
  4019f7:	49 83 fe 00          	cmp    $0x0,%r14
  4019fb:	0f 84 ce 03 00 00    	je     401dcf <L.tmp.60>
  401a01:	e9 8c fe ff ff       	jmpq   401892 <L.tmp.32>

0000000000401a06 <L.rp.80>:
  401a06:	48 83 c5 48          	add    $0x48,%rbp
  401a0a:	48 89 c4             	mov    %rax,%rsp
  401a0d:	48 89 e2             	mov    %rsp,%rdx
  401a10:	49 83 fe 00          	cmp    $0x0,%r14
  401a14:	0f 84 a7 f8 ff ff    	je     4012c1 <L.tmp.230>
  401a1a:	e9 52 01 00 00       	jmpq   401b71 <L.tmp.8>

0000000000401a1f <L.tmp.28>:
  401a1f:	49 83 fe 00          	cmp    $0x0,%r14
  401a23:	0f 84 b6 fa ff ff    	je     4014df <L.tmp.29>
  401a29:	e9 f2 01 00 00       	jmpq   401c20 <L.tmp.13>

0000000000401a2e <L.tmp.9>:
  401a2e:	e9 0f f8 ff ff       	jmpq   401242 <L.tmp.10>

0000000000401a33 <L.rp.79>:
  401a33:	48 83 c5 48          	add    $0x48,%rbp
  401a37:	48 89 c4             	mov    %rax,%rsp
  401a3a:	48 83 ed 48          	sub    $0x48,%rbp
  401a3e:	49 83 fe 00          	cmp    $0x0,%r14
  401a42:	0f 84 e1 03 00 00    	je     401e29 <L.tmp.216>
  401a48:	e9 29 05 00 00       	jmpq   401f76 <L.tmp.89>

0000000000401a4d <L.tmp.244>:
  401a4d:	49 83 fe 00          	cmp    $0x0,%r14
  401a51:	0f 84 57 fa ff ff    	je     4014ae <L.tmp.245>
  401a57:	e9 19 03 00 00       	jmpq   401d75 <L.tmp.190>

0000000000401a5c <L.rp.85>:
  401a5c:	48 83 c5 40          	add    $0x40,%rbp
  401a60:	48 89 c4             	mov    %rax,%rsp
  401a63:	48 89 e2             	mov    %rsp,%rdx
  401a66:	49 83 fe 00          	cmp    $0x0,%r14
  401a6a:	0f 84 cc fa ff ff    	je     40153c <L.tmp.293>
  401a70:	e9 73 ff ff ff       	jmpq   4019e8 <L.tmp.64>

0000000000401a75 <L.tmp.299>:
  401a75:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  401a79:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  401a7d:	4c 8b 7d f0          	mov    -0x10(%rbp),%r15
  401a81:	49 83 fe 00          	cmp    $0x0,%r14
  401a85:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  401a89:	75 03                	jne    401a8e <L.tmp.324>
  401a8b:	41 ff e2             	jmpq   *%r10

0000000000401a8e <L.tmp.324>:
  401a8e:	4d 89 db             	mov    %r11,%r11
  401a91:	e9 3f 06 00 00       	jmpq   4020d5 <L.tmp.131>

0000000000401a96 <L.tmp.84>:
  401a96:	49 83 fe 00          	cmp    $0x0,%r14
  401a9a:	0f 84 a2 05 00 00    	je     402042 <L.tmp.85>
  401aa0:	e9 ac 05 00 00       	jmpq   402051 <L.tmp.17>

0000000000401aa5 <L.tmp.122>:
  401aa5:	49 83 fe 00          	cmp    $0x0,%r14
  401aa9:	0f 84 1b ff ff ff    	je     4019ca <L.tmp.123>
  401aaf:	e9 e3 f7 ff ff       	jmpq   401297 <L.tmp.44>

0000000000401ab4 <L.tmp.40>:
  401ab4:	49 83 fe 00          	cmp    $0x0,%r14
  401ab8:	0f 84 6b 05 00 00    	je     402029 <L.tmp.41>
  401abe:	e9 df fa ff ff       	jmpq   4015a2 <L.tmp.30>

0000000000401ac3 <L.tmp.142>:
  401ac3:	48 89 d8             	mov    %rbx,%rax
  401ac6:	48 01 c8             	add    %rcx,%rax
  401ac9:	49 83 fe 00          	cmp    $0x0,%r14
  401acd:	75 02                	jne    401ad1 <L.tmp.325>
  401acf:	ff e4                	jmpq   *%rsp

0000000000401ad1 <L.tmp.325>:
  401ad1:	4d 89 d2             	mov    %r10,%r10
  401ad4:	e9 1f fb ff ff       	jmpq   4015f8 <L.tmp.14>

0000000000401ad9 <L.tmp.195>:
  401ad9:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
  401add:	49 bf dc 1b 40 00 00 	movabs $0x401bdc,%r15
  401ae4:	00 00 00 
  401ae7:	49 83 fe 00          	cmp    $0x0,%r14
  401aeb:	75 02                	jne    401aef <L.tmp.326>
  401aed:	ff e4                	jmpq   *%rsp

0000000000401aef <L.tmp.326>:
  401aef:	4d 89 db             	mov    %r11,%r11
  401af2:	e9 aa fd ff ff       	jmpq   4018a1 <L.tmp.70>

0000000000401af7 <L.tmp.19>:
  401af7:	49 83 fe 00          	cmp    $0x0,%r14
  401afb:	0f 84 f6 05 00 00    	je     4020f7 <L.tmp.20>
  401b01:	e9 3c f7 ff ff       	jmpq   401242 <L.tmp.10>

0000000000401b06 <L.tmp.205>:
  401b06:	49 83 fe 00          	cmp    $0x0,%r14
  401b0a:	0f 84 55 f8 ff ff    	je     401365 <L.tmp.206>
  401b10:	e9 6e 05 00 00       	jmpq   402083 <L.tmp.155>

0000000000401b15 <L.tmp.197>:
  401b15:	bc 06 00 00 00       	mov    $0x6,%esp
  401b1a:	e9 a0 01 00 00       	jmpq   401cbf <L.tmp.198>

0000000000401b1f <L.tmp.120>:
  401b1f:	49 83 fe 00          	cmp    $0x0,%r14
  401b23:	0f 84 b3 f6 ff ff    	je     4011dc <L.tmp.121>
  401b29:	e9 64 fd ff ff       	jmpq   401892 <L.tmp.32>

0000000000401b2e <L.tmp.73>:
  401b2e:	49 83 fe 00          	cmp    $0x0,%r14
  401b32:	0f 84 12 fc ff ff    	je     40174a <L.tmp.74>
  401b38:	e9 7b fc ff ff       	jmpq   4017b8 <L.tmp.34>

0000000000401b3d <L.tmp.15>:
  401b3d:	49 83 fe 00          	cmp    $0x0,%r14
  401b41:	0f 84 50 fb ff ff    	je     401697 <L.tmp.16>
  401b47:	e9 47 fa ff ff       	jmpq   401593 <L.tmp.11>

0000000000401b4c <L.tmp.187>:
  401b4c:	48 c7 45 e0 3e 2a 00 	movq   $0x2a3e,-0x20(%rbp)
  401b53:	00 
  401b54:	e9 c2 f7 ff ff       	jmpq   40131b <L.tmp.188>

0000000000401b59 <L.tmp.3>:
  401b59:	4c 89 fc             	mov    %r15,%rsp
  401b5c:	48 89 fb             	mov    %rdi,%rbx
  401b5f:	48 89 f3             	mov    %rsi,%rbx
  401b62:	49 83 fe 00          	cmp    $0x0,%r14
  401b66:	0f 84 75 fb ff ff    	je     4016e1 <L.tmp.150>
  401b6c:	e9 3d 06 00 00       	jmpq   4021ae <L.tmp.51>

0000000000401b71 <L.tmp.8>:
  401b71:	e9 b8 fe ff ff       	jmpq   401a2e <L.tmp.9>

0000000000401b76 <L.tmp.152>:
  401b76:	49 83 fe 00          	cmp    $0x0,%r14
  401b7a:	0f 84 4f fa ff ff    	je     4015cf <L.tmp.153>
  401b80:	e9 0e 02 00 00       	jmpq   401d93 <L.tmp.50>

0000000000401b85 <L.tmp.259>:
  401b85:	49 83 fe 00          	cmp    $0x0,%r14
  401b89:	0f 84 4f 02 00 00    	je     401dde <L.tmp.260>
  401b8f:	e9 bd 04 00 00       	jmpq   402051 <L.tmp.17>

0000000000401b94 <L.tmp.246>:
  401b94:	4c 8b 54 24 0e       	mov    0xe(%rsp),%r10
  401b99:	4c 89 55 d0          	mov    %r10,-0x30(%rbp)
  401b9d:	4c 8b 5c 24 16       	mov    0x16(%rsp),%r11
  401ba2:	4c 89 5d e8          	mov    %r11,-0x18(%rbp)
  401ba6:	4c 8b 54 24 1e       	mov    0x1e(%rsp),%r10
  401bab:	4c 89 55 d8          	mov    %r10,-0x28(%rbp)
  401baf:	49 83 fe 00          	cmp    $0x0,%r14
  401bb3:	0f 84 d5 f5 ff ff    	je     40118e <L.tmp.303>
  401bb9:	e9 f9 04 00 00       	jmpq   4020b7 <L.tmp.146>

0000000000401bbe <L.tmp.53>:
  401bbe:	49 83 fe 00          	cmp    $0x0,%r14
  401bc2:	0f 84 85 f8 ff ff    	je     40144d <L.tmp.54>
  401bc8:	e9 22 f8 ff ff       	jmpq   4013ef <L.tmp.43>

0000000000401bcd <L.tmp.93>:
  401bcd:	49 83 fe 00          	cmp    $0x0,%r14
  401bd1:	0f 84 b1 fa ff ff    	je     401688 <L.tmp.94>
  401bd7:	e9 71 01 00 00       	jmpq   401d4d <L.tmp.61>

0000000000401bdc <L.rp.78>:
  401bdc:	48 83 c5 48          	add    $0x48,%rbp
  401be0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401be4:	e9 32 f7 ff ff       	jmpq   40131b <L.tmp.188>

0000000000401be9 <L.tmp.200>:
  401be9:	bc 06 00 00 00       	mov    $0x6,%esp
  401bee:	e9 fd fa ff ff       	jmpq   4016f0 <L.tmp.201>

0000000000401bf3 <L.tmp.242>:
  401bf3:	49 83 fe 00          	cmp    $0x0,%r14
  401bf7:	0f 84 b4 01 00 00    	je     401db1 <L.tmp.243>
  401bfd:	e9 74 03 00 00       	jmpq   401f76 <L.tmp.89>

0000000000401c02 <L.tmp.35>:
  401c02:	49 83 fe 00          	cmp    $0x0,%r14
  401c06:	0f 84 7c f6 ff ff    	je     401288 <L.tmp.36>
  401c0c:	e9 31 f6 ff ff       	jmpq   401242 <L.tmp.10>

0000000000401c11 <L.tmp.151>:
  401c11:	49 83 fe 00          	cmp    $0x0,%r14
  401c15:	0f 84 5b ff ff ff    	je     401b76 <L.tmp.152>
  401c1b:	e9 7b 06 00 00       	jmpq   40229b <L.tmp.42>

0000000000401c20 <L.tmp.13>:
  401c20:	48 89 db             	mov    %rbx,%rbx
  401c23:	48 83 c3 02          	add    $0x2,%rbx
  401c27:	48 c7 43 fe eb 11 40 	movq   $0x4011eb,-0x2(%rbx)
  401c2e:	00 
  401c2f:	e9 c4 f9 ff ff       	jmpq   4015f8 <L.tmp.14>

0000000000401c34 <L.tmp.192>:
  401c34:	49 83 fe 00          	cmp    $0x0,%r14
  401c38:	0f 84 00 01 00 00    	je     401d3e <L.tmp.193>
  401c3e:	e9 3b fd ff ff       	jmpq   40197e <L.tmp.23>

0000000000401c43 <L.tmp.237>:
  401c43:	bc 0e 00 00 00       	mov    $0xe,%esp
  401c48:	e9 92 05 00 00       	jmpq   4021df <L.tmp.239>

0000000000401c4d <L.tmp.226>:
  401c4d:	49 83 fe 00          	cmp    $0x0,%r14
  401c51:	0f 84 e4 fa ff ff    	je     40173b <L.tmp.227>
  401c57:	e9 d7 fd ff ff       	jmpq   401a33 <L.rp.79>

0000000000401c5c <L.tmp.143>:
  401c5c:	b8 3e 01 00 00       	mov    $0x13e,%eax
  401c61:	49 83 fe 00          	cmp    $0x0,%r14
  401c65:	75 02                	jne    401c69 <L.tmp.327>
  401c67:	ff e4                	jmpq   *%rsp

0000000000401c69 <L.tmp.327>:
  401c69:	4d 89 db             	mov    %r11,%r11
  401c6c:	e9 64 04 00 00       	jmpq   4020d5 <L.tmp.131>

0000000000401c71 <L.tmp.286>:
  401c71:	49 83 fe 00          	cmp    $0x0,%r14
  401c75:	0f 84 4d f4 ff ff    	je     4010c8 <L.tmp.287>
  401c7b:	e9 6e 05 00 00       	jmpq   4021ee <L.tmp.104>

0000000000401c80 <L.tmp.58>:
  401c80:	49 83 fe 00          	cmp    $0x0,%r14
  401c84:	0f 84 6d fd ff ff    	je     4019f7 <L.tmp.59>
  401c8a:	e9 80 03 00 00       	jmpq   40200f <L.tmp.31>

0000000000401c8f <L.tmp.236>:
  401c8f:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  401c93:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  401c97:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
  401c9b:	49 83 fe 00          	cmp    $0x0,%r14
  401c9f:	4c 8b 55 c0          	mov    -0x40(%rbp),%r10
  401ca3:	75 03                	jne    401ca8 <L.tmp.328>
  401ca5:	41 ff e2             	jmpq   *%r10

0000000000401ca8 <L.tmp.328>:
  401ca8:	4d 89 db             	mov    %r11,%r11
  401cab:	e9 92 03 00 00       	jmpq   402042 <L.tmp.85>

0000000000401cb0 <L.tmp.268>:
  401cb0:	49 83 fe 00          	cmp    $0x0,%r14
  401cb4:	0f 84 89 f9 ff ff    	je     401643 <L.tmp.269>
  401cba:	e9 ea fa ff ff       	jmpq   4017a9 <L.tmp.218>

0000000000401cbf <L.tmp.198>:
  401cbf:	48 83 fc 06          	cmp    $0x6,%rsp
  401cc3:	0f 85 7d f6 ff ff    	jne    401346 <L.tmp.186>
  401cc9:	e9 7e fe ff ff       	jmpq   401b4c <L.tmp.187>

0000000000401cce <L.tmp.7>:
  401cce:	e9 9e fe ff ff       	jmpq   401b71 <L.tmp.8>

0000000000401cd3 <L.tmp.124>:
  401cd3:	49 83 fe 00          	cmp    $0x0,%r14
  401cd7:	74 3c                	je     401d15 <L.tmp.125>
  401cd9:	e9 b5 f8 ff ff       	jmpq   401593 <L.tmp.11>

0000000000401cde <L.tmp.148>:
  401cde:	ba 06 00 00 00       	mov    $0x6,%edx
  401ce3:	e9 36 03 00 00       	jmpq   40201e <L.tmp.149>

0000000000401ce8 <L.tmp.224>:
  401ce8:	49 83 fe 00          	cmp    $0x0,%r14
  401cec:	0f 84 0d fa ff ff    	je     4016ff <L.tmp.225>
  401cf2:	e9 65 f7 ff ff       	jmpq   40145c <L.tmp.173>

0000000000401cf7 <L.tmp.39>:
  401cf7:	49 83 fe 00          	cmp    $0x0,%r14
  401cfb:	0f 84 b3 fd ff ff    	je     401ab4 <L.tmp.40>
  401d01:	e9 d9 f7 ff ff       	jmpq   4014df <L.tmp.29>

0000000000401d06 <L.tmp.129>:
  401d06:	49 83 fe 00          	cmp    $0x0,%r14
  401d0a:	0f 84 ed 05 00 00    	je     4022fd <L.tmp.130>
  401d10:	e9 8a f7 ff ff       	jmpq   40149f <L.tmp.96>

0000000000401d15 <L.tmp.125>:
  401d15:	48 89 d2             	mov    %rdx,%rdx
  401d18:	48 83 c2 01          	add    $0x1,%rdx
  401d1c:	48 89 5a ff          	mov    %rbx,-0x1(%rdx)
  401d20:	49 83 fe 00          	cmp    $0x0,%r14
  401d24:	0f 84 c0 06 00 00    	je     4023ea <L.tmp.126>
  401d2a:	e9 56 07 00 00       	jmpq   402485 <L.tmp.77>

0000000000401d2f <L.tmp.112>:
  401d2f:	49 83 fe 00          	cmp    $0x0,%r14
  401d33:	0f 84 d4 f6 ff ff    	je     40140d <L.tmp.113>
  401d39:	e9 b9 fc ff ff       	jmpq   4019f7 <L.tmp.59>

0000000000401d3e <L.tmp.193>:
  401d3e:	49 83 fe 00          	cmp    $0x0,%r14
  401d42:	0f 84 52 fa ff ff    	je     40179a <L.tmp.194>
  401d48:	e9 b7 f3 ff ff       	jmpq   401104 <L.tmp.169>

0000000000401d4d <L.tmp.61>:
  401d4d:	49 83 fe 00          	cmp    $0x0,%r14
  401d51:	0f 84 f2 06 00 00    	je     402449 <L.tmp.62>
  401d57:	e9 9b fd ff ff       	jmpq   401af7 <L.tmp.19>

0000000000401d5c <L.tmp.139>:
  401d5c:	48 89 d1             	mov    %rdx,%rcx
  401d5f:	48 89 ca             	mov    %rcx,%rdx
  401d62:	48 83 e2 07          	and    $0x7,%rdx
  401d66:	48 83 fa 00          	cmp    $0x0,%rdx
  401d6a:	0f 84 75 f6 ff ff    	je     4013e5 <L.tmp.147>
  401d70:	e9 69 ff ff ff       	jmpq   401cde <L.tmp.148>

0000000000401d75 <L.tmp.190>:
  401d75:	49 83 fe 00          	cmp    $0x0,%r14
  401d79:	0f 84 91 01 00 00    	je     401f10 <L.tmp.191>
  401d7f:	e9 80 f3 ff ff       	jmpq   401104 <L.tmp.169>

0000000000401d84 <L.tmp.282>:
  401d84:	49 83 fe 00          	cmp    $0x0,%r14
  401d88:	0f 84 0f f4 ff ff    	je     40119d <L.tmp.283>
  401d8e:	e9 dd 00 00 00       	jmpq   401e70 <L.tmp.204>

0000000000401d93 <L.tmp.50>:
  401d93:	49 83 fe 00          	cmp    $0x0,%r14
  401d97:	0f 84 11 04 00 00    	je     4021ae <L.tmp.51>
  401d9d:	e9 86 f4 ff ff       	jmpq   401228 <L.tmp.25>

0000000000401da2 <L.tmp.266>:
  401da2:	49 83 fe 00          	cmp    $0x0,%r14
  401da6:	0f 84 d2 02 00 00    	je     40207e <L.tmp.267>
  401dac:	e9 24 03 00 00       	jmpq   4020d5 <L.tmp.131>

0000000000401db1 <L.tmp.243>:
  401db1:	49 83 fe 00          	cmp    $0x0,%r14
  401db5:	0f 84 92 fc ff ff    	je     401a4d <L.tmp.244>
  401dbb:	e9 6e fc ff ff       	jmpq   401a2e <L.tmp.9>

0000000000401dc0 <L.tmp.217>:
  401dc0:	49 83 fe 00          	cmp    $0x0,%r14
  401dc4:	0f 84 df f9 ff ff    	je     4017a9 <L.tmp.218>
  401dca:	e9 72 fb ff ff       	jmpq   401941 <L.tmp.145>

0000000000401dcf <L.tmp.60>:
  401dcf:	49 83 fe 00          	cmp    $0x0,%r14
  401dd3:	0f 84 74 ff ff ff    	je     401d4d <L.tmp.61>
  401dd9:	e9 19 fd ff ff       	jmpq   401af7 <L.tmp.19>

0000000000401dde <L.tmp.260>:
  401dde:	49 83 fe 00          	cmp    $0x0,%r14
  401de2:	0f 84 8d 03 00 00    	je     402175 <L.tmp.261>
  401de8:	e9 ea 00 00 00       	jmpq   401ed7 <L.tmp.213>

0000000000401ded <L.tmp.21>:
  401ded:	49 83 fe 00          	cmp    $0x0,%r14
  401df1:	0f 84 b5 f3 ff ff    	je     4011ac <L.tmp.22>
  401df7:	e9 32 fc ff ff       	jmpq   401a2e <L.tmp.9>

0000000000401dfc <L.tmp.166>:
  401dfc:	48 83 fa 06          	cmp    $0x6,%rdx
  401e00:	0f 85 0d f3 ff ff    	jne    401113 <L.tmp.157>
  401e06:	e9 5c f2 ff ff       	jmpq   401067 <L.tmp.158>

0000000000401e0b <L.tmp.281>:
  401e0b:	49 83 fe 00          	cmp    $0x0,%r14
  401e0f:	0f 84 6f ff ff ff    	je     401d84 <L.tmp.282>
  401e15:	e9 76 f6 ff ff       	jmpq   401490 <L.tmp.117>

0000000000401e1a <L.tmp.235>:
  401e1a:	49 83 fe 00          	cmp    $0x0,%r14
  401e1e:	0f 84 6b fe ff ff    	je     401c8f <L.tmp.236>
  401e24:	e9 e3 04 00 00       	jmpq   40230c <L.tmp.69>

0000000000401e29 <L.tmp.216>:
  401e29:	49 83 fe 00          	cmp    $0x0,%r14
  401e2d:	74 91                	je     401dc0 <L.tmp.217>
  401e2f:	e9 d9 f5 ff ff       	jmpq   40140d <L.tmp.113>

0000000000401e34 <L.tmp.256>:
  401e34:	49 83 fe 00          	cmp    $0x0,%r14
  401e38:	0f 84 eb 04 00 00    	je     402329 <L.tmp.257>
  401e3e:	e9 33 01 00 00       	jmpq   401f76 <L.tmp.89>

0000000000401e43 <L.tmp.115>:
  401e43:	49 83 fe 00          	cmp    $0x0,%r14
  401e47:	0f 84 da 03 00 00    	je     402227 <L.tmp.116>
  401e4d:	e9 06 f2 ff ff       	jmpq   401058 <L.tmp.45>

0000000000401e52 <L.tmp.241>:
  401e52:	49 83 fe 00          	cmp    $0x0,%r14
  401e56:	0f 84 97 fd ff ff    	je     401bf3 <L.tmp.242>
  401e5c:	e9 07 f9 ff ff       	jmpq   401768 <L.tmp.182>

0000000000401e61 <L.tmp.81>:
  401e61:	49 83 fe 00          	cmp    $0x0,%r14
  401e65:	0f 84 03 04 00 00    	je     40226e <L.tmp.82>
  401e6b:	e9 18 f2 ff ff       	jmpq   401088 <L.tmp.27>

0000000000401e70 <L.tmp.204>:
  401e70:	49 83 fe 00          	cmp    $0x0,%r14
  401e74:	0f 84 8c fc ff ff    	je     401b06 <L.tmp.205>
  401e7a:	e9 87 fa ff ff       	jmpq   401906 <L.tmp.83>

0000000000401e7f <L.tmp.18>:
  401e7f:	49 83 fe 00          	cmp    $0x0,%r14
  401e83:	0f 84 6e fc ff ff    	je     401af7 <L.tmp.19>
  401e89:	e9 e3 fc ff ff       	jmpq   401b71 <L.tmp.8>

0000000000401e8e <L.tmp.4>:
  401e8e:	4c 89 fc             	mov    %r15,%rsp
  401e91:	48 89 fb             	mov    %rdi,%rbx
  401e94:	48 89 f3             	mov    %rsi,%rbx
  401e97:	49 83 fe 00          	cmp    $0x0,%r14
  401e9b:	0f 84 92 f3 ff ff    	je     401233 <L.tmp.133>
  401ea1:	e9 89 fe ff ff       	jmpq   401d2f <L.tmp.112>

0000000000401ea6 <L.tmp.165>:
  401ea6:	ba 06 00 00 00       	mov    $0x6,%edx
  401eab:	e9 4c ff ff ff       	jmpq   401dfc <L.tmp.166>

0000000000401eb0 <L.tmp.101>:
  401eb0:	49 83 fe 00          	cmp    $0x0,%r14
  401eb4:	0f 84 a5 04 00 00    	je     40235f <L.tmp.102>
  401eba:	e9 38 fc ff ff       	jmpq   401af7 <L.tmp.19>

0000000000401ebf <L.tmp.208>:
  401ebf:	ba 08 00 00 00       	mov    $0x8,%edx
  401ec4:	48 8b 75 40          	mov    0x40(%rbp),%rsi
  401ec8:	48 8b 7d 20          	mov    0x20(%rbp),%rdi
  401ecc:	49 83 fe 00          	cmp    $0x0,%r14
  401ed0:	74 5c                	je     401f2e <L.tmp.209>
  401ed2:	e9 bf fb ff ff       	jmpq   401a96 <L.tmp.84>

0000000000401ed7 <L.tmp.213>:
  401ed7:	49 83 fe 00          	cmp    $0x0,%r14
  401edb:	0f 84 e3 00 00 00    	je     401fc4 <L.tmp.214>
  401ee1:	e9 9b 00 00 00       	jmpq   401f81 <L.tmp.164>

0000000000401ee6 <L.tmp.97>:
  401ee6:	48 89 5b 0e          	mov    %rbx,0xe(%rbx)
  401eea:	48 89 53 16          	mov    %rdx,0x16(%rbx)
  401eee:	48 89 73 1e          	mov    %rsi,0x1e(%rbx)
  401ef2:	49 83 fe 00          	cmp    $0x0,%r14
  401ef6:	0f 84 e2 05 00 00    	je     4024de <L.tmp.98>
  401efc:	e9 44 04 00 00       	jmpq   402345 <L.tmp.76>

0000000000401f01 <L.tmp.72>:
  401f01:	49 83 fe 00          	cmp    $0x0,%r14
  401f05:	0f 84 23 fc ff ff    	je     401b2e <L.tmp.73>
  401f0b:	e9 5e 04 00 00       	jmpq   40236e <L.tmp.37>

0000000000401f10 <L.tmp.191>:
  401f10:	49 83 fe 00          	cmp    $0x0,%r14
  401f14:	0f 84 1a fd ff ff    	je     401c34 <L.tmp.192>
  401f1a:	e9 bc 04 00 00       	jmpq   4023db <L.tmp.137>

0000000000401f1f <L.tmp.273>:
  401f1f:	49 83 fe 00          	cmp    $0x0,%r14
  401f23:	0f 84 94 04 00 00    	je     4023bd <L.tmp.274>
  401f29:	e9 57 fc ff ff       	jmpq   401b85 <L.tmp.259>

0000000000401f2e <L.tmp.209>:
  401f2e:	49 83 fe 00          	cmp    $0x0,%r14
  401f32:	0f 84 79 f6 ff ff    	je     4015b1 <L.tmp.210>
  401f38:	e9 08 04 00 00       	jmpq   402345 <L.tmp.76>

0000000000401f3d <L.tmp.156>:
  401f3d:	48 89 d1             	mov    %rdx,%rcx
  401f40:	48 89 ca             	mov    %rcx,%rdx
  401f43:	48 83 e2 07          	and    $0x7,%rdx
  401f47:	48 83 fa 00          	cmp    $0x0,%rdx
  401f4b:	74 34                	je     401f81 <L.tmp.164>
  401f4d:	e9 54 ff ff ff       	jmpq   401ea6 <L.tmp.165>

0000000000401f52 <L.tmp.141>:
  401f52:	b8 3e 02 00 00       	mov    $0x23e,%eax
  401f57:	49 83 fe 00          	cmp    $0x0,%r14
  401f5b:	75 02                	jne    401f5f <L.tmp.329>
  401f5d:	ff e4                	jmpq   *%rsp

0000000000401f5f <L.tmp.329>:
  401f5f:	4d 89 d2             	mov    %r10,%r10
  401f62:	e9 4b f3 ff ff       	jmpq   4012b2 <L.tmp.33>

0000000000401f67 <L.tmp.240>:
  401f67:	49 83 fe 00          	cmp    $0x0,%r14
  401f6b:	0f 84 e1 fe ff ff    	je     401e52 <L.tmp.241>
  401f71:	e9 12 f6 ff ff       	jmpq   401588 <L.tmp.177>

0000000000401f76 <L.tmp.89>:
  401f76:	49 83 fe 00          	cmp    $0x0,%r14
  401f7a:	74 1e                	je     401f9a <L.tmp.90>
  401f7c:	e9 e6 04 00 00       	jmpq   402467 <L.tmp.79>

0000000000401f81 <L.tmp.164>:
  401f81:	ba 0e 00 00 00       	mov    $0xe,%edx
  401f86:	e9 71 fe ff ff       	jmpq   401dfc <L.tmp.166>

0000000000401f8b <L.tmp.203>:
  401f8b:	49 83 fe 00          	cmp    $0x0,%r14
  401f8f:	0f 84 db fe ff ff    	je     401e70 <L.tmp.204>
  401f95:	e9 3b 01 00 00       	jmpq   4020d5 <L.tmp.131>

0000000000401f9a <L.tmp.90>:
  401f9a:	48 89 79 0e          	mov    %rdi,0xe(%rcx)
  401f9e:	48 89 51 16          	mov    %rdx,0x16(%rcx)
  401fa2:	48 89 49 1e          	mov    %rcx,0x1e(%rcx)
  401fa6:	49 83 fe 00          	cmp    $0x0,%r14
  401faa:	0f 84 39 05 00 00    	je     4024e9 <L.tmp.91>
  401fb0:	e9 6a fa ff ff       	jmpq   401a1f <L.tmp.28>

0000000000401fb5 <L.tmp.234>:
  401fb5:	49 83 fe 00          	cmp    $0x0,%r14
  401fb9:	0f 84 5b fe ff ff    	je     401e1a <L.tmp.235>
  401fbf:	e9 79 01 00 00       	jmpq   40213d <L.tmp.49>

0000000000401fc4 <L.tmp.214>:
  401fc4:	49 83 fe 00          	cmp    $0x0,%r14
  401fc8:	0f 84 bf f9 ff ff    	je     40198d <L.tmp.215>
  401fce:	e9 16 fc ff ff       	jmpq   401be9 <L.tmp.200>

0000000000401fd3 <L.tmp.207>:
  401fd3:	49 83 fe 00          	cmp    $0x0,%r14
  401fd7:	0f 84 e2 fe ff ff    	je     401ebf <L.tmp.208>
  401fdd:	e9 8f fb ff ff       	jmpq   401b71 <L.tmp.8>

0000000000401fe2 <L.tmp.232>:
  401fe2:	49 83 fe 00          	cmp    $0x0,%r14
  401fe6:	0f 84 83 00 00 00    	je     40206f <L.tmp.233>
  401fec:	e9 77 f7 ff ff       	jmpq   401768 <L.tmp.182>

0000000000401ff1 <L.tmp.114>:
  401ff1:	49 83 fe 00          	cmp    $0x0,%r14
  401ff5:	0f 84 48 fe ff ff    	je     401e43 <L.tmp.115>
  401ffb:	e9 0c 03 00 00       	jmpq   40230c <L.tmp.69>

0000000000402000 <L.tmp.298>:
  402000:	49 83 fe 00          	cmp    $0x0,%r14
  402004:	0f 84 6b fa ff ff    	je     401a75 <L.tmp.299>
  40200a:	e9 cf 04 00 00       	jmpq   4024de <L.tmp.98>

000000000040200f <L.tmp.31>:
  40200f:	49 83 fe 00          	cmp    $0x0,%r14
  402013:	0f 84 79 f8 ff ff    	je     401892 <L.tmp.32>
  402019:	e9 da f5 ff ff       	jmpq   4015f8 <L.tmp.14>

000000000040201e <L.tmp.149>:
  40201e:	48 83 fa 06          	cmp    $0x6,%rdx
  402022:	75 6e                	jne    402092 <L.tmp.140>
  402024:	e9 29 ff ff ff       	jmpq   401f52 <L.tmp.141>

0000000000402029 <L.tmp.41>:
  402029:	4c 89 e2             	mov    %r12,%rdx
  40202c:	49 83 c4 10          	add    $0x10,%r12
  402030:	48 89 d2             	mov    %rdx,%rdx
  402033:	49 83 fe 00          	cmp    $0x0,%r14
  402037:	0f 84 5e 02 00 00    	je     40229b <L.tmp.42>
  40203d:	e9 55 f6 ff ff       	jmpq   401697 <L.tmp.16>

0000000000402042 <L.tmp.85>:
  402042:	49 83 fe 00          	cmp    $0x0,%r14
  402046:	0f 84 a9 f0 ff ff    	je     4010f5 <L.tmp.86>
  40204c:	e9 20 fb ff ff       	jmpq   401b71 <L.tmp.8>

0000000000402051 <L.tmp.17>:
  402051:	49 83 fe 00          	cmp    $0x0,%r14
  402055:	0f 84 24 fe ff ff    	je     401e7f <L.tmp.18>
  40205b:	e9 e2 f1 ff ff       	jmpq   401242 <L.tmp.10>

0000000000402060 <L.tmp.305>:
  402060:	49 83 fe 00          	cmp    $0x0,%r14
  402064:	0f 84 e2 00 00 00    	je     40214c <L.tmp.306>
  40206a:	e9 f0 01 00 00       	jmpq   40225f <L.tmp.127>

000000000040206f <L.tmp.233>:
  40206f:	49 83 fe 00          	cmp    $0x0,%r14
  402073:	0f 84 3c ff ff ff    	je     401fb5 <L.tmp.234>
  402079:	e9 a2 fb ff ff       	jmpq   401c20 <L.tmp.13>

000000000040207e <L.tmp.267>:
  40207e:	e9 2d fc ff ff       	jmpq   401cb0 <L.tmp.268>

0000000000402083 <L.tmp.155>:
  402083:	49 83 fe 00          	cmp    $0x0,%r14
  402087:	0f 84 b0 fe ff ff    	je     401f3d <L.tmp.156>
  40208d:	e9 7b f3 ff ff       	jmpq   40140d <L.tmp.113>

0000000000402092 <L.tmp.140>:
  402092:	48 89 da             	mov    %rbx,%rdx
  402095:	48 83 e2 07          	and    $0x7,%rdx
  402099:	48 83 fa 00          	cmp    $0x0,%rdx
  40209d:	0f 84 82 f7 ff ff    	je     401825 <L.tmp.144>
  4020a3:	e9 99 f8 ff ff       	jmpq   401941 <L.tmp.145>

00000000004020a8 <L.tmp.138>:
  4020a8:	49 83 fe 00          	cmp    $0x0,%r14
  4020ac:	0f 84 aa fc ff ff    	je     401d5c <L.tmp.139>
  4020b2:	e9 40 fa ff ff       	jmpq   401af7 <L.tmp.19>

00000000004020b7 <L.tmp.146>:
  4020b7:	48 83 fa 06          	cmp    $0x6,%rdx
  4020bb:	0f 85 02 fa ff ff    	jne    401ac3 <L.tmp.142>
  4020c1:	e9 96 fb ff ff       	jmpq   401c5c <L.tmp.143>

00000000004020c6 <L.tmp.38>:
  4020c6:	49 83 fe 00          	cmp    $0x0,%r14
  4020ca:	0f 84 27 fc ff ff    	je     401cf7 <L.tmp.39>
  4020d0:	e9 a9 f8 ff ff       	jmpq   40197e <L.tmp.23>

00000000004020d5 <L.tmp.131>:
  4020d5:	49 83 fe 00          	cmp    $0x0,%r14
  4020d9:	74 05                	je     4020e0 <L.tmp.132>
  4020db:	e9 9f f0 ff ff       	jmpq   40117f <L.tmp.63>

00000000004020e0 <L.tmp.132>:
  4020e0:	48 89 4a 07          	mov    %rcx,0x7(%rdx)
  4020e4:	48 89 d0             	mov    %rdx,%rax
  4020e7:	49 83 fe 00          	cmp    $0x0,%r14
  4020eb:	75 02                	jne    4020ef <L.tmp.330>
  4020ed:	ff e4                	jmpq   *%rsp

00000000004020ef <L.tmp.330>:
  4020ef:	4d 89 db             	mov    %r11,%r11
  4020f2:	e9 16 f3 ff ff       	jmpq   40140d <L.tmp.113>

00000000004020f7 <L.tmp.20>:
  4020f7:	48 c7 43 06 08 00 00 	movq   $0x8,0x6(%rbx)
  4020fe:	00 
  4020ff:	48 89 db             	mov    %rbx,%rbx
  402102:	4c 89 e1             	mov    %r12,%rcx
  402105:	49 83 fe 00          	cmp    $0x0,%r14
  402109:	0f 84 de fc ff ff    	je     401ded <L.tmp.21>
  40210f:	e9 29 fa ff ff       	jmpq   401b3d <L.tmp.15>

0000000000402114 <L.tmp.308>:
  402114:	49 83 fe 00          	cmp    $0x0,%r14
  402118:	0f 84 97 f5 ff ff    	je     4016b5 <L.tmp.309>
  40211e:	e9 8b ef ff ff       	jmpq   4010ae <L.tmp.247>

0000000000402123 <L.tmp.231>:
  402123:	49 83 fe 00          	cmp    $0x0,%r14
  402127:	0f 84 b5 fe ff ff    	je     401fe2 <L.tmp.232>
  40212d:	e9 eb f5 ff ff       	jmpq   40171d <L.tmp.212>

0000000000402132 <L.tmp.307>:
  402132:	49 83 fe 00          	cmp    $0x0,%r14
  402136:	74 dc                	je     402114 <L.tmp.308>
  402138:	e9 82 f2 ff ff       	jmpq   4013bf <L.tmp.292>

000000000040213d <L.tmp.49>:
  40213d:	49 83 fe 00          	cmp    $0x0,%r14
  402141:	0f 84 4c fc ff ff    	je     401d93 <L.tmp.50>
  402147:	e9 4b f5 ff ff       	jmpq   401697 <L.tmp.16>

000000000040214c <L.tmp.306>:
  40214c:	49 83 fe 00          	cmp    $0x0,%r14
  402150:	74 e0                	je     402132 <L.tmp.307>
  402152:	e9 ac 03 00 00       	jmpq   402503 <L.tmp.88>

0000000000402157 <L.tmp.297>:
  402157:	49 83 fe 00          	cmp    $0x0,%r14
  40215b:	0f 84 9f fe ff ff    	je     402000 <L.tmp.298>
  402161:	e9 ff f1 ff ff       	jmpq   401365 <L.tmp.206>

0000000000402166 <L.tmp.272>:
  402166:	49 83 fe 00          	cmp    $0x0,%r14
  40216a:	0f 84 af fd ff ff    	je     401f1f <L.tmp.273>
  402170:	e9 4a fd ff ff       	jmpq   401ebf <L.tmp.208>

0000000000402175 <L.tmp.261>:
  402175:	49 83 fe 00          	cmp    $0x0,%r14
  402179:	0f 84 c4 ef ff ff    	je     401143 <L.tmp.262>
  40217f:	e9 c9 fb ff ff       	jmpq   401d4d <L.tmp.61>

0000000000402184 <L.tmp.92>:
  402184:	49 83 fe 00          	cmp    $0x0,%r14
  402188:	0f 84 3f fa ff ff    	je     401bcd <L.tmp.93>
  40218e:	e9 ec fc ff ff       	jmpq   401e7f <L.tmp.18>

0000000000402193 <L.tmp.290>:
  402193:	49 83 fe 00          	cmp    $0x0,%r14
  402197:	0f 84 71 f5 ff ff    	je     40170e <L.tmp.291>
  40219d:	eb 0f                	jmp    4021ae <L.tmp.51>

000000000040219f <L.tmp.265>:
  40219f:	49 83 fe 00          	cmp    $0x0,%r14
  4021a3:	0f 84 f9 fb ff ff    	je     401da2 <L.tmp.266>
  4021a9:	e9 b2 f0 ff ff       	jmpq   401260 <L.tmp.26>

00000000004021ae <L.tmp.51>:
  4021ae:	49 83 fe 00          	cmp    $0x0,%r14
  4021b2:	0f 84 4f f4 ff ff    	je     401607 <L.tmp.52>
  4021b8:	e9 09 ff ff ff       	jmpq   4020c6 <L.tmp.38>

00000000004021bd <L.tmp.248>:
  4021bd:	4c 8b 55 f8          	mov    -0x8(%rbp),%r10
  4021c1:	49 83 fa 08          	cmp    $0x8,%r10
  4021c5:	0f 84 5d f7 ff ff    	je     401928 <L.tmp.300>
  4021cb:	e9 f8 f4 ff ff       	jmpq   4016c8 <L.tmp.301>

00000000004021d0 <L.tmp.302>:
  4021d0:	48 83 fc 06          	cmp    $0x6,%rsp
  4021d4:	0f 85 4f ef ff ff    	jne    401129 <L.tmp.249>
  4021da:	e9 75 f6 ff ff       	jmpq   401854 <L.tmp.250>

00000000004021df <L.tmp.239>:
  4021df:	48 83 fc 06          	cmp    $0x6,%rsp
  4021e3:	0f 85 33 f2 ff ff    	jne    40141c <L.tmp.181>
  4021e9:	e9 7a f5 ff ff       	jmpq   401768 <L.tmp.182>

00000000004021ee <L.tmp.104>:
  4021ee:	4c 8b 41 fe          	mov    -0x2(%rcx),%r8
  4021f2:	ba 78 00 00 00       	mov    $0x78,%edx
  4021f7:	48 89 de             	mov    %rbx,%rsi
  4021fa:	49 83 fe 00          	cmp    $0x0,%r14
  4021fe:	0f 84 87 f5 ff ff    	je     40178b <L.tmp.105>
  402204:	e9 09 03 00 00       	jmpq   402512 <L.tmp.87>

0000000000402209 <L.tmp.255>:
  402209:	49 83 fe 00          	cmp    $0x0,%r14
  40220d:	0f 84 21 fc ff ff    	je     401e34 <L.tmp.256>
  402213:	e9 e7 f4 ff ff       	jmpq   4016ff <L.tmp.225>

0000000000402218 <L.tmp.288>:
  402218:	e9 98 00 00 00       	jmpq   4022b5 <L.tmp.289>

000000000040221d <L.tmp.161>:
  40221d:	ba 0e 00 00 00       	mov    $0xe,%edx
  402222:	e9 b0 ee ff ff       	jmpq   4010d7 <L.tmp.163>

0000000000402227 <L.tmp.116>:
  402227:	49 83 fe 00          	cmp    $0x0,%r14
  40222b:	0f 84 5f f2 ff ff    	je     401490 <L.tmp.117>
  402231:	e9 98 fa ff ff       	jmpq   401cce <L.tmp.7>

0000000000402236 <L.tmp.280>:
  402236:	49 83 fe 00          	cmp    $0x0,%r14
  40223a:	0f 84 cb fb ff ff    	je     401e0b <L.tmp.281>
  402240:	e9 21 ff ff ff       	jmpq   402166 <L.tmp.272>

0000000000402245 <L.tmp.107>:
  402245:	49 83 fe 00          	cmp    $0x0,%r14
  402249:	0f 84 5f 02 00 00    	je     4024ae <L.tmp.108>
  40224f:	e9 a3 f8 ff ff       	jmpq   401af7 <L.tmp.19>

0000000000402254 <L.tmp.254>:
  402254:	49 83 fe 00          	cmp    $0x0,%r14
  402258:	74 af                	je     402209 <L.tmp.255>
  40225a:	e9 47 fc ff ff       	jmpq   401ea6 <L.tmp.165>

000000000040225f <L.tmp.127>:
  40225f:	49 83 fe 00          	cmp    $0x0,%r14
  402263:	0f 84 c9 f6 ff ff    	je     401932 <L.tmp.128>
  402269:	e9 58 fe ff ff       	jmpq   4020c6 <L.tmp.38>

000000000040226e <L.tmp.82>:
  40226e:	49 83 fe 00          	cmp    $0x0,%r14
  402272:	0f 84 8e f6 ff ff    	je     401906 <L.tmp.83>
  402278:	e9 cc 01 00 00       	jmpq   402449 <L.tmp.62>

000000000040227d <L.tmp.119>:
  40227d:	49 83 fe 00          	cmp    $0x0,%r14
  402281:	0f 84 98 f8 ff ff    	je     401b1f <L.tmp.120>
  402287:	e9 fc f3 ff ff       	jmpq   401688 <L.tmp.94>

000000000040228c <L.tmp.154>:
  40228c:	49 83 fe 00          	cmp    $0x0,%r14
  402290:	0f 84 ed fd ff ff    	je     402083 <L.tmp.155>
  402296:	e9 4b fc ff ff       	jmpq   401ee6 <L.tmp.97>

000000000040229b <L.tmp.42>:
  40229b:	49 83 fe 00          	cmp    $0x0,%r14
  40229f:	0f 84 4a f1 ff ff    	je     4013ef <L.tmp.43>
  4022a5:	e9 7b f3 ff ff       	jmpq   401625 <L.tmp.24>

00000000004022aa <L.tmp.279>:
  4022aa:	49 83 fe 00          	cmp    $0x0,%r14
  4022ae:	74 86                	je     402236 <L.tmp.280>
  4022b0:	e9 7a f0 ff ff       	jmpq   40132f <L.tmp.183>

00000000004022b5 <L.tmp.289>:
  4022b5:	49 83 fe 00          	cmp    $0x0,%r14
  4022b9:	0f 84 d4 fe ff ff    	je     402193 <L.tmp.290>
  4022bf:	e9 2b f1 ff ff       	jmpq   4013ef <L.tmp.43>

00000000004022c4 <L.tmp.264>:
  4022c4:	48 8b 7d 28          	mov    0x28(%rbp),%rdi
  4022c8:	49 bf 4b 19 40 00 00 	movabs $0x40194b,%r15
  4022cf:	00 00 00 
  4022d2:	49 83 fe 00          	cmp    $0x0,%r14
  4022d6:	75 02                	jne    4022da <L.tmp.331>
  4022d8:	ff e4                	jmpq   *%rsp

00000000004022da <L.tmp.331>:
  4022da:	4d 89 db             	mov    %r11,%r11
  4022dd:	e9 b5 f0 ff ff       	jmpq   401397 <L.tmp.118>

00000000004022e2 <L.tmp.47>:
  4022e2:	49 83 fe 00          	cmp    $0x0,%r14
  4022e6:	0f 84 79 f6 ff ff    	je     401965 <L.tmp.48>
  4022ec:	e9 a6 f3 ff ff       	jmpq   401697 <L.tmp.16>

00000000004022f1 <L.tmp.253>:
  4022f1:	49 83 fe 00          	cmp    $0x0,%r14
  4022f5:	0f 84 59 ff ff ff    	je     402254 <L.tmp.254>
  4022fb:	eb e5                	jmp    4022e2 <L.tmp.47>

00000000004022fd <L.tmp.130>:
  4022fd:	49 83 fe 00          	cmp    $0x0,%r14
  402301:	0f 84 ce fd ff ff    	je     4020d5 <L.tmp.131>
  402307:	e9 95 f5 ff ff       	jmpq   4018a1 <L.tmp.70>

000000000040230c <L.tmp.69>:
  40230c:	48 c7 46 06 10 00 00 	movq   $0x10,0x6(%rsi)
  402313:	00 
  402314:	48 89 f6             	mov    %rsi,%rsi
  402317:	4c 89 e7             	mov    %r12,%rdi
  40231a:	49 83 fe 00          	cmp    $0x0,%r14
  40231e:	0f 84 7d f5 ff ff    	je     4018a1 <L.tmp.70>
  402324:	e9 cf f2 ff ff       	jmpq   4015f8 <L.tmp.14>

0000000000402329 <L.tmp.257>:
  402329:	48 83 ed 40          	sub    $0x40,%rbp
  40232d:	ba 08 00 00 00       	mov    $0x8,%edx
  402332:	48 8b 75 38          	mov    0x38(%rbp),%rsi
  402336:	49 83 fe 00          	cmp    $0x0,%r14
  40233a:	0f 84 dc ee ff ff    	je     40121c <L.tmp.258>
  402340:	e9 b0 ed ff ff       	jmpq   4010f5 <L.tmp.86>

0000000000402345 <L.tmp.76>:
  402345:	49 83 c4 10          	add    $0x10,%r12
  402349:	48 89 ff             	mov    %rdi,%rdi
  40234c:	48 83 c7 02          	add    $0x2,%rdi
  402350:	49 83 fe 00          	cmp    $0x0,%r14
  402354:	0f 84 2b 01 00 00    	je     402485 <L.tmp.77>
  40235a:	e9 f3 f2 ff ff       	jmpq   401652 <L.tmp.65>

000000000040235f <L.tmp.102>:
  40235f:	49 83 fe 00          	cmp    $0x0,%r14
  402363:	0f 84 a3 ef ff ff    	je     40130c <L.tmp.103>
  402369:	e9 89 f7 ff ff       	jmpq   401af7 <L.tmp.19>

000000000040236e <L.tmp.37>:
  40236e:	49 83 fe 00          	cmp    $0x0,%r14
  402372:	0f 84 4e fd ff ff    	je     4020c6 <L.tmp.38>
  402378:	e9 c5 ee ff ff       	jmpq   401242 <L.tmp.10>

000000000040237d <L.tmp.252>:
  40237d:	49 83 fe 00          	cmp    $0x0,%r14
  402381:	0f 84 6a ff ff ff    	je     4022f1 <L.tmp.253>
  402387:	e9 94 f8 ff ff       	jmpq   401c20 <L.tmp.13>

000000000040238c <L.tmp.251>:
  40238c:	49 83 fe 00          	cmp    $0x0,%r14
  402390:	74 eb                	je     40237d <L.tmp.252>
  402392:	e9 7a f8 ff ff       	jmpq   401c11 <L.tmp.151>

0000000000402397 <L.tmp.271>:
  402397:	48 89 e6             	mov    %rsp,%rsi
  40239a:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  40239e:	49 bf 74 13 40 00 00 	movabs $0x401374,%r15
  4023a5:	00 00 00 
  4023a8:	49 83 fe 00          	cmp    $0x0,%r14
  4023ac:	4c 8b 55 40          	mov    0x40(%rbp),%r10
  4023b0:	75 03                	jne    4023b5 <L.tmp.332>
  4023b2:	41 ff e2             	jmpq   *%r10

00000000004023b5 <L.tmp.332>:
  4023b5:	4d 89 db             	mov    %r11,%r11
  4023b8:	e9 29 ed ff ff       	jmpq   4010e6 <L.tmp.56>

00000000004023bd <L.tmp.274>:
  4023bd:	49 83 fe 00          	cmp    $0x0,%r14
  4023c1:	0f 84 5b f1 ff ff    	je     401522 <L.tmp.275>
  4023c7:	e9 62 f6 ff ff       	jmpq   401a2e <L.tmp.9>

00000000004023cc <L.tmp.80>:
  4023cc:	49 83 fe 00          	cmp    $0x0,%r14
  4023d0:	0f 84 8b fa ff ff    	je     401e61 <L.tmp.81>
  4023d6:	e9 9b 00 00 00       	jmpq   402476 <L.tmp.68>

00000000004023db <L.tmp.137>:
  4023db:	49 83 fe 00          	cmp    $0x0,%r14
  4023df:	0f 84 c3 fc ff ff    	je     4020a8 <L.tmp.138>
  4023e5:	e9 c6 f4 ff ff       	jmpq   4018b0 <L.tmp.106>

00000000004023ea <L.tmp.126>:
  4023ea:	49 83 fe 00          	cmp    $0x0,%r14
  4023ee:	0f 84 6b fe ff ff    	je     40225f <L.tmp.127>
  4023f4:	e9 97 00 00 00       	jmpq   402490 <L.tmp.109>

00000000004023f9 <L.tmp.5>:
  4023f9:	4c 89 fc             	mov    %r15,%rsp
  4023fc:	48 89 fb             	mov    %rdi,%rbx
  4023ff:	48 89 f3             	mov    %rsi,%rbx
  402402:	49 83 fe 00          	cmp    $0x0,%r14
  402406:	0f 84 23 f9 ff ff    	je     401d2f <L.tmp.112>
  40240c:	e9 d1 fe ff ff       	jmpq   4022e2 <L.tmp.47>

0000000000402411 <L.tmp.78>:
  402411:	49 83 fe 00          	cmp    $0x0,%r14
  402415:	74 50                	je     402467 <L.tmp.79>
  402417:	e9 09 f2 ff ff       	jmpq   401625 <L.tmp.24>

000000000040241c <L.tmp.263>:
  40241c:	49 83 fe 00          	cmp    $0x0,%r14
  402420:	0f 84 9e fe ff ff    	je     4022c4 <L.tmp.264>
  402426:	e9 f5 f7 ff ff       	jmpq   401c20 <L.tmp.13>

000000000040242b <L.tmp.270>:
  40242b:	49 83 fe 00          	cmp    $0x0,%r14
  40242f:	0f 84 62 ff ff ff    	je     402397 <L.tmp.271>
  402435:	e9 ab ef ff ff       	jmpq   4013e5 <L.tmp.147>

000000000040243a <L.tmp.75>:
  40243a:	49 83 fe 00          	cmp    $0x0,%r14
  40243e:	0f 84 01 ff ff ff    	je     402345 <L.tmp.76>
  402444:	e9 86 f9 ff ff       	jmpq   401dcf <L.tmp.60>

0000000000402449 <L.tmp.62>:
  402449:	48 89 f6             	mov    %rsi,%rsi
  40244c:	48 83 c6 02          	add    $0x2,%rsi
  402450:	48 c7 46 fe 8e 1e 40 	movq   $0x401e8e,-0x2(%rsi)
  402457:	00 
  402458:	49 83 fe 00          	cmp    $0x0,%r14
  40245c:	0f 84 1d ed ff ff    	je     40117f <L.tmp.63>
  402462:	e9 db ed ff ff       	jmpq   401242 <L.tmp.10>

0000000000402467 <L.tmp.79>:
  402467:	49 83 fe 00          	cmp    $0x0,%r14
  40246b:	0f 84 5b ff ff ff    	je     4023cc <L.tmp.80>
  402471:	e9 99 fb ff ff       	jmpq   40200f <L.tmp.31>

0000000000402476 <L.tmp.68>:
  402476:	49 83 fe 00          	cmp    $0x0,%r14
  40247a:	0f 84 8c fe ff ff    	je     40230c <L.tmp.69>
  402480:	e9 fa f9 ff ff       	jmpq   401e7f <L.tmp.18>

0000000000402485 <L.tmp.77>:
  402485:	49 83 fe 00          	cmp    $0x0,%r14
  402489:	74 86                	je     402411 <L.tmp.78>
  40248b:	e9 5d f9 ff ff       	jmpq   401ded <L.tmp.21>

0000000000402490 <L.tmp.109>:
  402490:	49 83 fe 00          	cmp    $0x0,%r14
  402494:	0f 84 26 f1 ff ff    	je     4015c0 <L.tmp.110>
  40249a:	e9 e5 fc ff ff       	jmpq   402184 <L.tmp.92>

000000000040249f <L.tmp.136>:
  40249f:	49 83 fe 00          	cmp    $0x0,%r14
  4024a3:	0f 84 32 ff ff ff    	je     4023db <L.tmp.137>
  4024a9:	e9 0a f3 ff ff       	jmpq   4017b8 <L.tmp.34>

00000000004024ae <L.tmp.108>:
  4024ae:	49 83 fe 00          	cmp    $0x0,%r14
  4024b2:	74 dc                	je     402490 <L.tmp.109>
  4024b4:	e9 2d fa ff ff       	jmpq   401ee6 <L.tmp.97>

00000000004024b9 <L.tmp.67>:
  4024b9:	49 83 fe 00          	cmp    $0x0,%r14
  4024bd:	74 b7                	je     402476 <L.tmp.68>
  4024bf:	e9 94 eb ff ff       	jmpq   401058 <L.tmp.45>

00000000004024c4 <L.tmp.100>:
  4024c4:	49 83 fe 00          	cmp    $0x0,%r14
  4024c8:	0f 84 e2 f9 ff ff    	je     401eb0 <L.tmp.101>
  4024ce:	e9 5b f6 ff ff       	jmpq   401b2e <L.tmp.73>

00000000004024d3 <L.tmp.99>:
  4024d3:	49 83 fe 00          	cmp    $0x0,%r14
  4024d7:	74 eb                	je     4024c4 <L.tmp.100>
  4024d9:	e9 ce ec ff ff       	jmpq   4011ac <L.tmp.22>

00000000004024de <L.tmp.98>:
  4024de:	49 83 fe 00          	cmp    $0x0,%r14
  4024e2:	74 ef                	je     4024d3 <L.tmp.99>
  4024e4:	e9 8d fa ff ff       	jmpq   401f76 <L.tmp.89>

00000000004024e9 <L.tmp.91>:
  4024e9:	49 83 fe 00          	cmp    $0x0,%r14
  4024ed:	0f 84 91 fc ff ff    	je     402184 <L.tmp.92>
  4024f3:	e9 da f1 ff ff       	jmpq   4016d2 <L.tmp.71>

00000000004024f8 <L.tmp.135>:
  4024f8:	49 83 fe 00          	cmp    $0x0,%r14
  4024fc:	74 a1                	je     40249f <L.tmp.136>
  4024fe:	e9 04 f1 ff ff       	jmpq   401607 <L.tmp.52>

0000000000402503 <L.tmp.88>:
  402503:	49 83 fe 00          	cmp    $0x0,%r14
  402507:	0f 84 69 fa ff ff    	je     401f76 <L.tmp.89>
  40250d:	e9 bd f8 ff ff       	jmpq   401dcf <L.tmp.60>

0000000000402512 <L.tmp.87>:
  402512:	49 83 fe 00          	cmp    $0x0,%r14
  402516:	74 eb                	je     402503 <L.tmp.88>
  402518:	e9 d2 ee ff ff       	jmpq   4013ef <L.tmp.43>
  40251d:	eb 00                	jmp    40251f <done>

000000000040251f <done>:
  40251f:	48 89 c0             	mov    %rax,%rax
  402522:	48 89 ec             	mov    %rbp,%rsp
  402525:	49 bd 60 28 40 00 00 	movabs $0x402860,%r13
  40252c:	00 00 00 

000000000040252f <printer>:
  40252f:	49 89 c2             	mov    %rax,%r10
  402532:	49 83 e2 07          	and    $0x7,%r10
  402536:	49 83 fa 00          	cmp    $0x0,%r10
  40253a:	0f 84 a5 02 00 00    	je     4027e5 <fixnum_to_string>
  402540:	49 89 c2             	mov    %rax,%r10
  402543:	49 83 e2 07          	and    $0x7,%r10
  402547:	49 83 fa 01          	cmp    $0x1,%r10
  40254b:	0f 84 59 01 00 00    	je     4026aa <print_pair>
  402551:	49 89 c2             	mov    %rax,%r10
  402554:	49 83 e2 07          	and    $0x7,%r10
  402558:	49 83 fa 03          	cmp    $0x3,%r10
  40255c:	0f 84 89 00 00 00    	je     4025eb <print_vector>
  402562:	49 89 c2             	mov    %rax,%r10
  402565:	49 83 e2 07          	and    $0x7,%r10
  402569:	49 83 fa 02          	cmp    $0x2,%r10
  40256d:	0f 84 23 01 00 00    	je     402696 <print_procedure>
  402573:	49 89 c2             	mov    %rax,%r10
  402576:	49 81 e2 f7 00 00 00 	and    $0xf7,%r10
  40257d:	49 83 fa 06          	cmp    $0x6,%r10
  402581:	0f 84 e9 01 00 00    	je     402770 <boolean_to_string>
  402587:	49 89 c2             	mov    %rax,%r10
  40258a:	49 81 e2 ff 00 00 00 	and    $0xff,%r10
  402591:	49 83 fa 1e          	cmp    $0x1e,%r10
  402595:	0f 84 07 02 00 00    	je     4027a2 <void_to_string>
  40259b:	49 89 c2             	mov    %rax,%r10
  40259e:	49 81 e2 ff 00 00 00 	and    $0xff,%r10
  4025a5:	49 83 fa 16          	cmp    $0x16,%r10
  4025a9:	0f 84 07 02 00 00    	je     4027b6 <empty_to_string>
  4025af:	49 89 c2             	mov    %rax,%r10
  4025b2:	49 81 e2 ff 00 00 00 	and    $0xff,%r10
  4025b9:	49 83 fa 2e          	cmp    $0x2e,%r10
  4025bd:	0f 84 07 02 00 00    	je     4027ca <ascii_to_string>
  4025c3:	49 89 c2             	mov    %rax,%r10
  4025c6:	49 81 e2 ff 00 00 00 	and    $0xff,%r10
  4025cd:	49 83 fa 3e          	cmp    $0x3e,%r10
  4025d1:	0f 84 6d 01 00 00    	je     402744 <error_to_string>

00000000004025d7 <invalid_to_string>:
  4025d7:	48 be 01 30 40 00 00 	movabs $0x403001,%rsi
  4025de:	00 00 00 
  4025e1:	ba 15 00 00 00       	mov    $0x15,%edx
  4025e6:	e9 66 02 00 00       	jmpq   402851 <print_msg>

00000000004025eb <print_vector>:
  4025eb:	49 89 c2             	mov    %rax,%r10
  4025ee:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  4025f5:	00 00 00 
  4025f8:	c6 06 23             	movb   $0x23,(%rsi)
  4025fb:	c6 46 01 28          	movb   $0x28,0x1(%rsi)
  4025ff:	ba 02 00 00 00       	mov    $0x2,%edx
  402604:	b8 01 00 00 00       	mov    $0x1,%eax
  402609:	bf 01 00 00 00       	mov    $0x1,%edi
  40260e:	0f 05                	syscall 
  402610:	49 83 ea 03          	sub    $0x3,%r10
  402614:	4d 8b 0a             	mov    (%r10),%r9
  402617:	49 83 c2 08          	add    $0x8,%r10
  40261b:	49 c1 f9 03          	sar    $0x3,%r9
  40261f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402625:	4d 39 c1             	cmp    %r8,%r9
  402628:	74 4b                	je     402675 <finish_vector>

000000000040262a <print_vector.loop>:
  40262a:	4b 8b 04 c2          	mov    (%r10,%r8,8),%rax
  40262e:	41 55                	push   %r13
  402630:	41 52                	push   %r10
  402632:	41 50                	push   %r8
  402634:	41 51                	push   %r9
  402636:	49 bd 45 26 40 00 00 	movabs $0x402645,%r13
  40263d:	00 00 00 
  402640:	e9 ea fe ff ff       	jmpq   40252f <printer>

0000000000402645 <print_vector.loop_return>:
  402645:	41 59                	pop    %r9
  402647:	41 58                	pop    %r8
  402649:	41 5a                	pop    %r10
  40264b:	41 5d                	pop    %r13
  40264d:	49 ff c0             	inc    %r8
  402650:	4d 39 c1             	cmp    %r8,%r9
  402653:	74 20                	je     402675 <finish_vector>
  402655:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  40265c:	00 00 00 
  40265f:	c6 06 20             	movb   $0x20,(%rsi)
  402662:	ba 01 00 00 00       	mov    $0x1,%edx
  402667:	b8 01 00 00 00       	mov    $0x1,%eax
  40266c:	bf 01 00 00 00       	mov    $0x1,%edi
  402671:	0f 05                	syscall 
  402673:	eb b5                	jmp    40262a <print_vector.loop>

0000000000402675 <finish_vector>:
  402675:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  40267c:	00 00 00 
  40267f:	c6 06 29             	movb   $0x29,(%rsi)
  402682:	ba 01 00 00 00       	mov    $0x1,%edx
  402687:	b8 01 00 00 00       	mov    $0x1,%eax
  40268c:	bf 01 00 00 00       	mov    $0x1,%edi
  402691:	0f 05                	syscall 
  402693:	41 ff e5             	jmpq   *%r13

0000000000402696 <print_procedure>:
  402696:	48 be 3c 30 40 00 00 	movabs $0x40303c,%rsi
  40269d:	00 00 00 
  4026a0:	ba 0c 00 00 00       	mov    $0xc,%edx
  4026a5:	e9 a7 01 00 00       	jmpq   402851 <print_msg>

00000000004026aa <print_pair>:
  4026aa:	49 89 c2             	mov    %rax,%r10
  4026ad:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  4026b4:	00 00 00 
  4026b7:	c6 06 28             	movb   $0x28,(%rsi)
  4026ba:	ba 01 00 00 00       	mov    $0x1,%edx
  4026bf:	b8 01 00 00 00       	mov    $0x1,%eax
  4026c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c9:	0f 05                	syscall 
  4026cb:	41 55                	push   %r13
  4026cd:	41 52                	push   %r10
  4026cf:	49 bd e2 26 40 00 00 	movabs $0x4026e2,%r13
  4026d6:	00 00 00 
  4026d9:	49 8b 42 ff          	mov    -0x1(%r10),%rax
  4026dd:	e9 4d fe ff ff       	jmpq   40252f <printer>

00000000004026e2 <print_second_element>:
  4026e2:	41 5a                	pop    %r10
  4026e4:	41 5d                	pop    %r13
  4026e6:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  4026ed:	00 00 00 
  4026f0:	c6 06 20             	movb   $0x20,(%rsi)
  4026f3:	c6 46 01 2e          	movb   $0x2e,0x1(%rsi)
  4026f7:	c6 46 02 20          	movb   $0x20,0x2(%rsi)
  4026fb:	ba 03 00 00 00       	mov    $0x3,%edx
  402700:	b8 01 00 00 00       	mov    $0x1,%eax
  402705:	bf 01 00 00 00       	mov    $0x1,%edi
  40270a:	0f 05                	syscall 
  40270c:	49 8b 42 07          	mov    0x7(%r10),%rax
  402710:	41 55                	push   %r13
  402712:	49 bd 21 27 40 00 00 	movabs $0x402721,%r13
  402719:	00 00 00 
  40271c:	e9 0e fe ff ff       	jmpq   40252f <printer>

0000000000402721 <print_final_paren>:
  402721:	41 5d                	pop    %r13
  402723:	48 be 48 30 40 00 00 	movabs $0x403048,%rsi
  40272a:	00 00 00 
  40272d:	c6 06 29             	movb   $0x29,(%rsi)
  402730:	ba 01 00 00 00       	mov    $0x1,%edx
  402735:	b8 01 00 00 00       	mov    $0x1,%eax
  40273a:	bf 01 00 00 00       	mov    $0x1,%edi
  40273f:	0f 05                	syscall 
  402741:	41 ff e5             	jmpq   *%r13

0000000000402744 <error_to_string>:
  402744:	48 c1 f8 08          	sar    $0x8,%rax
  402748:	49 89 c2             	mov    %rax,%r10
  40274b:	48 be 1f 30 40 00 00 	movabs $0x40301f,%rsi
  402752:	00 00 00 
  402755:	ba 1d 00 00 00       	mov    $0x1d,%edx
  40275a:	b8 01 00 00 00       	mov    $0x1,%eax
  40275f:	bf 02 00 00 00       	mov    $0x2,%edi
  402764:	0f 05                	syscall 
  402766:	b8 3c 00 00 00       	mov    $0x3c,%eax
  40276b:	4c 89 d7             	mov    %r10,%rdi
  40276e:	0f 05                	syscall 

0000000000402770 <boolean_to_string>:
  402770:	48 83 f0 06          	xor    $0x6,%rax
  402774:	48 83 f8 00          	cmp    $0x0,%rax
  402778:	74 14                	je     40278e <false_to_string>
  40277a:	48 be 16 30 40 00 00 	movabs $0x403016,%rsi
  402781:	00 00 00 
  402784:	ba 02 00 00 00       	mov    $0x2,%edx
  402789:	e9 c3 00 00 00       	jmpq   402851 <print_msg>

000000000040278e <false_to_string>:
  40278e:	48 be 18 30 40 00 00 	movabs $0x403018,%rsi
  402795:	00 00 00 
  402798:	ba 02 00 00 00       	mov    $0x2,%edx
  40279d:	e9 af 00 00 00       	jmpq   402851 <print_msg>

00000000004027a2 <void_to_string>:
  4027a2:	48 be 1c 30 40 00 00 	movabs $0x40301c,%rsi
  4027a9:	00 00 00 
  4027ac:	ba 00 00 00 00       	mov    $0x0,%edx
  4027b1:	e9 9b 00 00 00       	jmpq   402851 <print_msg>

00000000004027b6 <empty_to_string>:
  4027b6:	48 be 1a 30 40 00 00 	movabs $0x40301a,%rsi
  4027bd:	00 00 00 
  4027c0:	ba 02 00 00 00       	mov    $0x2,%edx
  4027c5:	e9 87 00 00 00       	jmpq   402851 <print_msg>

00000000004027ca <ascii_to_string>:
  4027ca:	48 c1 f8 08          	sar    $0x8,%rax
  4027ce:	48 be 1c 30 40 00 00 	movabs $0x40301c,%rsi
  4027d5:	00 00 00 
  4027d8:	48 89 c2             	mov    %rax,%rdx
  4027db:	88 56 02             	mov    %dl,0x2(%rsi)
  4027de:	ba 03 00 00 00       	mov    $0x3,%edx
  4027e3:	eb 6c                	jmp    402851 <print_msg>

00000000004027e5 <fixnum_to_string>:
  4027e5:	48 c1 f8 03          	sar    $0x3,%rax
  4027e9:	bf 00 00 00 00       	mov    $0x0,%edi
  4027ee:	41 bc 0a 00 00 00    	mov    $0xa,%r12d
  4027f4:	48 be 50 30 40 00 00 	movabs $0x403050,%rsi
  4027fb:	00 00 00 
  4027fe:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  402804:	48 83 f8 00          	cmp    $0x0,%rax
  402808:	78 62                	js     40286c <neg>

000000000040280a <loop>:
  40280a:	ba 00 00 00 00       	mov    $0x0,%edx
  40280f:	49 f7 fc             	idiv   %r12
  402812:	48 83 c2 30          	add    $0x30,%rdx
  402816:	88 14 3e             	mov    %dl,(%rsi,%rdi,1)
  402819:	48 ff c7             	inc    %rdi
  40281c:	48 83 f8 00          	cmp    $0x0,%rax
  402820:	75 e8                	jne    40280a <loop>
  402822:	49 83 ff 00          	cmp    $0x0,%r15
  402826:	7c 51                	jl     402879 <add_minus>

0000000000402828 <reverse_msg>:
  402828:	48 89 fa             	mov    %rdi,%rdx
  40282b:	48 ff cf             	dec    %rdi
  40282e:	41 b9 00 00 00 00    	mov    $0x0,%r9d

0000000000402834 <rev_loop>:
  402834:	4c 39 cf             	cmp    %r9,%rdi
  402837:	7e 18                	jle    402851 <print_msg>
  402839:	44 8a 04 3e          	mov    (%rsi,%rdi,1),%r8b
  40283d:	46 8a 14 0e          	mov    (%rsi,%r9,1),%r10b
  402841:	44 88 14 3e          	mov    %r10b,(%rsi,%rdi,1)
  402845:	46 88 04 0e          	mov    %r8b,(%rsi,%r9,1)
  402849:	49 ff c1             	inc    %r9
  40284c:	48 ff cf             	dec    %rdi
  40284f:	eb e3                	jmp    402834 <rev_loop>

0000000000402851 <print_msg>:
  402851:	b8 01 00 00 00       	mov    $0x1,%eax
  402856:	bf 01 00 00 00       	mov    $0x1,%edi
  40285b:	0f 05                	syscall 
  40285d:	41 ff e5             	jmpq   *%r13

0000000000402860 <exit>:
  402860:	b8 3c 00 00 00       	mov    $0x3c,%eax
  402865:	bf 00 00 00 00       	mov    $0x0,%edi
  40286a:	0f 05                	syscall 

000000000040286c <neg>:
  40286c:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
  402873:	48 6b c0 ff          	imul   $0xffffffffffffffff,%rax,%rax
  402877:	eb 91                	jmp    40280a <loop>

0000000000402879 <add_minus>:
  402879:	c6 04 3e 2d          	movb   $0x2d,(%rsi,%rdi,1)
  40287d:	48 ff c7             	inc    %rdi
  402880:	eb a6                	jmp    402828 <reverse_msg>

Disassembly of section .data:

0000000000403000 <dummy>:
	...

0000000000403001 <invalid_msg>:
  403001:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  403003:	76 61                	jbe    403066 <fixnum_msg+0x16>
  403005:	6c                   	insb   (%dx),%es:(%rdi)
  403006:	69 64 20 64 61 74 61 	imul   $0x20617461,0x64(%rax,%riz,1),%esp
  40300d:	20 
  40300e:	72 65                	jb     403075 <_end+0xd>
  403010:	74 75                	je     403087 <_end+0x1f>
  403012:	72 6e                	jb     403082 <_end+0x1a>
  403014:	65 64        	gs and %fs:0x66(%rbx,%riz,1),%esi

0000000000403016 <true_msg>:
  403016:	23 74            	and    0x66(%rbx,%riz,1),%esi

0000000000403018 <false_msg>:
  403018:	23 66              	and    0x28(%rsi),%esp

000000000040301a <empty_msg>:
  40301a:	28 29                	sub    %ch,(%rcx)

000000000040301c <ascii_char_msg>:
  40301c:	23 5c 20           	and    0x52(%rax,%riz,1),%ebx

000000000040301f <error_msg>:
  40301f:	52                   	push   %rdx
  403020:	75 6e                	jne    403090 <_end+0x28>
  403022:	2d 74 69 6d 65       	sub    $0x656d6974,%eax
  403027:	20 65 72             	and    %ah,0x72(%rbp)
  40302a:	72 6f                	jb     40309b <_end+0x33>
  40302c:	72 3b                	jb     403069 <_end+0x1>
  40302e:	20 73 65             	and    %dh,0x65(%rbx)
  403031:	65 20 65 78          	and    %ah,%gs:0x78(%rbp)
  403035:	69 74 20 63 6f 64 65 	imul   $0x2365646f,0x63(%rax,%riz,1),%esi
  40303c:	 

000000000040303c <procedure_msg>:
  40303c:	23 3c 70             	and    (%rax,%rsi,2),%edi
  40303f:	72 6f                	jb     4030b0 <_end+0x48>
  403041:	63 65 64             	movslq 0x64(%rbp),%esp
  403044:	75 72                	jne    4030b8 <_end+0x50>
  403046:	65                   	gs
  403047:	3e                   	ds

Disassembly of section .bss:

0000000000403048 <__bss_start>:
	...

0000000000403050 <fixnum_msg>:
	...
