
mov:     file format elf32-i386


Disassembly of section .plt:

08049000 <.plt>:
 8049000:	ff 35 04 d0 04 08    	pushl  0x804d004
 8049006:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804900c:	00 00                	add    %al,(%eax)
	...

08049010 <printf@plt>:
 8049010:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049016:	68 00 00 00 00       	push   $0x0
 804901b:	e9 e0 ff ff ff       	jmp    8049000 <.plt>

08049020 <exit@plt>:
 8049020:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049026:	68 08 00 00 00       	push   $0x8
 804902b:	e9 d0 ff ff ff       	jmp    8049000 <.plt>

08049030 <sigaction@plt>:
 8049030:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049036:	68 10 00 00 00       	push   $0x10
 804903b:	e9 c0 ff ff ff       	jmp    8049000 <.plt>

08049040 <dispatch>:
 8049040:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 8049046:	ff 25 d4 61 5f 08    	jmp    *0x85f61d4

Disassembly of section .text:

0804904c <_start>:
 804904c:	89 25 40 61 3f 08    	mov    %esp,0x83f6140
 8049052:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 8049058:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 804905f:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 8049066:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 804906d:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 8049074:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 804907b:	c7 44 24 04 e4 61 5f 	movl   $0x85f61e4,0x4(%esp)
 8049082:	08 
 8049083:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804908a:	00 
 804908b:	e8 a0 ff ff ff       	call   8049030 <sigaction@plt>
 8049090:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 8049096:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 804909d:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 80490a4:	8b a4 24 98 ff df ff 	mov    -0x200068(%esp),%esp
 80490ab:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 80490b2:	c7 44 24 04 70 62 5f 	movl   $0x85f6270,0x4(%esp)
 80490b9:	08 
 80490ba:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80490c1:	00 
 80490c2:	e8 69 ff ff ff       	call   8049030 <sigaction@plt>

080490c7 <_start0>:
 80490c7:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 80490cd:	a1 5c 61 3f 08       	mov    0x83f615c,%eax
 80490d2:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 80490d9:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 80490df:	c7 05 5c 61 3f 08 00 	movl   $0x0,0x83f615c
 80490e6:	00 00 00 
 80490e9:	a1 40 61 3f 08       	mov    0x83f6140,%eax
 80490ee:	ba 04 00 00 00       	mov    $0x4,%edx
 80490f3:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 80490f8:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 80490fe:	b8 00 00 00 00       	mov    $0x0,%eax
 8049103:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049108:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 804910f:	00 00 00 
 8049112:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 8049118:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 804911f:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 8049126:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049129:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049130:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 8049137:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804913a:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 8049141:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 8049147:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 804914d:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 8049154:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804915b:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804915e:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049165:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804916c:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804916f:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 8049176:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804917c:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 8049181:	89 c0                	mov    %eax,%eax
 8049183:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049188:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804918d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049193:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049198:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804919f:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 80491a5:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80491ab:	89 10                	mov    %edx,(%eax)
 80491ad:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 80491b2:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80491b8:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80491bd:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80491c4:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 80491ca:	89 10                	mov    %edx,(%eax)
 80491cc:	a1 40 61 3f 08       	mov    0x83f6140,%eax
 80491d1:	8b 00                	mov    (%eax),%eax
 80491d3:	89 c0                	mov    %eax,%eax
 80491d5:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 80491da:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 80491df:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80491e5:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80491ea:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80491f1:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 80491f7:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80491fd:	89 10                	mov    %edx,(%eax)
 80491ff:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049204:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804920a:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804920f:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049216:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804921c:	89 10                	mov    %edx,(%eax)
 804921e:	b8 49 93 04 88       	mov    $0x88049349,%eax
 8049223:	89 c0                	mov    %eax,%eax
 8049225:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804922a:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804922f:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049235:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804923a:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049241:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049247:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804924d:	89 10                	mov    %edx,(%eax)
 804924f:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049254:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804925a:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804925f:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049266:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804926c:	89 10                	mov    %edx,(%eax)
 804926e:	b8 ca 95 04 88       	mov    $0x880495ca,%eax
 8049273:	a3 00 61 1f 08       	mov    %eax,0x81f6100
 8049278:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804927d:	8b 04 85 60 61 3f 08 	mov    0x83f6160(,%eax,4),%eax
 8049284:	8b 15 00 61 1f 08    	mov    0x81f6100,%edx
 804928a:	89 10                	mov    %edx,(%eax)
 804928c:	8b 0d 58 61 3f 08    	mov    0x83f6158,%ecx
 8049292:	c7 05 74 61 3f 08 90 	movl   $0x85f6190,0x83f6174
 8049299:	61 5f 08 
 804929c:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80492a3:	8b 15 40 d0 04 08    	mov    0x804d040,%edx
 80492a9:	89 10                	mov    %edx,(%eax)
 80492ab:	8b 15 44 d0 04 08    	mov    0x804d044,%edx
 80492b1:	89 50 04             	mov    %edx,0x4(%eax)
 80492b4:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 80492ba:	89 50 08             	mov    %edx,0x8(%eax)
 80492bd:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 80492c3:	89 50 0c             	mov    %edx,0xc(%eax)
 80492c6:	c7 05 74 61 3f 08 a0 	movl   $0x85f61a0,0x83f6174
 80492cd:	61 5f 08 
 80492d0:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80492d7:	8b 15 50 d0 04 08    	mov    0x804d050,%edx
 80492dd:	89 10                	mov    %edx,(%eax)
 80492df:	8b 15 54 d0 04 08    	mov    0x804d054,%edx
 80492e5:	89 50 04             	mov    %edx,0x4(%eax)
 80492e8:	8b 15 58 d0 04 08    	mov    0x804d058,%edx
 80492ee:	89 50 08             	mov    %edx,0x8(%eax)
 80492f1:	c7 05 74 61 3f 08 ac 	movl   $0x85f61ac,0x83f6174
 80492f8:	61 5f 08 
 80492fb:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049302:	8b 15 60 d0 04 08    	mov    0x804d060,%edx
 8049308:	89 10                	mov    %edx,(%eax)
 804930a:	8b 15 64 d0 04 08    	mov    0x804d064,%edx
 8049310:	89 50 04             	mov    %edx,0x4(%eax)
 8049313:	8b 15 68 d0 04 08    	mov    0x804d068,%edx
 8049319:	89 50 08             	mov    %edx,0x8(%eax)
 804931c:	8b 15 6c d0 04 08    	mov    0x804d06c,%edx
 8049322:	89 50 0c             	mov    %edx,0xc(%eax)
 8049325:	8b 15 70 d0 04 08    	mov    0x804d070,%edx
 804932b:	89 50 10             	mov    %edx,0x10(%eax)
 804932e:	8b 15 74 d0 04 08    	mov    0x804d074,%edx
 8049334:	89 50 14             	mov    %edx,0x14(%eax)
 8049337:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804933c:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 8049343:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049349:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 804934e:	ba 49 93 04 88       	mov    $0x88049349,%edx
 8049353:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 8049358:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804935e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049363:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049368:	ba 00 00 00 00       	mov    $0x0,%edx
 804936d:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 8049372:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 8049379:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 804937f:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 8049382:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 8049388:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804938d:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 8049394:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804939a:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804939d:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 80493a3:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 80493a8:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 80493af:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 80493b5:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 80493b8:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 80493be:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 80493c3:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 80493ca:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 80493d0:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 80493d3:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 80493d9:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 80493de:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 80493e4:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 80493eb:	8b 04 90             	mov    (%eax,%edx,4),%eax
 80493ee:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 80493f3:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 80493f8:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 80493fe:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 8049405:	8b 04 90             	mov    (%eax,%edx,4),%eax
 8049408:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804940d:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 8049412:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 8049418:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804941f:	8b 04 90             	mov    (%eax,%edx,4),%eax
 8049422:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 8049427:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804942c:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 8049431:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 8049437:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 804943e:	d0 04 08 
 8049441:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049448:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 804944e:	89 10                	mov    %edx,(%eax)
 8049450:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 8049457:	d0 04 08 
 804945a:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049461:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 8049467:	89 10                	mov    %edx,(%eax)
 8049469:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 8049470:	d0 04 08 
 8049473:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804947a:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 8049480:	89 10                	mov    %edx,(%eax)
 8049482:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 8049489:	d0 04 08 
 804948c:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049493:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 8049499:	89 10                	mov    %edx,(%eax)
 804949b:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 80494a2:	d0 04 08 
 80494a5:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80494ac:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 80494b2:	89 10                	mov    %edx,(%eax)
 80494b4:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 80494bb:	d0 04 08 
 80494be:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80494c5:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 80494cb:	89 10                	mov    %edx,(%eax)
 80494cd:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 80494d4:	d0 04 08 
 80494d7:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80494de:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 80494e4:	89 10                	mov    %edx,(%eax)
 80494e6:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 80494ed:	d0 04 08 
 80494f0:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80494f7:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 80494fd:	89 10                	mov    %edx,(%eax)
 80494ff:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 8049505:	89 50 04             	mov    %edx,0x4(%eax)
 8049508:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 804950f:	d0 04 08 
 8049512:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049519:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 804951f:	89 10                	mov    %edx,(%eax)
 8049521:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 8049527:	89 50 04             	mov    %edx,0x4(%eax)
 804952a:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 8049531:	d0 04 08 
 8049534:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804953b:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 8049541:	89 10                	mov    %edx,(%eax)
 8049543:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 8049549:	89 50 04             	mov    %edx,0x4(%eax)
 804954c:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 8049551:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 8049558:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804955e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049563:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049568:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804956d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049573:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049578:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804957f:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049585:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804958b:	89 10                	mov    %edx,(%eax)
 804958d:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049592:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049598:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804959d:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80495a4:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 80495aa:	89 10                	mov    %edx,(%eax)
 80495ac:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 80495b2:	c7 05 d4 61 5f 08 20 	movl   $0x8049020,0x85f61d4
 80495b9:	90 04 08 
 80495bc:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 80495c1:	8b 04 85 d8 61 5f 08 	mov    0x85f61d8(,%eax,4),%eax
 80495c8:	8b 00                	mov    (%eax),%eax

080495ca <main>:
 80495ca:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 80495cf:	ba ca 95 04 88       	mov    $0x880495ca,%edx
 80495d4:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 80495d9:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 80495df:	b8 00 00 00 00       	mov    $0x0,%eax
 80495e4:	b9 00 00 00 00       	mov    $0x0,%ecx
 80495e9:	ba 00 00 00 00       	mov    $0x0,%edx
 80495ee:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 80495f3:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 80495fa:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 8049600:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 8049603:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 8049609:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804960e:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 8049615:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804961b:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804961e:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 8049624:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 8049629:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 8049630:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 8049636:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 8049639:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 804963f:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 8049644:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804964b:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 8049651:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 8049654:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 804965a:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804965f:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 8049665:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804966c:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804966f:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 8049674:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 8049679:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 804967f:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 8049686:	8b 04 90             	mov    (%eax,%edx,4),%eax
 8049689:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804968e:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 8049693:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 8049699:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 80496a0:	8b 04 90             	mov    (%eax,%edx,4),%eax
 80496a3:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 80496a8:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 80496ad:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 80496b2:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 80496b8:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 80496bf:	d0 04 08 
 80496c2:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80496c9:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 80496cf:	89 10                	mov    %edx,(%eax)
 80496d1:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 80496d8:	d0 04 08 
 80496db:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80496e2:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 80496e8:	89 10                	mov    %edx,(%eax)
 80496ea:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 80496f1:	d0 04 08 
 80496f4:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80496fb:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 8049701:	89 10                	mov    %edx,(%eax)
 8049703:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 804970a:	d0 04 08 
 804970d:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049714:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 804971a:	89 10                	mov    %edx,(%eax)
 804971c:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 8049723:	d0 04 08 
 8049726:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804972d:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 8049733:	89 10                	mov    %edx,(%eax)
 8049735:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 804973c:	d0 04 08 
 804973f:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049746:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 804974c:	89 10                	mov    %edx,(%eax)
 804974e:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 8049755:	d0 04 08 
 8049758:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804975f:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 8049765:	89 10                	mov    %edx,(%eax)
 8049767:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 804976e:	d0 04 08 
 8049771:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 8049778:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 804977e:	89 10                	mov    %edx,(%eax)
 8049780:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 8049786:	89 50 04             	mov    %edx,0x4(%eax)
 8049789:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 8049790:	d0 04 08 
 8049793:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804979a:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 80497a0:	89 10                	mov    %edx,(%eax)
 80497a2:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 80497a8:	89 50 04             	mov    %edx,0x4(%eax)
 80497ab:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 80497b2:	d0 04 08 
 80497b5:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 80497bc:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 80497c2:	89 10                	mov    %edx,(%eax)
 80497c4:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 80497ca:	89 50 04             	mov    %edx,0x4(%eax)
 80497cd:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 80497d2:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 80497d9:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 80497df:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 80497e4:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 80497e9:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 80497ee:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80497f4:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80497f9:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049800:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049806:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804980c:	89 10                	mov    %edx,(%eax)
 804980e:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049813:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049819:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804981e:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049825:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804982b:	89 10                	mov    %edx,(%eax)
 804982d:	a1 44 d0 04 08       	mov    0x804d044,%eax
 8049832:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049837:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804983c:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049842:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049847:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804984e:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049854:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804985a:	89 10                	mov    %edx,(%eax)
 804985c:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049861:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049867:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804986c:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049873:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049879:	89 10                	mov    %edx,(%eax)
 804987b:	a1 48 d0 04 08       	mov    0x804d048,%eax
 8049880:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049885:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804988a:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049890:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049895:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804989c:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 80498a2:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80498a8:	89 10                	mov    %edx,(%eax)
 80498aa:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 80498af:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80498b5:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80498ba:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80498c1:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 80498c7:	89 10                	mov    %edx,(%eax)
 80498c9:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 80498ce:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 80498d3:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 80498d8:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80498de:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80498e3:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80498ea:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 80498f0:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80498f6:	89 10                	mov    %edx,(%eax)
 80498f8:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 80498fd:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049903:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049908:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804990f:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049915:	89 10                	mov    %edx,(%eax)
 8049917:	a1 54 d0 04 08       	mov    0x804d054,%eax
 804991c:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049921:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049926:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804992c:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049931:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049938:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804993e:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049944:	89 10                	mov    %edx,(%eax)
 8049946:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804994b:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049951:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049956:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804995d:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049963:	89 10                	mov    %edx,(%eax)
 8049965:	a1 58 d0 04 08       	mov    0x804d058,%eax
 804996a:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804996f:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049974:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804997a:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804997f:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049986:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804998c:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049992:	89 10                	mov    %edx,(%eax)
 8049994:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049999:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804999f:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80499a4:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80499ab:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 80499b1:	89 10                	mov    %edx,(%eax)
 80499b3:	a1 68 d0 04 08       	mov    0x804d068,%eax
 80499b8:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 80499bd:	a1 6c d0 04 08       	mov    0x804d06c,%eax
 80499c2:	a3 14 61 1f 08       	mov    %eax,0x81f6114
 80499c7:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 80499cc:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80499d2:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 80499d7:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 80499de:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 80499e4:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80499ea:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 80499f0:	89 10                	mov    %edx,(%eax)
 80499f2:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 80499f7:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 80499fd:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049a02:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049a09:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049a0f:	89 10                	mov    %edx,(%eax)
 8049a11:	8b 15 14 61 1f 08    	mov    0x81f6114,%edx
 8049a17:	89 50 04             	mov    %edx,0x4(%eax)
 8049a1a:	a1 70 d0 04 08       	mov    0x804d070,%eax
 8049a1f:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049a24:	a1 74 d0 04 08       	mov    0x804d074,%eax
 8049a29:	a3 14 61 1f 08       	mov    %eax,0x81f6114
 8049a2e:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049a33:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049a39:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049a3e:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049a45:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049a4b:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049a51:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049a57:	89 10                	mov    %edx,(%eax)
 8049a59:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049a5e:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049a64:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049a69:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049a70:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049a76:	89 10                	mov    %edx,(%eax)
 8049a78:	8b 15 14 61 1f 08    	mov    0x81f6114,%edx
 8049a7e:	89 50 04             	mov    %edx,0x4(%eax)
 8049a81:	b8 34 61 3f 08       	mov    $0x83f6134,%eax
 8049a86:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049a8c:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049a91:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049a98:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049a9e:	89 10                	mov    %edx,(%eax)
 8049aa0:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049aa5:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049aab:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ab1:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ab7:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049abd:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ac3:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049ac8:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049acd:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049ad3:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049ad8:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049adf:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049ae5:	89 10                	mov    %edx,(%eax)
 8049ae7:	c7 05 4c d0 04 08 0f 	movl   $0xf,0x804d04c
 8049aee:	00 00 00 
 8049af1:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049af6:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049afc:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b02:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b08:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b0e:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b14:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049b1a:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049b1f:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049b26:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 8049b2c:	89 10                	mov    %edx,(%eax)
 8049b2e:	c7 05 4c d0 04 08 00 	movl   $0x0,0x804d04c
 8049b35:	00 00 00 
 8049b38:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049b3d:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b43:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b49:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b4f:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049b55:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049b5a:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049b61:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 8049b67:	89 10                	mov    %edx,(%eax)
 8049b69:	c7 05 4c d0 04 08 01 	movl   $0x1,0x804d04c
 8049b70:	00 00 00 
 8049b73:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049b78:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049b7e:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049b84:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049b89:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049b90:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 8049b96:	89 10                	mov    %edx,(%eax)
 8049b98:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049b9d:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ba3:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ba9:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049baf:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049bb4:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049bb9:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049bbf:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049bc4:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049bcb:	8b 00                	mov    (%eax),%eax
 8049bcd:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049bd2:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049bd7:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049bdd:	a3 48 d0 04 08       	mov    %eax,0x804d048
 8049be2:	a1 48 d0 04 08       	mov    0x804d048,%eax
 8049be7:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049bed:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049bf2:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049bf9:	8b 00                	mov    (%eax),%eax
 8049bfb:	a3 48 d0 04 08       	mov    %eax,0x804d048
 8049c00:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049c05:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 8049c0b:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 8049c10:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 8049c16:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c1b:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049c20:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 8049c27:	00 00 00 
 8049c2a:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 8049c30:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 8049c37:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 8049c3e:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049c41:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049c48:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 8049c4f:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049c52:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 8049c59:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 8049c5f:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 8049c65:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 8049c6c:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 8049c73:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049c76:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049c7d:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 8049c84:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049c87:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 8049c8e:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 8049c94:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 8049c99:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049c9e:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049ca3:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049ca9:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049caf:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049cb5:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049cba:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049cc1:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 8049cc7:	89 10                	mov    %edx,(%eax)
 8049cc9:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049cce:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049cd4:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049cd9:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049cde:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049ce4:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049ce9:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049cf0:	8b 00                	mov    (%eax),%eax
 8049cf2:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049cf7:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049cfc:	89 c0                	mov    %eax,%eax
 8049cfe:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049d03:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049d08:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049d0e:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049d13:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049d1a:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049d20:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049d26:	89 10                	mov    %edx,(%eax)
 8049d28:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049d2d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049d33:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049d38:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049d3f:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049d45:	89 10                	mov    %edx,(%eax)
 8049d47:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049d4c:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049d52:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049d58:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049d5e:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049d63:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049d68:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049d6e:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049d73:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049d7a:	8b 00                	mov    (%eax),%eax
 8049d7c:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049d81:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049d86:	89 c0                	mov    %eax,%eax
 8049d88:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049d8d:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049d92:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049d98:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049d9d:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049da4:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049daa:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049db0:	89 10                	mov    %edx,(%eax)
 8049db2:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049db7:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049dbd:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049dc2:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049dc9:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049dcf:	89 10                	mov    %edx,(%eax)
 8049dd1:	b8 25 d0 04 08       	mov    $0x804d025,%eax
 8049dd6:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 8049ddb:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 8049de0:	89 c0                	mov    %eax,%eax
 8049de2:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049de7:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049dec:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049df2:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049df7:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049dfe:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049e04:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049e0a:	89 10                	mov    %edx,(%eax)
 8049e0c:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049e11:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049e17:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049e1c:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049e23:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049e29:	89 10                	mov    %edx,(%eax)
 8049e2b:	b8 2b 9f 04 88       	mov    $0x88049f2b,%eax
 8049e30:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 8049e35:	c7 05 f4 5f 1f 08 00 	movl   $0x80000000,0x81f5ff4
 8049e3c:	00 00 80 
 8049e3f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e44:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049e49:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 8049e50:	00 00 00 
 8049e53:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 8049e59:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 8049e60:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 8049e67:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049e6a:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049e71:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 8049e78:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049e7b:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 8049e82:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 8049e88:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 8049e8e:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 8049e95:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 8049e9c:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049e9f:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 8049ea6:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 8049ead:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 8049eb0:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 8049eb7:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 8049ebd:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 8049ec2:	89 c0                	mov    %eax,%eax
 8049ec4:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049ec9:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049ece:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049ed4:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049ed9:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049ee0:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049ee6:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 8049eec:	89 10                	mov    %edx,(%eax)
 8049eee:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049ef3:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049ef9:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049efe:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049f05:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049f0b:	89 10                	mov    %edx,(%eax)
 8049f0d:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 8049f13:	c7 05 d4 61 5f 08 10 	movl   $0x8049010,0x85f61d4
 8049f1a:	90 04 08 
 8049f1d:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 8049f22:	8b 04 85 d8 61 5f 08 	mov    0x85f61d8(,%eax,4),%eax
 8049f29:	8b 00                	mov    (%eax),%eax
 8049f2b:	a3 40 d0 04 08       	mov    %eax,0x804d040
 8049f30:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049f35:	8b 10                	mov    (%eax),%edx
 8049f37:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 8049f3d:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049f42:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049f48:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049f4d:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049f54:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 8049f5a:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 8049f60:	89 10                	mov    %edx,(%eax)
 8049f62:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049f68:	89 d0                	mov    %edx,%eax
 8049f6a:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 8049f6f:	8b 80 a0 ff df ff    	mov    -0x200060(%eax),%eax
 8049f75:	8b 80 a0 ff df ff    	mov    -0x200060(%eax),%eax
 8049f7b:	8b 80 a0 ff df ff    	mov    -0x200060(%eax),%eax
 8049f81:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 8049f86:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 8049f8b:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049f91:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049f96:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049f9d:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 8049fa3:	89 10                	mov    %edx,(%eax)
 8049fa5:	c7 05 4c d0 04 08 03 	movl   $0x3,0x804d04c
 8049fac:	00 00 00 
 8049faf:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 8049fb4:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049fba:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049fc0:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049fc6:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 8049fcc:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 8049fd2:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 8049fd7:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 8049fde:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 8049fe4:	89 10                	mov    %edx,(%eax)
 8049fe6:	b8 45 aa 04 88       	mov    $0x8804aa45,%eax
 8049feb:	a3 00 61 1f 08       	mov    %eax,0x81f6100
 8049ff0:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 8049ff5:	8b 04 85 60 61 3f 08 	mov    0x83f6160(,%eax,4),%eax
 8049ffc:	8b 15 00 61 1f 08    	mov    0x81f6100,%edx
 804a002:	89 10                	mov    %edx,(%eax)
 804a004:	8b 0d 58 61 3f 08    	mov    0x83f6158,%ecx
 804a00a:	c7 05 74 61 3f 08 90 	movl   $0x85f6190,0x83f6174
 804a011:	61 5f 08 
 804a014:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a01b:	8b 15 40 d0 04 08    	mov    0x804d040,%edx
 804a021:	89 10                	mov    %edx,(%eax)
 804a023:	8b 15 44 d0 04 08    	mov    0x804d044,%edx
 804a029:	89 50 04             	mov    %edx,0x4(%eax)
 804a02c:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804a032:	89 50 08             	mov    %edx,0x8(%eax)
 804a035:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804a03b:	89 50 0c             	mov    %edx,0xc(%eax)
 804a03e:	c7 05 74 61 3f 08 a0 	movl   $0x85f61a0,0x83f6174
 804a045:	61 5f 08 
 804a048:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a04f:	8b 15 50 d0 04 08    	mov    0x804d050,%edx
 804a055:	89 10                	mov    %edx,(%eax)
 804a057:	8b 15 54 d0 04 08    	mov    0x804d054,%edx
 804a05d:	89 50 04             	mov    %edx,0x4(%eax)
 804a060:	8b 15 58 d0 04 08    	mov    0x804d058,%edx
 804a066:	89 50 08             	mov    %edx,0x8(%eax)
 804a069:	c7 05 74 61 3f 08 ac 	movl   $0x85f61ac,0x83f6174
 804a070:	61 5f 08 
 804a073:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a07a:	8b 15 60 d0 04 08    	mov    0x804d060,%edx
 804a080:	89 10                	mov    %edx,(%eax)
 804a082:	8b 15 64 d0 04 08    	mov    0x804d064,%edx
 804a088:	89 50 04             	mov    %edx,0x4(%eax)
 804a08b:	8b 15 68 d0 04 08    	mov    0x804d068,%edx
 804a091:	89 50 08             	mov    %edx,0x8(%eax)
 804a094:	8b 15 6c d0 04 08    	mov    0x804d06c,%edx
 804a09a:	89 50 0c             	mov    %edx,0xc(%eax)
 804a09d:	8b 15 70 d0 04 08    	mov    0x804d070,%edx
 804a0a3:	89 50 10             	mov    %edx,0x10(%eax)
 804a0a6:	8b 15 74 d0 04 08    	mov    0x804d074,%edx
 804a0ac:	89 50 14             	mov    %edx,0x14(%eax)
 804a0af:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804a0b4:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804a0bb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a0c1:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 804a0c6:	ba c1 a0 04 88       	mov    $0x8804a0c1,%edx
 804a0cb:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804a0d0:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804a0d6:	b8 00 00 00 00       	mov    $0x0,%eax
 804a0db:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a0e0:	ba 00 00 00 00       	mov    $0x0,%edx
 804a0e5:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 804a0ea:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a0f1:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 804a0f7:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a0fa:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 804a100:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804a105:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a10c:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804a112:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a115:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 804a11b:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 804a120:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a127:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 804a12d:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a130:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 804a136:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 804a13b:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a142:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 804a148:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a14b:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 804a151:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a156:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 804a15c:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a163:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a166:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a16b:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a170:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 804a176:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a17d:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a180:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a185:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a18a:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 804a190:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a197:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a19a:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a19f:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a1a4:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a1a9:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 804a1af:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 804a1b6:	d0 04 08 
 804a1b9:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a1c0:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 804a1c6:	89 10                	mov    %edx,(%eax)
 804a1c8:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 804a1cf:	d0 04 08 
 804a1d2:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a1d9:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 804a1df:	89 10                	mov    %edx,(%eax)
 804a1e1:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 804a1e8:	d0 04 08 
 804a1eb:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a1f2:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 804a1f8:	89 10                	mov    %edx,(%eax)
 804a1fa:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 804a201:	d0 04 08 
 804a204:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a20b:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 804a211:	89 10                	mov    %edx,(%eax)
 804a213:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 804a21a:	d0 04 08 
 804a21d:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a224:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 804a22a:	89 10                	mov    %edx,(%eax)
 804a22c:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 804a233:	d0 04 08 
 804a236:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a23d:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 804a243:	89 10                	mov    %edx,(%eax)
 804a245:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 804a24c:	d0 04 08 
 804a24f:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a256:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 804a25c:	89 10                	mov    %edx,(%eax)
 804a25e:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 804a265:	d0 04 08 
 804a268:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a26f:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 804a275:	89 10                	mov    %edx,(%eax)
 804a277:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 804a27d:	89 50 04             	mov    %edx,0x4(%eax)
 804a280:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 804a287:	d0 04 08 
 804a28a:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a291:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 804a297:	89 10                	mov    %edx,(%eax)
 804a299:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 804a29f:	89 50 04             	mov    %edx,0x4(%eax)
 804a2a2:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 804a2a9:	d0 04 08 
 804a2ac:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a2b3:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 804a2b9:	89 10                	mov    %edx,(%eax)
 804a2bb:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 804a2c1:	89 50 04             	mov    %edx,0x4(%eax)
 804a2c4:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a2c9:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804a2d0:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804a2d6:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a2db:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a2e1:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a2e7:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a2ec:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a2f1:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a2f7:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a2fc:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a303:	8b 00                	mov    (%eax),%eax
 804a305:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a30a:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a30f:	89 c0                	mov    %eax,%eax
 804a311:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804a316:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804a31b:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a321:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a326:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a32d:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804a333:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804a339:	89 10                	mov    %edx,(%eax)
 804a33b:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804a340:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a346:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a34b:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a352:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804a358:	89 10                	mov    %edx,(%eax)
 804a35a:	b8 20 d0 04 08       	mov    $0x804d020,%eax
 804a35f:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a364:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a369:	89 c0                	mov    %eax,%eax
 804a36b:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804a370:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804a375:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a37b:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a380:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a387:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804a38d:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804a393:	89 10                	mov    %edx,(%eax)
 804a395:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804a39a:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a3a0:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a3a5:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a3ac:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804a3b2:	89 10                	mov    %edx,(%eax)
 804a3b4:	b8 b4 a4 04 88       	mov    $0x8804a4b4,%eax
 804a3b9:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804a3be:	c7 05 f4 5f 1f 08 00 	movl   $0x80000000,0x81f5ff4
 804a3c5:	00 00 80 
 804a3c8:	b8 00 00 00 00       	mov    $0x0,%eax
 804a3cd:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a3d2:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 804a3d9:	00 00 00 
 804a3dc:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 804a3e2:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 804a3e9:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a3f0:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a3f3:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a3fa:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a401:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a404:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 804a40b:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804a411:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 804a417:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 804a41e:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a425:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a428:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a42f:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a436:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a439:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 804a440:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804a446:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 804a44b:	89 c0                	mov    %eax,%eax
 804a44d:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804a452:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804a457:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a45d:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a462:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a469:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804a46f:	8b 92 98 ff df ff    	mov    -0x200068(%edx),%edx
 804a475:	89 10                	mov    %edx,(%eax)
 804a477:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804a47c:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a482:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a487:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a48e:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804a494:	89 10                	mov    %edx,(%eax)
 804a496:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 804a49c:	c7 05 d4 61 5f 08 10 	movl   $0x8049010,0x85f61d4
 804a4a3:	90 04 08 
 804a4a6:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804a4ab:	8b 04 85 d8 61 5f 08 	mov    0x85f61d8(,%eax,4),%eax
 804a4b2:	8b 00                	mov    (%eax),%eax
 804a4b4:	a3 40 d0 04 08       	mov    %eax,0x804d040
 804a4b9:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804a4be:	8b 10                	mov    (%eax),%edx
 804a4c0:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804a4c6:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804a4cb:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a4d1:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a4d6:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a4dd:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804a4e3:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804a4e9:	89 10                	mov    %edx,(%eax)
 804a4eb:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804a4f1:	89 d0                	mov    %edx,%eax
 804a4f3:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804a4f8:	8b 80 a0 ff df ff    	mov    -0x200060(%eax),%eax
 804a4fe:	8b 80 a0 ff df ff    	mov    -0x200060(%eax),%eax
 804a504:	a3 10 61 1f 08       	mov    %eax,0x81f6110
 804a509:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804a50e:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a514:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a519:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a520:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804a526:	89 10                	mov    %edx,(%eax)
 804a528:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a52d:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a533:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a538:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a53d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a543:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a548:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a54f:	8b 00                	mov    (%eax),%eax
 804a551:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a556:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a55b:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a561:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a567:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a56d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a573:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a578:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a57f:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804a585:	89 10                	mov    %edx,(%eax)
 804a587:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a58c:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a592:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a598:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a59d:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a5a2:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a5a8:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a5ad:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a5b4:	8b 00                	mov    (%eax),%eax
 804a5b6:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a5bb:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a5c0:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a5c6:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a5cc:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a5d1:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a5d8:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804a5de:	89 10                	mov    %edx,(%eax)
 804a5e0:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a5e5:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a5eb:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a5f1:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a5f7:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a5fc:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a601:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a607:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a60c:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a613:	8b 00                	mov    (%eax),%eax
 804a615:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a61a:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a61f:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a625:	a3 48 d0 04 08       	mov    %eax,0x804d048
 804a62a:	a1 48 d0 04 08       	mov    0x804d048,%eax
 804a62f:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a635:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a63a:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a641:	8b 00                	mov    (%eax),%eax
 804a643:	a3 48 d0 04 08       	mov    %eax,0x804d048
 804a648:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a64d:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804a653:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804a658:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804a65e:	b8 00 00 00 00       	mov    $0x0,%eax
 804a663:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a668:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 804a66f:	00 00 00 
 804a672:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 804a678:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 804a67f:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a686:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a689:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a690:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a697:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a69a:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 804a6a1:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804a6a7:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 804a6ad:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 804a6b4:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a6bb:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a6be:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a6c5:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a6cc:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a6cf:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 804a6d6:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804a6dc:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 804a6e1:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a6e6:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a6eb:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a6f1:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a6f7:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a6fd:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a702:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a709:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804a70f:	89 10                	mov    %edx,(%eax)
 804a711:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 804a716:	ba 11 a7 04 88       	mov    $0x8804a711,%edx
 804a71b:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804a720:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804a726:	b8 00 00 00 00       	mov    $0x0,%eax
 804a72b:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a730:	ba 00 00 00 00       	mov    $0x0,%edx
 804a735:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 804a73a:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a741:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 804a747:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a74a:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 804a750:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804a755:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a75c:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804a762:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a765:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 804a76b:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 804a770:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a777:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 804a77d:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a780:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 804a786:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 804a78b:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804a792:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 804a798:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804a79b:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 804a7a1:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a7a6:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 804a7ac:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a7b3:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a7b6:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a7bb:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a7c0:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 804a7c6:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a7cd:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a7d0:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a7d5:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a7da:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 804a7e0:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804a7e7:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a7ea:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a7ef:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a7f4:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804a7f9:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 804a7ff:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 804a806:	d0 04 08 
 804a809:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a810:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 804a816:	89 10                	mov    %edx,(%eax)
 804a818:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 804a81f:	d0 04 08 
 804a822:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a829:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 804a82f:	89 10                	mov    %edx,(%eax)
 804a831:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 804a838:	d0 04 08 
 804a83b:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a842:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 804a848:	89 10                	mov    %edx,(%eax)
 804a84a:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 804a851:	d0 04 08 
 804a854:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a85b:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 804a861:	89 10                	mov    %edx,(%eax)
 804a863:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 804a86a:	d0 04 08 
 804a86d:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a874:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 804a87a:	89 10                	mov    %edx,(%eax)
 804a87c:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 804a883:	d0 04 08 
 804a886:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a88d:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 804a893:	89 10                	mov    %edx,(%eax)
 804a895:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 804a89c:	d0 04 08 
 804a89f:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a8a6:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 804a8ac:	89 10                	mov    %edx,(%eax)
 804a8ae:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 804a8b5:	d0 04 08 
 804a8b8:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a8bf:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 804a8c5:	89 10                	mov    %edx,(%eax)
 804a8c7:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 804a8cd:	89 50 04             	mov    %edx,0x4(%eax)
 804a8d0:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 804a8d7:	d0 04 08 
 804a8da:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a8e1:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 804a8e7:	89 10                	mov    %edx,(%eax)
 804a8e9:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 804a8ef:	89 50 04             	mov    %edx,0x4(%eax)
 804a8f2:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 804a8f9:	d0 04 08 
 804a8fc:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804a903:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 804a909:	89 10                	mov    %edx,(%eax)
 804a90b:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 804a911:	89 50 04             	mov    %edx,0x4(%eax)
 804a914:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804a919:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804a920:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804a926:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804a92b:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a931:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a937:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a93d:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804a943:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a948:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a94d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804a953:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804a958:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804a95f:	8b 00                	mov    (%eax),%eax
 804a961:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804a966:	c7 05 48 d0 04 08 01 	movl   $0x1,0x804d048
 804a96d:	00 00 00 
 804a970:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804a975:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804a97b:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804a980:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804a986:	b8 00 00 00 00       	mov    $0x0,%eax
 804a98b:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a990:	c7 05 00 60 1f 08 00 	movl   $0x0,0x81f6000
 804a997:	00 00 00 
 804a99a:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 804a9a0:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 804a9a7:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a9ae:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a9b1:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a9b8:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a9bf:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a9c2:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 804a9c9:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804a9cf:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 804a9d5:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 804a9dc:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804a9e3:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a9e6:	66 8b 0d 02 60 1f 08 	mov    0x81f6002,%cx
 804a9ed:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804a9f4:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804a9f7:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 804a9fe:	89 15 00 60 1f 08    	mov    %edx,0x81f6000
 804aa04:	a1 f8 5f 1f 08       	mov    0x81f5ff8,%eax
 804aa09:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804aa0e:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804aa13:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804aa19:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804aa1f:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804aa25:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804aa2b:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804aa31:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804aa36:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804aa3d:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804aa43:	89 10                	mov    %edx,(%eax)
 804aa45:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 804aa4a:	ba 45 aa 04 88       	mov    $0x8804aa45,%edx
 804aa4f:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804aa54:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804aa5a:	b8 00 00 00 00       	mov    $0x0,%eax
 804aa5f:	b9 00 00 00 00       	mov    $0x0,%ecx
 804aa64:	ba 00 00 00 00       	mov    $0x0,%edx
 804aa69:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 804aa6e:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804aa75:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 804aa7b:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804aa7e:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 804aa84:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804aa89:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804aa90:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804aa96:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804aa99:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 804aa9f:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 804aaa4:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804aaab:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 804aab1:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804aab4:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 804aaba:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 804aabf:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804aac6:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 804aacc:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804aacf:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 804aad5:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804aada:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 804aae0:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804aae7:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804aaea:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804aaef:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804aaf4:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 804aafa:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804ab01:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804ab04:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ab09:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ab0e:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 804ab14:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804ab1b:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804ab1e:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ab23:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ab28:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ab2d:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 804ab33:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 804ab3a:	d0 04 08 
 804ab3d:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ab44:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 804ab4a:	89 10                	mov    %edx,(%eax)
 804ab4c:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 804ab53:	d0 04 08 
 804ab56:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ab5d:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 804ab63:	89 10                	mov    %edx,(%eax)
 804ab65:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 804ab6c:	d0 04 08 
 804ab6f:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ab76:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 804ab7c:	89 10                	mov    %edx,(%eax)
 804ab7e:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 804ab85:	d0 04 08 
 804ab88:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ab8f:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 804ab95:	89 10                	mov    %edx,(%eax)
 804ab97:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 804ab9e:	d0 04 08 
 804aba1:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804aba8:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 804abae:	89 10                	mov    %edx,(%eax)
 804abb0:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 804abb7:	d0 04 08 
 804abba:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804abc1:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 804abc7:	89 10                	mov    %edx,(%eax)
 804abc9:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 804abd0:	d0 04 08 
 804abd3:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804abda:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 804abe0:	89 10                	mov    %edx,(%eax)
 804abe2:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 804abe9:	d0 04 08 
 804abec:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804abf3:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 804abf9:	89 10                	mov    %edx,(%eax)
 804abfb:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 804ac01:	89 50 04             	mov    %edx,0x4(%eax)
 804ac04:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 804ac0b:	d0 04 08 
 804ac0e:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ac15:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 804ac1b:	89 10                	mov    %edx,(%eax)
 804ac1d:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 804ac23:	89 50 04             	mov    %edx,0x4(%eax)
 804ac26:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 804ac2d:	d0 04 08 
 804ac30:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804ac37:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 804ac3d:	89 10                	mov    %edx,(%eax)
 804ac3f:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 804ac45:	89 50 04             	mov    %edx,0x4(%eax)
 804ac48:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ac4d:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804ac54:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804ac5a:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804ac5f:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804ac65:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804ac6b:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804ac71:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804ac77:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804ac7c:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804ac81:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804ac87:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804ac8c:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804ac93:	8b 00                	mov    (%eax),%eax
 804ac95:	a3 4c d0 04 08       	mov    %eax,0x804d04c
 804ac9a:	a1 34 61 3f 08       	mov    0x83f6134,%eax
 804ac9f:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804aca5:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804acab:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804acb1:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804acb7:	8b 80 98 ff df ff    	mov    -0x200068(%eax),%eax
 804acbd:	a3 48 d0 04 08       	mov    %eax,0x804d048
 804acc2:	a1 48 d0 04 08       	mov    0x804d048,%eax
 804acc7:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804accd:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804acd2:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804acd9:	8b 00                	mov    (%eax),%eax
 804acdb:	a3 48 d0 04 08       	mov    %eax,0x804d048
 804ace0:	a1 4c d0 04 08       	mov    0x804d04c,%eax
 804ace5:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804aceb:	b9 c1 a0 04 88       	mov    $0x8804a0c1,%ecx
 804acf0:	89 0d 00 61 1f 08    	mov    %ecx,0x81f6100
 804acf6:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804acfb:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804ad01:	89 15 90 60 1f 08    	mov    %edx,0x81f6090
 804ad07:	b8 00 00 00 00       	mov    $0x0,%eax
 804ad0c:	b9 00 00 00 00       	mov    $0x0,%ecx
 804ad11:	c7 05 00 60 1f 08 01 	movl   $0x1,0x81f6000
 804ad18:	00 00 00 
 804ad1b:	66 a1 f0 5f 1f 08    	mov    0x81f5ff0,%ax
 804ad21:	66 8b 0d f4 5f 1f 08 	mov    0x81f5ff4,%cx
 804ad28:	66 8b 0c 4d 50 10 16 	mov    0x8161050(,%ecx,2),%cx
 804ad2f:	08 
 804ad30:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804ad37:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804ad3a:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804ad41:	8b 0d 00 60 1f 08    	mov    0x81f6000,%ecx
 804ad47:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804ad4a:	66 89 15 f8 5f 1f 08 	mov    %dx,0x81f5ff8
 804ad51:	89 15 fe 5f 1f 08    	mov    %edx,0x81f5ffe
 804ad57:	66 a1 f2 5f 1f 08    	mov    0x81f5ff2,%ax
 804ad5d:	66 8b 0d f6 5f 1f 08 	mov    0x81f5ff6,%cx
 804ad64:	66 8b 0c 4d 50 10 16 	mov    0x8161050(,%ecx,2),%cx
 804ad6b:	08 
 804ad6c:	8b 14 85 30 0f 06 08 	mov    0x8060f30(,%eax,4),%edx
 804ad73:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804ad76:	8b 14 95 30 0f 06 08 	mov    0x8060f30(,%edx,4),%edx
 804ad7d:	8b 0d 00 60 1f 08    	mov    0x81f6000,%ecx
 804ad83:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804ad86:	66 89 15 fa 5f 1f 08 	mov    %dx,0x81f5ffa
 804ad8d:	89 15 fe 5f 1f 08    	mov    %edx,0x81f5ffe
 804ad93:	a1 90 60 1f 08       	mov    0x81f6090,%eax
 804ad98:	a3 f4 5f 1f 08       	mov    %eax,0x81f5ff4
 804ad9d:	b8 00 00 00 00       	mov    $0x0,%eax
 804ada2:	a0 00 60 1f 08       	mov    0x81f6000,%al
 804ada7:	8a 80 10 d3 04 08    	mov    0x804d310(%eax),%al
 804adad:	a2 fc 60 1f 08       	mov    %al,0x81f60fc
 804adb2:	a0 fb 5f 1f 08       	mov    0x81f5ffb,%al
 804adb7:	8b 04 85 90 f1 04 08 	mov    0x804f190(,%eax,4),%eax
 804adbe:	a2 f4 60 1f 08       	mov    %al,0x81f60f4
 804adc3:	b8 00 00 00 00       	mov    $0x0,%eax
 804adc8:	ba 00 00 00 00       	mov    $0x0,%edx
 804adcd:	8a 15 f8 5f 1f 08    	mov    0x81f5ff8,%dl
 804add3:	8a 84 02 00 d1 04 08 	mov    0x804d100(%edx,%eax,1),%al
 804adda:	8a 15 f9 5f 1f 08    	mov    0x81f5ff9,%dl
 804ade0:	8a 84 02 00 d1 04 08 	mov    0x804d100(%edx,%eax,1),%al
 804ade7:	8a 15 fa 5f 1f 08    	mov    0x81f5ffa,%dl
 804aded:	8a 84 02 00 d1 04 08 	mov    0x804d100(%edx,%eax,1),%al
 804adf4:	8a 15 fb 5f 1f 08    	mov    0x81f5ffb,%dl
 804adfa:	8a 84 02 00 d1 04 08 	mov    0x804d100(%edx,%eax,1),%al
 804ae01:	8a 80 10 d3 04 08    	mov    0x804d310(%eax),%al
 804ae07:	a2 f0 60 1f 08       	mov    %al,0x81f60f0
 804ae0c:	ba 80 5f 1f 08       	mov    $0x81f5f80,%edx
 804ae11:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 804ae16:	8b 04 85 90 f1 04 08 	mov    0x804f190(,%eax,4),%eax
 804ae1d:	8b 14 82             	mov    (%edx,%eax,4),%edx
 804ae20:	a0 f7 5f 1f 08       	mov    0x81f5ff7,%al
 804ae25:	8b 04 85 90 f1 04 08 	mov    0x804f190(,%eax,4),%eax
 804ae2c:	8b 14 82             	mov    (%edx,%eax,4),%edx
 804ae2f:	a0 fb 5f 1f 08       	mov    0x81f5ffb,%al
 804ae34:	8b 04 85 90 f1 04 08 	mov    0x804f190(,%eax,4),%eax
 804ae3b:	8b 14 82             	mov    (%edx,%eax,4),%edx
 804ae3e:	8b 12                	mov    (%edx),%edx
 804ae40:	88 15 f8 60 1f 08    	mov    %dl,0x81f60f8
 804ae46:	a1 f4 60 1f 08       	mov    0x81f60f4,%eax
 804ae4b:	8b 15 f8 60 1f 08    	mov    0x81f60f8,%edx
 804ae51:	8b 04 85 c0 d0 04 08 	mov    0x804d0c0(,%eax,4),%eax
 804ae58:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804ae5b:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ae60:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ae65:	8b 15 f0 60 1f 08    	mov    0x81f60f0,%edx
 804ae6b:	8b 04 85 80 d0 04 08 	mov    0x804d080(,%eax,4),%eax
 804ae72:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804ae75:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ae7a:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ae7f:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804ae85:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804ae8c:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804ae8f:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804ae94:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804ae99:	8b 04 85 60 61 3f 08 	mov    0x83f6160(,%eax,4),%eax
 804aea0:	8b 15 00 61 1f 08    	mov    0x81f6100,%edx
 804aea6:	89 10                	mov    %edx,(%eax)
 804aea8:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 804aeae:	c7 05 74 61 3f 08 90 	movl   $0x85f6190,0x83f6174
 804aeb5:	61 5f 08 
 804aeb8:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804aebf:	8b 15 40 d0 04 08    	mov    0x804d040,%edx
 804aec5:	89 10                	mov    %edx,(%eax)
 804aec7:	8b 15 44 d0 04 08    	mov    0x804d044,%edx
 804aecd:	89 50 04             	mov    %edx,0x4(%eax)
 804aed0:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804aed6:	89 50 08             	mov    %edx,0x8(%eax)
 804aed9:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804aedf:	89 50 0c             	mov    %edx,0xc(%eax)
 804aee2:	c7 05 74 61 3f 08 a0 	movl   $0x85f61a0,0x83f6174
 804aee9:	61 5f 08 
 804aeec:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804aef3:	8b 15 50 d0 04 08    	mov    0x804d050,%edx
 804aef9:	89 10                	mov    %edx,(%eax)
 804aefb:	8b 15 54 d0 04 08    	mov    0x804d054,%edx
 804af01:	89 50 04             	mov    %edx,0x4(%eax)
 804af04:	8b 15 58 d0 04 08    	mov    0x804d058,%edx
 804af0a:	89 50 08             	mov    %edx,0x8(%eax)
 804af0d:	c7 05 74 61 3f 08 ac 	movl   $0x85f61ac,0x83f6174
 804af14:	61 5f 08 
 804af17:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804af1e:	8b 15 60 d0 04 08    	mov    0x804d060,%edx
 804af24:	89 10                	mov    %edx,(%eax)
 804af26:	8b 15 64 d0 04 08    	mov    0x804d064,%edx
 804af2c:	89 50 04             	mov    %edx,0x4(%eax)
 804af2f:	8b 15 68 d0 04 08    	mov    0x804d068,%edx
 804af35:	89 50 08             	mov    %edx,0x8(%eax)
 804af38:	8b 15 6c d0 04 08    	mov    0x804d06c,%edx
 804af3e:	89 50 0c             	mov    %edx,0xc(%eax)
 804af41:	8b 15 70 d0 04 08    	mov    0x804d070,%edx
 804af47:	89 50 10             	mov    %edx,0x10(%eax)
 804af4a:	8b 15 74 d0 04 08    	mov    0x804d074,%edx
 804af50:	89 50 14             	mov    %edx,0x14(%eax)
 804af53:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804af58:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804af5f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804af65:	c7 05 40 d0 04 08 00 	movl   $0x0,0x804d040
 804af6c:	00 00 00 
 804af6f:	a1 68 61 3f 08       	mov    0x83f6168,%eax
 804af74:	ba 6f af 04 88       	mov    $0x8804af6f,%edx
 804af79:	a3 f0 5f 1f 08       	mov    %eax,0x81f5ff0
 804af7e:	89 15 f4 5f 1f 08    	mov    %edx,0x81f5ff4
 804af84:	b8 00 00 00 00       	mov    $0x0,%eax
 804af89:	b9 00 00 00 00       	mov    $0x0,%ecx
 804af8e:	ba 00 00 00 00       	mov    $0x0,%edx
 804af93:	a0 f0 5f 1f 08       	mov    0x81f5ff0,%al
 804af98:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804af9f:	8a 15 f4 5f 1f 08    	mov    0x81f5ff4,%dl
 804afa5:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804afa8:	89 15 e0 5f 1f 08    	mov    %edx,0x81f5fe0
 804afae:	a0 f1 5f 1f 08       	mov    0x81f5ff1,%al
 804afb3:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804afba:	8a 15 f5 5f 1f 08    	mov    0x81f5ff5,%dl
 804afc0:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804afc3:	89 15 e4 5f 1f 08    	mov    %edx,0x81f5fe4
 804afc9:	a0 f2 5f 1f 08       	mov    0x81f5ff2,%al
 804afce:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804afd5:	8a 15 f6 5f 1f 08    	mov    0x81f5ff6,%dl
 804afdb:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804afde:	89 15 e8 5f 1f 08    	mov    %edx,0x81f5fe8
 804afe4:	a0 f3 5f 1f 08       	mov    0x81f5ff3,%al
 804afe9:	8b 0c 85 00 06 05 08 	mov    0x8050600(,%eax,4),%ecx
 804aff0:	8a 15 f7 5f 1f 08    	mov    0x81f5ff7,%dl
 804aff6:	8a 14 11             	mov    (%ecx,%edx,1),%dl
 804aff9:	89 15 ec 5f 1f 08    	mov    %edx,0x81f5fec
 804afff:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804b004:	8b 15 e4 5f 1f 08    	mov    0x81f5fe4,%edx
 804b00a:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804b011:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804b014:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804b019:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804b01e:	8b 15 e8 5f 1f 08    	mov    0x81f5fe8,%edx
 804b024:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804b02b:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804b02e:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804b033:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804b038:	8b 15 ec 5f 1f 08    	mov    0x81f5fec,%edx
 804b03e:	8b 04 85 a0 d0 04 08 	mov    0x804d0a0(,%eax,4),%eax
 804b045:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804b048:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804b04d:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804b052:	a3 e0 5f 1f 08       	mov    %eax,0x81f5fe0
 804b057:	8b 0d e0 5f 1f 08    	mov    0x81f5fe0,%ecx
 804b05d:	c7 05 74 61 3f 08 40 	movl   $0x804d040,0x83f6174
 804b064:	d0 04 08 
 804b067:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b06e:	8b 15 90 61 5f 08    	mov    0x85f6190,%edx
 804b074:	89 10                	mov    %edx,(%eax)
 804b076:	c7 05 74 61 3f 08 44 	movl   $0x804d044,0x83f6174
 804b07d:	d0 04 08 
 804b080:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b087:	8b 15 94 61 5f 08    	mov    0x85f6194,%edx
 804b08d:	89 10                	mov    %edx,(%eax)
 804b08f:	c7 05 74 61 3f 08 48 	movl   $0x804d048,0x83f6174
 804b096:	d0 04 08 
 804b099:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b0a0:	8b 15 98 61 5f 08    	mov    0x85f6198,%edx
 804b0a6:	89 10                	mov    %edx,(%eax)
 804b0a8:	c7 05 74 61 3f 08 4c 	movl   $0x804d04c,0x83f6174
 804b0af:	d0 04 08 
 804b0b2:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b0b9:	8b 15 9c 61 5f 08    	mov    0x85f619c,%edx
 804b0bf:	89 10                	mov    %edx,(%eax)
 804b0c1:	c7 05 74 61 3f 08 50 	movl   $0x804d050,0x83f6174
 804b0c8:	d0 04 08 
 804b0cb:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b0d2:	8b 15 a0 61 5f 08    	mov    0x85f61a0,%edx
 804b0d8:	89 10                	mov    %edx,(%eax)
 804b0da:	c7 05 74 61 3f 08 54 	movl   $0x804d054,0x83f6174
 804b0e1:	d0 04 08 
 804b0e4:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b0eb:	8b 15 a4 61 5f 08    	mov    0x85f61a4,%edx
 804b0f1:	89 10                	mov    %edx,(%eax)
 804b0f3:	c7 05 74 61 3f 08 58 	movl   $0x804d058,0x83f6174
 804b0fa:	d0 04 08 
 804b0fd:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b104:	8b 15 a8 61 5f 08    	mov    0x85f61a8,%edx
 804b10a:	89 10                	mov    %edx,(%eax)
 804b10c:	c7 05 74 61 3f 08 60 	movl   $0x804d060,0x83f6174
 804b113:	d0 04 08 
 804b116:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b11d:	8b 15 ac 61 5f 08    	mov    0x85f61ac,%edx
 804b123:	89 10                	mov    %edx,(%eax)
 804b125:	8b 15 b0 61 5f 08    	mov    0x85f61b0,%edx
 804b12b:	89 50 04             	mov    %edx,0x4(%eax)
 804b12e:	c7 05 74 61 3f 08 68 	movl   $0x804d068,0x83f6174
 804b135:	d0 04 08 
 804b138:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b13f:	8b 15 b4 61 5f 08    	mov    0x85f61b4,%edx
 804b145:	89 10                	mov    %edx,(%eax)
 804b147:	8b 15 b8 61 5f 08    	mov    0x85f61b8,%edx
 804b14d:	89 50 04             	mov    %edx,0x4(%eax)
 804b150:	c7 05 74 61 3f 08 70 	movl   $0x804d070,0x83f6174
 804b157:	d0 04 08 
 804b15a:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b161:	8b 15 bc 61 5f 08    	mov    0x85f61bc,%edx
 804b167:	89 10                	mov    %edx,(%eax)
 804b169:	8b 15 c0 61 5f 08    	mov    0x85f61c0,%edx
 804b16f:	89 50 04             	mov    %edx,0x4(%eax)
 804b172:	a1 e0 5f 1f 08       	mov    0x81f5fe0,%eax
 804b177:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804b17e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804b184:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b189:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b18f:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b194:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b19b:	8b 15 34 61 3f 08    	mov    0x83f6134,%edx
 804b1a1:	89 10                	mov    %edx,(%eax)
 804b1a3:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b1a8:	8b 10                	mov    (%eax),%edx
 804b1aa:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b1b0:	8b 50 04             	mov    0x4(%eax),%edx
 804b1b3:	89 15 14 61 1f 08    	mov    %edx,0x81f6114
 804b1b9:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b1be:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b1c4:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b1c9:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b1d0:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b1d6:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b1dc:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b1e2:	89 10                	mov    %edx,(%eax)
 804b1e4:	b8 70 d0 04 08       	mov    $0x804d070,%eax
 804b1e9:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b1ef:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b1f4:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b1fb:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b201:	89 10                	mov    %edx,(%eax)
 804b203:	8b 15 14 61 1f 08    	mov    0x81f6114,%edx
 804b209:	89 50 04             	mov    %edx,0x4(%eax)
 804b20c:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b211:	8b 10                	mov    (%eax),%edx
 804b213:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b219:	8b 50 04             	mov    0x4(%eax),%edx
 804b21c:	89 15 14 61 1f 08    	mov    %edx,0x81f6114
 804b222:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b227:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b22d:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b232:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b239:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b23f:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b245:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b24b:	89 10                	mov    %edx,(%eax)
 804b24d:	b8 68 d0 04 08       	mov    $0x804d068,%eax
 804b252:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b258:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b25d:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b264:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b26a:	89 10                	mov    %edx,(%eax)
 804b26c:	8b 15 14 61 1f 08    	mov    0x81f6114,%edx
 804b272:	89 50 04             	mov    %edx,0x4(%eax)
 804b275:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b27a:	8b 10                	mov    (%eax),%edx
 804b27c:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b282:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b287:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b28d:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b292:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b299:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b29f:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b2a5:	89 10                	mov    %edx,(%eax)
 804b2a7:	b8 58 d0 04 08       	mov    $0x804d058,%eax
 804b2ac:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b2b2:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b2b7:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b2be:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b2c4:	89 10                	mov    %edx,(%eax)
 804b2c6:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b2cb:	8b 10                	mov    (%eax),%edx
 804b2cd:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b2d3:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b2d8:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b2de:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b2e3:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b2ea:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b2f0:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b2f6:	89 10                	mov    %edx,(%eax)
 804b2f8:	b8 54 d0 04 08       	mov    $0x804d054,%eax
 804b2fd:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b303:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b308:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b30f:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b315:	89 10                	mov    %edx,(%eax)
 804b317:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b31c:	8b 10                	mov    (%eax),%edx
 804b31e:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b324:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b329:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b32f:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b334:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b33b:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b341:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b347:	89 10                	mov    %edx,(%eax)
 804b349:	b8 4c d0 04 08       	mov    $0x804d04c,%eax
 804b34e:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b354:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b359:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b360:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b366:	89 10                	mov    %edx,(%eax)
 804b368:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b36d:	8b 10                	mov    (%eax),%edx
 804b36f:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b375:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b37a:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b380:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b385:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b38c:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b392:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b398:	89 10                	mov    %edx,(%eax)
 804b39a:	b8 48 d0 04 08       	mov    $0x804d048,%eax
 804b39f:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b3a5:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b3aa:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b3b1:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b3b7:	89 10                	mov    %edx,(%eax)
 804b3b9:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b3be:	8b 10                	mov    (%eax),%edx
 804b3c0:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b3c6:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b3cb:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b3d1:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b3d6:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b3dd:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b3e3:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b3e9:	89 10                	mov    %edx,(%eax)
 804b3eb:	b8 44 d0 04 08       	mov    $0x804d044,%eax
 804b3f0:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b3f6:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b3fb:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b402:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b408:	89 10                	mov    %edx,(%eax)
 804b40a:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b40f:	8b 10                	mov    (%eax),%edx
 804b411:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b417:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b41c:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b422:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b427:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b42e:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b434:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b43a:	89 10                	mov    %edx,(%eax)
 804b43c:	b8 34 61 3f 08       	mov    $0x83f6134,%eax
 804b441:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b447:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b44c:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b453:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b459:	89 10                	mov    %edx,(%eax)
 804b45b:	a1 30 61 3f 08       	mov    0x83f6130,%eax
 804b460:	8b 10                	mov    (%eax),%edx
 804b462:	89 15 10 61 1f 08    	mov    %edx,0x81f6110
 804b468:	b8 30 61 3f 08       	mov    $0x83f6130,%eax
 804b46d:	8b 15 58 61 3f 08    	mov    0x83f6158,%edx
 804b473:	a3 74 61 3f 08       	mov    %eax,0x83f6174
 804b478:	8b 04 95 70 61 3f 08 	mov    0x83f6170(,%edx,4),%eax
 804b47f:	8b 15 30 61 3f 08    	mov    0x83f6130,%edx
 804b485:	8b 92 a0 ff df ff    	mov    -0x200060(%edx),%edx
 804b48b:	89 10                	mov    %edx,(%eax)
 804b48d:	8b 15 10 61 1f 08    	mov    0x81f6110,%edx
 804b493:	89 d0                	mov    %edx,%eax
 804b495:	a3 00 61 1f 08       	mov    %eax,0x81f6100
 804b49a:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804b49f:	8b 04 85 60 61 3f 08 	mov    0x83f6160(,%eax,4),%eax
 804b4a6:	8b 15 00 61 1f 08    	mov    0x81f6100,%edx
 804b4ac:	89 10                	mov    %edx,(%eax)
 804b4ae:	8b 0d 58 61 3f 08    	mov    0x83f6158,%ecx
 804b4b4:	c7 05 74 61 3f 08 90 	movl   $0x85f6190,0x83f6174
 804b4bb:	61 5f 08 
 804b4be:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b4c5:	8b 15 40 d0 04 08    	mov    0x804d040,%edx
 804b4cb:	89 10                	mov    %edx,(%eax)
 804b4cd:	8b 15 44 d0 04 08    	mov    0x804d044,%edx
 804b4d3:	89 50 04             	mov    %edx,0x4(%eax)
 804b4d6:	8b 15 48 d0 04 08    	mov    0x804d048,%edx
 804b4dc:	89 50 08             	mov    %edx,0x8(%eax)
 804b4df:	8b 15 4c d0 04 08    	mov    0x804d04c,%edx
 804b4e5:	89 50 0c             	mov    %edx,0xc(%eax)
 804b4e8:	c7 05 74 61 3f 08 a0 	movl   $0x85f61a0,0x83f6174
 804b4ef:	61 5f 08 
 804b4f2:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b4f9:	8b 15 50 d0 04 08    	mov    0x804d050,%edx
 804b4ff:	89 10                	mov    %edx,(%eax)
 804b501:	8b 15 54 d0 04 08    	mov    0x804d054,%edx
 804b507:	89 50 04             	mov    %edx,0x4(%eax)
 804b50a:	8b 15 58 d0 04 08    	mov    0x804d058,%edx
 804b510:	89 50 08             	mov    %edx,0x8(%eax)
 804b513:	c7 05 74 61 3f 08 ac 	movl   $0x85f61ac,0x83f6174
 804b51a:	61 5f 08 
 804b51d:	8b 04 8d 70 61 3f 08 	mov    0x83f6170(,%ecx,4),%eax
 804b524:	8b 15 60 d0 04 08    	mov    0x804d060,%edx
 804b52a:	89 10                	mov    %edx,(%eax)
 804b52c:	8b 15 64 d0 04 08    	mov    0x804d064,%edx
 804b532:	89 50 04             	mov    %edx,0x4(%eax)
 804b535:	8b 15 68 d0 04 08    	mov    0x804d068,%edx
 804b53b:	89 50 08             	mov    %edx,0x8(%eax)
 804b53e:	8b 15 6c d0 04 08    	mov    0x804d06c,%edx
 804b544:	89 50 0c             	mov    %edx,0xc(%eax)
 804b547:	8b 15 70 d0 04 08    	mov    0x804d070,%edx
 804b54d:	89 50 10             	mov    %edx,0x10(%eax)
 804b550:	8b 15 74 d0 04 08    	mov    0x804d074,%edx
 804b556:	89 50 14             	mov    %edx,0x14(%eax)
 804b559:	a1 58 61 3f 08       	mov    0x83f6158,%eax
 804b55e:	8b 04 85 50 61 3f 08 	mov    0x83f6150(,%eax,4),%eax
 804b565:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b56b:	8b 25 30 61 3f 08    	mov    0x83f6130,%esp
 804b571:	8e c8                	mov    %eax,%cs
