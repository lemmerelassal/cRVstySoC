
main.out:     file format elf32-littleriscv


Disassembly of section .text:

80010000 <_start-0x204>:
80010000:	2040006f          	j	80010204 <_start>
80010004:	00000013          	nop
80010008:	00000013          	nop
8001000c:	00000013          	nop
80010010:	00000013          	nop
80010014:	00000013          	nop
80010018:	00000013          	nop
8001001c:	00000013          	nop
80010020:	00000013          	nop
80010024:	00000013          	nop
80010028:	00000013          	nop
8001002c:	00000013          	nop
80010030:	00000013          	nop
80010034:	00000013          	nop
80010038:	00000013          	nop
8001003c:	00000013          	nop
80010040:	00000013          	nop
80010044:	00000013          	nop
80010048:	00000013          	nop
8001004c:	00000013          	nop
80010050:	00000013          	nop
80010054:	00000013          	nop
80010058:	00000013          	nop
8001005c:	00000013          	nop
80010060:	00000013          	nop
80010064:	00000013          	nop
80010068:	00000013          	nop
8001006c:	00000013          	nop
80010070:	00000013          	nop
80010074:	00000013          	nop
80010078:	00000013          	nop
8001007c:	00000013          	nop
80010080:	00000013          	nop
80010084:	00000013          	nop
80010088:	00000013          	nop
8001008c:	00000013          	nop
80010090:	00000013          	nop
80010094:	00000013          	nop
80010098:	00000013          	nop
8001009c:	00000013          	nop
800100a0:	00000013          	nop
800100a4:	00000013          	nop
800100a8:	00000013          	nop
800100ac:	00000013          	nop
800100b0:	00000013          	nop
800100b4:	00000013          	nop
800100b8:	00000013          	nop
800100bc:	00000013          	nop
800100c0:	00000013          	nop
800100c4:	00000013          	nop
800100c8:	00000013          	nop
800100cc:	00000013          	nop
800100d0:	00000013          	nop
800100d4:	00000013          	nop
800100d8:	00000013          	nop
800100dc:	00000013          	nop
800100e0:	00000013          	nop
800100e4:	00000013          	nop
800100e8:	00000013          	nop
800100ec:	00000013          	nop
800100f0:	00000013          	nop
800100f4:	00000013          	nop
800100f8:	00000013          	nop
800100fc:	00000013          	nop
80010100:	53d0106f          	j	80011e3c <_external_interrupt>
80010104:	00000013          	nop
80010108:	00000013          	nop
8001010c:	00000013          	nop
80010110:	00000013          	nop
80010114:	00000013          	nop
80010118:	00000013          	nop
8001011c:	00000013          	nop
80010120:	00000013          	nop
80010124:	00000013          	nop
80010128:	00000013          	nop
8001012c:	00000013          	nop
80010130:	00000013          	nop
80010134:	00000013          	nop
80010138:	00000013          	nop
8001013c:	00000013          	nop
80010140:	00000013          	nop
80010144:	00000013          	nop
80010148:	00000013          	nop
8001014c:	00000013          	nop
80010150:	00000013          	nop
80010154:	00000013          	nop
80010158:	00000013          	nop
8001015c:	00000013          	nop
80010160:	00000013          	nop
80010164:	00000013          	nop
80010168:	00000013          	nop
8001016c:	00000013          	nop
80010170:	00000013          	nop
80010174:	00000013          	nop
80010178:	00000013          	nop
8001017c:	00000013          	nop
80010180:	00000013          	nop
80010184:	00000013          	nop
80010188:	00000013          	nop
8001018c:	00000013          	nop
80010190:	00000013          	nop
80010194:	00000013          	nop
80010198:	00000013          	nop
8001019c:	00000013          	nop
800101a0:	00000013          	nop
800101a4:	00000013          	nop
800101a8:	00000013          	nop
800101ac:	00000013          	nop
800101b0:	00000013          	nop
800101b4:	00000013          	nop
800101b8:	00000013          	nop
800101bc:	00000013          	nop
800101c0:	00000013          	nop
800101c4:	00000013          	nop
800101c8:	00000013          	nop
800101cc:	00000013          	nop
800101d0:	00000013          	nop
800101d4:	00000013          	nop
800101d8:	00000013          	nop
800101dc:	00000013          	nop
800101e0:	00000013          	nop
800101e4:	00000013          	nop
800101e8:	00000013          	nop
800101ec:	00000013          	nop
800101f0:	00000013          	nop
800101f4:	00000013          	nop
800101f8:	00000013          	nop
800101fc:	00000013          	nop
80010200:	4410106f          	j	80011e40 <_misaligned_instruction>

80010204 <_start>:
80010204:	00000117          	auipc	sp,0x0
80010208:	dfc10113          	addi	sp,sp,-516 # 80010000 <__stack_top>
8001020c:	00000097          	auipc	ra,0x0
80010210:	00c08093          	addi	ra,ra,12 # 80010218 <exec_done>
80010214:	0000206f          	j	80012214 <main>

80010218 <exec_done>:
80010218:	0000006f          	j	80010218 <exec_done>
	...

80010284 <HAL_I2C_WriteByte>:
80010284:	c00047b7          	lui	a5,0xc0004
80010288:	00a78023          	sb	a0,0(a5) # c0004000 <__clzsi2+0x3ffecc9c>
8001028c:	00008067          	ret

80010290 <HAL_I2C_ReadByte>:
80010290:	c00047b7          	lui	a5,0xc0004
80010294:	0007c503          	lbu	a0,0(a5) # c0004000 <__clzsi2+0x3ffecc9c>
80010298:	0ff57513          	andi	a0,a0,255
8001029c:	00008067          	ret

800102a0 <HAL_I2C_SetDivider>:
800102a0:	c00047b7          	lui	a5,0xc0004
800102a4:	00a79223          	sh	a0,4(a5) # c0004004 <__clzsi2+0x3ffecca0>
800102a8:	00008067          	ret

800102ac <HAL_I2C_ReadACK>:
800102ac:	c00047b7          	lui	a5,0xc0004
800102b0:	0017c503          	lbu	a0,1(a5) # c0004001 <__clzsi2+0x3ffecc9d>
800102b4:	0ff57513          	andi	a0,a0,255
800102b8:	00008067          	ret

800102bc <HAL_I2C_WriteACK>:
800102bc:	00154513          	xori	a0,a0,1
800102c0:	c00047b7          	lui	a5,0xc0004
800102c4:	00a780a3          	sb	a0,1(a5) # c0004001 <__clzsi2+0x3ffecc9d>
800102c8:	00008067          	ret

800102cc <HAL_I2C_SetPins>:
800102cc:	c00047b7          	lui	a5,0xc0004
800102d0:	00a78123          	sb	a0,2(a5) # c0004002 <__clzsi2+0x3ffecc9e>
800102d4:	00008067          	ret

800102d8 <HAL_I2C_GetPins>:
800102d8:	c00047b7          	lui	a5,0xc0004
800102dc:	0027c503          	lbu	a0,2(a5) # c0004002 <__clzsi2+0x3ffecc9e>
800102e0:	0ff57513          	andi	a0,a0,255
800102e4:	00008067          	ret

800102e8 <HAL_SPI_WriteByte>:
800102e8:	c00037b7          	lui	a5,0xc0003
800102ec:	00a78023          	sb	a0,0(a5) # c0003000 <__clzsi2+0x3ffebc9c>
800102f0:	00008067          	ret

800102f4 <HAL_SPI_ReadByte>:
800102f4:	c00037b7          	lui	a5,0xc0003
800102f8:	0007c503          	lbu	a0,0(a5) # c0003000 <__clzsi2+0x3ffebc9c>
800102fc:	0ff57513          	andi	a0,a0,255
80010300:	00008067          	ret

80010304 <HAL_SPI_ReadByteWithAck>:
80010304:	c00037b7          	lui	a5,0xc0003
80010308:	0037c503          	lbu	a0,3(a5) # c0003003 <__clzsi2+0x3ffebc9f>
8001030c:	0ff57513          	andi	a0,a0,255
80010310:	00008067          	ret

80010314 <HAL_SPI_SetDivider>:
80010314:	c00037b7          	lui	a5,0xc0003
80010318:	00a780a3          	sb	a0,1(a5) # c0003001 <__clzsi2+0x3ffebc9d>
8001031c:	00008067          	ret

80010320 <HAL_SPI_SetConfig>:
80010320:	00a03533          	snez	a0,a0
80010324:	00b035b3          	snez	a1,a1
80010328:	00151513          	slli	a0,a0,0x1
8001032c:	00259593          	slli	a1,a1,0x2
80010330:	00c03633          	snez	a2,a2
80010334:	00b56533          	or	a0,a0,a1
80010338:	00361613          	slli	a2,a2,0x3
8001033c:	00d036b3          	snez	a3,a3
80010340:	00c56533          	or	a0,a0,a2
80010344:	00469693          	slli	a3,a3,0x4
80010348:	00e03733          	snez	a4,a4
8001034c:	00d56533          	or	a0,a0,a3
80010350:	00571713          	slli	a4,a4,0x5
80010354:	00e56533          	or	a0,a0,a4
80010358:	c00037b7          	lui	a5,0xc0003
8001035c:	00a78123          	sb	a0,2(a5) # c0003002 <__clzsi2+0x3ffebc9e>
80010360:	00008067          	ret

80010364 <FontSizeConvert>:
80010364:	800037b7          	lui	a5,0x80003
80010368:	77a7c783          	lbu	a5,1914(a5) # 8000377a <__clzsi2+0xfffec416>
8001036c:	00300713          	li	a4,3
80010370:	04e78063          	beq	a5,a4,800103b0 <FontSizeConvert+0x4c>
80010374:	00f76e63          	bltu	a4,a5,80010390 <FontSizeConvert+0x2c>
80010378:	00100713          	li	a4,1
8001037c:	02e78263          	beq	a5,a4,800103a0 <FontSizeConvert+0x3c>
80010380:	00200693          	li	a3,2
80010384:	02d78063          	beq	a5,a3,800103a4 <FontSizeConvert+0x40>
80010388:	00100793          	li	a5,1
8001038c:	0280006f          	j	800103b4 <FontSizeConvert+0x50>
80010390:	00400713          	li	a4,4
80010394:	fee79ae3          	bne	a5,a4,80010388 <FontSizeConvert+0x24>
80010398:	00600793          	li	a5,6
8001039c:	0180006f          	j	800103b4 <FontSizeConvert+0x50>
800103a0:	00200713          	li	a4,2
800103a4:	00e52023          	sw	a4,0(a0)
800103a8:	00f5a023          	sw	a5,0(a1)
800103ac:	00008067          	ret
800103b0:	00200793          	li	a5,2
800103b4:	00f52023          	sw	a5,0(a0)
800103b8:	ff1ff06f          	j	800103a8 <FontSizeConvert+0x44>

800103bc <SetFontSize>:
800103bc:	800037b7          	lui	a5,0x80003
800103c0:	76a78d23          	sb	a0,1914(a5) # 8000377a <__clzsi2+0xfffec416>
800103c4:	00008067          	ret

800103c8 <SetFontColor>:
800103c8:	800037b7          	lui	a5,0x80003
800103cc:	78a79023          	sh	a0,1920(a5) # 80003780 <__clzsi2+0xfffec41c>
800103d0:	800037b7          	lui	a5,0x80003
800103d4:	76b79a23          	sh	a1,1908(a5) # 80003774 <__clzsi2+0xfffec410>
800103d8:	800037b7          	lui	a5,0x80003
800103dc:	76c79f23          	sh	a2,1918(a5) # 8000377e <__clzsi2+0xfffec41a>
800103e0:	00008067          	ret

800103e4 <HAL_OLED_DrawGFXBuffer>:
800103e4:	fd010113          	addi	sp,sp,-48
800103e8:	01c00513          	li	a0,28
800103ec:	02812423          	sw	s0,40(sp)
800103f0:	02912223          	sw	s1,36(sp)
800103f4:	02112623          	sw	ra,44(sp)
800103f8:	03212023          	sw	s2,32(sp)
800103fc:	01312e23          	sw	s3,28(sp)
80010400:	01412c23          	sw	s4,24(sp)
80010404:	588000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010408:	755f07b7          	lui	a5,0x755f0
8001040c:	01578793          	addi	a5,a5,21 # 755f0015 <font6x8-0xaa10017>
80010410:	00f12423          	sw	a5,8(sp)
80010414:	000047b7          	lui	a5,0x4
80010418:	f0078793          	addi	a5,a5,-256 # 3f00 <font6x8-0x7fffc12c>
8001041c:	00f11623          	sh	a5,12(sp)
80010420:	00000413          	li	s0,0
80010424:	00600493          	li	s1,6
80010428:	00810793          	addi	a5,sp,8
8001042c:	008787b3          	add	a5,a5,s0
80010430:	0007c503          	lbu	a0,0(a5)
80010434:	00140413          	addi	s0,s0,1
80010438:	eb1ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
8001043c:	fe9416e3          	bne	s0,s1,80010428 <HAL_OLED_DrawGFXBuffer+0x44>
80010440:	80000437          	lui	s0,0x80000
80010444:	01e00513          	li	a0,30
80010448:	77040413          	addi	s0,s0,1904 # 80000770 <__clzsi2+0xfffe940c>
8001044c:	000039b7          	lui	s3,0x3
80010450:	53c000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010454:	013409b3          	add	s3,s0,s3
80010458:	06000a13          	li	s4,96
8001045c:	00040493          	mv	s1,s0
80010460:	00000913          	li	s2,0
80010464:	0004d503          	lhu	a0,0(s1)
80010468:	00190913          	addi	s2,s2,1
8001046c:	00248493          	addi	s1,s1,2
80010470:	00855513          	srli	a0,a0,0x8
80010474:	e75ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
80010478:	ffe4c503          	lbu	a0,-2(s1)
8001047c:	e6dff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
80010480:	ff4912e3          	bne	s2,s4,80010464 <HAL_OLED_DrawGFXBuffer+0x80>
80010484:	0c040413          	addi	s0,s0,192
80010488:	fd341ae3          	bne	s0,s3,8001045c <HAL_OLED_DrawGFXBuffer+0x78>
8001048c:	01d00513          	li	a0,29
80010490:	4fc000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010494:	02812403          	lw	s0,40(sp)
80010498:	02c12083          	lw	ra,44(sp)
8001049c:	02412483          	lw	s1,36(sp)
800104a0:	02012903          	lw	s2,32(sp)
800104a4:	01c12983          	lw	s3,28(sp)
800104a8:	01812a03          	lw	s4,24(sp)
800104ac:	00500513          	li	a0,5
800104b0:	03010113          	addi	sp,sp,48
800104b4:	4a80006f          	j	8001095c <HAL_Timebase_DelayMS>

800104b8 <HAL_OLED_DrawBitmap>:
800104b8:	fd010113          	addi	sp,sp,-48
800104bc:	01312e23          	sw	s3,28(sp)
800104c0:	00050993          	mv	s3,a0
800104c4:	01c00513          	li	a0,28
800104c8:	02812423          	sw	s0,40(sp)
800104cc:	02912223          	sw	s1,36(sp)
800104d0:	03212023          	sw	s2,32(sp)
800104d4:	01412c23          	sw	s4,24(sp)
800104d8:	01512a23          	sw	s5,20(sp)
800104dc:	00058913          	mv	s2,a1
800104e0:	00060413          	mv	s0,a2
800104e4:	00068493          	mv	s1,a3
800104e8:	02112623          	sw	ra,44(sp)
800104ec:	4a0000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
800104f0:	01500793          	li	a5,21
800104f4:	00f10423          	sb	a5,8(sp)
800104f8:	07500793          	li	a5,117
800104fc:	013104a3          	sb	s3,9(sp)
80010500:	00810523          	sb	s0,10(sp)
80010504:	00f105a3          	sb	a5,11(sp)
80010508:	01210623          	sb	s2,12(sp)
8001050c:	009106a3          	sb	s1,13(sp)
80010510:	00000a13          	li	s4,0
80010514:	00600a93          	li	s5,6
80010518:	00810793          	addi	a5,sp,8
8001051c:	014787b3          	add	a5,a5,s4
80010520:	0007c503          	lbu	a0,0(a5)
80010524:	001a0a13          	addi	s4,s4,1
80010528:	dc1ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
8001052c:	ff5a16e3          	bne	s4,s5,80010518 <HAL_OLED_DrawBitmap+0x60>
80010530:	01e00513          	li	a0,30
80010534:	458000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010538:	412485b3          	sub	a1,s1,s2
8001053c:	41340533          	sub	a0,s0,s3
80010540:	00158593          	addi	a1,a1,1
80010544:	00150513          	addi	a0,a0,1
80010548:	4b5060ef          	jal	ra,800171fc <__mulsi3>
8001054c:	00151493          	slli	s1,a0,0x1
80010550:	00000413          	li	s0,0
80010554:	80003937          	lui	s2,0x80003
80010558:	02849a63          	bne	s1,s0,8001058c <HAL_OLED_DrawBitmap+0xd4>
8001055c:	01d00513          	li	a0,29
80010560:	42c000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010564:	02812403          	lw	s0,40(sp)
80010568:	02c12083          	lw	ra,44(sp)
8001056c:	02412483          	lw	s1,36(sp)
80010570:	02012903          	lw	s2,32(sp)
80010574:	01c12983          	lw	s3,28(sp)
80010578:	01812a03          	lw	s4,24(sp)
8001057c:	01412a83          	lw	s5,20(sp)
80010580:	00500513          	li	a0,5
80010584:	03010113          	addi	sp,sp,48
80010588:	3d40006f          	j	8001095c <HAL_Timebase_DelayMS>
8001058c:	77494503          	lbu	a0,1908(s2) # 80003774 <__clzsi2+0xfffec410>
80010590:	00140413          	addi	s0,s0,1
80010594:	d55ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
80010598:	fc1ff06f          	j	80010558 <HAL_OLED_DrawBitmap+0xa0>

8001059c <HAL_OLED_ClearScreen>:
8001059c:	800007b7          	lui	a5,0x80000
800105a0:	ff010113          	addi	sp,sp,-16
800105a4:	77078793          	addi	a5,a5,1904 # 80000770 <__clzsi2+0xfffe940c>
800105a8:	00112623          	sw	ra,12(sp)
800105ac:	0c078613          	addi	a2,a5,192
800105b0:	04000593          	li	a1,64
800105b4:	00078693          	mv	a3,a5
800105b8:	00000713          	li	a4,0

800105bc:	00069023          	sh	zero,0(a3)
800105c0:	00170713          	addi	a4,a4,1
800105c4:	0c068693          	addi	a3,a3,192
800105c8:	feb71ae3          	bne	a4,a1,800105bc <HAL_OLED_ClearScreen+0x20>
800105cc:	00278793          	addi	a5,a5,2
800105d0:	fec792e3          	bne	a5,a2,800105b4 <HAL_OLED_ClearScreen+0x18>

800105d4:	00000713          	li	a4,0
800105d8:	03f00693          	li	a3,63
800105dc:	05f00613          	li	a2,95
800105e0:	00000593          	li	a1,0
800105e4:	00000513          	li	a0,0
800105e8:	ed1ff0ef          	jal	ra,800104b8 <HAL_OLED_DrawBitmap>
800105ec:	00c12083          	lw	ra,12(sp)
800105f0:	800037b7          	lui	a5,0x80003
800105f4:	760788a3          	sb	zero,1905(a5) # 80003771 <__clzsi2+0xfffec40d>
800105f8:	800037b7          	lui	a5,0x80003
800105fc:	76078ca3          	sb	zero,1913(a5) # 80003779 <__clzsi2+0xfffec415>
80010600:	01010113          	addi	sp,sp,16
80010604:	00008067          	ret

80010608 <HAL_OLED_Init>:
80010608:	fc010113          	addi	sp,sp,-64
8001060c:	06400513          	li	a0,100
80010610:	02112e23          	sw	ra,60(sp)
80010614:	02812c23          	sw	s0,56(sp)
80010618:	02912a23          	sw	s1,52(sp)
8001061c:	cf9ff0ef          	jal	ra,80010314 <HAL_SPI_SetDivider>
80010620:	00000713          	li	a4,0
80010624:	00000693          	li	a3,0
80010628:	00100613          	li	a2,1
8001062c:	00000593          	li	a1,0 # last line at async reset, branches to 8001063C
80010630:	00000513          	li	a0,0
80010634:	cedff0ef          	jal	ra,80010320 <HAL_SPI_SetConfig>
80010638:	01500513          	li	a0,21
8001063c:	350000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010640:	01f00513          	li	a0,31
80010644:	33c000ef          	jal	ra,80010980 <HAL_GPIO_SetDirections>
80010648:	01400513          	li	a0,20
8001064c:	310000ef          	jal	ra,8001095c <HAL_Timebase_DelayMS>
80010650:	01100513          	li	a0,17
80010654:	338000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010658:	00300513          	li	a0,3
8001065c:	2e0000ef          	jal	ra,8001093c <HAL_Timebase_DelayUS>
80010660:	01500513          	li	a0,21
80010664:	328000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010668:	00300513          	li	a0,3
8001066c:	2d0000ef          	jal	ra,8001093c <HAL_Timebase_DelayUS>
80010670:	01400513          	li	a0,20
80010674:	318000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
80010678:	800005b7          	lui	a1,0x80000
8001067c:	02c00613          	li	a2,44
80010680:	00058593          	mv	a1,a1
80010684:	00410513          	addi	a0,sp,4
80010688:	7d8010ef          	jal	ra,80011e60 <memcpy>
8001068c:	00000413          	li	s0,0
80010690:	02c00493          	li	s1,44
80010694:	00410793          	addi	a5,sp,4
80010698:	008787b3          	add	a5,a5,s0
8001069c:	0007c503          	lbu	a0,0(a5)
800106a0:	00140413          	addi	s0,s0,1
800106a4:	c45ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
800106a8:	fe9416e3          	bne	s0,s1,80010694 <HAL_OLED_Init+0x8c>
800106ac:	01c00513          	li	a0,28
800106b0:	2dc000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
800106b4:	01900513          	li	a0,25
800106b8:	2a4000ef          	jal	ra,8001095c <HAL_Timebase_DelayMS>
800106bc:	0af00513          	li	a0,175
800106c0:	c29ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
800106c4:	06400513          	li	a0,100
800106c8:	294000ef          	jal	ra,8001095c <HAL_Timebase_DelayMS>
800106cc:	01d00513          	li	a0,29
800106d0:	2bc000ef          	jal	ra,8001098c <HAL_GPIO_SetOutputs>
800106d4:	800037b7          	lui	a5,0x80003
800106d8:	76078d23          	sb	zero,1914(a5) # 8000377a <__clzsi2+0xfffec416>
800106dc:	fff00713          	li	a4,-1
800106e0:	800037b7          	lui	a5,0x80003
800106e4:	03812403          	lw	s0,56(sp)
800106e8:	78e79023          	sh	a4,1920(a5) # 80003780 <__clzsi2+0xfffec41c>
800106ec:	800037b7          	lui	a5,0x80003
800106f0:	03c12083          	lw	ra,60(sp)
800106f4:	03412483          	lw	s1,52(sp)
800106f8:	76079a23          	sh	zero,1908(a5) # 80003774 <__clzsi2+0xfffec410>
800106fc:	800037b7          	lui	a5,0x80003
80010700:	76079f23          	sh	zero,1918(a5) # 8000377e <__clzsi2+0xfffec41a>
80010704:	04010113          	addi	sp,sp,64
80010708:	e95ff06f          	j	8001059c <HAL_OLED_ClearScreen>

8001070c <HAL_OLED_SetPixel>:
8001070c:	80000737          	lui	a4,0x80000
80010710:	0015f793          	andi	a5,a1,1
80010714:	0015d693          	srli	a3,a1,0x1
80010718:	77070713          	addi	a4,a4,1904 # 80000770 <__clzsi2+0xfffe940c>
8001071c:	02079263          	bnez	a5,80010740 <HAL_OLED_SetPixel+0x34>
80010720:	00169793          	slli	a5,a3,0x1
80010724:	00d787b3          	add	a5,a5,a3
80010728:	00579793          	slli	a5,a5,0x5
8001072c:	00a78533          	add	a0,a5,a0
80010730:	00151513          	slli	a0,a0,0x1
80010734:	00a70533          	add	a0,a4,a0
80010738:	00c51023          	sh	a2,0(a0)
8001073c:	00008067          	ret
80010740:	01f58593          	addi	a1,a1,31 # 8000001f <__clzsi2+0xfffe8cbb>
80010744:	40d585b3          	sub	a1,a1,a3
80010748:	00159793          	slli	a5,a1,0x1
8001074c:	00b785b3          	add	a1,a5,a1
80010750:	00559593          	slli	a1,a1,0x5
80010754:	00a585b3          	add	a1,a1,a0
80010758:	00159593          	slli	a1,a1,0x1
8001075c:	00b705b3          	add	a1,a4,a1
80010760:	00c59023          	sh	a2,0(a1)
80010764:	00008067          	ret

80010768 <HAL_OLED_PutChar>:
80010768:	00a00713          	li	a4,10
8001076c:	800035b7          	lui	a1,0x80003
80010770:	800037b7          	lui	a5,0x80003
80010774:	00e50863          	beq	a0,a4,80010784 <HAL_OLED_PutChar+0x1c>
80010778:	7715c683          	lbu	a3,1905(a1) # 80003771 <__clzsi2+0xfffec40d>
8001077c:	05f00713          	li	a4,95
80010780:	00d77a63          	bgeu	a4,a3,80010794 <HAL_OLED_PutChar+0x2c>
80010784:	7797c703          	lbu	a4,1913(a5) # 80003779 <__clzsi2+0xfffec415>
80010788:	760588a3          	sb	zero,1905(a1)
8001078c:	00870713          	addi	a4,a4,8
80010790:	76e78ca3          	sb	a4,1913(a5)
80010794:	7797c683          	lbu	a3,1913(a5)
80010798:	03f00713          	li	a4,63
8001079c:	00d77463          	bgeu	a4,a3,800107a4 <HAL_OLED_PutChar+0x3c>
800107a0:	76078ca3          	sb	zero,1913(a5)
800107a4:	fe150713          	addi	a4,a0,-31
800107a8:	0ff77713          	andi	a4,a4,255
800107ac:	06000693          	li	a3,96
800107b0:	0ee6e463          	bltu	a3,a4,80010898 <HAL_OLED_PutChar+0x130>
800107b4:	7797c883          	lbu	a7,1913(a5)
800107b8:	7715c703          	lbu	a4,1905(a1)
800107bc:	800037b7          	lui	a5,0x80003
800107c0:	7747df03          	lhu	t5,1908(a5) # 80003774 <__clzsi2+0xfffec410>
800107c4:	80000837          	lui	a6,0x80000
800107c8:	00670313          	addi	t1,a4,6
800107cc:	00070613          	mv	a2,a4
800107d0:	00888e13          	addi	t3,a7,8
800107d4:	77080813          	addi	a6,a6,1904 # 80000770 <__clzsi2+0xfffe940c>
800107d8:	00088693          	mv	a3,a7
800107dc:	0016f793          	andi	a5,a3,1
800107e0:	4016de93          	srai	t4,a3,0x1
800107e4:	00078663          	beqz	a5,800107f0 <HAL_OLED_PutChar+0x88>
800107e8:	01f68793          	addi	a5,a3,31
800107ec:	41d78eb3          	sub	t4,a5,t4
800107f0:	001e9793          	slli	a5,t4,0x1
800107f4:	01d787b3          	add	a5,a5,t4
800107f8:	00579793          	slli	a5,a5,0x5
800107fc:	00c787b3          	add	a5,a5,a2
80010800:	00179793          	slli	a5,a5,0x1
80010804:	00f807b3          	add	a5,a6,a5
80010808:	01e79023          	sh	t5,0(a5)
8001080c:	00168693          	addi	a3,a3,1
80010810:	fdc696e3          	bne	a3,t3,800107dc <HAL_OLED_PutChar+0x74>
80010814:	00160613          	addi	a2,a2,1
80010818:	fc6610e3          	bne	a2,t1,800107d8 <HAL_OLED_PutChar+0x70>
8001081c:	800037b7          	lui	a5,0x80003
80010820:	7807df03          	lhu	t5,1920(a5) # 80003780 <__clzsi2+0xfffec41c>
80010824:	00151793          	slli	a5,a0,0x1
80010828:	800006b7          	lui	a3,0x80000
8001082c:	00a78533          	add	a0,a5,a0
80010830:	00151513          	slli	a0,a0,0x1
80010834:	02c68693          	addi	a3,a3,44 # 8000002c <__clzsi2+0xfffe8cc8>
80010838:	00a686b3          	add	a3,a3,a0
8001083c:	f406ce83          	lbu	t4,-192(a3)
80010840:	00088613          	mv	a2,a7
80010844:	001ef793          	andi	a5,t4,1
80010848:	02078a63          	beqz	a5,8001087c <HAL_OLED_PutChar+0x114>
8001084c:	00167793          	andi	a5,a2,1
80010850:	40165513          	srai	a0,a2,0x1
80010854:	00078663          	beqz	a5,80010860 <HAL_OLED_PutChar+0xf8>
80010858:	01f60793          	addi	a5,a2,31
8001085c:	40a78533          	sub	a0,a5,a0
80010860:	00151793          	slli	a5,a0,0x1
80010864:	00a787b3          	add	a5,a5,a0
80010868:	00579793          	slli	a5,a5,0x5
8001086c:	00e787b3          	add	a5,a5,a4
80010870:	00179793          	slli	a5,a5,0x1
80010874:	00f807b3          	add	a5,a6,a5
80010878:	01e79023          	sh	t5,0(a5)
8001087c:	00160613          	addi	a2,a2,1
80010880:	001ede93          	srli	t4,t4,0x1
80010884:	fdc610e3          	bne	a2,t3,80010844 <HAL_OLED_PutChar+0xdc>
80010888:	00170713          	addi	a4,a4,1
8001088c:	00168693          	addi	a3,a3,1
80010890:	fa6716e3          	bne	a4,t1,8001083c <HAL_OLED_PutChar+0xd4>
80010894:	76e588a3          	sb	a4,1905(a1)
80010898:	00008067          	ret

8001089c <HAL_UART_WriteBuffer>:
8001089c:	00000793          	li	a5,0
800108a0:	c00016b7          	lui	a3,0xc0001
800108a4:	00b79463          	bne	a5,a1,800108ac <HAL_UART_WriteBuffer+0x10>
800108a8:	00008067          	ret
800108ac:	0006c703          	lbu	a4,0(a3) # c0001000 <__clzsi2+0x3ffe9c9c>
800108b0:	00177713          	andi	a4,a4,1
800108b4:	fe071ce3          	bnez	a4,800108ac <HAL_UART_WriteBuffer+0x10>
800108b8:	00f50733          	add	a4,a0,a5
800108bc:	00074703          	lbu	a4,0(a4)
800108c0:	00178793          	addi	a5,a5,1
800108c4:	00e680a3          	sb	a4,1(a3)
800108c8:	fddff06f          	j	800108a4 <HAL_UART_WriteBuffer+0x8>

800108cc <HAL_UART_PutChar>:
800108cc:	c0001737          	lui	a4,0xc0001
800108d0:	00074783          	lbu	a5,0(a4) # c0001000 <__clzsi2+0x3ffe9c9c>
800108d4:	0017f793          	andi	a5,a5,1
800108d8:	fe079ce3          	bnez	a5,800108d0 <HAL_UART_PutChar+0x4>
800108dc:	00a700a3          	sb	a0,1(a4)
800108e0:	00008067          	ret

800108e4 <HAL_UART_PutLine>:
800108e4:	ff010113          	addi	sp,sp,-16
800108e8:	00812423          	sw	s0,8(sp)
800108ec:	00112623          	sw	ra,12(sp)
800108f0:	00050413          	mv	s0,a0
800108f4:	00044503          	lbu	a0,0(s0)
800108f8:	00051a63          	bnez	a0,8001090c <HAL_UART_PutLine+0x28>
800108fc:	00c12083          	lw	ra,12(sp)
80010900:	00812403          	lw	s0,8(sp)
80010904:	01010113          	addi	sp,sp,16
80010908:	00008067          	ret
8001090c:	fc1ff0ef          	jal	ra,800108cc <HAL_UART_PutChar>
80010910:	00140413          	addi	s0,s0,1
80010914:	fe1ff06f          	j	800108f4 <HAL_UART_PutLine+0x10>

80010918 <HAL_Timebase_GetSeconds>:
80010918:	c00007b7          	lui	a5,0xc0000
8001091c:	0047a503          	lw	a0,4(a5) # c0000004 <__clzsi2+0x3ffe8ca0>
80010920:	00008067          	ret

80010924 <HAL_Timebase_GetNanos>:
80010924:	c00007b7          	lui	a5,0xc0000
80010928:	0007a503          	lw	a0,0(a5) # c0000000 <__clzsi2+0x3ffe8c9c>
8001092c:	00008067          	ret

80010930 <HAL_Timebase_DelayNS>:
80010930:	c00007b7          	lui	a5,0xc0000
80010934:	00a7a423          	sw	a0,8(a5) # c0000008 <__clzsi2+0x3ffe8ca4>
80010938:	00008067          	ret

8001093c <HAL_Timebase_DelayUS>:
8001093c:	00000793          	li	a5,0
80010940:	c0000737          	lui	a4,0xc0000
80010944:	3e800693          	li	a3,1000
80010948:	00a79463          	bne	a5,a0,80010950 <HAL_Timebase_DelayUS+0x14>
8001094c:	00008067          	ret
80010950:	00d72423          	sw	a3,8(a4) # c0000008 <__clzsi2+0x3ffe8ca4>
80010954:	00178793          	addi	a5,a5,1
80010958:	ff1ff06f          	j	80010948 <HAL_Timebase_DelayUS+0xc>

8001095c <HAL_Timebase_DelayMS>:
8001095c:	000f4737          	lui	a4,0xf4
80010960:	00000793          	li	a5,0
80010964:	c00006b7          	lui	a3,0xc0000
80010968:	24070713          	addi	a4,a4,576 # f4240 <font6x8-0x7ff0bdec>
8001096c:	00a79463          	bne	a5,a0,80010974 <HAL_Timebase_DelayMS+0x18>
80010970:	00008067          	ret
80010974:	00e6a423          	sw	a4,8(a3) # c0000008 <__clzsi2+0x3ffe8ca4>
80010978:	00178793          	addi	a5,a5,1
8001097c:	ff1ff06f          	j	8001096c <HAL_Timebase_DelayMS+0x10>

80010980 <HAL_GPIO_SetDirections>:
80010980:	c00027b7          	lui	a5,0xc0002
80010984:	00a7a023          	sw	a0,0(a5) # c0002000 <__clzsi2+0x3ffeac9c>
80010988:	00008067          	ret

8001098c <HAL_GPIO_SetOutputs>:
8001098c:	c00027b7          	lui	a5,0xc0002
80010990:	00a7a223          	sw	a0,4(a5) # c0002004 <__clzsi2+0x3ffeaca0>
80010994:	00008067          	ret

80010998 <HAL_GPIO_GetInputs>:
80010998:	c00027b7          	lui	a5,0xc0002
8001099c:	0047a503          	lw	a0,4(a5) # c0002004 <__clzsi2+0x3ffeaca0>
800109a0:	00008067          	ret

800109a4 <null_ptr_check>:
800109a4:	00050793          	mv	a5,a0
800109a8:	02050463          	beqz	a0,800109d0 <null_ptr_check+0x2c>
800109ac:	04c52703          	lw	a4,76(a0)
800109b0:	fff00513          	li	a0,-1
800109b4:	02070063          	beqz	a4,800109d4 <null_ptr_check+0x30>
800109b8:	0507a703          	lw	a4,80(a5)
800109bc:	00070c63          	beqz	a4,800109d4 <null_ptr_check+0x30>
800109c0:	0547a503          	lw	a0,84(a5)
800109c4:	00153513          	seqz	a0,a0
800109c8:	40a00533          	neg	a0,a0
800109cc:	00008067          	ret
800109d0:	fff00513          	li	a0,-1
800109d4:	00008067          	ret

800109d8 <set_mem_page>:
800109d8:	fe010113          	addi	sp,sp,-32
800109dc:	01212823          	sw	s2,16(sp)
800109e0:	00050913          	mv	s2,a0
800109e4:	00058513          	mv	a0,a1
800109e8:	00812c23          	sw	s0,24(sp)
800109ec:	00912a23          	sw	s1,20(sp)
800109f0:	00112e23          	sw	ra,28(sp)
800109f4:	00058413          	mv	s0,a1
800109f8:	fadff0ef          	jal	ra,800109a4 <null_ptr_check>
800109fc:	00050493          	mv	s1,a0
80010a00:	08051063          	bnez	a0,80010a80 <set_mem_page+0xa8>
80010a04:	01891913          	slli	s2,s2,0x18
80010a08:	41895913          	srai	s2,s2,0x18
80010a0c:	00000793          	li	a5,0
80010a10:	00094463          	bltz	s2,80010a18 <set_mem_page+0x40>
80010a14:	01000793          	li	a5,16
80010a18:	00844703          	lbu	a4,8(s0)
80010a1c:	06f70263          	beq	a4,a5,80010a80 <set_mem_page+0xa8>
80010a20:	00f40423          	sb	a5,8(s0)
80010a24:	00144503          	lbu	a0,1(s0)
80010a28:	04c42783          	lw	a5,76(s0)
80010a2c:	00100693          	li	a3,1
80010a30:	00f10613          	addi	a2,sp,15
80010a34:	0f300593          	li	a1,243
80010a38:	000780e7          	jalr	a5
80010a3c:	04a40c23          	sb	a0,88(s0)
80010a40:	02051e63          	bnez	a0,80010a7c <set_mem_page+0xa4>
80010a44:	00f14703          	lbu	a4,15(sp)
80010a48:	00844783          	lbu	a5,8(s0)
80010a4c:	00144503          	lbu	a0,1(s0)
80010a50:	fef77713          	andi	a4,a4,-17
80010a54:	0107f793          	andi	a5,a5,16
80010a58:	00e7e7b3          	or	a5,a5,a4
80010a5c:	00f107a3          	sb	a5,15(sp)
80010a60:	05042783          	lw	a5,80(s0)
80010a64:	00100693          	li	a3,1
80010a68:	00f10613          	addi	a2,sp,15
80010a6c:	07300593          	li	a1,115
80010a70:	000780e7          	jalr	a5
80010a74:	04a40c23          	sb	a0,88(s0)
80010a78:	00050463          	beqz	a0,80010a80 <set_mem_page+0xa8>
80010a7c:	ffe00493          	li	s1,-2
80010a80:	01c12083          	lw	ra,28(sp)
80010a84:	01812403          	lw	s0,24(sp)
80010a88:	01012903          	lw	s2,16(sp)
80010a8c:	00048513          	mv	a0,s1
80010a90:	01412483          	lw	s1,20(sp)
80010a94:	02010113          	addi	sp,sp,32
80010a98:	00008067          	ret

80010a9c <get_mem_page.part.0>:
80010a9c:	fe010113          	addi	sp,sp,-32
80010aa0:	00812c23          	sw	s0,24(sp)
80010aa4:	00112e23          	sw	ra,28(sp)
80010aa8:	04c52783          	lw	a5,76(a0)
80010aac:	00050413          	mv	s0,a0
80010ab0:	00154503          	lbu	a0,1(a0)
80010ab4:	00100693          	li	a3,1
80010ab8:	00f10613          	addi	a2,sp,15
80010abc:	0f300593          	li	a1,243
80010ac0:	000780e7          	jalr	a5
80010ac4:	04a40c23          	sb	a0,88(s0)
80010ac8:	02051063          	bnez	a0,80010ae8 <get_mem_page.part.0+0x4c>
80010acc:	00f14783          	lbu	a5,15(sp)
80010ad0:	0107f793          	andi	a5,a5,16
80010ad4:	00f40423          	sb	a5,8(s0)
80010ad8:	01c12083          	lw	ra,28(sp)
80010adc:	01812403          	lw	s0,24(sp)
80010ae0:	02010113          	addi	sp,sp,32
80010ae4:	00008067          	ret
80010ae8:	ffe00513          	li	a0,-2
80010aec:	fedff06f          	j	80010ad8 <get_mem_page.part.0+0x3c>

80010af0 <boundary_check.isra.0.constprop.0>:
80010af0:	00054783          	lbu	a5,0(a0)
80010af4:	00f5fa63          	bgeu	a1,a5,80010b08 <boundary_check.isra.0.constprop.0+0x18>
80010af8:	00b50023          	sb	a1,0(a0)
80010afc:	00064783          	lbu	a5,0(a2)
80010b00:	0027e793          	ori	a5,a5,2
80010b04:	00f60023          	sb	a5,0(a2)
80010b08:	00000513          	li	a0,0
80010b0c:	00008067          	ret

80010b10 <bme680_get_regs>:
80010b10:	fe010113          	addi	sp,sp,-32
80010b14:	01212823          	sw	s2,16(sp)
80010b18:	00050913          	mv	s2,a0
80010b1c:	00068513          	mv	a0,a3
80010b20:	00812c23          	sw	s0,24(sp)
80010b24:	00912a23          	sw	s1,20(sp)
80010b28:	01312623          	sw	s3,12(sp)
80010b2c:	01412423          	sw	s4,8(sp)
80010b30:	00112e23          	sw	ra,28(sp)
80010b34:	00058993          	mv	s3,a1
80010b38:	00060a13          	mv	s4,a2
80010b3c:	00068493          	mv	s1,a3
80010b40:	e65ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010b44:	00050413          	mv	s0,a0
80010b48:	04051463          	bnez	a0,80010b90 <bme680_get_regs+0x80>
80010b4c:	0044a783          	lw	a5,4(s1)
80010b50:	00079e63          	bnez	a5,80010b6c <bme680_get_regs+0x5c>
80010b54:	00048593          	mv	a1,s1
80010b58:	00090513          	mv	a0,s2
80010b5c:	e7dff0ef          	jal	ra,800109d8 <set_mem_page>
80010b60:	00050413          	mv	s0,a0
80010b64:	00051463          	bnez	a0,80010b6c <bme680_get_regs+0x5c>
80010b68:	08096913          	ori	s2,s2,128
80010b6c:	04c4a783          	lw	a5,76(s1)
80010b70:	0014c503          	lbu	a0,1(s1)
80010b74:	000a0693          	mv	a3,s4
80010b78:	00098613          	mv	a2,s3
80010b7c:	00090593          	mv	a1,s2
80010b80:	000780e7          	jalr	a5
80010b84:	04a48c23          	sb	a0,88(s1)
80010b88:	00050463          	beqz	a0,80010b90 <bme680_get_regs+0x80>
80010b8c:	ffe00413          	li	s0,-2
80010b90:	01c12083          	lw	ra,28(sp)
80010b94:	00040513          	mv	a0,s0
80010b98:	01812403          	lw	s0,24(sp)
80010b9c:	01412483          	lw	s1,20(sp)
80010ba0:	01012903          	lw	s2,16(sp)
80010ba4:	00c12983          	lw	s3,12(sp)
80010ba8:	00812a03          	lw	s4,8(sp)
80010bac:	02010113          	addi	sp,sp,32
80010bb0:	00008067          	ret

80010bb4 <bme680_set_regs>:
80010bb4:	fb010113          	addi	sp,sp,-80
80010bb8:	04812423          	sw	s0,72(sp)
80010bbc:	03412c23          	sw	s4,56(sp)
80010bc0:	03512a23          	sw	s5,52(sp)
80010bc4:	00050a13          	mv	s4,a0
80010bc8:	00058a93          	mv	s5,a1
80010bcc:	00060413          	mv	s0,a2
80010bd0:	00000593          	li	a1,0
80010bd4:	02400613          	li	a2,36
80010bd8:	00c10513          	addi	a0,sp,12
80010bdc:	04912223          	sw	s1,68(sp)
80010be0:	04112623          	sw	ra,76(sp)
80010be4:	05212023          	sw	s2,64(sp)
80010be8:	03312e23          	sw	s3,60(sp)
80010bec:	03612823          	sw	s6,48(sp)
80010bf0:	00068493          	mv	s1,a3
80010bf4:	00012423          	sw	zero,8(sp)
80010bf8:	24c010ef          	jal	ra,80011e44 <memset>
80010bfc:	00048513          	mv	a0,s1
80010c00:	da5ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010c04:	06051263          	bnez	a0,80010c68 <bme680_set_regs+0xb4>
80010c08:	fff40793          	addi	a5,s0,-1
80010c0c:	0ff7f793          	andi	a5,a5,255
80010c10:	01200713          	li	a4,18
80010c14:	0af76e63          	bltu	a4,a5,80010cd0 <bme680_set_regs+0x11c>
80010c18:	01041413          	slli	s0,s0,0x10
80010c1c:	00810993          	addi	s3,sp,8
80010c20:	00000913          	li	s2,0
80010c24:	01045413          	srli	s0,s0,0x10
80010c28:	01091793          	slli	a5,s2,0x10
80010c2c:	0107d793          	srli	a5,a5,0x10
80010c30:	0687e063          	bltu	a5,s0,80010c90 <bme680_set_regs+0xdc>
80010c34:	02051a63          	bnez	a0,80010c68 <bme680_set_regs+0xb4>
80010c38:	00141413          	slli	s0,s0,0x1
80010c3c:	0504a783          	lw	a5,80(s1)
80010c40:	00814583          	lbu	a1,8(sp)
80010c44:	0014c503          	lbu	a0,1(s1)
80010c48:	fff40413          	addi	s0,s0,-1
80010c4c:	01041693          	slli	a3,s0,0x10
80010c50:	0106d693          	srli	a3,a3,0x10
80010c54:	00910613          	addi	a2,sp,9
80010c58:	000780e7          	jalr	a5
80010c5c:	04a48c23          	sb	a0,88(s1)
80010c60:	00050463          	beqz	a0,80010c68 <bme680_set_regs+0xb4>
80010c64:	ffe00513          	li	a0,-2
80010c68:	04c12083          	lw	ra,76(sp)
80010c6c:	04812403          	lw	s0,72(sp)
80010c70:	04412483          	lw	s1,68(sp)
80010c74:	04012903          	lw	s2,64(sp)
80010c78:	03c12983          	lw	s3,60(sp)
80010c7c:	03812a03          	lw	s4,56(sp)
80010c80:	03412a83          	lw	s5,52(sp)
80010c84:	03012b03          	lw	s6,48(sp)
80010c88:	05010113          	addi	sp,sp,80
80010c8c:	00008067          	ret
80010c90:	0044a703          	lw	a4,4(s1)
80010c94:	012a0b33          	add	s6,s4,s2
80010c98:	000b4783          	lbu	a5,0(s6)
80010c9c:	00071c63          	bnez	a4,80010cb4 <bme680_set_regs+0x100>
80010ca0:	00078513          	mv	a0,a5
80010ca4:	00048593          	mv	a1,s1
80010ca8:	d31ff0ef          	jal	ra,800109d8 <set_mem_page>
80010cac:	000b4783          	lbu	a5,0(s6)
80010cb0:	07f7f793          	andi	a5,a5,127
80010cb4:	00f98023          	sb	a5,0(s3) # 3000 <font6x8-0x7fffd02c>
80010cb8:	012a87b3          	add	a5,s5,s2
80010cbc:	0007c783          	lbu	a5,0(a5)
80010cc0:	00190913          	addi	s2,s2,1
80010cc4:	00298993          	addi	s3,s3,2
80010cc8:	fef98fa3          	sb	a5,-1(s3)
80010ccc:	f5dff06f          	j	80010c28 <bme680_set_regs+0x74>
80010cd0:	ffc00513          	li	a0,-4
80010cd4:	f95ff06f          	j	80010c68 <bme680_set_regs+0xb4>

80010cd8 <bme680_soft_reset>:
80010cd8:	fe010113          	addi	sp,sp,-32
80010cdc:	fe000793          	li	a5,-32
80010ce0:	00f10723          	sb	a5,14(sp)
80010ce4:	fb600793          	li	a5,-74
80010ce8:	00812c23          	sw	s0,24(sp)
80010cec:	00912a23          	sw	s1,20(sp)
80010cf0:	00112e23          	sw	ra,28(sp)
80010cf4:	00050493          	mv	s1,a0
80010cf8:	00f107a3          	sb	a5,15(sp)
80010cfc:	ca9ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010d00:	00050413          	mv	s0,a0
80010d04:	02051a63          	bnez	a0,80010d38 <bme680_soft_reset+0x60>
80010d08:	0044a783          	lw	a5,4(s1)
80010d0c:	04078263          	beqz	a5,80010d50 <bme680_soft_reset+0x78>
80010d10:	00048693          	mv	a3,s1
80010d14:	00100613          	li	a2,1
80010d18:	00f10593          	addi	a1,sp,15
80010d1c:	00e10513          	addi	a0,sp,14
80010d20:	e95ff0ef          	jal	ra,80010bb4 <bme680_set_regs>
80010d24:	0544a783          	lw	a5,84(s1)
80010d28:	00050413          	mv	s0,a0
80010d2c:	00a00513          	li	a0,10
80010d30:	000780e7          	jalr	a5
80010d34:	02040863          	beqz	s0,80010d64 <bme680_soft_reset+0x8c>
80010d38:	01c12083          	lw	ra,28(sp)
80010d3c:	00040513          	mv	a0,s0
80010d40:	01812403          	lw	s0,24(sp)
80010d44:	01412483          	lw	s1,20(sp)
80010d48:	02010113          	addi	sp,sp,32
80010d4c:	00008067          	ret
80010d50:	00048513          	mv	a0,s1
80010d54:	d49ff0ef          	jal	ra,80010a9c <get_mem_page.part.0>
80010d58:	00050413          	mv	s0,a0
80010d5c:	fc051ee3          	bnez	a0,80010d38 <bme680_soft_reset+0x60>
80010d60:	fb1ff06f          	j	80010d10 <bme680_soft_reset+0x38>
80010d64:	0044a783          	lw	a5,4(s1)
80010d68:	fc0798e3          	bnez	a5,80010d38 <bme680_soft_reset+0x60>
80010d6c:	00048513          	mv	a0,s1
80010d70:	c35ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010d74:	00050413          	mv	s0,a0
80010d78:	fc0510e3          	bnez	a0,80010d38 <bme680_soft_reset+0x60>
80010d7c:	00048513          	mv	a0,s1
80010d80:	d1dff0ef          	jal	ra,80010a9c <get_mem_page.part.0>
80010d84:	00050413          	mv	s0,a0
80010d88:	fb1ff06f          	j	80010d38 <bme680_soft_reset+0x60>

80010d8c <bme680_init>:
80010d8c:	fc010113          	addi	sp,sp,-64
80010d90:	02812c23          	sw	s0,56(sp)
80010d94:	02112e23          	sw	ra,60(sp)
80010d98:	00050413          	mv	s0,a0
80010d9c:	c09ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010da0:	00050793          	mv	a5,a0
80010da4:	22051c63          	bnez	a0,80010fdc <bme680_init+0x250>
80010da8:	00040513          	mv	a0,s0
80010dac:	f2dff0ef          	jal	ra,80010cd8 <bme680_soft_reset>
80010db0:	00050793          	mv	a5,a0
80010db4:	22051463          	bnez	a0,80010fdc <bme680_init+0x250>
80010db8:	00040693          	mv	a3,s0
80010dbc:	00100613          	li	a2,1
80010dc0:	00040593          	mv	a1,s0
80010dc4:	0d000513          	li	a0,208
80010dc8:	d49ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010dcc:	00050793          	mv	a5,a0
80010dd0:	20051663          	bnez	a0,80010fdc <bme680_init+0x250>
80010dd4:	00044683          	lbu	a3,0(s0)
80010dd8:	06100713          	li	a4,97
80010ddc:	ffd00793          	li	a5,-3
80010de0:	1ee69e63          	bne	a3,a4,80010fdc <bme680_init+0x250>
80010de4:	02500613          	li	a2,37
80010de8:	00000593          	li	a1,0
80010dec:	00810513          	addi	a0,sp,8
80010df0:	00012223          	sw	zero,4(sp)
80010df4:	050010ef          	jal	ra,80011e44 <memset>
80010df8:	00040513          	mv	a0,s0
80010dfc:	000101a3          	sb	zero,3(sp)
80010e00:	ba5ff0ef          	jal	ra,800109a4 <null_ptr_check>
80010e04:	00050793          	mv	a5,a0
80010e08:	1c051a63          	bnez	a0,80010fdc <bme680_init+0x250>
80010e0c:	00040693          	mv	a3,s0
80010e10:	01900613          	li	a2,25
80010e14:	00410593          	addi	a1,sp,4
80010e18:	08900513          	li	a0,137
80010e1c:	cf5ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010e20:	00050793          	mv	a5,a0
80010e24:	00051e63          	bnez	a0,80010e40 <bme680_init+0xb4>
80010e28:	00040693          	mv	a3,s0
80010e2c:	01000613          	li	a2,16
80010e30:	01d10593          	addi	a1,sp,29
80010e34:	0e100513          	li	a0,225
80010e38:	cd9ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010e3c:	00050793          	mv	a5,a0
80010e40:	02614703          	lbu	a4,38(sp)
80010e44:	02514683          	lbu	a3,37(sp)
80010e48:	00871713          	slli	a4,a4,0x8
80010e4c:	00d76733          	or	a4,a4,a3
80010e50:	00e41d23          	sh	a4,26(s0)
80010e54:	00614703          	lbu	a4,6(sp)
80010e58:	00514683          	lbu	a3,5(sp)
80010e5c:	00871713          	slli	a4,a4,0x8
80010e60:	00d76733          	or	a4,a4,a3
80010e64:	00e41e23          	sh	a4,28(s0)
80010e68:	00714703          	lbu	a4,7(sp)
80010e6c:	00914683          	lbu	a3,9(sp)
80010e70:	00e40f23          	sb	a4,30(s0)
80010e74:	00a14703          	lbu	a4,10(sp)
80010e78:	00871713          	slli	a4,a4,0x8
80010e7c:	00d76733          	or	a4,a4,a3
80010e80:	02e41023          	sh	a4,32(s0)
80010e84:	00c14703          	lbu	a4,12(sp)
80010e88:	00b14683          	lbu	a3,11(sp)
80010e8c:	00871713          	slli	a4,a4,0x8
80010e90:	00d76733          	or	a4,a4,a3
80010e94:	02e41123          	sh	a4,34(s0)
80010e98:	00d14703          	lbu	a4,13(sp)
80010e9c:	00f14683          	lbu	a3,15(sp)
80010ea0:	02e40223          	sb	a4,36(s0)
80010ea4:	01014703          	lbu	a4,16(sp)
80010ea8:	00871713          	slli	a4,a4,0x8
80010eac:	00d76733          	or	a4,a4,a3
80010eb0:	02e41323          	sh	a4,38(s0)
80010eb4:	01214703          	lbu	a4,18(sp)
80010eb8:	01114683          	lbu	a3,17(sp)
80010ebc:	00871713          	slli	a4,a4,0x8
80010ec0:	00d76733          	or	a4,a4,a3
80010ec4:	02e41423          	sh	a4,40(s0)
80010ec8:	01414703          	lbu	a4,20(sp)
80010ecc:	01714683          	lbu	a3,23(sp)
80010ed0:	02e40523          	sb	a4,42(s0)
80010ed4:	01314703          	lbu	a4,19(sp)
80010ed8:	02e405a3          	sb	a4,43(s0)
80010edc:	01814703          	lbu	a4,24(sp)
80010ee0:	00871713          	slli	a4,a4,0x8
80010ee4:	00d76733          	or	a4,a4,a3
80010ee8:	02e41623          	sh	a4,44(s0)
80010eec:	01a14703          	lbu	a4,26(sp)
80010ef0:	01914683          	lbu	a3,25(sp)
80010ef4:	00871713          	slli	a4,a4,0x8
80010ef8:	00d76733          	or	a4,a4,a3
80010efc:	02e41723          	sh	a4,46(s0)
80010f00:	01b14703          	lbu	a4,27(sp)
80010f04:	01e14603          	lbu	a2,30(sp)
80010f08:	01f14683          	lbu	a3,31(sp)
80010f0c:	02e40823          	sb	a4,48(s0)
80010f10:	00f67713          	andi	a4,a2,15
80010f14:	00469693          	slli	a3,a3,0x4
80010f18:	00e6e6b3          	or	a3,a3,a4
80010f1c:	01d14703          	lbu	a4,29(sp)
80010f20:	00465613          	srli	a2,a2,0x4
80010f24:	00d41623          	sh	a3,12(s0)
80010f28:	00471713          	slli	a4,a4,0x4
80010f2c:	00c76733          	or	a4,a4,a2
80010f30:	00e41723          	sh	a4,14(s0)
80010f34:	02012703          	lw	a4,32(sp)
80010f38:	02714683          	lbu	a3,39(sp)
80010f3c:	00e42823          	sw	a4,16(s0)
80010f40:	02414703          	lbu	a4,36(sp)
80010f44:	00e40a23          	sb	a4,20(s0)
80010f48:	02914703          	lbu	a4,41(sp)
80010f4c:	00e40aa3          	sb	a4,21(s0)
80010f50:	02814703          	lbu	a4,40(sp)
80010f54:	00871713          	slli	a4,a4,0x8
80010f58:	00d76733          	or	a4,a4,a3
80010f5c:	00e41b23          	sh	a4,22(s0)
80010f60:	02a14703          	lbu	a4,42(sp)
80010f64:	00e40c23          	sb	a4,24(s0)
80010f68:	06079463          	bnez	a5,80010fd0 <bme680_init+0x244>
80010f6c:	00040693          	mv	a3,s0
80010f70:	00100613          	li	a2,1
80010f74:	00310593          	addi	a1,sp,3
80010f78:	00200513          	li	a0,2
80010f7c:	b95ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010f80:	00314703          	lbu	a4,3(sp)
80010f84:	00050793          	mv	a5,a0
80010f88:	03077713          	andi	a4,a4,48
80010f8c:	40475713          	srai	a4,a4,0x4
80010f90:	02e40c23          	sb	a4,56(s0)
80010f94:	02051e63          	bnez	a0,80010fd0 <bme680_init+0x244>
80010f98:	00040693          	mv	a3,s0
80010f9c:	00100613          	li	a2,1
80010fa0:	00310593          	addi	a1,sp,3
80010fa4:	b6dff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010fa8:	00314703          	lbu	a4,3(sp)
80010fac:	00050793          	mv	a5,a0
80010fb0:	02e40ca3          	sb	a4,57(s0)
80010fb4:	00051e63          	bnez	a0,80010fd0 <bme680_init+0x244>
80010fb8:	00040693          	mv	a3,s0
80010fbc:	00100613          	li	a2,1
80010fc0:	00310593          	addi	a1,sp,3
80010fc4:	00400513          	li	a0,4
80010fc8:	b49ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80010fcc:	00050793          	mv	a5,a0
80010fd0:	00310703          	lb	a4,3(sp)
80010fd4:	40475713          	srai	a4,a4,0x4
80010fd8:	02e40d23          	sb	a4,58(s0)
80010fdc:	03c12083          	lw	ra,60(sp)
80010fe0:	03812403          	lw	s0,56(sp)
80010fe4:	00078513          	mv	a0,a5
80010fe8:	04010113          	addi	sp,sp,64
80010fec:	00008067          	ret

80010ff0 <bme680_get_sensor_settings>:
80010ff0:	fe010113          	addi	sp,sp,-32
80010ff4:	00912a23          	sw	s1,20(sp)
80010ff8:	00050493          	mv	s1,a0
80010ffc:	00058513          	mv	a0,a1
80011000:	00812c23          	sw	s0,24(sp)
80011004:	00112e23          	sw	ra,28(sp)
80011008:	00058413          	mv	s0,a1
8001100c:	00012423          	sw	zero,8(sp)
80011010:	00011623          	sh	zero,12(sp)
80011014:	991ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011018:	12051263          	bnez	a0,8001113c <bme680_get_sensor_settings+0x14c>
8001101c:	00040693          	mv	a3,s0
80011020:	00600613          	li	a2,6
80011024:	00810593          	addi	a1,sp,8
80011028:	07000513          	li	a0,112
8001102c:	ae5ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011030:	0e051c63          	bnez	a0,80011128 <bme680_get_sensor_settings+0x138>
80011034:	0084f793          	andi	a5,s1,8
80011038:	06078863          	beqz	a5,800110a8 <bme680_get_sensor_settings+0xb8>
8001103c:	00040513          	mv	a0,s0
80011040:	000103a3          	sb	zero,7(sp)
80011044:	961ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011048:	06051063          	bnez	a0,800110a8 <bme680_get_sensor_settings+0xb8>
8001104c:	00442783          	lw	a5,4(s0)
80011050:	04078463          	beqz	a5,80011098 <bme680_get_sensor_settings+0xa8>
80011054:	00040693          	mv	a3,s0
80011058:	00100613          	li	a2,1
8001105c:	00710593          	addi	a1,sp,7
80011060:	05a00513          	li	a0,90
80011064:	aadff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011068:	04051063          	bnez	a0,800110a8 <bme680_get_sensor_settings+0xb8>
8001106c:	00714783          	lbu	a5,7(sp)
80011070:	00040693          	mv	a3,s0
80011074:	00100613          	li	a2,1
80011078:	04f41223          	sh	a5,68(s0)
8001107c:	00710593          	addi	a1,sp,7
80011080:	06400513          	li	a0,100
80011084:	a8dff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011088:	02051063          	bnez	a0,800110a8 <bme680_get_sensor_settings+0xb8>
8001108c:	00714783          	lbu	a5,7(sp)
80011090:	04f41323          	sh	a5,70(s0)
80011094:	0140006f          	j	800110a8 <bme680_get_sensor_settings+0xb8>
80011098:	00040593          	mv	a1,s0
8001109c:	05a00513          	li	a0,90
800110a0:	939ff0ef          	jal	ra,800109d8 <set_mem_page>
800110a4:	fa0508e3          	beqz	a0,80011054 <bme680_get_sensor_settings+0x64>
800110a8:	0104f793          	andi	a5,s1,16
800110ac:	00078a63          	beqz	a5,800110c0 <bme680_get_sensor_settings+0xd0>
800110b0:	00d14783          	lbu	a5,13(sp)
800110b4:	4027d793          	srai	a5,a5,0x2
800110b8:	0077f793          	andi	a5,a5,7
800110bc:	02f40fa3          	sb	a5,63(s0)
800110c0:	0034f793          	andi	a5,s1,3
800110c4:	00078e63          	beqz	a5,800110e0 <bme680_get_sensor_settings+0xf0>
800110c8:	00c14783          	lbu	a5,12(sp)
800110cc:	0057d713          	srli	a4,a5,0x5
800110d0:	4027d793          	srai	a5,a5,0x2
800110d4:	0077f793          	andi	a5,a5,7
800110d8:	02e40ea3          	sb	a4,61(s0)
800110dc:	02f40f23          	sb	a5,62(s0)
800110e0:	0044f793          	andi	a5,s1,4
800110e4:	00078863          	beqz	a5,800110f4 <bme680_get_sensor_settings+0x104>
800110e8:	00a14783          	lbu	a5,10(sp)
800110ec:	0077f793          	andi	a5,a5,7
800110f0:	02f40e23          	sb	a5,60(s0)
800110f4:	0204f793          	andi	a5,s1,32
800110f8:	00078863          	beqz	a5,80011108 <bme680_get_sensor_settings+0x118>
800110fc:	00814783          	lbu	a5,8(sp)
80011100:	0087f793          	andi	a5,a5,8
80011104:	04f400a3          	sb	a5,65(s0)
80011108:	0c04f493          	andi	s1,s1,192
8001110c:	00048e63          	beqz	s1,80011128 <bme680_get_sensor_settings+0x138>
80011110:	00914783          	lbu	a5,9(sp)
80011114:	00f7f713          	andi	a4,a5,15
80011118:	4047d793          	srai	a5,a5,0x4
8001111c:	0017f793          	andi	a5,a5,1
80011120:	04e40023          	sb	a4,64(s0)
80011124:	04f40123          	sb	a5,66(s0)
80011128:	01c12083          	lw	ra,28(sp)
8001112c:	01812403          	lw	s0,24(sp)
80011130:	01412483          	lw	s1,20(sp)
80011134:	02010113          	addi	sp,sp,32
80011138:	00008067          	ret
8001113c:	fff00513          	li	a0,-1
80011140:	fe9ff06f          	j	80011128 <bme680_get_sensor_settings+0x138>

80011144 <bme680_set_sensor_mode>:
80011144:	fe010113          	addi	sp,sp,-32
80011148:	00812c23          	sw	s0,24(sp)
8001114c:	00112e23          	sw	ra,28(sp)
80011150:	00912a23          	sw	s1,20(sp)
80011154:	00050413          	mv	s0,a0
80011158:	84dff0ef          	jal	ra,800109a4 <null_ptr_check>
8001115c:	08051c63          	bnez	a0,800111f4 <bme680_set_sensor_mode+0xb0>
80011160:	00000493          	li	s1,0
80011164:	00040693          	mv	a3,s0
80011168:	00100613          	li	a2,1
8001116c:	00f10593          	addi	a1,sp,15
80011170:	07400513          	li	a0,116
80011174:	99dff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011178:	04051063          	bnez	a0,800111b8 <bme680_set_sensor_mode+0x74>
8001117c:	00f14783          	lbu	a5,15(sp)
80011180:	0037f493          	andi	s1,a5,3
80011184:	02048c63          	beqz	s1,800111bc <bme680_set_sensor_mode+0x78>
80011188:	ffc7f793          	andi	a5,a5,-4
8001118c:	00f107a3          	sb	a5,15(sp)
80011190:	05042783          	lw	a5,80(s0)
80011194:	00100693          	li	a3,1
80011198:	00f10613          	addi	a2,sp,15
8001119c:	07400593          	li	a1,116
800111a0:	00100513          	li	a0,1
800111a4:	000780e7          	jalr	a5
800111a8:	05442783          	lw	a5,84(s0)
800111ac:	00a00513          	li	a0,10
800111b0:	000780e7          	jalr	a5
800111b4:	fb1ff06f          	j	80011164 <bme680_set_sensor_mode+0x20>
800111b8:	fa0496e3          	bnez	s1,80011164 <bme680_set_sensor_mode+0x20>
800111bc:	04844703          	lbu	a4,72(s0)
800111c0:	02070a63          	beqz	a4,800111f4 <bme680_set_sensor_mode+0xb0>
800111c4:	00f14783          	lbu	a5,15(sp)
800111c8:	00377713          	andi	a4,a4,3
800111cc:	ffc7f793          	andi	a5,a5,-4
800111d0:	00e7e7b3          	or	a5,a5,a4
800111d4:	00f107a3          	sb	a5,15(sp)
800111d8:	00051e63          	bnez	a0,800111f4 <bme680_set_sensor_mode+0xb0>
800111dc:	05042783          	lw	a5,80(s0)
800111e0:	00100693          	li	a3,1
800111e4:	00f10613          	addi	a2,sp,15
800111e8:	07400593          	li	a1,116
800111ec:	00100513          	li	a0,1
800111f0:	000780e7          	jalr	a5
800111f4:	01c12083          	lw	ra,28(sp)
800111f8:	01812403          	lw	s0,24(sp)
800111fc:	01412483          	lw	s1,20(sp)
80011200:	02010113          	addi	sp,sp,32
80011204:	00008067          	ret

80011208 <bme680_set_sensor_settings>:
80011208:	fc010113          	addi	sp,sp,-64
8001120c:	03212823          	sw	s2,48(sp)
80011210:	00050913          	mv	s2,a0
80011214:	00058513          	mv	a0,a1
80011218:	02812c23          	sw	s0,56(sp)
8001121c:	02912a23          	sw	s1,52(sp)
80011220:	02112e23          	sw	ra,60(sp)
80011224:	03312623          	sw	s3,44(sp)
80011228:	00058493          	mv	s1,a1
8001122c:	00010ba3          	sb	zero,23(sp)
80011230:	f74ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011234:	00050413          	mv	s0,a0
80011238:	2a051e63          	bnez	a0,800114f4 <bme680_set_sensor_settings+0x2ec>
8001123c:	00897793          	andi	a5,s2,8
80011240:	0484c983          	lbu	s3,72(s1)
80011244:	00079c63          	bnez	a5,8001125c <bme680_set_sensor_settings+0x54>
80011248:	04048423          	sb	zero,72(s1)
8001124c:	00048513          	mv	a0,s1
80011250:	ef5ff0ef          	jal	ra,80011144 <bme680_set_sensor_mode>
80011254:	00050413          	mv	s0,a0
80011258:	0180006f          	j	80011270 <bme680_set_sensor_settings+0x68>
8001125c:	00011e23          	sh	zero,28(sp)
80011260:	00100793          	li	a5,1
80011264:	2af98863          	beq	s3,a5,80011514 <bme680_set_sensor_settings+0x30c>
80011268:	04048423          	sb	zero,72(s1)
8001126c:	00100413          	li	s0,1
80011270:	01097793          	andi	a5,s2,16
80011274:	06078463          	beqz	a5,800112dc <bme680_set_sensor_settings+0xd4>
80011278:	04a48613          	addi	a2,s1,74
8001127c:	00700593          	li	a1,7
80011280:	03f48513          	addi	a0,s1,63
80011284:	86dff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
80011288:	00050413          	mv	s0,a0
8001128c:	00051e63          	bnez	a0,800112a8 <bme680_set_sensor_settings+0xa0>
80011290:	00048693          	mv	a3,s1
80011294:	00100613          	li	a2,1
80011298:	01710593          	addi	a1,sp,23
8001129c:	07500513          	li	a0,117
800112a0:	871ff0ef          	jal	ra,80010b10 <bme680_get_regs>
800112a4:	00050413          	mv	s0,a0
800112a8:	03f4c783          	lbu	a5,63(s1)
800112ac:	01714703          	lbu	a4,23(sp)
800112b0:	00100693          	li	a3,1
800112b4:	00279793          	slli	a5,a5,0x2
800112b8:	01c7f793          	andi	a5,a5,28
800112bc:	fe377713          	andi	a4,a4,-29
800112c0:	00e7e7b3          	or	a5,a5,a4
800112c4:	00f10ba3          	sb	a5,23(sp)
800112c8:	0504a783          	lw	a5,80(s1)
800112cc:	01710613          	addi	a2,sp,23
800112d0:	07500593          	li	a1,117
800112d4:	00100513          	li	a0,1
800112d8:	000780e7          	jalr	a5
800112dc:	02097793          	andi	a5,s2,32
800112e0:	06078263          	beqz	a5,80011344 <bme680_set_sensor_settings+0x13c>
800112e4:	04a48613          	addi	a2,s1,74
800112e8:	00800593          	li	a1,8
800112ec:	04148513          	addi	a0,s1,65
800112f0:	801ff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
800112f4:	00050413          	mv	s0,a0
800112f8:	00051e63          	bnez	a0,80011314 <bme680_set_sensor_settings+0x10c>
800112fc:	00048693          	mv	a3,s1
80011300:	00100613          	li	a2,1
80011304:	01710593          	addi	a1,sp,23
80011308:	07000513          	li	a0,112
8001130c:	805ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011310:	00050413          	mv	s0,a0
80011314:	01714783          	lbu	a5,23(sp)
80011318:	0414c703          	lbu	a4,65(s1)
8001131c:	00100693          	li	a3,1
80011320:	ff77f793          	andi	a5,a5,-9
80011324:	00877713          	andi	a4,a4,8
80011328:	00e7e7b3          	or	a5,a5,a4
8001132c:	00f10ba3          	sb	a5,23(sp)
80011330:	0504a783          	lw	a5,80(s1)
80011334:	01710613          	addi	a2,sp,23
80011338:	07000593          	li	a1,112
8001133c:	00100513          	li	a0,1
80011340:	000780e7          	jalr	a5
80011344:	00397793          	andi	a5,s2,3
80011348:	08078863          	beqz	a5,800113d8 <bme680_set_sensor_settings+0x1d0>
8001134c:	04a48613          	addi	a2,s1,74
80011350:	00500593          	li	a1,5
80011354:	03d48513          	addi	a0,s1,61
80011358:	f98ff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
8001135c:	00050413          	mv	s0,a0
80011360:	00051e63          	bnez	a0,8001137c <bme680_set_sensor_settings+0x174>
80011364:	00048693          	mv	a3,s1
80011368:	00100613          	li	a2,1
8001136c:	01710593          	addi	a1,sp,23
80011370:	07400513          	li	a0,116
80011374:	f9cff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011378:	00050413          	mv	s0,a0
8001137c:	00197793          	andi	a5,s2,1
80011380:	00078e63          	beqz	a5,8001139c <bme680_set_sensor_settings+0x194>
80011384:	01714783          	lbu	a5,23(sp)
80011388:	03d4c703          	lbu	a4,61(s1)
8001138c:	01f7f793          	andi	a5,a5,31
80011390:	00571713          	slli	a4,a4,0x5
80011394:	00e7e7b3          	or	a5,a5,a4
80011398:	00f10ba3          	sb	a5,23(sp)
8001139c:	00297793          	andi	a5,s2,2
800113a0:	02078063          	beqz	a5,800113c0 <bme680_set_sensor_settings+0x1b8>
800113a4:	03e4c783          	lbu	a5,62(s1)
800113a8:	01714703          	lbu	a4,23(sp)
800113ac:	00279793          	slli	a5,a5,0x2
800113b0:	01c7f793          	andi	a5,a5,28
800113b4:	fe377713          	andi	a4,a4,-29
800113b8:	00e7e7b3          	or	a5,a5,a4
800113bc:	00f10ba3          	sb	a5,23(sp)
800113c0:	0504a783          	lw	a5,80(s1)
800113c4:	00100693          	li	a3,1
800113c8:	01710613          	addi	a2,sp,23
800113cc:	07400593          	li	a1,116
800113d0:	00100513          	li	a0,1
800113d4:	000780e7          	jalr	a5
800113d8:	00497793          	andi	a5,s2,4
800113dc:	06078263          	beqz	a5,80011440 <bme680_set_sensor_settings+0x238>
800113e0:	04a48613          	addi	a2,s1,74
800113e4:	00500593          	li	a1,5
800113e8:	03c48513          	addi	a0,s1,60
800113ec:	f04ff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
800113f0:	00050413          	mv	s0,a0
800113f4:	00051e63          	bnez	a0,80011410 <bme680_set_sensor_settings+0x208>
800113f8:	00048693          	mv	a3,s1
800113fc:	00100613          	li	a2,1
80011400:	01710593          	addi	a1,sp,23
80011404:	07200513          	li	a0,114
80011408:	f08ff0ef          	jal	ra,80010b10 <bme680_get_regs>
8001140c:	00050413          	mv	s0,a0
80011410:	01714783          	lbu	a5,23(sp)
80011414:	03c4c703          	lbu	a4,60(s1)
80011418:	00100693          	li	a3,1
8001141c:	ff87f793          	andi	a5,a5,-8
80011420:	00777713          	andi	a4,a4,7
80011424:	00e7e7b3          	or	a5,a5,a4
80011428:	00f10ba3          	sb	a5,23(sp)
8001142c:	0504a783          	lw	a5,80(s1)
80011430:	01710613          	addi	a2,sp,23
80011434:	07200593          	li	a1,114
80011438:	00100513          	li	a0,1
8001143c:	000780e7          	jalr	a5
80011440:	0c097793          	andi	a5,s2,192
80011444:	0a078663          	beqz	a5,800114f0 <bme680_set_sensor_settings+0x2e8>
80011448:	04a48613          	addi	a2,s1,74
8001144c:	00100593          	li	a1,1
80011450:	04248513          	addi	a0,s1,66
80011454:	00c12623          	sw	a2,12(sp)
80011458:	e98ff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
8001145c:	00c12603          	lw	a2,12(sp)
80011460:	00050413          	mv	s0,a0
80011464:	02051863          	bnez	a0,80011494 <bme680_set_sensor_settings+0x28c>
80011468:	00a00593          	li	a1,10
8001146c:	04048513          	addi	a0,s1,64
80011470:	e80ff0ef          	jal	ra,80010af0 <boundary_check.isra.0.constprop.0>
80011474:	00050413          	mv	s0,a0
80011478:	00051e63          	bnez	a0,80011494 <bme680_set_sensor_settings+0x28c>
8001147c:	00048693          	mv	a3,s1
80011480:	00100613          	li	a2,1
80011484:	01710593          	addi	a1,sp,23
80011488:	07100513          	li	a0,113
8001148c:	e84ff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011490:	00050413          	mv	s0,a0
80011494:	04097793          	andi	a5,s2,64
80011498:	02078063          	beqz	a5,800114b8 <bme680_set_sensor_settings+0x2b0>
8001149c:	0424c783          	lbu	a5,66(s1)
800114a0:	01714703          	lbu	a4,23(sp)
800114a4:	00479793          	slli	a5,a5,0x4
800114a8:	0107f793          	andi	a5,a5,16
800114ac:	fef77713          	andi	a4,a4,-17
800114b0:	00e7e7b3          	or	a5,a5,a4
800114b4:	00f10ba3          	sb	a5,23(sp)
800114b8:	08097913          	andi	s2,s2,128
800114bc:	00090e63          	beqz	s2,800114d8 <bme680_set_sensor_settings+0x2d0>
800114c0:	01714783          	lbu	a5,23(sp)
800114c4:	0404c703          	lbu	a4,64(s1)
800114c8:	ff07f793          	andi	a5,a5,-16
800114cc:	00f77713          	andi	a4,a4,15
800114d0:	00e7e7b3          	or	a5,a5,a4
800114d4:	00f10ba3          	sb	a5,23(sp)
800114d8:	0504a783          	lw	a5,80(s1)
800114dc:	00100693          	li	a3,1
800114e0:	01710613          	addi	a2,sp,23
800114e4:	07100593          	li	a1,113
800114e8:	00100513          	li	a0,1
800114ec:	000780e7          	jalr	a5
800114f0:	05348423          	sb	s3,72(s1)
800114f4:	03c12083          	lw	ra,60(sp)
800114f8:	00040513          	mv	a0,s0
800114fc:	03812403          	lw	s0,56(sp)
80011500:	03412483          	lw	s1,52(sp)
80011504:	03012903          	lw	s2,48(sp)
80011508:	02c12983          	lw	s3,44(sp)
8001150c:	04010113          	addi	sp,sp,64
80011510:	00008067          	ret
80011514:	0444d583          	lhu	a1,68(s1)
80011518:	01649503          	lh	a0,22(s1)
8001151c:	000267b7          	lui	a5,0x26
80011520:	99978793          	addi	a5,a5,-1639 # 25999 <font6x8-0x7ffda693>
80011524:	01059713          	slli	a4,a1,0x10
80011528:	00f50533          	add	a0,a0,a5
8001152c:	01075713          	srli	a4,a4,0x10
80011530:	19000793          	li	a5,400
80011534:	00e7f463          	bgeu	a5,a4,8001153c <bme680_set_sensor_settings+0x334>
80011538:	19000593          	li	a1,400
8001153c:	01059593          	slli	a1,a1,0x10
80011540:	0105d593          	srli	a1,a1,0x10
80011544:	4b9050ef          	jal	ra,800171fc <__mulsi3>
80011548:	01400593          	li	a1,20
8001154c:	565050ef          	jal	ra,800172b0 <__divsi3>
80011550:	003207b7          	lui	a5,0x320
80011554:	00f50533          	add	a0,a0,a5
80011558:	00a00593          	li	a1,10
8001155c:	555050ef          	jal	ra,800172b0 <__divsi3>
80011560:	01548583          	lb	a1,21(s1)
80011564:	31058593          	addi	a1,a1,784
80011568:	495050ef          	jal	ra,800171fc <__mulsi3>
8001156c:	01848583          	lb	a1,24(s1)
80011570:	40155413          	srai	s0,a0,0x1
80011574:	00948503          	lb	a0,9(s1)
80011578:	485050ef          	jal	ra,800171fc <__mulsi3>
8001157c:	3e800593          	li	a1,1000
80011580:	531050ef          	jal	ra,800172b0 <__divsi3>
80011584:	0384c583          	lbu	a1,56(s1)
80011588:	00851513          	slli	a0,a0,0x8
8001158c:	00a40533          	add	a0,s0,a0
80011590:	00458593          	addi	a1,a1,4
80011594:	51d050ef          	jal	ra,800172b0 <__divsi3>
80011598:	03948583          	lb	a1,57(s1)
8001159c:	00559793          	slli	a5,a1,0x5
800115a0:	00b787b3          	add	a5,a5,a1
800115a4:	00279793          	slli	a5,a5,0x2
800115a8:	40b787b3          	sub	a5,a5,a1
800115ac:	000105b7          	lui	a1,0x10
800115b0:	00b785b3          	add	a1,a5,a1
800115b4:	4fd050ef          	jal	ra,800172b0 <__divsi3>
800115b8:	f0650793          	addi	a5,a0,-250
800115bc:	00479513          	slli	a0,a5,0x4
800115c0:	00f50533          	add	a0,a0,a5
800115c4:	00151513          	slli	a0,a0,0x1
800115c8:	06400593          	li	a1,100
800115cc:	03250513          	addi	a0,a0,50
800115d0:	4e1050ef          	jal	ra,800172b0 <__divsi3>
800115d4:	000067b7          	lui	a5,0x6
800115d8:	0464d703          	lhu	a4,70(s1)
800115dc:	45a78793          	addi	a5,a5,1114 # 645a <font6x8-0x7fff9bd2>
800115e0:	000016b7          	lui	a3,0x1
800115e4:	00f11c23          	sh	a5,24(sp)
800115e8:	00a10e23          	sb	a0,28(sp)
800115ec:	fbf68693          	addi	a3,a3,-65 # fbf <font6x8-0x7ffff06d>
800115f0:	0ff00793          	li	a5,255
800115f4:	00e6ee63          	bltu	a3,a4,80011610 <bme680_set_sensor_settings+0x408>
800115f8:	00000793          	li	a5,0
800115fc:	03f00693          	li	a3,63
80011600:	02e6ee63          	bltu	a3,a4,8001163c <bme680_set_sensor_settings+0x434>
80011604:	00679793          	slli	a5,a5,0x6
80011608:	00e787b3          	add	a5,a5,a4
8001160c:	0ff7f793          	andi	a5,a5,255
80011610:	04048023          	sb	zero,64(s1)
80011614:	00048693          	mv	a3,s1
80011618:	00200613          	li	a2,2
8001161c:	01c10593          	addi	a1,sp,28
80011620:	01810513          	addi	a0,sp,24
80011624:	00f10ea3          	sb	a5,29(sp)
80011628:	d8cff0ef          	jal	ra,80010bb4 <bme680_set_regs>
8001162c:	04048423          	sb	zero,72(s1)
80011630:	00050413          	mv	s0,a0
80011634:	c2051ee3          	bnez	a0,80011270 <bme680_set_sensor_settings+0x68>
80011638:	c15ff06f          	j	8001124c <bme680_set_sensor_settings+0x44>
8001163c:	00178793          	addi	a5,a5,1
80011640:	00275713          	srli	a4,a4,0x2
80011644:	0ff7f793          	andi	a5,a5,255
80011648:	fb9ff06f          	j	80011600 <bme680_set_sensor_settings+0x3f8>

8001164c <bme680_get_sensor_mode>:
8001164c:	fe010113          	addi	sp,sp,-32
80011650:	00812c23          	sw	s0,24(sp)
80011654:	00112e23          	sw	ra,28(sp)
80011658:	00050413          	mv	s0,a0
8001165c:	b48ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011660:	02051263          	bnez	a0,80011684 <bme680_get_sensor_mode+0x38>
80011664:	00040693          	mv	a3,s0
80011668:	00100613          	li	a2,1
8001166c:	00f10593          	addi	a1,sp,15
80011670:	07400513          	li	a0,116
80011674:	c9cff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011678:	00f14783          	lbu	a5,15(sp)
8001167c:	0037f793          	andi	a5,a5,3
80011680:	04f40423          	sb	a5,72(s0)
80011684:	01c12083          	lw	ra,28(sp)
80011688:	01812403          	lw	s0,24(sp)
8001168c:	02010113          	addi	sp,sp,32
80011690:	00008067          	ret

80011694 <bme680_set_profile_dur>:
80011694:	fe010113          	addi	sp,sp,-32
80011698:	040207b7          	lui	a5,0x4020
8001169c:	01212823          	sw	s2,16(sp)
800116a0:	10078793          	addi	a5,a5,256 # 4020100 <font6x8-0x7bfdff2c>
800116a4:	00001937          	lui	s2,0x1
800116a8:	00112e23          	sw	ra,28(sp)
800116ac:	00812c23          	sw	s0,24(sp)
800116b0:	00912a23          	sw	s1,20(sp)
800116b4:	00f12423          	sw	a5,8(sp)
800116b8:	00890793          	addi	a5,s2,8 # 1008 <font6x8-0x7ffff024>
800116bc:	00f11623          	sh	a5,12(sp)
800116c0:	03d5c783          	lbu	a5,61(a1) # 1003d <font6x8-0x7ffeffef>
800116c4:	01010713          	addi	a4,sp,16
800116c8:	00050493          	mv	s1,a0
800116cc:	00f707b3          	add	a5,a4,a5
800116d0:	03e5c703          	lbu	a4,62(a1)
800116d4:	ff87c503          	lbu	a0,-8(a5)
800116d8:	01010793          	addi	a5,sp,16
800116dc:	00e78733          	add	a4,a5,a4
800116e0:	ff874783          	lbu	a5,-8(a4)
800116e4:	03c5c703          	lbu	a4,60(a1)
800116e8:	01010693          	addi	a3,sp,16
800116ec:	00a787b3          	add	a5,a5,a0
800116f0:	00e68733          	add	a4,a3,a4
800116f4:	ff874503          	lbu	a0,-8(a4)
800116f8:	00058413          	mv	s0,a1
800116fc:	7ab00593          	li	a1,1963
80011700:	00f50533          	add	a0,a0,a5
80011704:	2f9050ef          	jal	ra,800171fc <__mulsi3>
80011708:	2b990913          	addi	s2,s2,697
8001170c:	01250533          	add	a0,a0,s2
80011710:	3e800593          	li	a1,1000
80011714:	3a5050ef          	jal	ra,800172b8 <__udivsi3>
80011718:	00150513          	addi	a0,a0,1
8001171c:	40a484b3          	sub	s1,s1,a0
80011720:	04941323          	sh	s1,70(s0)
80011724:	01c12083          	lw	ra,28(sp)
80011728:	01812403          	lw	s0,24(sp)
8001172c:	01412483          	lw	s1,20(sp)
80011730:	01012903          	lw	s2,16(sp)
80011734:	02010113          	addi	sp,sp,32
80011738:	00008067          	ret

8001173c <bme680_get_profile_dur>:
8001173c:	fe010113          	addi	sp,sp,-32
80011740:	040207b7          	lui	a5,0x4020
80011744:	01212823          	sw	s2,16(sp)
80011748:	10078793          	addi	a5,a5,256 # 4020100 <font6x8-0x7bfdff2c>
8001174c:	00001937          	lui	s2,0x1
80011750:	00112e23          	sw	ra,28(sp)
80011754:	00812c23          	sw	s0,24(sp)
80011758:	00912a23          	sw	s1,20(sp)
8001175c:	00f12423          	sw	a5,8(sp)
80011760:	00890793          	addi	a5,s2,8 # 1008 <font6x8-0x7ffff024>
80011764:	00f11623          	sh	a5,12(sp)
80011768:	03d5c783          	lbu	a5,61(a1)
8001176c:	01010713          	addi	a4,sp,16
80011770:	00050493          	mv	s1,a0
80011774:	00f707b3          	add	a5,a4,a5
80011778:	03e5c703          	lbu	a4,62(a1)
8001177c:	ff87c503          	lbu	a0,-8(a5)
80011780:	01010793          	addi	a5,sp,16
80011784:	00e78733          	add	a4,a5,a4
80011788:	ff874783          	lbu	a5,-8(a4)
8001178c:	03c5c703          	lbu	a4,60(a1)
80011790:	01010693          	addi	a3,sp,16
80011794:	00a787b3          	add	a5,a5,a0
80011798:	00e68733          	add	a4,a3,a4
8001179c:	ff874503          	lbu	a0,-8(a4)
800117a0:	00058413          	mv	s0,a1
800117a4:	7ab00593          	li	a1,1963
800117a8:	00f50533          	add	a0,a0,a5
800117ac:	251050ef          	jal	ra,800171fc <__mulsi3>
800117b0:	2b990913          	addi	s2,s2,697
800117b4:	3e800593          	li	a1,1000
800117b8:	01250533          	add	a0,a0,s2
800117bc:	2fd050ef          	jal	ra,800172b8 <__udivsi3>
800117c0:	00150793          	addi	a5,a0,1
800117c4:	01079793          	slli	a5,a5,0x10
800117c8:	0107d793          	srli	a5,a5,0x10
800117cc:	00f49023          	sh	a5,0(s1)
800117d0:	04244703          	lbu	a4,66(s0)
800117d4:	00070863          	beqz	a4,800117e4 <bme680_get_profile_dur+0xa8>
800117d8:	04645503          	lhu	a0,70(s0)
800117dc:	00a787b3          	add	a5,a5,a0
800117e0:	00f49023          	sh	a5,0(s1)
800117e4:	01c12083          	lw	ra,28(sp)
800117e8:	01812403          	lw	s0,24(sp)
800117ec:	01412483          	lw	s1,20(sp)
800117f0:	01012903          	lw	s2,16(sp)
800117f4:	02010113          	addi	sp,sp,32
800117f8:	00008067          	ret

800117fc <bme680_get_sensor_data>:
800117fc:	f2010113          	addi	sp,sp,-224
80011800:	0d412423          	sw	s4,200(sp)
80011804:	00050a13          	mv	s4,a0
80011808:	00058513          	mv	a0,a1
8001180c:	0c812c23          	sw	s0,216(sp)
80011810:	0d312623          	sw	s3,204(sp)
80011814:	0c112e23          	sw	ra,220(sp)
80011818:	0c912a23          	sw	s1,212(sp)
8001181c:	0d212823          	sw	s2,208(sp)
80011820:	0d512223          	sw	s5,196(sp)
80011824:	0d612023          	sw	s6,192(sp)
80011828:	0b712e23          	sw	s7,188(sp)
8001182c:	0b812c23          	sw	s8,184(sp)
80011830:	0b912a23          	sw	s9,180(sp)
80011834:	0ba12823          	sw	s10,176(sp)
80011838:	0bb12623          	sw	s11,172(sp)
8001183c:	00058413          	mv	s0,a1
80011840:	964ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011844:	00050993          	mv	s3,a0
80011848:	4c051863          	bnez	a0,80011d18 <bme680_get_sensor_data+0x51c>
8001184c:	00040513          	mv	a0,s0
80011850:	00012823          	sw	zero,16(sp)
80011854:	00012a23          	sw	zero,20(sp)
80011858:	00012c23          	sw	zero,24(sp)
8001185c:	00011e23          	sh	zero,28(sp)
80011860:	00010f23          	sb	zero,30(sp)
80011864:	940ff0ef          	jal	ra,800109a4 <null_ptr_check>
80011868:	00050993          	mv	s3,a0
8001186c:	00a00c13          	li	s8,10
80011870:	50099263          	bnez	s3,80011d74 <bme680_get_sensor_data+0x578>
80011874:	00040693          	mv	a3,s0
80011878:	00f00613          	li	a2,15
8001187c:	01010593          	addi	a1,sp,16
80011880:	01d00513          	li	a0,29
80011884:	a8cff0ef          	jal	ra,80010b10 <bme680_get_regs>
80011888:	01014783          	lbu	a5,16(sp)
8001188c:	01e14b03          	lbu	s6,30(sp)
80011890:	01214d03          	lbu	s10,18(sp)
80011894:	00f7f713          	andi	a4,a5,15
80011898:	020b7613          	andi	a2,s6,32
8001189c:	f807f793          	andi	a5,a5,-128
800118a0:	00c7e7b3          	or	a5,a5,a2
800118a4:	010b7613          	andi	a2,s6,16
800118a8:	00ea00a3          	sb	a4,1(s4)
800118ac:	00c7e7b3          	or	a5,a5,a2
800118b0:	01114703          	lbu	a4,17(sp)
800118b4:	01879793          	slli	a5,a5,0x18
800118b8:	4187d793          	srai	a5,a5,0x18
800118bc:	00ea0123          	sb	a4,2(s4)
800118c0:	00fa0023          	sb	a5,0(s4)
800118c4:	01314c83          	lbu	s9,19(sp)
800118c8:	01414d83          	lbu	s11,20(sp)
800118cc:	01514703          	lbu	a4,21(sp)
800118d0:	01614483          	lbu	s1,22(sp)
800118d4:	01714683          	lbu	a3,23(sp)
800118d8:	01814a83          	lbu	s5,24(sp)
800118dc:	01914b83          	lbu	s7,25(sp)
800118e0:	01d14903          	lbu	s2,29(sp)
800118e4:	00050993          	mv	s3,a0
800118e8:	4807d063          	bgez	a5,80011d68 <bme680_get_sensor_data+0x56c>
800118ec:	0046d793          	srli	a5,a3,0x4
800118f0:	00449493          	slli	s1,s1,0x4
800118f4:	00f4e4b3          	or	s1,s1,a5
800118f8:	00c71793          	slli	a5,a4,0xc
800118fc:	00f4e4b3          	or	s1,s1,a5
80011900:	01a45783          	lhu	a5,26(s0)
80011904:	4034d493          	srai	s1,s1,0x3
80011908:	004c9c93          	slli	s9,s9,0x4
8001190c:	00179793          	slli	a5,a5,0x1
80011910:	40f484b3          	sub	s1,s1,a5
80011914:	41f4d793          	srai	a5,s1,0x1f
80011918:	01f79713          	slli	a4,a5,0x1f
8001191c:	0014d613          	srli	a2,s1,0x1
80011920:	00c76633          	or	a2,a4,a2
80011924:	00078693          	mv	a3,a5
80011928:	00078593          	mv	a1,a5
8001192c:	00060513          	mv	a0,a2
80011930:	00f12623          	sw	a5,12(sp)
80011934:	0ed050ef          	jal	ra,80017220 <__muldi3>
80011938:	01e40683          	lb	a3,30(s0)
8001193c:	01459713          	slli	a4,a1,0x14
80011940:	00c55513          	srli	a0,a0,0xc
80011944:	00469613          	slli	a2,a3,0x4
80011948:	00a76533          	or	a0,a4,a0
8001194c:	41f6d693          	srai	a3,a3,0x1f
80011950:	40c5d593          	srai	a1,a1,0xc
80011954:	0cd050ef          	jal	ra,80017220 <__muldi3>
80011958:	00c12783          	lw	a5,12(sp)
8001195c:	00050c13          	mv	s8,a0
80011960:	01c41503          	lh	a0,28(s0)
80011964:	00048613          	mv	a2,s1
80011968:	00078693          	mv	a3,a5
8001196c:	00b12423          	sw	a1,8(sp)
80011970:	41f55593          	srai	a1,a0,0x1f
80011974:	0ad050ef          	jal	ra,80017220 <__muldi3>
80011978:	00812703          	lw	a4,8(sp)
8001197c:	01559593          	slli	a1,a1,0x15
80011980:	00b55793          	srli	a5,a0,0xb
80011984:	01271713          	slli	a4,a4,0x12
80011988:	00ec5513          	srli	a0,s8,0xe
8001198c:	00a76533          	or	a0,a4,a0
80011990:	00f5e7b3          	or	a5,a1,a5
80011994:	00a787b3          	add	a5,a5,a0
80011998:	00279c13          	slli	s8,a5,0x2
8001199c:	ffff04b7          	lui	s1,0xffff0
800119a0:	02f42a23          	sw	a5,52(s0)
800119a4:	00fc0c33          	add	s8,s8,a5
800119a8:	60048493          	addi	s1,s1,1536 # ffff0600 <__clzsi2+0x7ffd929c>
800119ac:	4017d793          	srai	a5,a5,0x1
800119b0:	009784b3          	add	s1,a5,s1
800119b4:	080c0c13          	addi	s8,s8,128
800119b8:	4024d593          	srai	a1,s1,0x2
800119bc:	408c5c13          	srai	s8,s8,0x8
800119c0:	00058513          	mv	a0,a1
800119c4:	018a1223          	sh	s8,4(s4)
800119c8:	035050ef          	jal	ra,800171fc <__mulsi3>
800119cc:	02a40583          	lb	a1,42(s0)
800119d0:	00050693          	mv	a3,a0
800119d4:	40b55513          	srai	a0,a0,0xb
800119d8:	00d12623          	sw	a3,12(sp)
800119dc:	021050ef          	jal	ra,800171fc <__mulsi3>
800119e0:	40255713          	srai	a4,a0,0x2
800119e4:	02841503          	lh	a0,40(s0)
800119e8:	00048593          	mv	a1,s1
800119ec:	00e12423          	sw	a4,8(sp)
800119f0:	00d050ef          	jal	ra,800171fc <__mulsi3>
800119f4:	00812703          	lw	a4,8(sp)
800119f8:	00151793          	slli	a5,a0,0x1
800119fc:	02241503          	lh	a0,34(s0)
80011a00:	00e787b3          	add	a5,a5,a4
80011a04:	4027d713          	srai	a4,a5,0x2
80011a08:	00048593          	mv	a1,s1
80011a0c:	00e12423          	sw	a4,8(sp)
80011a10:	7ec050ef          	jal	ra,800171fc <__mulsi3>
80011a14:	00c12683          	lw	a3,12(sp)
80011a18:	40155493          	srai	s1,a0,0x1
80011a1c:	02440503          	lb	a0,36(s0)
80011a20:	40d6d593          	srai	a1,a3,0xd
80011a24:	004ddd93          	srli	s11,s11,0x4
80011a28:	00551513          	slli	a0,a0,0x5
80011a2c:	7d0050ef          	jal	ra,800171fc <__mulsi3>
80011a30:	40355513          	srai	a0,a0,0x3
80011a34:	02045583          	lhu	a1,32(s0)
80011a38:	00950533          	add	a0,a0,s1
80011a3c:	000087b7          	lui	a5,0x8
80011a40:	41255513          	srai	a0,a0,0x12
80011a44:	00f50533          	add	a0,a0,a5
80011a48:	7b4050ef          	jal	ra,800171fc <__mulsi3>
80011a4c:	02641783          	lh	a5,38(s0)
80011a50:	00812703          	lw	a4,8(sp)
80011a54:	01bcecb3          	or	s9,s9,s11
80011a58:	00cd1d13          	slli	s10,s10,0xc
80011a5c:	01079793          	slli	a5,a5,0x10
80011a60:	00e787b3          	add	a5,a5,a4
80011a64:	40f55493          	srai	s1,a0,0xf
80011a68:	01aced33          	or	s10,s9,s10
80011a6c:	00100537          	lui	a0,0x100
80011a70:	40c7d793          	srai	a5,a5,0xc
80011a74:	41a50533          	sub	a0,a0,s10
80011a78:	000015b7          	lui	a1,0x1
80011a7c:	c3558593          	addi	a1,a1,-971 # c35 <font6x8-0x7ffff3f7>
80011a80:	40f50533          	sub	a0,a0,a5
80011a84:	778050ef          	jal	ra,800171fc <__mulsi3>
80011a88:	40000737          	lui	a4,0x40000
80011a8c:	00048593          	mv	a1,s1
80011a90:	2ce54463          	blt	a0,a4,80011d58 <bme680_get_sensor_data+0x55c>
80011a94:	01d050ef          	jal	ra,800172b0 <__divsi3>
80011a98:	00151493          	slli	s1,a0,0x1
80011a9c:	4034d593          	srai	a1,s1,0x3
80011aa0:	00058513          	mv	a0,a1
80011aa4:	758050ef          	jal	ra,800171fc <__mulsi3>
80011aa8:	02e41583          	lh	a1,46(s0)
80011aac:	40d55513          	srai	a0,a0,0xd
80011ab0:	4084dd13          	srai	s10,s1,0x8
80011ab4:	748050ef          	jal	ra,800171fc <__mulsi3>
80011ab8:	02c41583          	lh	a1,44(s0)
80011abc:	40c55c93          	srai	s9,a0,0xc
80011ac0:	4024d513          	srai	a0,s1,0x2
80011ac4:	738050ef          	jal	ra,800171fc <__mulsi3>
80011ac8:	40d55513          	srai	a0,a0,0xd
80011acc:	00ac8cb3          	add	s9,s9,a0
80011ad0:	000d0593          	mv	a1,s10
80011ad4:	000d0513          	mv	a0,s10
80011ad8:	724050ef          	jal	ra,800171fc <__mulsi3>
80011adc:	000d0593          	mv	a1,s10
80011ae0:	71c050ef          	jal	ra,800171fc <__mulsi3>
80011ae4:	03044583          	lbu	a1,48(s0)
80011ae8:	008a9a93          	slli	s5,s5,0x8
80011aec:	017aebb3          	or	s7,s5,s7
80011af0:	70c050ef          	jal	ra,800171fc <__mulsi3>
80011af4:	41155513          	srai	a0,a0,0x11
80011af8:	00ac8533          	add	a0,s9,a0
80011afc:	02b40c83          	lb	s9,43(s0)
80011b00:	000c0593          	mv	a1,s8
80011b04:	007c9c93          	slli	s9,s9,0x7
80011b08:	01950533          	add	a0,a0,s9
80011b0c:	40455513          	srai	a0,a0,0x4
80011b10:	00a484b3          	add	s1,s1,a0
80011b14:	009a2423          	sw	s1,8(s4)
80011b18:	01240503          	lb	a0,18(s0)
80011b1c:	6e0050ef          	jal	ra,800171fc <__mulsi3>
80011b20:	06400593          	li	a1,100
80011b24:	78c050ef          	jal	ra,800172b0 <__divsi3>
80011b28:	000c0593          	mv	a1,s8
80011b2c:	6d0050ef          	jal	ra,800171fc <__mulsi3>
80011b30:	06400593          	li	a1,100
80011b34:	40655513          	srai	a0,a0,0x6
80011b38:	778050ef          	jal	ra,800172b0 <__divsi3>
80011b3c:	00050493          	mv	s1,a0
80011b40:	01140503          	lb	a0,17(s0)
80011b44:	000c0593          	mv	a1,s8
80011b48:	6b4050ef          	jal	ra,800171fc <__mulsi3>
80011b4c:	06400593          	li	a1,100
80011b50:	760050ef          	jal	ra,800172b0 <__divsi3>
80011b54:	00e45583          	lhu	a1,14(s0)
80011b58:	000047b7          	lui	a5,0x4
80011b5c:	00a48533          	add	a0,s1,a0
80011b60:	00f50533          	add	a0,a0,a5
80011b64:	698050ef          	jal	ra,800171fc <__mulsi3>
80011b68:	40a55493          	srai	s1,a0,0xa
80011b6c:	01040503          	lb	a0,16(s0)
80011b70:	000c0593          	mv	a1,s8
80011b74:	00c45a83          	lhu	s5,12(s0)
80011b78:	684050ef          	jal	ra,800171fc <__mulsi3>
80011b7c:	06400593          	li	a1,100
80011b80:	730050ef          	jal	ra,800172b0 <__divsi3>
80011b84:	004a9a93          	slli	s5,s5,0x4
80011b88:	415b8bb3          	sub	s7,s7,s5
80011b8c:	40155593          	srai	a1,a0,0x1
80011b90:	40bb85b3          	sub	a1,s7,a1
80011b94:	00048513          	mv	a0,s1
80011b98:	664050ef          	jal	ra,800171fc <__mulsi3>
80011b9c:	00050493          	mv	s1,a0
80011ba0:	01440503          	lb	a0,20(s0)
80011ba4:	000c0593          	mv	a1,s8
80011ba8:	654050ef          	jal	ra,800171fc <__mulsi3>
80011bac:	06400593          	li	a1,100
80011bb0:	700050ef          	jal	ra,800172b0 <__divsi3>
80011bb4:	01344a83          	lbu	s5,19(s0)
80011bb8:	40e4d593          	srai	a1,s1,0xe
80011bbc:	007a9a93          	slli	s5,s5,0x7
80011bc0:	01550ab3          	add	s5,a0,s5
80011bc4:	00058513          	mv	a0,a1
80011bc8:	634050ef          	jal	ra,800171fc <__mulsi3>
80011bcc:	404ad593          	srai	a1,s5,0x4
80011bd0:	40a55513          	srai	a0,a0,0xa
80011bd4:	628050ef          	jal	ra,800171fc <__mulsi3>
80011bd8:	40155793          	srai	a5,a0,0x1
80011bdc:	009787b3          	add	a5,a5,s1
80011be0:	40a7d513          	srai	a0,a5,0xa
80011be4:	00551793          	slli	a5,a0,0x5
80011be8:	40a787b3          	sub	a5,a5,a0
80011bec:	00279793          	slli	a5,a5,0x2
80011bf0:	00a787b3          	add	a5,a5,a0
80011bf4:	00379793          	slli	a5,a5,0x3
80011bf8:	40c7d713          	srai	a4,a5,0xc
80011bfc:	0007d463          	bgez	a5,80011c04 <bme680_get_sensor_data+0x408>
80011c00:	00000713          	li	a4,0
80011c04:	00070793          	mv	a5,a4
80011c08:	00018737          	lui	a4,0x18
80011c0c:	6a070713          	addi	a4,a4,1696 # 186a0 <font6x8-0x7ffe798c>
80011c10:	00f75463          	bge	a4,a5,80011c18 <bme680_get_sensor_data+0x41c>
80011c14:	00070793          	mv	a5,a4
80011c18:	800005b7          	lui	a1,0x80000
80011c1c:	00fa2623          	sw	a5,12(s4)
80011c20:	26c58a93          	addi	s5,a1,620 # 8000026c <__clzsi2+0xfffe8f08>
80011c24:	04000613          	li	a2,64
80011c28:	26c58593          	addi	a1,a1,620
80011c2c:	02010513          	addi	a0,sp,32
80011c30:	03a40483          	lb	s1,58(s0)
80011c34:	22c000ef          	jal	ra,80011e60 <memcpy>
80011c38:	040a8593          	addi	a1,s5,64
80011c3c:	04000613          	li	a2,64
80011c40:	06010513          	addi	a0,sp,96
80011c44:	21c000ef          	jal	ra,80011e60 <memcpy>
80011c48:	00500613          	li	a2,5
80011c4c:	00000693          	li	a3,0
80011c50:	00048513          	mv	a0,s1
80011c54:	41f4d593          	srai	a1,s1,0x1f
80011c58:	5c8050ef          	jal	ra,80017220 <__muldi3>
80011c5c:	00fb7a93          	andi	s5,s6,15
80011c60:	0a010713          	addi	a4,sp,160
80011c64:	002a9a93          	slli	s5,s5,0x2
80011c68:	01570ab3          	add	s5,a4,s5
80011c6c:	f80aa603          	lw	a2,-128(s5)
80011c70:	00050793          	mv	a5,a0
80011c74:	53c50513          	addi	a0,a0,1340 # 10053c <font6x8-0x7feffaf0>
80011c78:	00f537b3          	sltu	a5,a0,a5
80011c7c:	00000693          	li	a3,0
80011c80:	00b785b3          	add	a1,a5,a1
80011c84:	59c050ef          	jal	ra,80017220 <__muldi3>
80011c88:	01059793          	slli	a5,a1,0x10
80011c8c:	01055613          	srli	a2,a0,0x10
80011c90:	00c7e633          	or	a2,a5,a2
80011c94:	006b5b13          	srli	s6,s6,0x6
80011c98:	00291793          	slli	a5,s2,0x2
80011c9c:	0167e7b3          	or	a5,a5,s6
80011ca0:	00f79793          	slli	a5,a5,0xf
80011ca4:	ff0004b7          	lui	s1,0xff000
80011ca8:	009784b3          	add	s1,a5,s1
80011cac:	00f4b7b3          	sltu	a5,s1,a5
80011cb0:	fc0aa503          	lw	a0,-64(s5)
80011cb4:	4105d693          	srai	a3,a1,0x10
80011cb8:	00c48933          	add	s2,s1,a2
80011cbc:	fff78793          	addi	a5,a5,-1 # 3fff <font6x8-0x7fffc02d>
80011cc0:	00d787b3          	add	a5,a5,a3
80011cc4:	009934b3          	sltu	s1,s2,s1
80011cc8:	00000593          	li	a1,0
80011ccc:	00f484b3          	add	s1,s1,a5
80011cd0:	550050ef          	jal	ra,80017220 <__muldi3>
80011cd4:	01759713          	slli	a4,a1,0x17
80011cd8:	00955793          	srli	a5,a0,0x9
80011cdc:	00f767b3          	or	a5,a4,a5
80011ce0:	00195513          	srli	a0,s2,0x1
80011ce4:	01f49713          	slli	a4,s1,0x1f
80011ce8:	00a76533          	or	a0,a4,a0
80011cec:	00a78533          	add	a0,a5,a0
80011cf0:	4014d713          	srai	a4,s1,0x1
80011cf4:	4095d593          	srai	a1,a1,0x9
80011cf8:	00f537b3          	sltu	a5,a0,a5
80011cfc:	00e585b3          	add	a1,a1,a4
80011d00:	00090613          	mv	a2,s2
80011d04:	00048693          	mv	a3,s1
80011d08:	00b785b3          	add	a1,a5,a1
80011d0c:	1a4020ef          	jal	ra,80013eb0 <__divdi3>
80011d10:	00aa2823          	sw	a0,16(s4)
80011d14:	06098a63          	beqz	s3,80011d88 <bme680_get_sensor_data+0x58c>
80011d18:	0dc12083          	lw	ra,220(sp)
80011d1c:	0d812403          	lw	s0,216(sp)
80011d20:	0d412483          	lw	s1,212(sp)
80011d24:	0d012903          	lw	s2,208(sp)
80011d28:	0c812a03          	lw	s4,200(sp)
80011d2c:	0c412a83          	lw	s5,196(sp)
80011d30:	0c012b03          	lw	s6,192(sp)
80011d34:	0bc12b83          	lw	s7,188(sp)
80011d38:	0b812c03          	lw	s8,184(sp)
80011d3c:	0b412c83          	lw	s9,180(sp)
80011d40:	0b012d03          	lw	s10,176(sp)
80011d44:	0ac12d83          	lw	s11,172(sp)
80011d48:	00098513          	mv	a0,s3
80011d4c:	0cc12983          	lw	s3,204(sp)
80011d50:	0e010113          	addi	sp,sp,224
80011d54:	00008067          	ret
80011d58:	00151513          	slli	a0,a0,0x1
80011d5c:	554050ef          	jal	ra,800172b0 <__divsi3>
80011d60:	00050493          	mv	s1,a0
80011d64:	d39ff06f          	j	80011a9c <bme680_get_sensor_data+0x2a0>
80011d68:	05442783          	lw	a5,84(s0)
80011d6c:	00a00513          	li	a0,10
80011d70:	000780e7          	jalr	a5
80011d74:	fffc0c13          	addi	s8,s8,-1
80011d78:	0ffc7c13          	andi	s8,s8,255
80011d7c:	ae0c1ae3          	bnez	s8,80011870 <bme680_get_sensor_data+0x74>
80011d80:	00200993          	li	s3,2
80011d84:	f95ff06f          	j	80011d18 <bme680_get_sensor_data+0x51c>
80011d88:	00100793          	li	a5,1
80011d8c:	04f404a3          	sb	a5,73(s0)
80011d90:	f89ff06f          	j	80011d18 <bme680_get_sensor_data+0x51c>

80011d94 <user_delay_ms>:
80011d94:	bc9fe06f          	j	8001095c <HAL_Timebase_DelayMS>

80011d98 <_putchar>:
80011d98:	ff010113          	addi	sp,sp,-16
80011d9c:	00812423          	sw	s0,8(sp)
80011da0:	00112623          	sw	ra,12(sp)
80011da4:	00050413          	mv	s0,a0
80011da8:	b25fe0ef          	jal	ra,800108cc <HAL_UART_PutChar>
80011dac:	00040513          	mv	a0,s0
80011db0:	00812403          	lw	s0,8(sp)
80011db4:	00c12083          	lw	ra,12(sp)
80011db8:	01010113          	addi	sp,sp,16
80011dbc:	9adfe06f          	j	80010768 <HAL_OLED_PutChar>

80011dc0 <printf>:
80011dc0:	ec010113          	addi	sp,sp,-320
80011dc4:	12b12223          	sw	a1,292(sp)
80011dc8:	12c12423          	sw	a2,296(sp)
80011dcc:	12d12623          	sw	a3,300(sp)
80011dd0:	00050613          	mv	a2,a0
80011dd4:	12410693          	addi	a3,sp,292
80011dd8:	0ff00593          	li	a1,255
80011ddc:	01010513          	addi	a0,sp,16
80011de0:	10812c23          	sw	s0,280(sp)
80011de4:	10112e23          	sw	ra,284(sp)
80011de8:	12e12823          	sw	a4,304(sp)
80011dec:	12f12a23          	sw	a5,308(sp)
80011df0:	13012c23          	sw	a6,312(sp)
80011df4:	13112e23          	sw	a7,316(sp)
80011df8:	00d12623          	sw	a3,12(sp)
80011dfc:	00000413          	li	s0,0
80011e00:	044020ef          	jal	ra,80013e44 <vsnprintf_>
80011e04:	11010793          	addi	a5,sp,272
80011e08:	008787b3          	add	a5,a5,s0
80011e0c:	f007c503          	lbu	a0,-256(a5)
80011e10:	00051e63          	bnez	a0,80011e2c <printf+0x6c>
80011e14:	dd0fe0ef          	jal	ra,800103e4 <HAL_OLED_DrawGFXBuffer>
80011e18:	11c12083          	lw	ra,284(sp)
80011e1c:	11812403          	lw	s0,280(sp)
80011e20:	00000513          	li	a0,0
80011e24:	14010113          	addi	sp,sp,320
80011e28:	00008067          	ret
80011e2c:	00140413          	addi	s0,s0,1
80011e30:	f69ff0ef          	jal	ra,80011d98 <_putchar>
80011e34:	0ff47413          	andi	s0,s0,255
80011e38:	fcdff06f          	j	80011e04 <printf+0x44>

80011e3c <_external_interrupt>:
80011e3c:	00008067          	ret

80011e40 <_misaligned_instruction>:
80011e40:	00008067          	ret

80011e44 <memset>:
80011e44:	00000793          	li	a5,0
80011e48:	00c79463          	bne	a5,a2,80011e50 <memset+0xc>
80011e4c:	00008067          	ret
80011e50:	00f50733          	add	a4,a0,a5
80011e54:	00b70023          	sb	a1,0(a4)
80011e58:	00178793          	addi	a5,a5,1
80011e5c:	fedff06f          	j	80011e48 <memset+0x4>

80011e60 <memcpy>:
80011e60:	00000793          	li	a5,0
80011e64:	00c79463          	bne	a5,a2,80011e6c <memcpy+0xc>
80011e68:	00008067          	ret
80011e6c:	0005c703          	lbu	a4,0(a1)
80011e70:	00178793          	addi	a5,a5,1
80011e74:	00e50023          	sb	a4,0(a0)
80011e78:	fedff06f          	j	80011e64 <memcpy+0x4>

80011e7c <HAL_OLED_PutLine>:
80011e7c:	ff010113          	addi	sp,sp,-16
80011e80:	00812423          	sw	s0,8(sp)
80011e84:	00112623          	sw	ra,12(sp)
80011e88:	00050413          	mv	s0,a0
80011e8c:	00044503          	lbu	a0,0(s0)
80011e90:	00051a63          	bnez	a0,80011ea4 <HAL_OLED_PutLine+0x28>
80011e94:	00c12083          	lw	ra,12(sp)
80011e98:	00812403          	lw	s0,8(sp)
80011e9c:	01010113          	addi	sp,sp,16
80011ea0:	00008067          	ret
80011ea4:	8c5fe0ef          	jal	ra,80010768 <HAL_OLED_PutChar>
80011ea8:	00140413          	addi	s0,s0,1
80011eac:	fe1ff06f          	j	80011e8c <HAL_OLED_PutLine+0x10>

80011eb0 <HAL_OLED_printf>:
80011eb0:	ec010113          	addi	sp,sp,-320
80011eb4:	12b12223          	sw	a1,292(sp)
80011eb8:	12c12423          	sw	a2,296(sp)
80011ebc:	12d12623          	sw	a3,300(sp)
80011ec0:	00050613          	mv	a2,a0
80011ec4:	12410693          	addi	a3,sp,292
80011ec8:	0ff00593          	li	a1,255
80011ecc:	01010513          	addi	a0,sp,16
80011ed0:	10112e23          	sw	ra,284(sp)
80011ed4:	12e12823          	sw	a4,304(sp)
80011ed8:	12f12a23          	sw	a5,308(sp)
80011edc:	13012c23          	sw	a6,312(sp)
80011ee0:	13112e23          	sw	a7,316(sp)
80011ee4:	00d12623          	sw	a3,12(sp)
80011ee8:	75d010ef          	jal	ra,80013e44 <vsnprintf_>
80011eec:	01010513          	addi	a0,sp,16
80011ef0:	f8dff0ef          	jal	ra,80011e7c <HAL_OLED_PutLine>
80011ef4:	11c12083          	lw	ra,284(sp)
80011ef8:	14010113          	addi	sp,sp,320
80011efc:	00008067          	ret

80011f00 <HAL_I2C_StartCondition>:
80011f00:	ff010113          	addi	sp,sp,-16
80011f04:	00300513          	li	a0,3
80011f08:	00112623          	sw	ra,12(sp)
80011f0c:	bc0fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80011f10:	00500513          	li	a0,5
80011f14:	a29fe0ef          	jal	ra,8001093c <HAL_Timebase_DelayUS>
80011f18:	00100513          	li	a0,1
80011f1c:	bb0fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80011f20:	00c12083          	lw	ra,12(sp)
80011f24:	00500513          	li	a0,5
80011f28:	01010113          	addi	sp,sp,16
80011f2c:	a11fe06f          	j	8001093c <HAL_Timebase_DelayUS>

80011f30 <HAL_I2C_StopCondition>:
80011f30:	ff010113          	addi	sp,sp,-16
80011f34:	00100513          	li	a0,1
80011f38:	00112623          	sw	ra,12(sp)
80011f3c:	b90fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80011f40:	00500513          	li	a0,5
80011f44:	9f9fe0ef          	jal	ra,8001093c <HAL_Timebase_DelayUS>
80011f48:	00300513          	li	a0,3
80011f4c:	b80fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80011f50:	00c12083          	lw	ra,12(sp)
80011f54:	00500513          	li	a0,5
80011f58:	01010113          	addi	sp,sp,16
80011f5c:	9e1fe06f          	j	8001093c <HAL_Timebase_DelayUS>

80011f60 <BME680_ReadRegister>:
80011f60:	ff010113          	addi	sp,sp,-16
80011f64:	00112623          	sw	ra,12(sp)
80011f68:	00812423          	sw	s0,8(sp)
80011f6c:	00912223          	sw	s1,4(sp)
80011f70:	00050493          	mv	s1,a0
80011f74:	f8dff0ef          	jal	ra,80011f00 <HAL_I2C_StartCondition>
80011f78:	0ec00513          	li	a0,236
80011f7c:	b08fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80011f80:	b2cfe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
80011f84:	00100413          	li	s0,1
80011f88:	fff00793          	li	a5,-1
80011f8c:	04850e63          	beq	a0,s0,80011fe8 <BME680_ReadRegister+0x88>
80011f90:	00048513          	mv	a0,s1
80011f94:	af0fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80011f98:	b14fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
80011f9c:	ffe00793          	li	a5,-2
80011fa0:	04850463          	beq	a0,s0,80011fe8 <BME680_ReadRegister+0x88>
80011fa4:	00000513          	li	a0,0
80011fa8:	b14fe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
80011fac:	f55ff0ef          	jal	ra,80011f00 <HAL_I2C_StartCondition>
80011fb0:	0ed00513          	li	a0,237
80011fb4:	ad0fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80011fb8:	af4fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
80011fbc:	ffd00793          	li	a5,-3
80011fc0:	02850463          	beq	a0,s0,80011fe8 <BME680_ReadRegister+0x88>
80011fc4:	accfe0ef          	jal	ra,80010290 <HAL_I2C_ReadByte>
80011fc8:	00050413          	mv	s0,a0
80011fcc:	00000513          	li	a0,0
80011fd0:	aecfe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
80011fd4:	00100513          	li	a0,1
80011fd8:	ae4fe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
80011fdc:	f55ff0ef          	jal	ra,80011f30 <HAL_I2C_StopCondition>
80011fe0:	01041793          	slli	a5,s0,0x10
80011fe4:	4107d793          	srai	a5,a5,0x10
80011fe8:	00c12083          	lw	ra,12(sp)
80011fec:	00812403          	lw	s0,8(sp)
80011ff0:	00412483          	lw	s1,4(sp)
80011ff4:	00078513          	mv	a0,a5
80011ff8:	01010113          	addi	sp,sp,16
80011ffc:	00008067          	ret

80012000 <user_i2c_read>:
80012000:	fe010113          	addi	sp,sp,-32
80012004:	00912a23          	sw	s1,20(sp)
80012008:	01212823          	sw	s2,16(sp)
8001200c:	01412423          	sw	s4,8(sp)
80012010:	00112e23          	sw	ra,28(sp)
80012014:	00812c23          	sw	s0,24(sp)
80012018:	01312623          	sw	s3,12(sp)
8001201c:	00068493          	mv	s1,a3
80012020:	00060913          	mv	s2,a2
80012024:	40c58a33          	sub	s4,a1,a2
80012028:	014909b3          	add	s3,s2,s4
8001202c:	0ff9f993          	andi	s3,s3,255
80012030:	00049663          	bnez	s1,8001203c <user_i2c_read+0x3c>
80012034:	00000513          	li	a0,0
80012038:	0440006f          	j	8001207c <user_i2c_read+0x7c>
8001203c:	00098513          	mv	a0,s3
80012040:	f21ff0ef          	jal	ra,80011f60 <BME680_ReadRegister>
80012044:	00050413          	mv	s0,a0
80012048:	04055a63          	bgez	a0,8001209c <user_i2c_read+0x9c>
8001204c:	80000537          	lui	a0,0x80000
80012050:	00048613          	mv	a2,s1
80012054:	00098593          	mv	a1,s3
80012058:	2ec50513          	addi	a0,a0,748 # 800002ec <__clzsi2+0xfffe8f88>
8001205c:	d65ff0ef          	jal	ra,80011dc0 <printf>
80012060:	80000537          	lui	a0,0x80000
80012064:	00040613          	mv	a2,s0
80012068:	00098593          	mv	a1,s3
8001206c:	31050513          	addi	a0,a0,784 # 80000310 <__clzsi2+0xfffe8fac>
80012070:	d51ff0ef          	jal	ra,80011dc0 <printf>
80012074:	01841513          	slli	a0,s0,0x18
80012078:	41855513          	srai	a0,a0,0x18
8001207c:	01c12083          	lw	ra,28(sp)
80012080:	01812403          	lw	s0,24(sp)
80012084:	01412483          	lw	s1,20(sp)
80012088:	01012903          	lw	s2,16(sp)
8001208c:	00c12983          	lw	s3,12(sp)
80012090:	00812a03          	lw	s4,8(sp)
80012094:	02010113          	addi	sp,sp,32
80012098:	00008067          	ret
8001209c:	fff48493          	addi	s1,s1,-1 # feffffff <__clzsi2+0x7efe8c9b>
800120a0:	01049493          	slli	s1,s1,0x10
800120a4:	00a90023          	sb	a0,0(s2)
800120a8:	0104d493          	srli	s1,s1,0x10
800120ac:	00190913          	addi	s2,s2,1
800120b0:	f79ff06f          	j	80012028 <user_i2c_read+0x28>

800120b4 <BME680_WriteRegister>:
800120b4:	ff010113          	addi	sp,sp,-16
800120b8:	00112623          	sw	ra,12(sp)
800120bc:	00812423          	sw	s0,8(sp)
800120c0:	00912223          	sw	s1,4(sp)
800120c4:	01212023          	sw	s2,0(sp)
800120c8:	00058493          	mv	s1,a1
800120cc:	00050913          	mv	s2,a0
800120d0:	e31ff0ef          	jal	ra,80011f00 <HAL_I2C_StartCondition>
800120d4:	0ec00513          	li	a0,236
800120d8:	9acfe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800120dc:	9d0fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800120e0:	00100413          	li	s0,1
800120e4:	fff00793          	li	a5,-1
800120e8:	02850e63          	beq	a0,s0,80012124 <BME680_WriteRegister+0x70>
800120ec:	00090513          	mv	a0,s2
800120f0:	994fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800120f4:	9b8fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800120f8:	ffe00793          	li	a5,-2
800120fc:	02850463          	beq	a0,s0,80012124 <BME680_WriteRegister+0x70>
80012100:	00048513          	mv	a0,s1
80012104:	980fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80012108:	9a4fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
8001210c:	ffd00793          	li	a5,-3
80012110:	00850a63          	beq	a0,s0,80012124 <BME680_WriteRegister+0x70>
80012114:	00000513          	li	a0,0
80012118:	9a4fe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
8001211c:	e15ff0ef          	jal	ra,80011f30 <HAL_I2C_StopCondition>
80012120:	00000793          	li	a5,0
80012124:	00c12083          	lw	ra,12(sp)
80012128:	00812403          	lw	s0,8(sp)
8001212c:	00412483          	lw	s1,4(sp)
80012130:	00012903          	lw	s2,0(sp)
80012134:	00078513          	mv	a0,a5
80012138:	01010113          	addi	sp,sp,16
8001213c:	00008067          	ret

80012140 <user_i2c_write>:
80012140:	fe010113          	addi	sp,sp,-32
80012144:	00812c23          	sw	s0,24(sp)
80012148:	01212823          	sw	s2,16(sp)
8001214c:	01312623          	sw	s3,12(sp)
80012150:	00112e23          	sw	ra,28(sp)
80012154:	00912a23          	sw	s1,20(sp)
80012158:	00058993          	mv	s3,a1
8001215c:	00060913          	mv	s2,a2
80012160:	00068413          	mv	s0,a3
80012164:	04040263          	beqz	s0,800121a8 <user_i2c_write+0x68>
80012168:	00094583          	lbu	a1,0(s2)
8001216c:	00098513          	mv	a0,s3
80012170:	f45ff0ef          	jal	ra,800120b4 <BME680_WriteRegister>
80012174:	00050493          	mv	s1,a0
80012178:	04055863          	bgez	a0,800121c8 <user_i2c_write+0x88>
8001217c:	80000537          	lui	a0,0x80000
80012180:	00040613          	mv	a2,s0
80012184:	00098593          	mv	a1,s3
80012188:	33c50513          	addi	a0,a0,828 # 8000033c <__clzsi2+0xfffe8fd8>
8001218c:	c35ff0ef          	jal	ra,80011dc0 <printf>
80012190:	00094603          	lbu	a2,0(s2)
80012194:	80000537          	lui	a0,0x80000
80012198:	00048693          	mv	a3,s1
8001219c:	00098593          	mv	a1,s3
800121a0:	36050513          	addi	a0,a0,864 # 80000360 <__clzsi2+0xfffe8ffc>
800121a4:	c1dff0ef          	jal	ra,80011dc0 <printf>
800121a8:	01c12083          	lw	ra,28(sp)
800121ac:	01812403          	lw	s0,24(sp)
800121b0:	01012903          	lw	s2,16(sp)
800121b4:	00c12983          	lw	s3,12(sp)
800121b8:	00048513          	mv	a0,s1
800121bc:	01412483          	lw	s1,20(sp)
800121c0:	02010113          	addi	sp,sp,32
800121c4:	00008067          	ret
800121c8:	fff40413          	addi	s0,s0,-1
800121cc:	01041413          	slli	s0,s0,0x10
800121d0:	00190913          	addi	s2,s2,1
800121d4:	01045413          	srli	s0,s0,0x10
800121d8:	f8dff06f          	j	80012164 <user_i2c_write+0x24>

800121dc <BME680_Init>:
800121dc:	ff010113          	addi	sp,sp,-16
800121e0:	0ff00513          	li	a0,255
800121e4:	00112623          	sw	ra,12(sp)
800121e8:	8b8fe0ef          	jal	ra,800102a0 <HAL_I2C_SetDivider>
800121ec:	00300513          	li	a0,3
800121f0:	8dcfe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
800121f4:	00c12083          	lw	ra,12(sp)
800121f8:	00000513          	li	a0,0
800121fc:	01010113          	addi	sp,sp,16
80012200:	00008067          	ret

80012204 <user_spi_read>:
80012204:	00000513          	li	a0,0
80012208:	00008067          	ret

8001220c <user_spi_write>:
8001220c:	00000513          	li	a0,0
80012210:	00008067          	ret

80012214 <main>:
80012214:	f5010113          	addi	sp,sp,-176
80012218:	0a112623          	sw	ra,172(sp)
8001221c:	0a812423          	sw	s0,168(sp)
80012220:	0a912223          	sw	s1,164(sp)
80012224:	0b212023          	sw	s2,160(sp)
80012228:	09312e23          	sw	s3,156(sp)
8001222c:	09412c23          	sw	s4,152(sp)
80012230:	09512a23          	sw	s5,148(sp)
80012234:	09612823          	sw	s6,144(sp)
80012238:	09712623          	sw	s7,140(sp)
8001223c:	bccfe0ef          	jal	ra,80010608 <HAL_OLED_Init>
80012240:	80000537          	lui	a0,0x80000
80012244:	39850513          	addi	a0,a0,920 # 80000398 <__clzsi2+0xfffe9034>
80012248:	b79ff0ef          	jal	ra,80011dc0 <printf>
8001224c:	f91ff0ef          	jal	ra,800121dc <BME680_Init>
80012250:	18051663          	bnez	a0,800123dc <main+0x1c8>
80012254:	07600793          	li	a5,118
80012258:	02f102a3          	sb	a5,37(sp)
8001225c:	800127b7          	lui	a5,0x80012
80012260:	00078793          	mv	a5,a5
80012264:	06f12823          	sw	a5,112(sp)
80012268:	800127b7          	lui	a5,0x80012
8001226c:	14078793          	addi	a5,a5,320 # 80012140 <__clzsi2+0xffffaddc>
80012270:	06f12a23          	sw	a5,116(sp)
80012274:	800127b7          	lui	a5,0x80012
80012278:	d9478793          	addi	a5,a5,-620 # 80011d94 <__clzsi2+0xffffaa30>
8001227c:	00100413          	li	s0,1
80012280:	06f12c23          	sw	a5,120(sp)
80012284:	02410513          	addi	a0,sp,36
80012288:	01900793          	li	a5,25
8001228c:	02812423          	sw	s0,40(sp)
80012290:	02f106a3          	sb	a5,45(sp)
80012294:	af9fe0ef          	jal	ra,80010d8c <bme680_init>
80012298:	020307b7          	lui	a5,0x2030
8001229c:	40278793          	addi	a5,a5,1026 # 2030402 <font6x8-0x7dfcfc2a>
800122a0:	06f12023          	sw	a5,96(sp)
800122a4:	02ee07b7          	lui	a5,0x2ee0
800122a8:	14078793          	addi	a5,a5,320 # 2ee0140 <font6x8-0x7d11feec>
800122ac:	02410593          	addi	a1,sp,36
800122b0:	0df00513          	li	a0,223
800122b4:	06f12423          	sw	a5,104(sp)
800122b8:	06810323          	sb	s0,102(sp)
800122bc:	06810623          	sb	s0,108(sp)
800122c0:	f49fe0ef          	jal	ra,80011208 <bme680_set_sensor_settings>
800122c4:	02410513          	addi	a0,sp,36
800122c8:	e7dfe0ef          	jal	ra,80011144 <bme680_set_sensor_mode>
800122cc:	02410593          	addi	a1,sp,36
800122d0:	00e10513          	addi	a0,sp,14
800122d4:	c68ff0ef          	jal	ra,8001173c <bme680_get_profile_dur>
800122d8:	80000437          	lui	s0,0x80000
800122dc:	800004b7          	lui	s1,0x80000
800122e0:	80000937          	lui	s2,0x80000
800122e4:	800009b7          	lui	s3,0x80000
800122e8:	80000a37          	lui	s4,0x80000
800122ec:	80000ab7          	lui	s5,0x80000
800122f0:	80000b37          	lui	s6,0x80000
800122f4:	80000bb7          	lui	s7,0x80000
800122f8:	00e15503          	lhu	a0,14(sp)
800122fc:	e60fe0ef          	jal	ra,8001095c <HAL_Timebase_DelayMS>
80012300:	02410593          	addi	a1,sp,36
80012304:	01010513          	addi	a0,sp,16
80012308:	cf4ff0ef          	jal	ra,800117fc <bme680_get_sensor_data>
8001230c:	a90fe0ef          	jal	ra,8001059c <HAL_OLED_ClearScreen>
80012310:	01411503          	lh	a0,20(sp)
80012314:	06400593          	li	a1,100
80012318:	799040ef          	jal	ra,800172b0 <__divsi3>
8001231c:	01051593          	slli	a1,a0,0x10
80012320:	4105d593          	srai	a1,a1,0x10
80012324:	3b4a0513          	addi	a0,s4,948 # 800003b4 <__clzsi2+0xfffe9050>
80012328:	a99ff0ef          	jal	ra,80011dc0 <printf>
8001232c:	01c12503          	lw	a0,28(sp)
80012330:	3e800593          	li	a1,1000
80012334:	785040ef          	jal	ra,800172b8 <__udivsi3>
80012338:	00050593          	mv	a1,a0
8001233c:	3c8a8513          	addi	a0,s5,968 # 800003c8 <__clzsi2+0xfffe9064>
80012340:	a81ff0ef          	jal	ra,80011dc0 <printf>
80012344:	01812503          	lw	a0,24(sp)
80012348:	06400593          	li	a1,100
8001234c:	76d040ef          	jal	ra,800172b8 <__udivsi3>
80012350:	00050593          	mv	a1,a0
80012354:	3dcb0513          	addi	a0,s6,988 # 800003dc <__clzsi2+0xfffe9078>
80012358:	a69ff0ef          	jal	ra,80011dc0 <printf>
8001235c:	01014783          	lbu	a5,16(sp)
80012360:	0207f793          	andi	a5,a5,32
80012364:	00078e63          	beqz	a5,80012380 <main+0x16c>
80012368:	02012783          	lw	a5,32(sp)
8001236c:	03100713          	li	a4,49
80012370:	02f76463          	bltu	a4,a5,80012398 <main+0x184>
80012374:	80000537          	lui	a0,0x80000
80012378:	3f050513          	addi	a0,a0,1008 # 800003f0 <__clzsi2+0xfffe908c>
8001237c:	a45ff0ef          	jal	ra,80011dc0 <printf>
80012380:	06c14703          	lbu	a4,108(sp)
80012384:	00100793          	li	a5,1
80012388:	f6f718e3          	bne	a4,a5,800122f8 <main+0xe4>
8001238c:	02410513          	addi	a0,sp,36
80012390:	db5fe0ef          	jal	ra,80011144 <bme680_set_sensor_mode>
80012394:	f55ff06f          	j	800122e8 <main+0xd4>
80012398:	06300713          	li	a4,99
8001239c:	00f76663          	bltu	a4,a5,800123a8 <main+0x194>
800123a0:	3fcb8513          	addi	a0,s7,1020 # 800003fc <__clzsi2+0xfffe9098>
800123a4:	fd9ff06f          	j	8001237c <main+0x168>
800123a8:	09500713          	li	a4,149
800123ac:	40c98513          	addi	a0,s3,1036 # 8000040c <__clzsi2+0xfffe90a8>
800123b0:	fcf776e3          	bgeu	a4,a5,8001237c <main+0x168>
800123b4:	0c700713          	li	a4,199
800123b8:	42090513          	addi	a0,s2,1056 # 80000420 <__clzsi2+0xfffe90bc>
800123bc:	fcf770e3          	bgeu	a4,a5,8001237c <main+0x168>
800123c0:	0f900713          	li	a4,249
800123c4:	42c48513          	addi	a0,s1,1068 # 8000042c <__clzsi2+0xfffe90c8>
800123c8:	faf77ae3          	bgeu	a4,a5,8001237c <main+0x168>
800123cc:	12b00713          	li	a4,299
800123d0:	fcf778e3          	bgeu	a4,a5,800123a0 <main+0x18c>
800123d4:	43c40513          	addi	a0,s0,1084 # 8000043c <__clzsi2+0xfffe90d8>
800123d8:	fa5ff06f          	j	8001237c <main+0x168>
800123dc:	80000537          	lui	a0,0x80000
800123e0:	44c50513          	addi	a0,a0,1100 # 8000044c <__clzsi2+0xfffe90e8>
800123e4:	9ddff0ef          	jal	ra,80011dc0 <printf>
800123e8:	0ac12083          	lw	ra,172(sp)
800123ec:	0a812403          	lw	s0,168(sp)
800123f0:	0a412483          	lw	s1,164(sp)
800123f4:	0a012903          	lw	s2,160(sp)
800123f8:	09c12983          	lw	s3,156(sp)
800123fc:	09812a03          	lw	s4,152(sp)
80012400:	09412a83          	lw	s5,148(sp)
80012404:	09012b03          	lw	s6,144(sp)
80012408:	08c12b83          	lw	s7,140(sp)
8001240c:	0b010113          	addi	sp,sp,176
80012410:	00008067          	ret

80012414 <_out_buffer>:
80012414:	00d67663          	bgeu	a2,a3,80012420 <_out_buffer+0xc>
80012418:	00c585b3          	add	a1,a1,a2
8001241c:	00a58023          	sb	a0,0(a1)
80012420:	00008067          	ret

80012424 <_out_null>:
80012424:	00008067          	ret

80012428 <_out_rev>:
80012428:	fd010113          	addi	sp,sp,-48
8001242c:	02812423          	sw	s0,40(sp)
80012430:	02912223          	sw	s1,36(sp)
80012434:	03212023          	sw	s2,32(sp)
80012438:	01412c23          	sw	s4,24(sp)
8001243c:	01512a23          	sw	s5,20(sp)
80012440:	01612823          	sw	s6,16(sp)
80012444:	01712623          	sw	s7,12(sp)
80012448:	01912223          	sw	s9,4(sp)
8001244c:	01a12023          	sw	s10,0(sp)
80012450:	00078913          	mv	s2,a5
80012454:	02112623          	sw	ra,44(sp)
80012458:	01312e23          	sw	s3,28(sp)
8001245c:	01812423          	sw	s8,8(sp)
80012460:	0038f793          	andi	a5,a7,3
80012464:	00050a93          	mv	s5,a0
80012468:	00058b13          	mv	s6,a1
8001246c:	00060413          	mv	s0,a2
80012470:	00068b93          	mv	s7,a3
80012474:	00070d13          	mv	s10,a4
80012478:	00080493          	mv	s1,a6
8001247c:	00088a13          	mv	s4,a7
80012480:	00060c93          	mv	s9,a2
80012484:	02079e63          	bnez	a5,800124c0 <_out_rev+0x98>
80012488:	00090993          	mv	s3,s2
8001248c:	41260c33          	sub	s8,a2,s2
80012490:	0180006f          	j	800124a8 <_out_rev+0x80>
80012494:	000b8693          	mv	a3,s7
80012498:	000b0593          	mv	a1,s6
8001249c:	02000513          	li	a0,32
800124a0:	000a80e7          	jalr	s5
800124a4:	00198993          	addi	s3,s3,1
800124a8:	013c0633          	add	a2,s8,s3
800124ac:	fe99e4e3          	bltu	s3,s1,80012494 <_out_rev+0x6c>
800124b0:	00000c93          	li	s9,0
800124b4:	0124e463          	bltu	s1,s2,800124bc <_out_rev+0x94>
800124b8:	41248cb3          	sub	s9,s1,s2
800124bc:	008c8cb3          	add	s9,s9,s0
800124c0:	00090c13          	mv	s8,s2
800124c4:	012c89b3          	add	s3,s9,s2
800124c8:	41898633          	sub	a2,s3,s8
800124cc:	060c1663          	bnez	s8,80012538 <_out_rev+0x110>
800124d0:	002a7a13          	andi	s4,s4,2
800124d4:	020a0463          	beqz	s4,800124fc <_out_rev+0xd4>
800124d8:	40898a33          	sub	s4,s3,s0
800124dc:	000a0913          	mv	s2,s4
800124e0:	01240633          	add	a2,s0,s2
800124e4:	06996863          	bltu	s2,s1,80012554 <_out_rev+0x12c>
800124e8:	00000613          	li	a2,0
800124ec:	0144e663          	bltu	s1,s4,800124f8 <_out_rev+0xd0>
800124f0:	00940433          	add	s0,s0,s1
800124f4:	41340633          	sub	a2,s0,s3
800124f8:	00c989b3          	add	s3,s3,a2
800124fc:	02c12083          	lw	ra,44(sp)
80012500:	02812403          	lw	s0,40(sp)
80012504:	02412483          	lw	s1,36(sp)
80012508:	02012903          	lw	s2,32(sp)
8001250c:	01812a03          	lw	s4,24(sp)
80012510:	01412a83          	lw	s5,20(sp)
80012514:	01012b03          	lw	s6,16(sp)
80012518:	00c12b83          	lw	s7,12(sp)
8001251c:	00812c03          	lw	s8,8(sp)
80012520:	00412c83          	lw	s9,4(sp)
80012524:	00012d03          	lw	s10,0(sp)
80012528:	00098513          	mv	a0,s3
8001252c:	01c12983          	lw	s3,28(sp)
80012530:	03010113          	addi	sp,sp,48
80012534:	00008067          	ret
80012538:	fffc0c13          	addi	s8,s8,-1
8001253c:	018d07b3          	add	a5,s10,s8
80012540:	0007c503          	lbu	a0,0(a5)
80012544:	000b8693          	mv	a3,s7
80012548:	000b0593          	mv	a1,s6
8001254c:	000a80e7          	jalr	s5
80012550:	f75ff06f          	j	800124c4 <_out_rev+0x9c>
80012554:	000b8693          	mv	a3,s7
80012558:	000b0593          	mv	a1,s6
8001255c:	02000513          	li	a0,32
80012560:	000a80e7          	jalr	s5
80012564:	00190913          	addi	s2,s2,1
80012568:	f79ff06f          	j	800124e0 <_out_rev+0xb8>

8001256c <_ntoa_format>:
8001256c:	00088313          	mv	t1,a7
80012570:	00812883          	lw	a7,8(sp)
80012574:	00080e13          	mv	t3,a6
80012578:	00012e83          	lw	t4,0(sp)
8001257c:	0028ff13          	andi	t5,a7,2
80012580:	00412803          	lw	a6,4(sp)
80012584:	040f1a63          	bnez	t5,800125d8 <_ntoa_format+0x6c>
80012588:	0018ff13          	andi	t5,a7,1
8001258c:	00080c63          	beqz	a6,800125a4 <_ntoa_format+0x38>
80012590:	000f0a63          	beqz	t5,800125a4 <_ntoa_format+0x38>
80012594:	000e1663          	bnez	t3,800125a0 <_ntoa_format+0x34>
80012598:	00c8ff93          	andi	t6,a7,12
8001259c:	000f8463          	beqz	t6,800125a4 <_ntoa_format+0x38>
800125a0:	fff80813          	addi	a6,a6,-1
800125a4:	02000f93          	li	t6,32
800125a8:	03000293          	li	t0,48
800125ac:	0100006f          	j	800125bc <_ntoa_format+0x50>
800125b0:	00f703b3          	add	t2,a4,a5
800125b4:	00538023          	sb	t0,0(t2)
800125b8:	00178793          	addi	a5,a5,1
800125bc:	01d7f463          	bgeu	a5,t4,800125c4 <_ntoa_format+0x58>
800125c0:	fff798e3          	bne	a5,t6,800125b0 <_ntoa_format+0x44>
800125c4:	01f00f93          	li	t6,31
800125c8:	03000293          	li	t0,48
800125cc:	000f0663          	beqz	t5,800125d8 <_ntoa_format+0x6c>
800125d0:	0107f463          	bgeu	a5,a6,800125d8 <_ntoa_format+0x6c>
800125d4:	04fffa63          	bgeu	t6,a5,80012628 <_ntoa_format+0xbc>
800125d8:	0108ff13          	andi	t5,a7,16
800125dc:	0a0f0063          	beqz	t5,8001267c <_ntoa_format+0x110>
800125e0:	4008ff13          	andi	t5,a7,1024
800125e4:	040f1c63          	bnez	t5,8001263c <_ntoa_format+0xd0>
800125e8:	04078a63          	beqz	a5,8001263c <_ntoa_format+0xd0>
800125ec:	01d78463          	beq	a5,t4,800125f4 <_ntoa_format+0x88>
800125f0:	05079663          	bne	a5,a6,8001263c <_ntoa_format+0xd0>
800125f4:	fff78e93          	addi	t4,a5,-1
800125f8:	040e8063          	beqz	t4,80012638 <_ntoa_format+0xcc>
800125fc:	01000f13          	li	t5,16
80012600:	ffe78793          	addi	a5,a5,-2
80012604:	05e30063          	beq	t1,t5,80012644 <_ntoa_format+0xd8>
80012608:	000e8793          	mv	a5,t4
8001260c:	00200e93          	li	t4,2
80012610:	05d31a63          	bne	t1,t4,80012664 <_ntoa_format+0xf8>
80012614:	01f00313          	li	t1,31
80012618:	08f36063          	bltu	t1,a5,80012698 <_ntoa_format+0x12c>
8001261c:	00f70333          	add	t1,a4,a5
80012620:	06200e93          	li	t4,98
80012624:	0380006f          	j	8001265c <_ntoa_format+0xf0>
80012628:	00f703b3          	add	t2,a4,a5
8001262c:	00538023          	sb	t0,0(t2)
80012630:	00178793          	addi	a5,a5,1
80012634:	f99ff06f          	j	800125cc <_ntoa_format+0x60>
80012638:	00000793          	li	a5,0
8001263c:	01000e93          	li	t4,16
80012640:	fdd316e3          	bne	t1,t4,8001260c <_ntoa_format+0xa0>
80012644:	0208f313          	andi	t1,a7,32
80012648:	04031a63          	bnez	t1,8001269c <_ntoa_format+0x130>
8001264c:	01f00313          	li	t1,31
80012650:	04f36463          	bltu	t1,a5,80012698 <_ntoa_format+0x12c>
80012654:	00f70333          	add	t1,a4,a5
80012658:	07800e93          	li	t4,120
8001265c:	01d30023          	sb	t4,0(t1)
80012660:	00178793          	addi	a5,a5,1
80012664:	01f00313          	li	t1,31
80012668:	02f36863          	bltu	t1,a5,80012698 <_ntoa_format+0x12c>
8001266c:	00f70333          	add	t1,a4,a5
80012670:	03000e93          	li	t4,48
80012674:	01d30023          	sb	t4,0(t1)
80012678:	00178793          	addi	a5,a5,1
8001267c:	01f00313          	li	t1,31
80012680:	00f36c63          	bltu	t1,a5,80012698 <_ntoa_format+0x12c>
80012684:	020e0663          	beqz	t3,800126b0 <_ntoa_format+0x144>
80012688:	00f70333          	add	t1,a4,a5
8001268c:	02d00e13          	li	t3,45
80012690:	01c30023          	sb	t3,0(t1)
80012694:	00178793          	addi	a5,a5,1
80012698:	d91ff06f          	j	80012428 <_out_rev>
8001269c:	01f00313          	li	t1,31
800126a0:	fef36ce3          	bltu	t1,a5,80012698 <_ntoa_format+0x12c>
800126a4:	00f70333          	add	t1,a4,a5
800126a8:	05800e93          	li	t4,88
800126ac:	fb1ff06f          	j	8001265c <_ntoa_format+0xf0>
800126b0:	0048f313          	andi	t1,a7,4
800126b4:	00030863          	beqz	t1,800126c4 <_ntoa_format+0x158>
800126b8:	00f70333          	add	t1,a4,a5
800126bc:	02b00e13          	li	t3,43
800126c0:	fd1ff06f          	j	80012690 <_ntoa_format+0x124>
800126c4:	0088f313          	andi	t1,a7,8
800126c8:	fc0308e3          	beqz	t1,80012698 <_ntoa_format+0x12c>
800126cc:	00f70333          	add	t1,a4,a5
800126d0:	02000e13          	li	t3,32
800126d4:	fbdff06f          	j	80012690 <_ntoa_format+0x124>

800126d8 <_ntoa_long>:
800126d8:	f8010113          	addi	sp,sp,-128
800126dc:	06812c23          	sw	s0,120(sp)
800126e0:	07412423          	sw	s4,104(sp)
800126e4:	07512223          	sw	s5,100(sp)
800126e8:	07612023          	sw	s6,96(sp)
800126ec:	05912a23          	sw	s9,84(sp)
800126f0:	05a12823          	sw	s10,80(sp)
800126f4:	05b12623          	sw	s11,76(sp)
800126f8:	06112e23          	sw	ra,124(sp)
800126fc:	06912a23          	sw	s1,116(sp)
80012700:	07212823          	sw	s2,112(sp)
80012704:	07312623          	sw	s3,108(sp)
80012708:	05712e23          	sw	s7,92(sp)
8001270c:	05812c23          	sw	s8,88(sp)
80012710:	00a12c23          	sw	a0,24(sp)
80012714:	00b12e23          	sw	a1,28(sp)
80012718:	08412d83          	lw	s11,132(sp)
8001271c:	00060a13          	mv	s4,a2
80012720:	00068c93          	mv	s9,a3
80012724:	00070413          	mv	s0,a4
80012728:	00078a93          	mv	s5,a5
8001272c:	00080d13          	mv	s10,a6
80012730:	00088b13          	mv	s6,a7
80012734:	00071463          	bnez	a4,8001273c <_ntoa_long+0x64>
80012738:	fefdfd93          	andi	s11,s11,-17
8001273c:	400df793          	andi	a5,s11,1024
80012740:	00078463          	beqz	a5,80012748 <_ntoa_long+0x70>
80012744:	06040463          	beqz	s0,800127ac <_ntoa_long+0xd4>
80012748:	020df793          	andi	a5,s11,32
8001274c:	06100493          	li	s1,97
80012750:	00078463          	beqz	a5,80012758 <_ntoa_long+0x80>
80012754:	04100493          	li	s1,65
80012758:	00040993          	mv	s3,s0
8001275c:	02010913          	addi	s2,sp,32
80012760:	00000413          	li	s0,0
80012764:	00900c13          	li	s8,9
80012768:	ff648493          	addi	s1,s1,-10
8001276c:	02000b93          	li	s7,32
80012770:	000d0593          	mv	a1,s10
80012774:	00098513          	mv	a0,s3
80012778:	389040ef          	jal	ra,80017300 <__umodsi3>
8001277c:	0ff57713          	andi	a4,a0,255
80012780:	0aac6263          	bltu	s8,a0,80012824 <_ntoa_long+0x14c>
80012784:	03070713          	addi	a4,a4,48
80012788:	0ff77713          	andi	a4,a4,255
8001278c:	000d0593          	mv	a1,s10
80012790:	00098513          	mv	a0,s3
80012794:	00140413          	addi	s0,s0,1
80012798:	00e90023          	sb	a4,0(s2)
8001279c:	31d040ef          	jal	ra,800172b8 <__udivsi3>
800127a0:	01a9e663          	bltu	s3,s10,800127ac <_ntoa_long+0xd4>
800127a4:	00190913          	addi	s2,s2,1
800127a8:	07741a63          	bne	s0,s7,8001281c <_ntoa_long+0x144>
800127ac:	08012783          	lw	a5,128(sp)
800127b0:	01c12583          	lw	a1,28(sp)
800127b4:	01812503          	lw	a0,24(sp)
800127b8:	01b12423          	sw	s11,8(sp)
800127bc:	00f12223          	sw	a5,4(sp)
800127c0:	01612023          	sw	s6,0(sp)
800127c4:	000d0893          	mv	a7,s10
800127c8:	000a8813          	mv	a6,s5
800127cc:	00040793          	mv	a5,s0
800127d0:	02010713          	addi	a4,sp,32
800127d4:	000c8693          	mv	a3,s9
800127d8:	000a0613          	mv	a2,s4
800127dc:	d91ff0ef          	jal	ra,8001256c <_ntoa_format>
800127e0:	07c12083          	lw	ra,124(sp)
800127e4:	07812403          	lw	s0,120(sp)
800127e8:	07412483          	lw	s1,116(sp)
800127ec:	07012903          	lw	s2,112(sp)
800127f0:	06c12983          	lw	s3,108(sp)
800127f4:	06812a03          	lw	s4,104(sp)
800127f8:	06412a83          	lw	s5,100(sp)
800127fc:	06012b03          	lw	s6,96(sp)
80012800:	05c12b83          	lw	s7,92(sp)
80012804:	05812c03          	lw	s8,88(sp)
80012808:	05412c83          	lw	s9,84(sp)
8001280c:	05012d03          	lw	s10,80(sp)
80012810:	04c12d83          	lw	s11,76(sp)
80012814:	08010113          	addi	sp,sp,128
80012818:	00008067          	ret
8001281c:	00050993          	mv	s3,a0
80012820:	f51ff06f          	j	80012770 <_ntoa_long+0x98>
80012824:	00970733          	add	a4,a4,s1
80012828:	f61ff06f          	j	80012788 <_ntoa_long+0xb0>

8001282c <_ntoa_long_long>:
8001282c:	f7010113          	addi	sp,sp,-144
80012830:	06912a23          	sw	s1,116(sp)
80012834:	07312623          	sw	s3,108(sp)
80012838:	07412423          	sw	s4,104(sp)
8001283c:	05712e23          	sw	s7,92(sp)
80012840:	05812c23          	sw	s8,88(sp)
80012844:	05912a23          	sw	s9,84(sp)
80012848:	05a12823          	sw	s10,80(sp)
8001284c:	00060993          	mv	s3,a2
80012850:	06112e23          	sw	ra,124(sp)
80012854:	06812c23          	sw	s0,120(sp)
80012858:	07212823          	sw	s2,112(sp)
8001285c:	07512223          	sw	s5,100(sp)
80012860:	07612023          	sw	s6,96(sp)
80012864:	05b12623          	sw	s11,76(sp)
80012868:	00a12a23          	sw	a0,20(sp)
8001286c:	00b12c23          	sw	a1,24(sp)
80012870:	09112623          	sw	a7,140(sp)
80012874:	00f76633          	or	a2,a4,a5
80012878:	00068a13          	mv	s4,a3
8001287c:	09c12483          	lw	s1,156(sp)
80012880:	09012683          	lw	a3,144(sp)
80012884:	00070c93          	mv	s9,a4
80012888:	00078c13          	mv	s8,a5
8001288c:	00080b93          	mv	s7,a6
80012890:	00088d13          	mv	s10,a7
80012894:	00061463          	bnez	a2,8001289c <_ntoa_long_long+0x70>
80012898:	fef4f493          	andi	s1,s1,-17
8001289c:	4004f713          	andi	a4,s1,1024
800128a0:	00070663          	beqz	a4,800128ac <_ntoa_long_long+0x80>
800128a4:	00000d93          	li	s11,0
800128a8:	08060263          	beqz	a2,8001292c <_ntoa_long_long+0x100>
800128ac:	0204f713          	andi	a4,s1,32
800128b0:	06100413          	li	s0,97
800128b4:	00070463          	beqz	a4,800128bc <_ntoa_long_long+0x90>
800128b8:	04100413          	li	s0,65
800128bc:	02010913          	addi	s2,sp,32
800128c0:	00000d93          	li	s11,0
800128c4:	00900b13          	li	s6,9
800128c8:	ff640413          	addi	s0,s0,-10
800128cc:	02000a93          	li	s5,32
800128d0:	000d0613          	mv	a2,s10
800128d4:	000c8513          	mv	a0,s9
800128d8:	000c0593          	mv	a1,s8
800128dc:	00d12e23          	sw	a3,28(sp)
800128e0:	1d8020ef          	jal	ra,80014ab8 <__umoddi3>
800128e4:	0ff57313          	andi	t1,a0,255
800128e8:	01c12683          	lw	a3,28(sp)
800128ec:	0c6b6063          	bltu	s6,t1,800129ac <_ntoa_long_long+0x180>
800128f0:	03030313          	addi	t1,t1,48
800128f4:	0ff37313          	andi	t1,t1,255
800128f8:	000d0613          	mv	a2,s10
800128fc:	000c8513          	mv	a0,s9
80012900:	000c0593          	mv	a1,s8
80012904:	00d12e23          	sw	a3,28(sp)
80012908:	00690023          	sb	t1,0(s2)
8001290c:	3d5010ef          	jal	ra,800144e0 <__udivdi3>
80012910:	01c12683          	lw	a3,28(sp)
80012914:	001d8d93          	addi	s11,s11,1
80012918:	00dc6a63          	bltu	s8,a3,8001292c <_ntoa_long_long+0x100>
8001291c:	01869463          	bne	a3,s8,80012924 <_ntoa_long_long+0xf8>
80012920:	01ace663          	bltu	s9,s10,8001292c <_ntoa_long_long+0x100>
80012924:	00190913          	addi	s2,s2,1
80012928:	075d9c63          	bne	s11,s5,800129a0 <_ntoa_long_long+0x174>
8001292c:	09812783          	lw	a5,152(sp)
80012930:	01812583          	lw	a1,24(sp)
80012934:	01412503          	lw	a0,20(sp)
80012938:	00f12223          	sw	a5,4(sp)
8001293c:	09412783          	lw	a5,148(sp)
80012940:	00912423          	sw	s1,8(sp)
80012944:	000d0893          	mv	a7,s10
80012948:	00f12023          	sw	a5,0(sp)
8001294c:	000b8813          	mv	a6,s7
80012950:	000d8793          	mv	a5,s11
80012954:	02010713          	addi	a4,sp,32
80012958:	000a0693          	mv	a3,s4
8001295c:	00098613          	mv	a2,s3
80012960:	c0dff0ef          	jal	ra,8001256c <_ntoa_format>
80012964:	07c12083          	lw	ra,124(sp)
80012968:	07812403          	lw	s0,120(sp)
8001296c:	07412483          	lw	s1,116(sp)
80012970:	07012903          	lw	s2,112(sp)
80012974:	06c12983          	lw	s3,108(sp)
80012978:	06812a03          	lw	s4,104(sp)
8001297c:	06412a83          	lw	s5,100(sp)
80012980:	06012b03          	lw	s6,96(sp)
80012984:	05c12b83          	lw	s7,92(sp)
80012988:	05812c03          	lw	s8,88(sp)
8001298c:	05412c83          	lw	s9,84(sp)
80012990:	05012d03          	lw	s10,80(sp)
80012994:	04c12d83          	lw	s11,76(sp)
80012998:	09010113          	addi	sp,sp,144
8001299c:	00008067          	ret
800129a0:	00050c93          	mv	s9,a0
800129a4:	00058c13          	mv	s8,a1
800129a8:	f29ff06f          	j	800128d0 <_ntoa_long_long+0xa4>
800129ac:	00830333          	add	t1,t1,s0
800129b0:	f45ff06f          	j	800128f4 <_ntoa_long_long+0xc8>

800129b4 <_out_char>:
800129b4:	00050463          	beqz	a0,800129bc <_out_char+0x8>
800129b8:	be0ff06f          	j	80011d98 <_putchar>
800129bc:	00008067          	ret

800129c0 <_out_fct>:
800129c0:	00050863          	beqz	a0,800129d0 <_out_fct+0x10>
800129c4:	0005a303          	lw	t1,0(a1)
800129c8:	0045a583          	lw	a1,4(a1)
800129cc:	00030067          	jr	t1
800129d0:	00008067          	ret

800129d4 <_ftoa>:
800129d4:	f7010113          	addi	sp,sp,-144
800129d8:	07812423          	sw	s8,104(sp)
800129dc:	07912223          	sw	s9,100(sp)
800129e0:	07a12023          	sw	s10,96(sp)
800129e4:	05b12e23          	sw	s11,92(sp)
800129e8:	00050c13          	mv	s8,a0
800129ec:	00058c93          	mv	s9,a1
800129f0:	00060d13          	mv	s10,a2
800129f4:	00068d93          	mv	s11,a3
800129f8:	00070613          	mv	a2,a4
800129fc:	00078693          	mv	a3,a5
80012a00:	00070513          	mv	a0,a4
80012a04:	00078593          	mv	a1,a5
80012a08:	08812423          	sw	s0,136(sp)
80012a0c:	08912223          	sw	s1,132(sp)
80012a10:	07312e23          	sw	s3,124(sp)
80012a14:	07412c23          	sw	s4,120(sp)
80012a18:	07512a23          	sw	s5,116(sp)
80012a1c:	08112623          	sw	ra,140(sp)
80012a20:	09212023          	sw	s2,128(sp)
80012a24:	07612823          	sw	s6,112(sp)
80012a28:	07712623          	sw	s7,108(sp)
80012a2c:	09012a83          	lw	s5,144(sp)
80012a30:	00070493          	mv	s1,a4
80012a34:	00078413          	mv	s0,a5
80012a38:	00080993          	mv	s3,a6
80012a3c:	00088a13          	mv	s4,a7
80012a40:	4fc030ef          	jal	ra,80015f3c <__eqdf2>
80012a44:	02050863          	beqz	a0,80012a74 <_ftoa+0xa0>
80012a48:	80000737          	lui	a4,0x80000
80012a4c:	000a8893          	mv	a7,s5
80012a50:	000a0813          	mv	a6,s4
80012a54:	00300793          	li	a5,3
80012a58:	47c70713          	addi	a4,a4,1148 # 8000047c <__clzsi2+0xfffe9118>
80012a5c:	000d8693          	mv	a3,s11
80012a60:	000d0613          	mv	a2,s10
80012a64:	000c8593          	mv	a1,s9
80012a68:	000c0513          	mv	a0,s8
80012a6c:	9bdff0ef          	jal	ra,80012428 <_out_rev>
80012a70:	0e40006f          	j	80012b54 <_ftoa+0x180>
80012a74:	800007b7          	lui	a5,0x80000
80012a78:	6d87a603          	lw	a2,1752(a5) # 800006d8 <__clzsi2+0xfffe9374>
80012a7c:	6dc7a683          	lw	a3,1756(a5)
80012a80:	00048513          	mv	a0,s1
80012a84:	00040593          	mv	a1,s0
80012a88:	624030ef          	jal	ra,800160ac <__ledf2>
80012a8c:	00055e63          	bgez	a0,80012aa8 <_ftoa+0xd4>
80012a90:	80000737          	lui	a4,0x80000
80012a94:	000a8893          	mv	a7,s5
80012a98:	000a0813          	mv	a6,s4
80012a9c:	00400793          	li	a5,4
80012aa0:	48070713          	addi	a4,a4,1152 # 80000480 <__clzsi2+0xfffe911c>
80012aa4:	fb9ff06f          	j	80012a5c <_ftoa+0x88>
80012aa8:	800007b7          	lui	a5,0x80000
80012aac:	6e07a603          	lw	a2,1760(a5) # 800006e0 <__clzsi2+0xfffe937c>
80012ab0:	6e47a683          	lw	a3,1764(a5)
80012ab4:	00048513          	mv	a0,s1
80012ab8:	00040593          	mv	a1,s0
80012abc:	50c030ef          	jal	ra,80015fc8 <__gedf2>
80012ac0:	02a05a63          	blez	a0,80012af4 <_ftoa+0x120>
80012ac4:	004af793          	andi	a5,s5,4
80012ac8:	00078e63          	beqz	a5,80012ae4 <_ftoa+0x110>
80012acc:	80000737          	lui	a4,0x80000
80012ad0:	47470713          	addi	a4,a4,1140 # 80000474 <__clzsi2+0xfffe9110>
80012ad4:	00400793          	li	a5,4
80012ad8:	000a8893          	mv	a7,s5
80012adc:	000a0813          	mv	a6,s4
80012ae0:	f7dff06f          	j	80012a5c <_ftoa+0x88>
80012ae4:	80000737          	lui	a4,0x80000
80012ae8:	47070713          	addi	a4,a4,1136 # 80000470 <__clzsi2+0xfffe910c>
80012aec:	00300793          	li	a5,3
80012af0:	fe9ff06f          	j	80012ad8 <_ftoa+0x104>
80012af4:	800007b7          	lui	a5,0x80000
80012af8:	6e87a603          	lw	a2,1768(a5) # 800006e8 <__clzsi2+0xfffe9384>
80012afc:	6ec7a683          	lw	a3,1772(a5)
80012b00:	00048513          	mv	a0,s1
80012b04:	00040593          	mv	a1,s0
80012b08:	4c0030ef          	jal	ra,80015fc8 <__gedf2>
80012b0c:	02a04063          	bgtz	a0,80012b2c <_ftoa+0x158>
80012b10:	800007b7          	lui	a5,0x80000
80012b14:	6f07a603          	lw	a2,1776(a5) # 800006f0 <__clzsi2+0xfffe938c>
80012b18:	6f47a683          	lw	a3,1780(a5)
80012b1c:	00048513          	mv	a0,s1
80012b20:	00040593          	mv	a1,s0
80012b24:	588030ef          	jal	ra,800160ac <__ledf2>
80012b28:	06055463          	bgez	a0,80012b90 <_ftoa+0x1bc>
80012b2c:	01512023          	sw	s5,0(sp)
80012b30:	000a0893          	mv	a7,s4
80012b34:	00098813          	mv	a6,s3
80012b38:	00048713          	mv	a4,s1
80012b3c:	00040793          	mv	a5,s0
80012b40:	000d8693          	mv	a3,s11
80012b44:	000d0613          	mv	a2,s10
80012b48:	000c8593          	mv	a1,s9
80012b4c:	000c0513          	mv	a0,s8
80012b50:	3f0000ef          	jal	ra,80012f40 <_etoa>
80012b54:	08c12083          	lw	ra,140(sp)
80012b58:	08812403          	lw	s0,136(sp)
80012b5c:	08412483          	lw	s1,132(sp)
80012b60:	08012903          	lw	s2,128(sp)
80012b64:	07c12983          	lw	s3,124(sp)
80012b68:	07812a03          	lw	s4,120(sp)
80012b6c:	07412a83          	lw	s5,116(sp)
80012b70:	07012b03          	lw	s6,112(sp)
80012b74:	06c12b83          	lw	s7,108(sp)
80012b78:	06812c03          	lw	s8,104(sp)
80012b7c:	06412c83          	lw	s9,100(sp)
80012b80:	06012d03          	lw	s10,96(sp)
80012b84:	05c12d83          	lw	s11,92(sp)
80012b88:	09010113          	addi	sp,sp,144
80012b8c:	00008067          	ret
80012b90:	00000613          	li	a2,0
80012b94:	00000693          	li	a3,0
80012b98:	00048513          	mv	a0,s1
80012b9c:	00040593          	mv	a1,s0
80012ba0:	50c030ef          	jal	ra,800160ac <__ledf2>
80012ba4:	18055663          	bgez	a0,80012d30 <_ftoa+0x35c>
80012ba8:	00048613          	mv	a2,s1
80012bac:	00040693          	mv	a3,s0
80012bb0:	00000513          	li	a0,0
80012bb4:	00000593          	li	a1,0
80012bb8:	459030ef          	jal	ra,80016810 <__subdf3>
80012bbc:	00100793          	li	a5,1
80012bc0:	00050493          	mv	s1,a0
80012bc4:	00058413          	mv	s0,a1
80012bc8:	00f12c23          	sw	a5,24(sp)
80012bcc:	400af793          	andi	a5,s5,1024
80012bd0:	16078463          	beqz	a5,80012d38 <_ftoa+0x364>
80012bd4:	00000b93          	li	s7,0
80012bd8:	00900793          	li	a5,9
80012bdc:	03000713          	li	a4,48
80012be0:	02000693          	li	a3,32
80012be4:	0137fe63          	bgeu	a5,s3,80012c00 <_ftoa+0x22c>
80012be8:	03010613          	addi	a2,sp,48
80012bec:	01760633          	add	a2,a2,s7
80012bf0:	00e60023          	sb	a4,0(a2)
80012bf4:	001b8b93          	addi	s7,s7,1
80012bf8:	fff98993          	addi	s3,s3,-1
80012bfc:	fedb94e3          	bne	s7,a3,80012be4 <_ftoa+0x210>
80012c00:	00040593          	mv	a1,s0
80012c04:	00048513          	mv	a0,s1
80012c08:	3d0040ef          	jal	ra,80016fd8 <__fixdfsi>
80012c0c:	80000737          	lui	a4,0x80000
80012c10:	51070713          	addi	a4,a4,1296 # 80000510 <__clzsi2+0xfffe91ac>
80012c14:	00399793          	slli	a5,s3,0x3
80012c18:	00f707b3          	add	a5,a4,a5
80012c1c:	0047a803          	lw	a6,4(a5)
80012c20:	0007a783          	lw	a5,0(a5)
80012c24:	00050913          	mv	s2,a0
80012c28:	01012a23          	sw	a6,20(sp)
80012c2c:	00f12823          	sw	a5,16(sp)
80012c30:	4a4040ef          	jal	ra,800170d4 <__floatsidf>
80012c34:	00050613          	mv	a2,a0
80012c38:	00058693          	mv	a3,a1
80012c3c:	00048513          	mv	a0,s1
80012c40:	00040593          	mv	a1,s0
80012c44:	3cd030ef          	jal	ra,80016810 <__subdf3>
80012c48:	01012603          	lw	a2,16(sp)
80012c4c:	01412683          	lw	a3,20(sp)
80012c50:	540030ef          	jal	ra,80016190 <__muldf3>
80012c54:	00b12e23          	sw	a1,28(sp)
80012c58:	02a12023          	sw	a0,32(sp)
80012c5c:	3fc040ef          	jal	ra,80017058 <__fixunsdfsi>
80012c60:	00050b13          	mv	s6,a0
80012c64:	518040ef          	jal	ra,8001717c <__floatunsidf>
80012c68:	02012703          	lw	a4,32(sp)
80012c6c:	01c12783          	lw	a5,28(sp)
80012c70:	00050613          	mv	a2,a0
80012c74:	00058693          	mv	a3,a1
80012c78:	00070513          	mv	a0,a4
80012c7c:	00078593          	mv	a1,a5
80012c80:	391030ef          	jal	ra,80016810 <__subdf3>
80012c84:	80000eb7          	lui	t4,0x80000
80012c88:	6f8ea703          	lw	a4,1784(t4) # 800006f8 <__clzsi2+0xfffe9394>
80012c8c:	6fcea783          	lw	a5,1788(t4)
80012c90:	02a12623          	sw	a0,44(sp)
80012c94:	00070613          	mv	a2,a4
80012c98:	00078693          	mv	a3,a5
80012c9c:	02e12023          	sw	a4,32(sp)
80012ca0:	02f12223          	sw	a5,36(sp)
80012ca4:	02b12423          	sw	a1,40(sp)
80012ca8:	320030ef          	jal	ra,80015fc8 <__gedf2>
80012cac:	80000eb7          	lui	t4,0x80000
80012cb0:	01d12e23          	sw	t4,28(sp)
80012cb4:	02012703          	lw	a4,32(sp)
80012cb8:	02412783          	lw	a5,36(sp)
80012cbc:	02812883          	lw	a7,40(sp)
80012cc0:	02c12e03          	lw	t3,44(sp)
80012cc4:	06a05e63          	blez	a0,80012d40 <_ftoa+0x36c>
80012cc8:	001b0b13          	addi	s6,s6,1
80012ccc:	000b0513          	mv	a0,s6
80012cd0:	4ac040ef          	jal	ra,8001717c <__floatunsidf>
80012cd4:	00050613          	mv	a2,a0
80012cd8:	00058693          	mv	a3,a1
80012cdc:	01012503          	lw	a0,16(sp)
80012ce0:	01412583          	lw	a1,20(sp)
80012ce4:	3c8030ef          	jal	ra,800160ac <__ledf2>
80012ce8:	00a04663          	bgtz	a0,80012cf4 <_ftoa+0x320>
80012cec:	00190913          	addi	s2,s2,1
80012cf0:	00000b13          	li	s6,0
80012cf4:	06098c63          	beqz	s3,80012d6c <_ftoa+0x398>
80012cf8:	02000493          	li	s1,32
80012cfc:	0e9b9863          	bne	s7,s1,80012dec <_ftoa+0x418>
80012d00:	003af713          	andi	a4,s5,3
80012d04:	00100793          	li	a5,1
80012d08:	1ef71063          	bne	a4,a5,80012ee8 <_ftoa+0x514>
80012d0c:	1c0a0e63          	beqz	s4,80012ee8 <_ftoa+0x514>
80012d10:	01812783          	lw	a5,24(sp)
80012d14:	00079663          	bnez	a5,80012d20 <_ftoa+0x34c>
80012d18:	00caf793          	andi	a5,s5,12
80012d1c:	00078463          	beqz	a5,80012d24 <_ftoa+0x350>
80012d20:	fffa0a13          	addi	s4,s4,-1
80012d24:	01f00793          	li	a5,31
80012d28:	03000713          	li	a4,48
80012d2c:	1a00006f          	j	80012ecc <_ftoa+0x4f8>
80012d30:	00012c23          	sw	zero,24(sp)
80012d34:	e99ff06f          	j	80012bcc <_ftoa+0x1f8>
80012d38:	00600993          	li	s3,6
80012d3c:	e99ff06f          	j	80012bd4 <_ftoa+0x200>
80012d40:	00070613          	mv	a2,a4
80012d44:	00078693          	mv	a3,a5
80012d48:	000e0513          	mv	a0,t3
80012d4c:	00088593          	mv	a1,a7
80012d50:	35c030ef          	jal	ra,800160ac <__ledf2>
80012d54:	fa0540e3          	bltz	a0,80012cf4 <_ftoa+0x320>
80012d58:	000b0663          	beqz	s6,80012d64 <_ftoa+0x390>
80012d5c:	001b7793          	andi	a5,s6,1
80012d60:	f8078ae3          	beqz	a5,80012cf4 <_ftoa+0x320>
80012d64:	001b0b13          	addi	s6,s6,1
80012d68:	f8dff06f          	j	80012cf4 <_ftoa+0x320>
80012d6c:	00090513          	mv	a0,s2
80012d70:	364040ef          	jal	ra,800170d4 <__floatsidf>
80012d74:	00050613          	mv	a2,a0
80012d78:	00058693          	mv	a3,a1
80012d7c:	00048513          	mv	a0,s1
80012d80:	00040593          	mv	a1,s0
80012d84:	28d030ef          	jal	ra,80016810 <__subdf3>
80012d88:	01c12783          	lw	a5,28(sp)
80012d8c:	00050493          	mv	s1,a0
80012d90:	00058413          	mv	s0,a1
80012d94:	6f87a703          	lw	a4,1784(a5)
80012d98:	6fc7a783          	lw	a5,1788(a5)
80012d9c:	00070613          	mv	a2,a4
80012da0:	00078693          	mv	a3,a5
80012da4:	00e12823          	sw	a4,16(sp)
80012da8:	00f12a23          	sw	a5,20(sp)
80012dac:	300030ef          	jal	ra,800160ac <__ledf2>
80012db0:	02055263          	bgez	a0,80012dd4 <_ftoa+0x400>
80012db4:	01012703          	lw	a4,16(sp)
80012db8:	01412783          	lw	a5,20(sp)
80012dbc:	00048513          	mv	a0,s1
80012dc0:	00070613          	mv	a2,a4
80012dc4:	00078693          	mv	a3,a5
80012dc8:	00040593          	mv	a1,s0
80012dcc:	1fc030ef          	jal	ra,80015fc8 <__gedf2>
80012dd0:	00a05863          	blez	a0,80012de0 <_ftoa+0x40c>
80012dd4:	00197793          	andi	a5,s2,1
80012dd8:	00078463          	beqz	a5,80012de0 <_ftoa+0x40c>
80012ddc:	00190913          	addi	s2,s2,1
80012de0:	000b8793          	mv	a5,s7
80012de4:	02000493          	li	s1,32
80012de8:	0c80006f          	j	80012eb0 <_ftoa+0x4dc>
80012dec:	03010793          	addi	a5,sp,48
80012df0:	00a00593          	li	a1,10
80012df4:	000b0513          	mv	a0,s6
80012df8:	001b8413          	addi	s0,s7,1
80012dfc:	01778bb3          	add	s7,a5,s7
80012e00:	500040ef          	jal	ra,80017300 <__umodsi3>
80012e04:	03050513          	addi	a0,a0,48
80012e08:	00ab8023          	sb	a0,0(s7)
80012e0c:	00a00593          	li	a1,10
80012e10:	000b0513          	mv	a0,s6
80012e14:	4a4040ef          	jal	ra,800172b8 <__udivsi3>
80012e18:	00900793          	li	a5,9
80012e1c:	fff98993          	addi	s3,s3,-1
80012e20:	0367ec63          	bltu	a5,s6,80012e58 <_ftoa+0x484>
80012e24:	008989b3          	add	s3,s3,s0
80012e28:	00040b93          	mv	s7,s0
80012e2c:	02000693          	li	a3,32
80012e30:	03000613          	li	a2,48
80012e34:	ecdb86e3          	beq	s7,a3,80012d00 <_ftoa+0x32c>
80012e38:	001b8713          	addi	a4,s7,1
80012e3c:	033b9463          	bne	s7,s3,80012e64 <_ftoa+0x490>
80012e40:	05010793          	addi	a5,sp,80
80012e44:	01778333          	add	t1,a5,s7
80012e48:	02e00793          	li	a5,46
80012e4c:	fef30023          	sb	a5,-32(t1)
80012e50:	00070b93          	mv	s7,a4
80012e54:	f8dff06f          	j	80012de0 <_ftoa+0x40c>
80012e58:	00040b93          	mv	s7,s0
80012e5c:	00050b13          	mv	s6,a0
80012e60:	e9dff06f          	j	80012cfc <_ftoa+0x328>
80012e64:	03010793          	addi	a5,sp,48
80012e68:	01778333          	add	t1,a5,s7
80012e6c:	00c30023          	sb	a2,0(t1)
80012e70:	00070b93          	mv	s7,a4
80012e74:	fc1ff06f          	j	80012e34 <_ftoa+0x460>
80012e78:	03010713          	addi	a4,sp,48
80012e7c:	00a00593          	li	a1,10
80012e80:	00090513          	mv	a0,s2
80012e84:	00f70433          	add	s0,a4,a5
80012e88:	4ac040ef          	jal	ra,80017334 <__modsi3>
80012e8c:	03050513          	addi	a0,a0,48
80012e90:	00a40023          	sb	a0,0(s0)
80012e94:	00a00593          	li	a1,10
80012e98:	00090513          	mv	a0,s2
80012e9c:	414040ef          	jal	ra,800172b0 <__divsi3>
80012ea0:	001b8b93          	addi	s7,s7,1
80012ea4:	00050913          	mv	s2,a0
80012ea8:	e4050ce3          	beqz	a0,80012d00 <_ftoa+0x32c>
80012eac:	000b8793          	mv	a5,s7
80012eb0:	fc9b94e3          	bne	s7,s1,80012e78 <_ftoa+0x4a4>
80012eb4:	02000b93          	li	s7,32
80012eb8:	e49ff06f          	j	80012d00 <_ftoa+0x32c>
80012ebc:	03010693          	addi	a3,sp,48
80012ec0:	017686b3          	add	a3,a3,s7
80012ec4:	00e68023          	sb	a4,0(a3)
80012ec8:	001b8b93          	addi	s7,s7,1
80012ecc:	014bfe63          	bgeu	s7,s4,80012ee8 <_ftoa+0x514>
80012ed0:	ff77f6e3          	bgeu	a5,s7,80012ebc <_ftoa+0x4e8>
80012ed4:	000a8893          	mv	a7,s5
80012ed8:	000a0813          	mv	a6,s4
80012edc:	000b8793          	mv	a5,s7
80012ee0:	03010713          	addi	a4,sp,48
80012ee4:	b79ff06f          	j	80012a5c <_ftoa+0x88>
80012ee8:	01f00793          	li	a5,31
80012eec:	ff77e4e3          	bltu	a5,s7,80012ed4 <_ftoa+0x500>
80012ef0:	01812783          	lw	a5,24(sp)
80012ef4:	00078e63          	beqz	a5,80012f10 <_ftoa+0x53c>
80012ef8:	05010793          	addi	a5,sp,80
80012efc:	017787b3          	add	a5,a5,s7
80012f00:	02d00713          	li	a4,45
80012f04:	fee78023          	sb	a4,-32(a5)
80012f08:	001b8b93          	addi	s7,s7,1
80012f0c:	fc9ff06f          	j	80012ed4 <_ftoa+0x500>
80012f10:	004af793          	andi	a5,s5,4
80012f14:	00078a63          	beqz	a5,80012f28 <_ftoa+0x554>
80012f18:	05010793          	addi	a5,sp,80
80012f1c:	017787b3          	add	a5,a5,s7
80012f20:	02b00713          	li	a4,43
80012f24:	fe1ff06f          	j	80012f04 <_ftoa+0x530>
80012f28:	008af793          	andi	a5,s5,8
80012f2c:	fa0784e3          	beqz	a5,80012ed4 <_ftoa+0x500>
80012f30:	05010793          	addi	a5,sp,80
80012f34:	017787b3          	add	a5,a5,s7
80012f38:	02000713          	li	a4,32
80012f3c:	fc9ff06f          	j	80012f04 <_ftoa+0x530>

80012f40 <_etoa>:
80012f40:	f9010113          	addi	sp,sp,-112
80012f44:	05712623          	sw	s7,76(sp)
80012f48:	05812423          	sw	s8,72(sp)
80012f4c:	05912223          	sw	s9,68(sp)
80012f50:	05a12023          	sw	s10,64(sp)
80012f54:	00050c13          	mv	s8,a0
80012f58:	00058c93          	mv	s9,a1
80012f5c:	00060b93          	mv	s7,a2
80012f60:	00068d13          	mv	s10,a3
80012f64:	00070613          	mv	a2,a4
80012f68:	00078693          	mv	a3,a5
80012f6c:	00070513          	mv	a0,a4
80012f70:	00078593          	mv	a1,a5
80012f74:	06912223          	sw	s1,100(sp)
80012f78:	05312e23          	sw	s3,92(sp)
80012f7c:	05412c23          	sw	s4,88(sp)
80012f80:	05512a23          	sw	s5,84(sp)
80012f84:	05612823          	sw	s6,80(sp)
80012f88:	06112623          	sw	ra,108(sp)
80012f8c:	06812423          	sw	s0,104(sp)
80012f90:	07212023          	sw	s2,96(sp)
80012f94:	03b12e23          	sw	s11,60(sp)
80012f98:	07012b03          	lw	s6,112(sp)
80012f9c:	00070493          	mv	s1,a4
80012fa0:	00078a13          	mv	s4,a5
80012fa4:	00080993          	mv	s3,a6
80012fa8:	00088a93          	mv	s5,a7
80012fac:	791020ef          	jal	ra,80015f3c <__eqdf2>
80012fb0:	02051e63          	bnez	a0,80012fec <_etoa+0xac>
80012fb4:	800007b7          	lui	a5,0x80000
80012fb8:	6e07a603          	lw	a2,1760(a5) # 800006e0 <__clzsi2+0xfffe937c>
80012fbc:	6e47a683          	lw	a3,1764(a5)
80012fc0:	00048513          	mv	a0,s1
80012fc4:	000a0593          	mv	a1,s4
80012fc8:	000030ef          	jal	ra,80015fc8 <__gedf2>
80012fcc:	02a04063          	bgtz	a0,80012fec <_etoa+0xac>
80012fd0:	800007b7          	lui	a5,0x80000
80012fd4:	6d87a603          	lw	a2,1752(a5) # 800006d8 <__clzsi2+0xfffe9374>
80012fd8:	6dc7a683          	lw	a3,1756(a5)
80012fdc:	00048513          	mv	a0,s1
80012fe0:	000a0593          	mv	a1,s4
80012fe4:	0c8030ef          	jal	ra,800160ac <__ledf2>
80012fe8:	06055263          	bgez	a0,8001304c <_etoa+0x10c>
80012fec:	06812403          	lw	s0,104(sp)
80012ff0:	07612823          	sw	s6,112(sp)
80012ff4:	06c12083          	lw	ra,108(sp)
80012ff8:	06012903          	lw	s2,96(sp)
80012ffc:	05012b03          	lw	s6,80(sp)
80013000:	03c12d83          	lw	s11,60(sp)
80013004:	000a8893          	mv	a7,s5
80013008:	00098813          	mv	a6,s3
8001300c:	05412a83          	lw	s5,84(sp)
80013010:	05c12983          	lw	s3,92(sp)
80013014:	00048713          	mv	a4,s1
80013018:	000a0793          	mv	a5,s4
8001301c:	06412483          	lw	s1,100(sp)
80013020:	05812a03          	lw	s4,88(sp)
80013024:	000d0693          	mv	a3,s10
80013028:	000b8613          	mv	a2,s7
8001302c:	04012d03          	lw	s10,64(sp)
80013030:	04c12b83          	lw	s7,76(sp)
80013034:	000c8593          	mv	a1,s9
80013038:	000c0513          	mv	a0,s8
8001303c:	04412c83          	lw	s9,68(sp)
80013040:	04812c03          	lw	s8,72(sp)
80013044:	07010113          	addi	sp,sp,112
80013048:	98dff06f          	j	800129d4 <_ftoa>
8001304c:	00000613          	li	a2,0
80013050:	00000693          	li	a3,0
80013054:	00048513          	mv	a0,s1
80013058:	000a0593          	mv	a1,s4
8001305c:	050030ef          	jal	ra,800160ac <__ledf2>
80013060:	00912c23          	sw	s1,24(sp)
80013064:	000a0413          	mv	s0,s4
80013068:	00055663          	bgez	a0,80013074 <_etoa+0x134>
8001306c:	80000437          	lui	s0,0x80000
80013070:	01444433          	xor	s0,s0,s4
80013074:	400b7793          	andi	a5,s6,1024
80013078:	00f12823          	sw	a5,16(sp)
8001307c:	00079463          	bnez	a5,80013084 <_etoa+0x144>
80013080:	00600993          	li	s3,6
80013084:	01445513          	srli	a0,s0,0x14
80013088:	7ff57513          	andi	a0,a0,2047
8001308c:	c0150513          	addi	a0,a0,-1023
80013090:	044040ef          	jal	ra,800170d4 <__floatsidf>
80013094:	800007b7          	lui	a5,0x80000
80013098:	7007a603          	lw	a2,1792(a5) # 80000700 <__clzsi2+0xfffe939c>
8001309c:	7047a683          	lw	a3,1796(a5)
800130a0:	0f0030ef          	jal	ra,80016190 <__muldf3>
800130a4:	800007b7          	lui	a5,0x80000
800130a8:	7087a603          	lw	a2,1800(a5) # 80000708 <__clzsi2+0xfffe93a4>
800130ac:	70c7a683          	lw	a3,1804(a5)
800130b0:	6f9010ef          	jal	ra,80014fa8 <__adddf3>
800130b4:	800007b7          	lui	a5,0x80000
800130b8:	00c41713          	slli	a4,s0,0xc
800130bc:	00c75713          	srli	a4,a4,0xc
800130c0:	7107a603          	lw	a2,1808(a5) # 80000710 <__clzsi2+0xfffe93ac>
800130c4:	7147a683          	lw	a3,1812(a5)
800130c8:	3ff007b7          	lui	a5,0x3ff00
800130cc:	00e7e7b3          	or	a5,a5,a4
800130d0:	00050d93          	mv	s11,a0
800130d4:	00058913          	mv	s2,a1
800130d8:	00048513          	mv	a0,s1
800130dc:	00078593          	mv	a1,a5
800130e0:	730030ef          	jal	ra,80016810 <__subdf3>
800130e4:	800007b7          	lui	a5,0x80000
800130e8:	7187a603          	lw	a2,1816(a5) # 80000718 <__clzsi2+0xfffe93b4>
800130ec:	71c7a683          	lw	a3,1820(a5)
800130f0:	0a0030ef          	jal	ra,80016190 <__muldf3>
800130f4:	00050613          	mv	a2,a0
800130f8:	00058693          	mv	a3,a1
800130fc:	000d8513          	mv	a0,s11
80013100:	00090593          	mv	a1,s2
80013104:	6a5010ef          	jal	ra,80014fa8 <__adddf3>
80013108:	6d1030ef          	jal	ra,80016fd8 <__fixdfsi>
8001310c:	00050913          	mv	s2,a0
80013110:	7c5030ef          	jal	ra,800170d4 <__floatsidf>
80013114:	80000737          	lui	a4,0x80000
80013118:	72072603          	lw	a2,1824(a4) # 80000720 <__clzsi2+0xfffe93bc>
8001311c:	72472683          	lw	a3,1828(a4)
80013120:	00058d93          	mv	s11,a1
80013124:	00a12823          	sw	a0,16(sp)
80013128:	068030ef          	jal	ra,80016190 <__muldf3>
8001312c:	80000737          	lui	a4,0x80000
80013130:	6f872603          	lw	a2,1784(a4) # 800006f8 <__clzsi2+0xfffe9394>
80013134:	6fc72683          	lw	a3,1788(a4)
80013138:	671010ef          	jal	ra,80014fa8 <__adddf3>
8001313c:	69d030ef          	jal	ra,80016fd8 <__fixdfsi>
80013140:	01012783          	lw	a5,16(sp)
80013144:	80000737          	lui	a4,0x80000
80013148:	72872603          	lw	a2,1832(a4) # 80000728 <__clzsi2+0xfffe93c4>
8001314c:	72c72683          	lw	a3,1836(a4)
80013150:	00a12e23          	sw	a0,28(sp)
80013154:	000d8593          	mv	a1,s11
80013158:	00078513          	mv	a0,a5
8001315c:	034030ef          	jal	ra,80016190 <__muldf3>
80013160:	00a12823          	sw	a0,16(sp)
80013164:	01c12503          	lw	a0,28(sp)
80013168:	00058d93          	mv	s11,a1
8001316c:	769030ef          	jal	ra,800170d4 <__floatsidf>
80013170:	80000737          	lui	a4,0x80000
80013174:	73072603          	lw	a2,1840(a4) # 80000730 <__clzsi2+0xfffe93cc>
80013178:	73472683          	lw	a3,1844(a4)
8001317c:	014030ef          	jal	ra,80016190 <__muldf3>
80013180:	01012783          	lw	a5,16(sp)
80013184:	00050613          	mv	a2,a0
80013188:	00058693          	mv	a3,a1
8001318c:	00078513          	mv	a0,a5
80013190:	000d8593          	mv	a1,s11
80013194:	67c030ef          	jal	ra,80016810 <__subdf3>
80013198:	00050613          	mv	a2,a0
8001319c:	00058693          	mv	a3,a1
800131a0:	02a12223          	sw	a0,36(sp)
800131a4:	02b12023          	sw	a1,32(sp)
800131a8:	7e9020ef          	jal	ra,80016190 <__muldf3>
800131ac:	02412703          	lw	a4,36(sp)
800131b0:	02012783          	lw	a5,32(sp)
800131b4:	00050d93          	mv	s11,a0
800131b8:	00070613          	mv	a2,a4
800131bc:	00078693          	mv	a3,a5
800131c0:	00070513          	mv	a0,a4
800131c4:	00b12823          	sw	a1,16(sp)
800131c8:	00078593          	mv	a1,a5
800131cc:	02e12623          	sw	a4,44(sp)
800131d0:	02f12423          	sw	a5,40(sp)
800131d4:	5d5010ef          	jal	ra,80014fa8 <__adddf3>
800131d8:	800006b7          	lui	a3,0x80000
800131dc:	7386a603          	lw	a2,1848(a3) # 80000738 <__clzsi2+0xfffe93d4>
800131e0:	02b12023          	sw	a1,32(sp)
800131e4:	73c6a683          	lw	a3,1852(a3)
800131e8:	01012583          	lw	a1,16(sp)
800131ec:	02a12223          	sw	a0,36(sp)
800131f0:	000d8513          	mv	a0,s11
800131f4:	570020ef          	jal	ra,80015764 <__divdf3>
800131f8:	800008b7          	lui	a7,0x80000
800131fc:	7408a603          	lw	a2,1856(a7) # 80000740 <__clzsi2+0xfffe93dc>
80013200:	7448a683          	lw	a3,1860(a7)
80013204:	5a5010ef          	jal	ra,80014fa8 <__adddf3>
80013208:	00058693          	mv	a3,a1
8001320c:	01012583          	lw	a1,16(sp)
80013210:	00050613          	mv	a2,a0
80013214:	000d8513          	mv	a0,s11
80013218:	54c020ef          	jal	ra,80015764 <__divdf3>
8001321c:	800006b7          	lui	a3,0x80000
80013220:	7486a603          	lw	a2,1864(a3) # 80000748 <__clzsi2+0xfffe93e4>
80013224:	74c6a683          	lw	a3,1868(a3)
80013228:	581010ef          	jal	ra,80014fa8 <__adddf3>
8001322c:	00058693          	mv	a3,a1
80013230:	01012583          	lw	a1,16(sp)
80013234:	00050613          	mv	a2,a0
80013238:	000d8513          	mv	a0,s11
8001323c:	528020ef          	jal	ra,80015764 <__divdf3>
80013240:	02812783          	lw	a5,40(sp)
80013244:	02c12703          	lw	a4,44(sp)
80013248:	00058d93          	mv	s11,a1
8001324c:	00078693          	mv	a3,a5
80013250:	800007b7          	lui	a5,0x80000
80013254:	7547a583          	lw	a1,1876(a5) # 80000754 <__clzsi2+0xfffe93f0>
80013258:	00a12823          	sw	a0,16(sp)
8001325c:	7507a503          	lw	a0,1872(a5)
80013260:	00070613          	mv	a2,a4
80013264:	5ac030ef          	jal	ra,80016810 <__subdf3>
80013268:	01012e03          	lw	t3,16(sp)
8001326c:	00050613          	mv	a2,a0
80013270:	00058693          	mv	a3,a1
80013274:	000e0513          	mv	a0,t3
80013278:	000d8593          	mv	a1,s11
8001327c:	52d010ef          	jal	ra,80014fa8 <__adddf3>
80013280:	02412303          	lw	t1,36(sp)
80013284:	02012803          	lw	a6,32(sp)
80013288:	00050613          	mv	a2,a0
8001328c:	00058693          	mv	a3,a1
80013290:	00030513          	mv	a0,t1
80013294:	00080593          	mv	a1,a6
80013298:	4cc020ef          	jal	ra,80015764 <__divdf3>
8001329c:	800007b7          	lui	a5,0x80000
800132a0:	7587a603          	lw	a2,1880(a5) # 80000758 <__clzsi2+0xfffe93f4>
800132a4:	75c7a683          	lw	a3,1884(a5)
800132a8:	501010ef          	jal	ra,80014fa8 <__adddf3>
800132ac:	01c12783          	lw	a5,28(sp)
800132b0:	00000813          	li	a6,0
800132b4:	00080613          	mv	a2,a6
800132b8:	3ff78793          	addi	a5,a5,1023
800132bc:	01479713          	slli	a4,a5,0x14
800132c0:	00070693          	mv	a3,a4
800132c4:	6cd020ef          	jal	ra,80016190 <__muldf3>
800132c8:	00050613          	mv	a2,a0
800132cc:	00a12823          	sw	a0,16(sp)
800132d0:	00058693          	mv	a3,a1
800132d4:	00058d93          	mv	s11,a1
800132d8:	00048513          	mv	a0,s1
800132dc:	00040593          	mv	a1,s0
800132e0:	5cd020ef          	jal	ra,800160ac <__ledf2>
800132e4:	01012803          	lw	a6,16(sp)
800132e8:	800008b7          	lui	a7,0x80000
800132ec:	20054463          	bltz	a0,800134f4 <_etoa+0x5b4>
800132f0:	00080713          	mv	a4,a6
800132f4:	000d8793          	mv	a5,s11
800132f8:	0c600693          	li	a3,198
800132fc:	06390d93          	addi	s11,s2,99
80013300:	01b6bdb3          	sltu	s11,a3,s11
80013304:	014b1693          	slli	a3,s6,0x14
80013308:	004d8d93          	addi	s11,s11,4
8001330c:	0606d663          	bgez	a3,80013378 <_etoa+0x438>
80013310:	800006b7          	lui	a3,0x80000
80013314:	7606a603          	lw	a2,1888(a3) # 80000760 <__clzsi2+0xfffe93fc>
80013318:	7646a683          	lw	a3,1892(a3)
8001331c:	00048513          	mv	a0,s1
80013320:	00040593          	mv	a1,s0
80013324:	00e12823          	sw	a4,16(sp)
80013328:	00f12a23          	sw	a5,20(sp)
8001332c:	49d020ef          	jal	ra,80015fc8 <__gedf2>
80013330:	01012703          	lw	a4,16(sp)
80013334:	01412783          	lw	a5,20(sp)
80013338:	1e054463          	bltz	a0,80013520 <_etoa+0x5e0>
8001333c:	800006b7          	lui	a3,0x80000
80013340:	7686a603          	lw	a2,1896(a3) # 80000768 <__clzsi2+0xfffe9404>
80013344:	76c6a683          	lw	a3,1900(a3)
80013348:	00048513          	mv	a0,s1
8001334c:	00040593          	mv	a1,s0
80013350:	55d020ef          	jal	ra,800160ac <__ledf2>
80013354:	01012703          	lw	a4,16(sp)
80013358:	01412783          	lw	a5,20(sp)
8001335c:	1c055263          	bgez	a0,80013520 <_etoa+0x5e0>
80013360:	1b395c63          	bge	s2,s3,80013518 <_etoa+0x5d8>
80013364:	412989b3          	sub	s3,s3,s2
80013368:	fff98993          	addi	s3,s3,-1
8001336c:	400b6b13          	ori	s6,s6,1024
80013370:	00000d93          	li	s11,0
80013374:	00000913          	li	s2,0
80013378:	00000893          	li	a7,0
8001337c:	015df463          	bgeu	s11,s5,80013384 <_etoa+0x444>
80013380:	41ba88b3          	sub	a7,s5,s11
80013384:	002b7693          	andi	a3,s6,2
80013388:	00d12823          	sw	a3,16(sp)
8001338c:	00068663          	beqz	a3,80013398 <_etoa+0x458>
80013390:	000d8463          	beqz	s11,80013398 <_etoa+0x458>
80013394:	00000893          	li	a7,0
80013398:	02090463          	beqz	s2,800133c0 <_etoa+0x480>
8001339c:	00040593          	mv	a1,s0
800133a0:	00070613          	mv	a2,a4
800133a4:	00078693          	mv	a3,a5
800133a8:	00048513          	mv	a0,s1
800133ac:	01112e23          	sw	a7,28(sp)
800133b0:	3b4020ef          	jal	ra,80015764 <__divdf3>
800133b4:	01c12883          	lw	a7,28(sp)
800133b8:	00a12c23          	sw	a0,24(sp)
800133bc:	00058413          	mv	s0,a1
800133c0:	00000613          	li	a2,0
800133c4:	00000693          	li	a3,0
800133c8:	00048513          	mv	a0,s1
800133cc:	000a0593          	mv	a1,s4
800133d0:	01112e23          	sw	a7,28(sp)
800133d4:	4d9020ef          	jal	ra,800160ac <__ledf2>
800133d8:	01c12883          	lw	a7,28(sp)
800133dc:	00055663          	bgez	a0,800133e8 <_etoa+0x4a8>
800133e0:	800007b7          	lui	a5,0x80000
800133e4:	0087c433          	xor	s0,a5,s0
800133e8:	01812603          	lw	a2,24(sp)
800133ec:	fffff7b7          	lui	a5,0xfffff
800133f0:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__clzsi2+0x7ffe849b>
800133f4:	00fb77b3          	and	a5,s6,a5
800133f8:	00f12023          	sw	a5,0(sp)
800133fc:	00060713          	mv	a4,a2
80013400:	00040793          	mv	a5,s0
80013404:	00098813          	mv	a6,s3
80013408:	000d0693          	mv	a3,s10
8001340c:	000b8613          	mv	a2,s7
80013410:	000c8593          	mv	a1,s9
80013414:	000c0513          	mv	a0,s8
80013418:	dbcff0ef          	jal	ra,800129d4 <_ftoa>
8001341c:	00050413          	mv	s0,a0
80013420:	080d8a63          	beqz	s11,800134b4 <_etoa+0x574>
80013424:	020b7b13          	andi	s6,s6,32
80013428:	04500513          	li	a0,69
8001342c:	000b1463          	bnez	s6,80013434 <_etoa+0x4f4>
80013430:	06500513          	li	a0,101
80013434:	00040613          	mv	a2,s0
80013438:	000d0693          	mv	a3,s10
8001343c:	000c8593          	mv	a1,s9
80013440:	000c00e7          	jalr	s8
80013444:	41f95713          	srai	a4,s2,0x1f
80013448:	00140493          	addi	s1,s0,1 # 80000001 <__clzsi2+0xfffe8c9d>
8001344c:	012746b3          	xor	a3,a4,s2
80013450:	00500793          	li	a5,5
80013454:	fffd8d93          	addi	s11,s11,-1
80013458:	00f12223          	sw	a5,4(sp)
8001345c:	40e68733          	sub	a4,a3,a4
80013460:	01f95793          	srli	a5,s2,0x1f
80013464:	01b12023          	sw	s11,0(sp)
80013468:	00000893          	li	a7,0
8001346c:	00a00813          	li	a6,10
80013470:	000d0693          	mv	a3,s10
80013474:	00048613          	mv	a2,s1
80013478:	000c8593          	mv	a1,s9
8001347c:	000c0513          	mv	a0,s8
80013480:	a58ff0ef          	jal	ra,800126d8 <_ntoa_long>
80013484:	01012783          	lw	a5,16(sp)
80013488:	00050413          	mv	s0,a0
8001348c:	02078463          	beqz	a5,800134b4 <_etoa+0x574>
80013490:	41750933          	sub	s2,a0,s7
80013494:	00090493          	mv	s1,s2
80013498:	009b8633          	add	a2,s7,s1
8001349c:	0954ec63          	bltu	s1,s5,80013534 <_etoa+0x5f4>
800134a0:	00000613          	li	a2,0
800134a4:	012ae663          	bltu	s5,s2,800134b0 <_etoa+0x570>
800134a8:	017a8ab3          	add	s5,s5,s7
800134ac:	408a8633          	sub	a2,s5,s0
800134b0:	00c40433          	add	s0,s0,a2
800134b4:	06c12083          	lw	ra,108(sp)
800134b8:	00040513          	mv	a0,s0
800134bc:	06812403          	lw	s0,104(sp)
800134c0:	06412483          	lw	s1,100(sp)
800134c4:	06012903          	lw	s2,96(sp)
800134c8:	05c12983          	lw	s3,92(sp)
800134cc:	05812a03          	lw	s4,88(sp)
800134d0:	05412a83          	lw	s5,84(sp)
800134d4:	05012b03          	lw	s6,80(sp)
800134d8:	04c12b83          	lw	s7,76(sp)
800134dc:	04812c03          	lw	s8,72(sp)
800134e0:	04412c83          	lw	s9,68(sp)
800134e4:	04012d03          	lw	s10,64(sp)
800134e8:	03c12d83          	lw	s11,60(sp)
800134ec:	07010113          	addi	sp,sp,112
800134f0:	00008067          	ret
800134f4:	7408a603          	lw	a2,1856(a7) # 80000740 <__clzsi2+0xfffe93dc>
800134f8:	7448a683          	lw	a3,1860(a7)
800134fc:	00080513          	mv	a0,a6
80013500:	000d8593          	mv	a1,s11
80013504:	260020ef          	jal	ra,80015764 <__divdf3>
80013508:	fff90913          	addi	s2,s2,-1
8001350c:	00050713          	mv	a4,a0
80013510:	00058793          	mv	a5,a1
80013514:	de5ff06f          	j	800132f8 <_etoa+0x3b8>
80013518:	00000993          	li	s3,0
8001351c:	e51ff06f          	j	8001336c <_etoa+0x42c>
80013520:	e4098ce3          	beqz	s3,80013378 <_etoa+0x438>
80013524:	400b7693          	andi	a3,s6,1024
80013528:	e40688e3          	beqz	a3,80013378 <_etoa+0x438>
8001352c:	fff98993          	addi	s3,s3,-1
80013530:	e49ff06f          	j	80013378 <_etoa+0x438>
80013534:	000d0693          	mv	a3,s10
80013538:	000c8593          	mv	a1,s9
8001353c:	02000513          	li	a0,32
80013540:	000c00e7          	jalr	s8
80013544:	00148493          	addi	s1,s1,1
80013548:	f51ff06f          	j	80013498 <_etoa+0x558>

8001354c <_vsnprintf>:
8001354c:	f9010113          	addi	sp,sp,-112
80013550:	06912223          	sw	s1,100(sp)
80013554:	07212023          	sw	s2,96(sp)
80013558:	05312e23          	sw	s3,92(sp)
8001355c:	05412c23          	sw	s4,88(sp)
80013560:	05812423          	sw	s8,72(sp)
80013564:	06112623          	sw	ra,108(sp)
80013568:	06812423          	sw	s0,104(sp)
8001356c:	05512a23          	sw	s5,84(sp)
80013570:	05612823          	sw	s6,80(sp)
80013574:	05712623          	sw	s7,76(sp)
80013578:	05912223          	sw	s9,68(sp)
8001357c:	05a12023          	sw	s10,64(sp)
80013580:	03b12e23          	sw	s11,60(sp)
80013584:	00058a13          	mv	s4,a1
80013588:	00060993          	mv	s3,a2
8001358c:	00068493          	mv	s1,a3
80013590:	00070c13          	mv	s8,a4
80013594:	00050913          	mv	s2,a0
80013598:	00059663          	bnez	a1,800135a4 <_vsnprintf+0x58>
8001359c:	80012937          	lui	s2,0x80012
800135a0:	42490913          	addi	s2,s2,1060 # 80012424 <__clzsi2+0xffffb0c0>
800135a4:	00001ab7          	lui	s5,0x1
800135a8:	800a8793          	addi	a5,s5,-2048 # 800 <font6x8-0x7ffff82c>
800135ac:	80000b37          	lui	s6,0x80000
800135b0:	02f12023          	sw	a5,32(sp)
800135b4:	00010bb7          	lui	s7,0x10
800135b8:	488b0793          	addi	a5,s6,1160 # 80000488 <__clzsi2+0xfffe9124>
800135bc:	00000d93          	li	s11,0
800135c0:	02f12223          	sw	a5,36(sp)
800135c4:	fffb8b93          	addi	s7,s7,-1 # ffff <font6x8-0x7fff002d>
800135c8:	3a40006f          	j	8001396c <_vsnprintf+0x420>
800135cc:	02500793          	li	a5,37
800135d0:	00148493          	addi	s1,s1,1
800135d4:	00f50c63          	beq	a0,a5,800135ec <_vsnprintf+0xa0>
800135d8:	001d8413          	addi	s0,s11,1
800135dc:	00098693          	mv	a3,s3
800135e0:	000d8613          	mv	a2,s11
800135e4:	000a0593          	mv	a1,s4
800135e8:	1a40006f          	j	8001378c <_vsnprintf+0x240>
800135ec:	00000313          	li	t1,0
800135f0:	02b00713          	li	a4,43
800135f4:	03000613          	li	a2,48
800135f8:	02000593          	li	a1,32
800135fc:	02300513          	li	a0,35
80013600:	0180006f          	j	80013618 <_vsnprintf+0xcc>
80013604:	02d00813          	li	a6,45
80013608:	05078263          	beq	a5,a6,8001364c <_vsnprintf+0x100>
8001360c:	02c79263          	bne	a5,a2,80013630 <_vsnprintf+0xe4>
80013610:	00136313          	ori	t1,t1,1
80013614:	00068493          	mv	s1,a3
80013618:	0004c783          	lbu	a5,0(s1)
8001361c:	00148693          	addi	a3,s1,1
80013620:	02e78a63          	beq	a5,a4,80013654 <_vsnprintf+0x108>
80013624:	fef760e3          	bltu	a4,a5,80013604 <_vsnprintf+0xb8>
80013628:	02b78a63          	beq	a5,a1,8001365c <_vsnprintf+0x110>
8001362c:	02a78c63          	beq	a5,a0,80013664 <_vsnprintf+0x118>
80013630:	fd078713          	addi	a4,a5,-48
80013634:	0ff77713          	andi	a4,a4,255
80013638:	00900613          	li	a2,9
8001363c:	08e66863          	bltu	a2,a4,800136cc <_vsnprintf+0x180>
80013640:	00000c93          	li	s9,0
80013644:	00900693          	li	a3,9
80013648:	03c0006f          	j	80013684 <_vsnprintf+0x138>
8001364c:	00236313          	ori	t1,t1,2
80013650:	fc5ff06f          	j	80013614 <_vsnprintf+0xc8>
80013654:	00436313          	ori	t1,t1,4
80013658:	fbdff06f          	j	80013614 <_vsnprintf+0xc8>
8001365c:	00836313          	ori	t1,t1,8
80013660:	fb5ff06f          	j	80013614 <_vsnprintf+0xc8>
80013664:	01036313          	ori	t1,t1,16
80013668:	fadff06f          	j	80013614 <_vsnprintf+0xc8>
8001366c:	002c9793          	slli	a5,s9,0x2
80013670:	019788b3          	add	a7,a5,s9
80013674:	00189893          	slli	a7,a7,0x1
80013678:	fd088893          	addi	a7,a7,-48
8001367c:	01170cb3          	add	s9,a4,a7
80013680:	00060493          	mv	s1,a2
80013684:	0004c703          	lbu	a4,0(s1)
80013688:	00148613          	addi	a2,s1,1
8001368c:	fd070793          	addi	a5,a4,-48
80013690:	0ff7f793          	andi	a5,a5,255
80013694:	fcf6fce3          	bgeu	a3,a5,8001366c <_vsnprintf+0x120>
80013698:	0004c703          	lbu	a4,0(s1)
8001369c:	02e00793          	li	a5,46
800136a0:	12f71063          	bne	a4,a5,800137c0 <_vsnprintf+0x274>
800136a4:	0014c683          	lbu	a3,1(s1)
800136a8:	00900613          	li	a2,9
800136ac:	00148793          	addi	a5,s1,1
800136b0:	fd068713          	addi	a4,a3,-48
800136b4:	0ff77713          	andi	a4,a4,255
800136b8:	40036313          	ori	t1,t1,1024
800136bc:	0ce66e63          	bltu	a2,a4,80013798 <_vsnprintf+0x24c>
800136c0:	00000d13          	li	s10,0
800136c4:	00900613          	li	a2,9
800136c8:	0480006f          	j	80013710 <_vsnprintf+0x1c4>
800136cc:	02a00713          	li	a4,42
800136d0:	00000c93          	li	s9,0
800136d4:	fce792e3          	bne	a5,a4,80013698 <_vsnprintf+0x14c>
800136d8:	000c2c83          	lw	s9,0(s8)
800136dc:	004c0793          	addi	a5,s8,4
800136e0:	000cd663          	bgez	s9,800136ec <_vsnprintf+0x1a0>
800136e4:	00236313          	ori	t1,t1,2
800136e8:	41900cb3          	neg	s9,s9
800136ec:	00078c13          	mv	s8,a5
800136f0:	00068493          	mv	s1,a3
800136f4:	fa5ff06f          	j	80013698 <_vsnprintf+0x14c>
800136f8:	002d1813          	slli	a6,s10,0x2
800136fc:	01a80e33          	add	t3,a6,s10
80013700:	001e1e13          	slli	t3,t3,0x1
80013704:	fd0e0e13          	addi	t3,t3,-48
80013708:	01c68d33          	add	s10,a3,t3
8001370c:	00058793          	mv	a5,a1
80013710:	0007c683          	lbu	a3,0(a5)
80013714:	00178593          	addi	a1,a5,1
80013718:	fd068713          	addi	a4,a3,-48
8001371c:	0ff77713          	andi	a4,a4,255
80013720:	fce67ce3          	bgeu	a2,a4,800136f8 <_vsnprintf+0x1ac>
80013724:	0007c703          	lbu	a4,0(a5)
80013728:	06c00693          	li	a3,108
8001372c:	00178493          	addi	s1,a5,1
80013730:	0ad70a63          	beq	a4,a3,800137e4 <_vsnprintf+0x298>
80013734:	08e6ec63          	bltu	a3,a4,800137cc <_vsnprintf+0x280>
80013738:	06800693          	li	a3,104
8001373c:	0ad70e63          	beq	a4,a3,800137f8 <_vsnprintf+0x2ac>
80013740:	06a00693          	li	a3,106
80013744:	0cd70663          	beq	a4,a3,80013810 <_vsnprintf+0x2c4>
80013748:	00078493          	mv	s1,a5
8001374c:	0004c503          	lbu	a0,0(s1)
80013750:	07800793          	li	a5,120
80013754:	00148493          	addi	s1,s1,1
80013758:	e8a7e0e3          	bltu	a5,a0,800135d8 <_vsnprintf+0x8c>
8001375c:	05700793          	li	a5,87
80013760:	0aa7ec63          	bltu	a5,a0,80013818 <_vsnprintf+0x2cc>
80013764:	04500793          	li	a5,69
80013768:	0ef50263          	beq	a0,a5,8001384c <_vsnprintf+0x300>
8001376c:	0ca7e863          	bltu	a5,a0,8001383c <_vsnprintf+0x2f0>
80013770:	02500793          	li	a5,37
80013774:	e6f512e3          	bne	a0,a5,800135d8 <_vsnprintf+0x8c>
80013778:	001d8413          	addi	s0,s11,1
8001377c:	00098693          	mv	a3,s3
80013780:	000d8613          	mv	a2,s11
80013784:	000a0593          	mv	a1,s4
80013788:	02500513          	li	a0,37
8001378c:	000900e7          	jalr	s2
80013790:	00040d93          	mv	s11,s0
80013794:	1d80006f          	j	8001396c <_vsnprintf+0x420>
80013798:	02a00713          	li	a4,42
8001379c:	00000d13          	li	s10,0
800137a0:	f8e692e3          	bne	a3,a4,80013724 <_vsnprintf+0x1d8>
800137a4:	000c2d03          	lw	s10,0(s8)
800137a8:	004c0713          	addi	a4,s8,4
800137ac:	000d5463          	bgez	s10,800137b4 <_vsnprintf+0x268>
800137b0:	00000d13          	li	s10,0
800137b4:	00248793          	addi	a5,s1,2
800137b8:	00070c13          	mv	s8,a4
800137bc:	f69ff06f          	j	80013724 <_vsnprintf+0x1d8>
800137c0:	00048793          	mv	a5,s1
800137c4:	00000d13          	li	s10,0
800137c8:	f5dff06f          	j	80013724 <_vsnprintf+0x1d8>
800137cc:	07400693          	li	a3,116
800137d0:	00d70663          	beq	a4,a3,800137dc <_vsnprintf+0x290>
800137d4:	07a00693          	li	a3,122
800137d8:	f6d718e3          	bne	a4,a3,80013748 <_vsnprintf+0x1fc>
800137dc:	10036313          	ori	t1,t1,256
800137e0:	f6dff06f          	j	8001374c <_vsnprintf+0x200>
800137e4:	0017c683          	lbu	a3,1(a5)
800137e8:	fee69ae3          	bne	a3,a4,800137dc <_vsnprintf+0x290>
800137ec:	30036313          	ori	t1,t1,768
800137f0:	00278493          	addi	s1,a5,2
800137f4:	f59ff06f          	j	8001374c <_vsnprintf+0x200>
800137f8:	0017c683          	lbu	a3,1(a5)
800137fc:	00e68663          	beq	a3,a4,80013808 <_vsnprintf+0x2bc>
80013800:	08036313          	ori	t1,t1,128
80013804:	f49ff06f          	j	8001374c <_vsnprintf+0x200>
80013808:	0c036313          	ori	t1,t1,192
8001380c:	fe5ff06f          	j	800137f0 <_vsnprintf+0x2a4>
80013810:	20036313          	ori	t1,t1,512
80013814:	f39ff06f          	j	8001374c <_vsnprintf+0x200>
80013818:	fa850793          	addi	a5,a0,-88
8001381c:	0ff7f793          	andi	a5,a5,255
80013820:	02000713          	li	a4,32
80013824:	daf76ae3          	bltu	a4,a5,800135d8 <_vsnprintf+0x8c>
80013828:	02412703          	lw	a4,36(sp)
8001382c:	00279793          	slli	a5,a5,0x2
80013830:	00e787b3          	add	a5,a5,a4
80013834:	0007a783          	lw	a5,0(a5)
80013838:	00078067          	jr	a5
8001383c:	04600793          	li	a5,70
80013840:	26f50c63          	beq	a0,a5,80013ab8 <_vsnprintf+0x56c>
80013844:	04700793          	li	a5,71
80013848:	d8f518e3          	bne	a0,a5,800135d8 <_vsnprintf+0x8c>
8001384c:	0df57793          	andi	a5,a0,223
80013850:	04700713          	li	a4,71
80013854:	00e79863          	bne	a5,a4,80013864 <_vsnprintf+0x318>
80013858:	02012783          	lw	a5,32(sp)
8001385c:	0fd57513          	andi	a0,a0,253
80013860:	00f36333          	or	t1,t1,a5
80013864:	04500793          	li	a5,69
80013868:	00f51463          	bne	a0,a5,80013870 <_vsnprintf+0x324>
8001386c:	02036313          	ori	t1,t1,32
80013870:	007c0713          	addi	a4,s8,7
80013874:	ff877713          	andi	a4,a4,-8
80013878:	00472783          	lw	a5,4(a4)
8001387c:	00870c13          	addi	s8,a4,8
80013880:	00072703          	lw	a4,0(a4)
80013884:	000c8893          	mv	a7,s9
80013888:	00612023          	sw	t1,0(sp)
8001388c:	000d0813          	mv	a6,s10
80013890:	00098693          	mv	a3,s3
80013894:	000d8613          	mv	a2,s11
80013898:	000a0593          	mv	a1,s4
8001389c:	00090513          	mv	a0,s2
800138a0:	ea0ff0ef          	jal	ra,80012f40 <_etoa>
800138a4:	24c0006f          	j	80013af0 <_vsnprintf+0x5a4>
800138a8:	07800793          	li	a5,120
800138ac:	46f50663          	beq	a0,a5,80013d18 <_vsnprintf+0x7cc>
800138b0:	05800793          	li	a5,88
800138b4:	46f50063          	beq	a0,a5,80013d14 <_vsnprintf+0x7c8>
800138b8:	06f00793          	li	a5,111
800138bc:	46f50263          	beq	a0,a5,80013d20 <_vsnprintf+0x7d4>
800138c0:	06200793          	li	a5,98
800138c4:	46f50263          	beq	a0,a5,80013d28 <_vsnprintf+0x7dc>
800138c8:	06900793          	li	a5,105
800138cc:	fef37313          	andi	t1,t1,-17
800138d0:	00a00813          	li	a6,10
800138d4:	00f50863          	beq	a0,a5,800138e4 <_vsnprintf+0x398>
800138d8:	06400793          	li	a5,100
800138dc:	00f50463          	beq	a0,a5,800138e4 <_vsnprintf+0x398>
800138e0:	ff337313          	andi	t1,t1,-13
800138e4:	40037793          	andi	a5,t1,1024
800138e8:	00078463          	beqz	a5,800138f0 <_vsnprintf+0x3a4>
800138ec:	ffe37313          	andi	t1,t1,-2
800138f0:	06900713          	li	a4,105
800138f4:	20037793          	andi	a5,t1,512
800138f8:	00e50663          	beq	a0,a4,80013904 <_vsnprintf+0x3b8>
800138fc:	06400713          	li	a4,100
80013900:	12e51e63          	bne	a0,a4,80013a3c <_vsnprintf+0x4f0>
80013904:	0c078663          	beqz	a5,800139d0 <_vsnprintf+0x484>
80013908:	007c0c13          	addi	s8,s8,7
8001390c:	ff8c7c13          	andi	s8,s8,-8
80013910:	004c2583          	lw	a1,4(s8)
80013914:	000c2783          	lw	a5,0(s8)
80013918:	00080893          	mv	a7,a6
8001391c:	41f5d693          	srai	a3,a1,0x1f
80013920:	00f6c7b3          	xor	a5,a3,a5
80013924:	40d78733          	sub	a4,a5,a3
80013928:	00b6c633          	xor	a2,a3,a1
8001392c:	00e7b7b3          	sltu	a5,a5,a4
80013930:	40d606b3          	sub	a3,a2,a3
80013934:	008c0413          	addi	s0,s8,8
80013938:	00612623          	sw	t1,12(sp)
8001393c:	01912423          	sw	s9,8(sp)
80013940:	01a12223          	sw	s10,4(sp)
80013944:	00012023          	sw	zero,0(sp)
80013948:	01f5d813          	srli	a6,a1,0x1f
8001394c:	40f687b3          	sub	a5,a3,a5
80013950:	00098693          	mv	a3,s3
80013954:	000d8613          	mv	a2,s11
80013958:	000a0593          	mv	a1,s4
8001395c:	00090513          	mv	a0,s2
80013960:	ecdfe0ef          	jal	ra,8001282c <_ntoa_long_long>
80013964:	00050d93          	mv	s11,a0
80013968:	00040c13          	mv	s8,s0
8001396c:	0004c503          	lbu	a0,0(s1)
80013970:	c4051ee3          	bnez	a0,800135cc <_vsnprintf+0x80>
80013974:	000d8613          	mv	a2,s11
80013978:	013de463          	bltu	s11,s3,80013980 <_vsnprintf+0x434>
8001397c:	fff98613          	addi	a2,s3,-1
80013980:	00098693          	mv	a3,s3
80013984:	000a0593          	mv	a1,s4
80013988:	00000513          	li	a0,0
8001398c:	000900e7          	jalr	s2
80013990:	06c12083          	lw	ra,108(sp)
80013994:	06812403          	lw	s0,104(sp)
80013998:	06412483          	lw	s1,100(sp)
8001399c:	06012903          	lw	s2,96(sp)
800139a0:	05c12983          	lw	s3,92(sp)
800139a4:	05812a03          	lw	s4,88(sp)
800139a8:	05412a83          	lw	s5,84(sp)
800139ac:	05012b03          	lw	s6,80(sp)
800139b0:	04c12b83          	lw	s7,76(sp)
800139b4:	04812c03          	lw	s8,72(sp)
800139b8:	04412c83          	lw	s9,68(sp)
800139bc:	04012d03          	lw	s10,64(sp)
800139c0:	000d8513          	mv	a0,s11
800139c4:	03c12d83          	lw	s11,60(sp)
800139c8:	07010113          	addi	sp,sp,112
800139cc:	00008067          	ret
800139d0:	10037793          	andi	a5,t1,256
800139d4:	004c0413          	addi	s0,s8,4
800139d8:	02078e63          	beqz	a5,80013a14 <_vsnprintf+0x4c8>
800139dc:	000c2783          	lw	a5,0(s8)
800139e0:	41f7d713          	srai	a4,a5,0x1f
800139e4:	00f746b3          	xor	a3,a4,a5
800139e8:	00612223          	sw	t1,4(sp)
800139ec:	01912023          	sw	s9,0(sp)
800139f0:	000d0893          	mv	a7,s10
800139f4:	01f7d793          	srli	a5,a5,0x1f
800139f8:	40e68733          	sub	a4,a3,a4
800139fc:	00098693          	mv	a3,s3
80013a00:	000d8613          	mv	a2,s11
80013a04:	000a0593          	mv	a1,s4
80013a08:	00090513          	mv	a0,s2
80013a0c:	ccdfe0ef          	jal	ra,800126d8 <_ntoa_long>
80013a10:	f55ff06f          	j	80013964 <_vsnprintf+0x418>
80013a14:	04037713          	andi	a4,t1,64
80013a18:	000c2783          	lw	a5,0(s8)
80013a1c:	00070663          	beqz	a4,80013a28 <_vsnprintf+0x4dc>
80013a20:	0ff7f793          	andi	a5,a5,255
80013a24:	fbdff06f          	j	800139e0 <_vsnprintf+0x494>
80013a28:	08037713          	andi	a4,t1,128
80013a2c:	fa070ae3          	beqz	a4,800139e0 <_vsnprintf+0x494>
80013a30:	01079793          	slli	a5,a5,0x10
80013a34:	4107d793          	srai	a5,a5,0x10
80013a38:	fa9ff06f          	j	800139e0 <_vsnprintf+0x494>
80013a3c:	02078a63          	beqz	a5,80013a70 <_vsnprintf+0x524>
80013a40:	007c0c13          	addi	s8,s8,7
80013a44:	ff8c7c13          	andi	s8,s8,-8
80013a48:	000c2703          	lw	a4,0(s8)
80013a4c:	004c2783          	lw	a5,4(s8)
80013a50:	00080893          	mv	a7,a6
80013a54:	008c0413          	addi	s0,s8,8
80013a58:	00612623          	sw	t1,12(sp)
80013a5c:	01912423          	sw	s9,8(sp)
80013a60:	01a12223          	sw	s10,4(sp)
80013a64:	00012023          	sw	zero,0(sp)
80013a68:	00000813          	li	a6,0
80013a6c:	ee5ff06f          	j	80013950 <_vsnprintf+0x404>
80013a70:	10037793          	andi	a5,t1,256
80013a74:	004c0413          	addi	s0,s8,4
80013a78:	00078e63          	beqz	a5,80013a94 <_vsnprintf+0x548>
80013a7c:	000c2703          	lw	a4,0(s8)
80013a80:	00612223          	sw	t1,4(sp)
80013a84:	01912023          	sw	s9,0(sp)
80013a88:	000d0893          	mv	a7,s10
80013a8c:	00000793          	li	a5,0
80013a90:	f6dff06f          	j	800139fc <_vsnprintf+0x4b0>
80013a94:	04037793          	andi	a5,t1,64
80013a98:	000c2703          	lw	a4,0(s8)
80013a9c:	00078663          	beqz	a5,80013aa8 <_vsnprintf+0x55c>
80013aa0:	0ff77713          	andi	a4,a4,255
80013aa4:	fddff06f          	j	80013a80 <_vsnprintf+0x534>
80013aa8:	08037793          	andi	a5,t1,128
80013aac:	fc078ae3          	beqz	a5,80013a80 <_vsnprintf+0x534>
80013ab0:	01777733          	and	a4,a4,s7
80013ab4:	fcdff06f          	j	80013a80 <_vsnprintf+0x534>
80013ab8:	02036313          	ori	t1,t1,32
80013abc:	007c0713          	addi	a4,s8,7
80013ac0:	ff877713          	andi	a4,a4,-8
80013ac4:	00472783          	lw	a5,4(a4)
80013ac8:	00870c13          	addi	s8,a4,8
80013acc:	00072703          	lw	a4,0(a4)
80013ad0:	000c8893          	mv	a7,s9
80013ad4:	00612023          	sw	t1,0(sp)
80013ad8:	000d0813          	mv	a6,s10
80013adc:	00098693          	mv	a3,s3
80013ae0:	000d8613          	mv	a2,s11
80013ae4:	000a0593          	mv	a1,s4
80013ae8:	00090513          	mv	a0,s2
80013aec:	ee9fe0ef          	jal	ra,800129d4 <_ftoa>
80013af0:	00050d93          	mv	s11,a0
80013af4:	e79ff06f          	j	8001396c <_vsnprintf+0x420>
80013af8:	00237413          	andi	s0,t1,2
80013afc:	00100b13          	li	s6,1
80013b00:	04041463          	bnez	s0,80013b48 <_vsnprintf+0x5fc>
80013b04:	00000d13          	li	s10,0
80013b08:	0140006f          	j	80013b1c <_vsnprintf+0x5d0>
80013b0c:	00098693          	mv	a3,s3
80013b10:	000a0593          	mv	a1,s4
80013b14:	02000513          	li	a0,32
80013b18:	000900e7          	jalr	s2
80013b1c:	01bd0633          	add	a2,s10,s11
80013b20:	001d0d13          	addi	s10,s10,1
80013b24:	ff9d64e3          	bltu	s10,s9,80013b0c <_vsnprintf+0x5c0>
80013b28:	00000793          	li	a5,0
80013b2c:	000c8463          	beqz	s9,80013b34 <_vsnprintf+0x5e8>
80013b30:	fffc8793          	addi	a5,s9,-1
80013b34:	00fd8db3          	add	s11,s11,a5
80013b38:	00200793          	li	a5,2
80013b3c:	000c8463          	beqz	s9,80013b44 <_vsnprintf+0x5f8>
80013b40:	001c8793          	addi	a5,s9,1
80013b44:	00078b13          	mv	s6,a5
80013b48:	000c4503          	lbu	a0,0(s8)
80013b4c:	00098693          	mv	a3,s3
80013b50:	000d8613          	mv	a2,s11
80013b54:	000a0593          	mv	a1,s4
80013b58:	004c0d13          	addi	s10,s8,4
80013b5c:	001d8a93          	addi	s5,s11,1
80013b60:	000900e7          	jalr	s2
80013b64:	04040063          	beqz	s0,80013ba4 <_vsnprintf+0x658>
80013b68:	000b0413          	mv	s0,s6
80013b6c:	000a8613          	mv	a2,s5
80013b70:	0200006f          	j	80013b90 <_vsnprintf+0x644>
80013b74:	00098693          	mv	a3,s3
80013b78:	000a0593          	mv	a1,s4
80013b7c:	02000513          	li	a0,32
80013b80:	00160c13          	addi	s8,a2,1
80013b84:	000900e7          	jalr	s2
80013b88:	00140413          	addi	s0,s0,1
80013b8c:	000c0613          	mv	a2,s8
80013b90:	ff9462e3          	bltu	s0,s9,80013b74 <_vsnprintf+0x628>
80013b94:	00000693          	li	a3,0
80013b98:	016ce463          	bltu	s9,s6,80013ba0 <_vsnprintf+0x654>
80013b9c:	416c86b3          	sub	a3,s9,s6
80013ba0:	00da8ab3          	add	s5,s5,a3
80013ba4:	000d0c13          	mv	s8,s10
80013ba8:	000a8d93          	mv	s11,s5
80013bac:	dc1ff06f          	j	8001396c <_vsnprintf+0x420>
80013bb0:	004c0793          	addi	a5,s8,4
80013bb4:	00f12e23          	sw	a5,28(sp)
80013bb8:	000c2b03          	lw	s6,0(s8)
80013bbc:	000d0793          	mv	a5,s10
80013bc0:	000d1463          	bnez	s10,80013bc8 <_vsnprintf+0x67c>
80013bc4:	fff00793          	li	a5,-1
80013bc8:	00fb0733          	add	a4,s6,a5
80013bcc:	000b0793          	mv	a5,s6
80013bd0:	0007c683          	lbu	a3,0(a5)
80013bd4:	00068463          	beqz	a3,80013bdc <_vsnprintf+0x690>
80013bd8:	02e79663          	bne	a5,a4,80013c04 <_vsnprintf+0x6b8>
80013bdc:	40037c13          	andi	s8,t1,1024
80013be0:	41678ab3          	sub	s5,a5,s6
80013be4:	000c0663          	beqz	s8,80013bf0 <_vsnprintf+0x6a4>
80013be8:	015d7463          	bgeu	s10,s5,80013bf0 <_vsnprintf+0x6a4>
80013bec:	000d0a93          	mv	s5,s10
80013bf0:	00237413          	andi	s0,t1,2
80013bf4:	06041063          	bnez	s0,80013c54 <_vsnprintf+0x708>
80013bf8:	000d8613          	mv	a2,s11
80013bfc:	41ba8333          	sub	t1,s5,s11
80013c00:	0340006f          	j	80013c34 <_vsnprintf+0x6e8>
80013c04:	00178793          	addi	a5,a5,1
80013c08:	fc9ff06f          	j	80013bd0 <_vsnprintf+0x684>
80013c0c:	00160713          	addi	a4,a2,1
80013c10:	02612623          	sw	t1,44(sp)
80013c14:	02e12423          	sw	a4,40(sp)
80013c18:	00098693          	mv	a3,s3
80013c1c:	000a0593          	mv	a1,s4
80013c20:	02000513          	li	a0,32
80013c24:	000900e7          	jalr	s2
80013c28:	02812703          	lw	a4,40(sp)
80013c2c:	02c12303          	lw	t1,44(sp)
80013c30:	00070613          	mv	a2,a4
80013c34:	00c30733          	add	a4,t1,a2
80013c38:	fd976ae3          	bltu	a4,s9,80013c0c <_vsnprintf+0x6c0>
80013c3c:	00000713          	li	a4,0
80013c40:	015ce463          	bltu	s9,s5,80013c48 <_vsnprintf+0x6fc>
80013c44:	415c8733          	sub	a4,s9,s5
80013c48:	001a8793          	addi	a5,s5,1
80013c4c:	00ed8db3          	add	s11,s11,a4
80013c50:	00f70ab3          	add	s5,a4,a5
80013c54:	000d8713          	mv	a4,s11
80013c58:	0280006f          	j	80013c80 <_vsnprintf+0x734>
80013c5c:	00068d13          	mv	s10,a3
80013c60:	00170313          	addi	t1,a4,1
80013c64:	02612423          	sw	t1,40(sp)
80013c68:	00070613          	mv	a2,a4
80013c6c:	00098693          	mv	a3,s3
80013c70:	000a0593          	mv	a1,s4
80013c74:	000900e7          	jalr	s2
80013c78:	02812303          	lw	t1,40(sp)
80013c7c:	00030713          	mv	a4,t1
80013c80:	41b706b3          	sub	a3,a4,s11
80013c84:	00db06b3          	add	a3,s6,a3
80013c88:	0006c503          	lbu	a0,0(a3)
80013c8c:	00050863          	beqz	a0,80013c9c <_vsnprintf+0x750>
80013c90:	fc0c08e3          	beqz	s8,80013c60 <_vsnprintf+0x714>
80013c94:	fffd0693          	addi	a3,s10,-1
80013c98:	fc0d12e3          	bnez	s10,80013c5c <_vsnprintf+0x710>
80013c9c:	04040463          	beqz	s0,80013ce4 <_vsnprintf+0x798>
80013ca0:	00070613          	mv	a2,a4
80013ca4:	40ea8433          	sub	s0,s5,a4
80013ca8:	0240006f          	j	80013ccc <_vsnprintf+0x780>
80013cac:	02e12423          	sw	a4,40(sp)
80013cb0:	00098693          	mv	a3,s3
80013cb4:	000a0593          	mv	a1,s4
80013cb8:	02000513          	li	a0,32
80013cbc:	00160c13          	addi	s8,a2,1
80013cc0:	000900e7          	jalr	s2
80013cc4:	02812703          	lw	a4,40(sp)
80013cc8:	000c0613          	mv	a2,s8
80013ccc:	008606b3          	add	a3,a2,s0
80013cd0:	fd96eee3          	bltu	a3,s9,80013cac <_vsnprintf+0x760>
80013cd4:	00000693          	li	a3,0
80013cd8:	015ce463          	bltu	s9,s5,80013ce0 <_vsnprintf+0x794>
80013cdc:	415c86b3          	sub	a3,s9,s5
80013ce0:	00d70733          	add	a4,a4,a3
80013ce4:	01c12c03          	lw	s8,28(sp)
80013ce8:	00070d93          	mv	s11,a4
80013cec:	c81ff06f          	j	8001396c <_vsnprintf+0x420>
80013cf0:	02136313          	ori	t1,t1,33
80013cf4:	00800793          	li	a5,8
80013cf8:	000c2703          	lw	a4,0(s8)
80013cfc:	004c0413          	addi	s0,s8,4
80013d00:	00612223          	sw	t1,4(sp)
80013d04:	00f12023          	sw	a5,0(sp)
80013d08:	000d0893          	mv	a7,s10
80013d0c:	01000813          	li	a6,16
80013d10:	d7dff06f          	j	80013a8c <_vsnprintf+0x540>
80013d14:	02036313          	ori	t1,t1,32
80013d18:	01000813          	li	a6,16
80013d1c:	bc5ff06f          	j	800138e0 <_vsnprintf+0x394>
80013d20:	00800813          	li	a6,8
80013d24:	bb5ff06f          	j	800138d8 <_vsnprintf+0x38c>
80013d28:	00200813          	li	a6,2
80013d2c:	badff06f          	j	800138d8 <_vsnprintf+0x38c>

80013d30 <printf_>:
80013d30:	fc010113          	addi	sp,sp,-64
80013d34:	02d12623          	sw	a3,44(sp)
80013d38:	00050693          	mv	a3,a0
80013d3c:	80013537          	lui	a0,0x80013
80013d40:	02b12223          	sw	a1,36(sp)
80013d44:	02c12423          	sw	a2,40(sp)
80013d48:	02e12823          	sw	a4,48(sp)
80013d4c:	00810593          	addi	a1,sp,8
80013d50:	02410713          	addi	a4,sp,36
80013d54:	fff00613          	li	a2,-1
80013d58:	9b450513          	addi	a0,a0,-1612 # 800129b4 <__clzsi2+0xffffb650>
80013d5c:	00112e23          	sw	ra,28(sp)
80013d60:	02f12a23          	sw	a5,52(sp)
80013d64:	03012c23          	sw	a6,56(sp)
80013d68:	03112e23          	sw	a7,60(sp)
80013d6c:	00e12623          	sw	a4,12(sp)
80013d70:	fdcff0ef          	jal	ra,8001354c <_vsnprintf>
80013d74:	01c12083          	lw	ra,28(sp)
80013d78:	04010113          	addi	sp,sp,64
80013d7c:	00008067          	ret

80013d80 <sprintf_>:
80013d80:	fc010113          	addi	sp,sp,-64
80013d84:	02d12623          	sw	a3,44(sp)
80013d88:	00058693          	mv	a3,a1
80013d8c:	00050593          	mv	a1,a0
80013d90:	80012537          	lui	a0,0x80012
80013d94:	02c12423          	sw	a2,40(sp)
80013d98:	02e12823          	sw	a4,48(sp)
80013d9c:	fff00613          	li	a2,-1
80013da0:	02810713          	addi	a4,sp,40
80013da4:	41450513          	addi	a0,a0,1044 # 80012414 <__clzsi2+0xffffb0b0>
80013da8:	00112e23          	sw	ra,28(sp)
80013dac:	02f12a23          	sw	a5,52(sp)
80013db0:	03012c23          	sw	a6,56(sp)
80013db4:	03112e23          	sw	a7,60(sp)
80013db8:	00e12623          	sw	a4,12(sp)
80013dbc:	f90ff0ef          	jal	ra,8001354c <_vsnprintf>
80013dc0:	01c12083          	lw	ra,28(sp)
80013dc4:	04010113          	addi	sp,sp,64
80013dc8:	00008067          	ret

80013dcc <snprintf_>:
80013dcc:	fc010113          	addi	sp,sp,-64
80013dd0:	02d12623          	sw	a3,44(sp)
80013dd4:	00060693          	mv	a3,a2
80013dd8:	00058613          	mv	a2,a1
80013ddc:	00050593          	mv	a1,a0
80013de0:	80012537          	lui	a0,0x80012
80013de4:	02e12823          	sw	a4,48(sp)
80013de8:	41450513          	addi	a0,a0,1044 # 80012414 <__clzsi2+0xffffb0b0>
80013dec:	02c10713          	addi	a4,sp,44
80013df0:	00112e23          	sw	ra,28(sp)
80013df4:	02f12a23          	sw	a5,52(sp)
80013df8:	03012c23          	sw	a6,56(sp)
80013dfc:	03112e23          	sw	a7,60(sp)
80013e00:	00e12623          	sw	a4,12(sp)
80013e04:	f48ff0ef          	jal	ra,8001354c <_vsnprintf>
80013e08:	01c12083          	lw	ra,28(sp)
80013e0c:	04010113          	addi	sp,sp,64
80013e10:	00008067          	ret

80013e14 <vprintf_>:
80013e14:	fe010113          	addi	sp,sp,-32
80013e18:	00050693          	mv	a3,a0
80013e1c:	80013537          	lui	a0,0x80013
80013e20:	00058713          	mv	a4,a1
80013e24:	fff00613          	li	a2,-1
80013e28:	00c10593          	addi	a1,sp,12
80013e2c:	9b450513          	addi	a0,a0,-1612 # 800129b4 <__clzsi2+0xffffb650>
80013e30:	00112e23          	sw	ra,28(sp)
80013e34:	f18ff0ef          	jal	ra,8001354c <_vsnprintf>
80013e38:	01c12083          	lw	ra,28(sp)
80013e3c:	02010113          	addi	sp,sp,32
80013e40:	00008067          	ret

80013e44 <vsnprintf_>:
80013e44:	00068713          	mv	a4,a3
80013e48:	00060693          	mv	a3,a2
80013e4c:	00058613          	mv	a2,a1
80013e50:	00050593          	mv	a1,a0
80013e54:	80012537          	lui	a0,0x80012
80013e58:	41450513          	addi	a0,a0,1044 # 80012414 <__clzsi2+0xffffb0b0>
80013e5c:	ef0ff06f          	j	8001354c <_vsnprintf>

80013e60 <fctprintf>:
80013e60:	fc010113          	addi	sp,sp,-64
80013e64:	00a12423          	sw	a0,8(sp)
80013e68:	80013537          	lui	a0,0x80013
80013e6c:	02d12623          	sw	a3,44(sp)
80013e70:	02e12823          	sw	a4,48(sp)
80013e74:	00b12623          	sw	a1,12(sp)
80013e78:	02c10713          	addi	a4,sp,44
80013e7c:	00060693          	mv	a3,a2
80013e80:	00810593          	addi	a1,sp,8
80013e84:	fff00613          	li	a2,-1
80013e88:	9c050513          	addi	a0,a0,-1600 # 800129c0 <__clzsi2+0xffffb65c>
80013e8c:	00112e23          	sw	ra,28(sp)
80013e90:	02f12a23          	sw	a5,52(sp)
80013e94:	03012c23          	sw	a6,56(sp)
80013e98:	03112e23          	sw	a7,60(sp)
80013e9c:	00e12223          	sw	a4,4(sp)
80013ea0:	eacff0ef          	jal	ra,8001354c <_vsnprintf>
80013ea4:	01c12083          	lw	ra,28(sp)
80013ea8:	04010113          	addi	sp,sp,64
80013eac:	00008067          	ret

80013eb0 <__divdi3>:
80013eb0:	fc010113          	addi	sp,sp,-64
80013eb4:	02812c23          	sw	s0,56(sp)
80013eb8:	03212823          	sw	s2,48(sp)
80013ebc:	01712e23          	sw	s7,28(sp)
80013ec0:	02112e23          	sw	ra,60(sp)
80013ec4:	02912a23          	sw	s1,52(sp)
80013ec8:	03312623          	sw	s3,44(sp)
80013ecc:	03412423          	sw	s4,40(sp)
80013ed0:	03512223          	sw	s5,36(sp)
80013ed4:	03612023          	sw	s6,32(sp)
80013ed8:	01812c23          	sw	s8,24(sp)
80013edc:	01912a23          	sw	s9,20(sp)
80013ee0:	01a12823          	sw	s10,16(sp)
80013ee4:	01b12623          	sw	s11,12(sp)
80013ee8:	00050b93          	mv	s7,a0
80013eec:	00058413          	mv	s0,a1
80013ef0:	00000913          	li	s2,0
80013ef4:	0005dc63          	bgez	a1,80013f0c <__divdi3+0x5c>
80013ef8:	00a037b3          	snez	a5,a0
80013efc:	40b00433          	neg	s0,a1
80013f00:	40f40433          	sub	s0,s0,a5
80013f04:	40a00bb3          	neg	s7,a0
80013f08:	fff00913          	li	s2,-1
80013f0c:	0006dc63          	bgez	a3,80013f24 <__divdi3+0x74>
80013f10:	00c037b3          	snez	a5,a2
80013f14:	40d00733          	neg	a4,a3
80013f18:	fff94913          	not	s2,s2
80013f1c:	40f706b3          	sub	a3,a4,a5
80013f20:	40c00633          	neg	a2,a2
80013f24:	00060993          	mv	s3,a2
80013f28:	00068a93          	mv	s5,a3
80013f2c:	000b8a13          	mv	s4,s7
80013f30:	00040c13          	mv	s8,s0
80013f34:	3a069263          	bnez	a3,800142d8 <__divdi3+0x428>
80013f38:	800004b7          	lui	s1,0x80000
80013f3c:	5d848493          	addi	s1,s1,1496 # 800005d8 <__clzsi2+0xfffe9274>
80013f40:	12c47663          	bgeu	s0,a2,8001406c <__divdi3+0x1bc>
80013f44:	000107b7          	lui	a5,0x10
80013f48:	10f67863          	bgeu	a2,a5,80014058 <__divdi3+0x1a8>
80013f4c:	0ff00793          	li	a5,255
80013f50:	00c7b7b3          	sltu	a5,a5,a2
80013f54:	00379793          	slli	a5,a5,0x3
80013f58:	00f65733          	srl	a4,a2,a5
80013f5c:	00e484b3          	add	s1,s1,a4
80013f60:	0004c703          	lbu	a4,0(s1)
80013f64:	02000693          	li	a3,32
80013f68:	00f707b3          	add	a5,a4,a5
80013f6c:	40f68733          	sub	a4,a3,a5
80013f70:	00f68c63          	beq	a3,a5,80013f88 <__divdi3+0xd8>
80013f74:	00e41433          	sll	s0,s0,a4
80013f78:	00fbd7b3          	srl	a5,s7,a5
80013f7c:	00e619b3          	sll	s3,a2,a4
80013f80:	0087ec33          	or	s8,a5,s0
80013f84:	00eb9a33          	sll	s4,s7,a4
80013f88:	0109da93          	srli	s5,s3,0x10
80013f8c:	000a8593          	mv	a1,s5
80013f90:	000c0513          	mv	a0,s8
80013f94:	36c030ef          	jal	ra,80017300 <__umodsi3>
80013f98:	00050493          	mv	s1,a0
80013f9c:	000a8593          	mv	a1,s5
80013fa0:	01099b13          	slli	s6,s3,0x10
80013fa4:	000c0513          	mv	a0,s8
80013fa8:	310030ef          	jal	ra,800172b8 <__udivsi3>
80013fac:	010b5b13          	srli	s6,s6,0x10
80013fb0:	00050413          	mv	s0,a0
80013fb4:	00050593          	mv	a1,a0
80013fb8:	000b0513          	mv	a0,s6
80013fbc:	240030ef          	jal	ra,800171fc <__mulsi3>
80013fc0:	01049493          	slli	s1,s1,0x10
80013fc4:	010a5713          	srli	a4,s4,0x10
80013fc8:	00e4e733          	or	a4,s1,a4
80013fcc:	00040b93          	mv	s7,s0
80013fd0:	00a77e63          	bgeu	a4,a0,80013fec <__divdi3+0x13c>
80013fd4:	01370733          	add	a4,a4,s3
80013fd8:	fff40b93          	addi	s7,s0,-1
80013fdc:	01376863          	bltu	a4,s3,80013fec <__divdi3+0x13c>
80013fe0:	00a77663          	bgeu	a4,a0,80013fec <__divdi3+0x13c>
80013fe4:	ffe40b93          	addi	s7,s0,-2
80013fe8:	01370733          	add	a4,a4,s3
80013fec:	40a70433          	sub	s0,a4,a0
80013ff0:	000a8593          	mv	a1,s5
80013ff4:	00040513          	mv	a0,s0
80013ff8:	308030ef          	jal	ra,80017300 <__umodsi3>
80013ffc:	00050493          	mv	s1,a0
80014000:	000a8593          	mv	a1,s5
80014004:	00040513          	mv	a0,s0
80014008:	2b0030ef          	jal	ra,800172b8 <__udivsi3>
8001400c:	010a1a13          	slli	s4,s4,0x10
80014010:	00050413          	mv	s0,a0
80014014:	00050593          	mv	a1,a0
80014018:	01049493          	slli	s1,s1,0x10
8001401c:	000b0513          	mv	a0,s6
80014020:	010a5a13          	srli	s4,s4,0x10
80014024:	1d8030ef          	jal	ra,800171fc <__mulsi3>
80014028:	0144ea33          	or	s4,s1,s4
8001402c:	00040613          	mv	a2,s0
80014030:	00aa7c63          	bgeu	s4,a0,80014048 <__divdi3+0x198>
80014034:	01498a33          	add	s4,s3,s4
80014038:	fff40613          	addi	a2,s0,-1
8001403c:	013a6663          	bltu	s4,s3,80014048 <__divdi3+0x198>
80014040:	00aa7463          	bgeu	s4,a0,80014048 <__divdi3+0x198>
80014044:	ffe40613          	addi	a2,s0,-2
80014048:	010b9793          	slli	a5,s7,0x10
8001404c:	00c7e7b3          	or	a5,a5,a2
80014050:	00000a93          	li	s5,0
80014054:	12c0006f          	j	80014180 <__divdi3+0x2d0>
80014058:	01000737          	lui	a4,0x1000
8001405c:	01000793          	li	a5,16
80014060:	eee66ce3          	bltu	a2,a4,80013f58 <__divdi3+0xa8>
80014064:	01800793          	li	a5,24
80014068:	ef1ff06f          	j	80013f58 <__divdi3+0xa8>
8001406c:	00061a63          	bnez	a2,80014080 <__divdi3+0x1d0>
80014070:	00000593          	li	a1,0
80014074:	00100513          	li	a0,1
80014078:	240030ef          	jal	ra,800172b8 <__udivsi3>
8001407c:	00050993          	mv	s3,a0
80014080:	000107b7          	lui	a5,0x10
80014084:	14f9fa63          	bgeu	s3,a5,800141d8 <__divdi3+0x328>
80014088:	0ff00793          	li	a5,255
8001408c:	0137f463          	bgeu	a5,s3,80014094 <__divdi3+0x1e4>
80014090:	00800a93          	li	s5,8
80014094:	0159d7b3          	srl	a5,s3,s5
80014098:	00f484b3          	add	s1,s1,a5
8001409c:	0004cb03          	lbu	s6,0(s1)
800140a0:	02000713          	li	a4,32
800140a4:	015b0b33          	add	s6,s6,s5
800140a8:	416707b3          	sub	a5,a4,s6
800140ac:	15671063          	bne	a4,s6,800141ec <__divdi3+0x33c>
800140b0:	41340433          	sub	s0,s0,s3
800140b4:	00100a93          	li	s5,1
800140b8:	0109db13          	srli	s6,s3,0x10
800140bc:	000b0593          	mv	a1,s6
800140c0:	00040513          	mv	a0,s0
800140c4:	23c030ef          	jal	ra,80017300 <__umodsi3>
800140c8:	00050493          	mv	s1,a0
800140cc:	000b0593          	mv	a1,s6
800140d0:	00040513          	mv	a0,s0
800140d4:	01099b93          	slli	s7,s3,0x10
800140d8:	1e0030ef          	jal	ra,800172b8 <__udivsi3>
800140dc:	010bdb93          	srli	s7,s7,0x10
800140e0:	00050413          	mv	s0,a0
800140e4:	00050593          	mv	a1,a0
800140e8:	000b8513          	mv	a0,s7
800140ec:	110030ef          	jal	ra,800171fc <__mulsi3>
800140f0:	01049493          	slli	s1,s1,0x10
800140f4:	010a5713          	srli	a4,s4,0x10
800140f8:	00e4e733          	or	a4,s1,a4
800140fc:	00040c13          	mv	s8,s0
80014100:	00a77e63          	bgeu	a4,a0,8001411c <__divdi3+0x26c>
80014104:	01370733          	add	a4,a4,s3
80014108:	fff40c13          	addi	s8,s0,-1
8001410c:	01376863          	bltu	a4,s3,8001411c <__divdi3+0x26c>
80014110:	00a77663          	bgeu	a4,a0,8001411c <__divdi3+0x26c>
80014114:	ffe40c13          	addi	s8,s0,-2
80014118:	01370733          	add	a4,a4,s3
8001411c:	40a70433          	sub	s0,a4,a0
80014120:	000b0593          	mv	a1,s6
80014124:	00040513          	mv	a0,s0
80014128:	1d8030ef          	jal	ra,80017300 <__umodsi3>
8001412c:	00050493          	mv	s1,a0
80014130:	000b0593          	mv	a1,s6
80014134:	00040513          	mv	a0,s0
80014138:	180030ef          	jal	ra,800172b8 <__udivsi3>
8001413c:	010a1a13          	slli	s4,s4,0x10
80014140:	00050413          	mv	s0,a0
80014144:	00050593          	mv	a1,a0
80014148:	01049493          	slli	s1,s1,0x10
8001414c:	000b8513          	mv	a0,s7
80014150:	010a5a13          	srli	s4,s4,0x10
80014154:	0a8030ef          	jal	ra,800171fc <__mulsi3>
80014158:	0144ea33          	or	s4,s1,s4
8001415c:	00040613          	mv	a2,s0
80014160:	00aa7c63          	bgeu	s4,a0,80014178 <__divdi3+0x2c8>
80014164:	01498a33          	add	s4,s3,s4
80014168:	fff40613          	addi	a2,s0,-1
8001416c:	013a6663          	bltu	s4,s3,80014178 <__divdi3+0x2c8>
80014170:	00aa7463          	bgeu	s4,a0,80014178 <__divdi3+0x2c8>
80014174:	ffe40613          	addi	a2,s0,-2
80014178:	010c1793          	slli	a5,s8,0x10
8001417c:	00c7e7b3          	or	a5,a5,a2
80014180:	00078513          	mv	a0,a5
80014184:	000a8593          	mv	a1,s5
80014188:	00090a63          	beqz	s2,8001419c <__divdi3+0x2ec>
8001418c:	00f037b3          	snez	a5,a5
80014190:	41500733          	neg	a4,s5
80014194:	40f705b3          	sub	a1,a4,a5
80014198:	40a00533          	neg	a0,a0
8001419c:	03c12083          	lw	ra,60(sp)
800141a0:	03812403          	lw	s0,56(sp)
800141a4:	03412483          	lw	s1,52(sp)
800141a8:	03012903          	lw	s2,48(sp)
800141ac:	02c12983          	lw	s3,44(sp)
800141b0:	02812a03          	lw	s4,40(sp)
800141b4:	02412a83          	lw	s5,36(sp)
800141b8:	02012b03          	lw	s6,32(sp)
800141bc:	01c12b83          	lw	s7,28(sp)
800141c0:	01812c03          	lw	s8,24(sp)
800141c4:	01412c83          	lw	s9,20(sp)
800141c8:	01012d03          	lw	s10,16(sp)
800141cc:	00c12d83          	lw	s11,12(sp)
800141d0:	04010113          	addi	sp,sp,64
800141d4:	00008067          	ret
800141d8:	010007b7          	lui	a5,0x1000
800141dc:	01000a93          	li	s5,16
800141e0:	eaf9eae3          	bltu	s3,a5,80014094 <__divdi3+0x1e4>
800141e4:	01800a93          	li	s5,24
800141e8:	eadff06f          	j	80014094 <__divdi3+0x1e4>
800141ec:	00f999b3          	sll	s3,s3,a5
800141f0:	01645ab3          	srl	s5,s0,s6
800141f4:	00f41433          	sll	s0,s0,a5
800141f8:	016bdb33          	srl	s6,s7,s6
800141fc:	008b6b33          	or	s6,s6,s0
80014200:	0109d413          	srli	s0,s3,0x10
80014204:	00040593          	mv	a1,s0
80014208:	000a8513          	mv	a0,s5
8001420c:	00fb9a33          	sll	s4,s7,a5
80014210:	0f0030ef          	jal	ra,80017300 <__umodsi3>
80014214:	00050493          	mv	s1,a0
80014218:	00040593          	mv	a1,s0
8001421c:	000a8513          	mv	a0,s5
80014220:	01099b93          	slli	s7,s3,0x10
80014224:	094030ef          	jal	ra,800172b8 <__udivsi3>
80014228:	010bdb93          	srli	s7,s7,0x10
8001422c:	00050a93          	mv	s5,a0
80014230:	00050593          	mv	a1,a0
80014234:	000b8513          	mv	a0,s7
80014238:	7c5020ef          	jal	ra,800171fc <__mulsi3>
8001423c:	01049493          	slli	s1,s1,0x10
80014240:	010b5793          	srli	a5,s6,0x10
80014244:	00f4e7b3          	or	a5,s1,a5
80014248:	000a8c13          	mv	s8,s5
8001424c:	00a7fe63          	bgeu	a5,a0,80014268 <__divdi3+0x3b8>
80014250:	013787b3          	add	a5,a5,s3
80014254:	fffa8c13          	addi	s8,s5,-1
80014258:	0137e863          	bltu	a5,s3,80014268 <__divdi3+0x3b8>
8001425c:	00a7f663          	bgeu	a5,a0,80014268 <__divdi3+0x3b8>
80014260:	ffea8c13          	addi	s8,s5,-2
80014264:	013787b3          	add	a5,a5,s3
80014268:	40a78ab3          	sub	s5,a5,a0
8001426c:	00040593          	mv	a1,s0
80014270:	000a8513          	mv	a0,s5
80014274:	08c030ef          	jal	ra,80017300 <__umodsi3>
80014278:	00040593          	mv	a1,s0
8001427c:	00050493          	mv	s1,a0
80014280:	000a8513          	mv	a0,s5
80014284:	034030ef          	jal	ra,800172b8 <__udivsi3>
80014288:	010b1413          	slli	s0,s6,0x10
8001428c:	00050c93          	mv	s9,a0
80014290:	00050593          	mv	a1,a0
80014294:	01049493          	slli	s1,s1,0x10
80014298:	000b8513          	mv	a0,s7
8001429c:	01045413          	srli	s0,s0,0x10
800142a0:	75d020ef          	jal	ra,800171fc <__mulsi3>
800142a4:	0084e433          	or	s0,s1,s0
800142a8:	000c8a93          	mv	s5,s9
800142ac:	00a47e63          	bgeu	s0,a0,800142c8 <__divdi3+0x418>
800142b0:	01340433          	add	s0,s0,s3
800142b4:	fffc8a93          	addi	s5,s9,-1
800142b8:	01346863          	bltu	s0,s3,800142c8 <__divdi3+0x418>
800142bc:	00a47663          	bgeu	s0,a0,800142c8 <__divdi3+0x418>
800142c0:	ffec8a93          	addi	s5,s9,-2
800142c4:	01340433          	add	s0,s0,s3
800142c8:	010c1593          	slli	a1,s8,0x10
800142cc:	40a40433          	sub	s0,s0,a0
800142d0:	0155eab3          	or	s5,a1,s5
800142d4:	de5ff06f          	j	800140b8 <__divdi3+0x208>
800142d8:	1ed46e63          	bltu	s0,a3,800144d4 <__divdi3+0x624>
800142dc:	000107b7          	lui	a5,0x10
800142e0:	04f6f463          	bgeu	a3,a5,80014328 <__divdi3+0x478>
800142e4:	0ff00b13          	li	s6,255
800142e8:	00db37b3          	sltu	a5,s6,a3
800142ec:	00379793          	slli	a5,a5,0x3
800142f0:	80000737          	lui	a4,0x80000
800142f4:	00f6d5b3          	srl	a1,a3,a5
800142f8:	5d870713          	addi	a4,a4,1496 # 800005d8 <__clzsi2+0xfffe9274>
800142fc:	00b70733          	add	a4,a4,a1
80014300:	00074b03          	lbu	s6,0(a4)
80014304:	00fb0b33          	add	s6,s6,a5
80014308:	02000793          	li	a5,32
8001430c:	41678ab3          	sub	s5,a5,s6
80014310:	03679663          	bne	a5,s6,8001433c <__divdi3+0x48c>
80014314:	00100793          	li	a5,1
80014318:	e686e4e3          	bltu	a3,s0,80014180 <__divdi3+0x2d0>
8001431c:	00cbb7b3          	sltu	a5,s7,a2
80014320:	0017c793          	xori	a5,a5,1
80014324:	e5dff06f          	j	80014180 <__divdi3+0x2d0>
80014328:	01000737          	lui	a4,0x1000
8001432c:	01000793          	li	a5,16
80014330:	fce6e0e3          	bltu	a3,a4,800142f0 <__divdi3+0x440>
80014334:	01800793          	li	a5,24
80014338:	fb9ff06f          	j	800142f0 <__divdi3+0x440>
8001433c:	01665d33          	srl	s10,a2,s6
80014340:	015696b3          	sll	a3,a3,s5
80014344:	00dd6d33          	or	s10,s10,a3
80014348:	016454b3          	srl	s1,s0,s6
8001434c:	010d5c13          	srli	s8,s10,0x10
80014350:	000c0593          	mv	a1,s8
80014354:	00048513          	mv	a0,s1
80014358:	01561a33          	sll	s4,a2,s5
8001435c:	7a5020ef          	jal	ra,80017300 <__umodsi3>
80014360:	00050993          	mv	s3,a0
80014364:	000c0593          	mv	a1,s8
80014368:	010d1c93          	slli	s9,s10,0x10
8001436c:	00048513          	mv	a0,s1
80014370:	749020ef          	jal	ra,800172b8 <__udivsi3>
80014374:	01541433          	sll	s0,s0,s5
80014378:	016bdb33          	srl	s6,s7,s6
8001437c:	010cdc93          	srli	s9,s9,0x10
80014380:	008b6b33          	or	s6,s6,s0
80014384:	00050593          	mv	a1,a0
80014388:	00050413          	mv	s0,a0
8001438c:	000c8513          	mv	a0,s9
80014390:	66d020ef          	jal	ra,800171fc <__mulsi3>
80014394:	01099993          	slli	s3,s3,0x10
80014398:	010b5713          	srli	a4,s6,0x10
8001439c:	00e9e733          	or	a4,s3,a4
800143a0:	00040d93          	mv	s11,s0
800143a4:	00a77e63          	bgeu	a4,a0,800143c0 <__divdi3+0x510>
800143a8:	01a70733          	add	a4,a4,s10
800143ac:	fff40d93          	addi	s11,s0,-1
800143b0:	01a76863          	bltu	a4,s10,800143c0 <__divdi3+0x510>
800143b4:	00a77663          	bgeu	a4,a0,800143c0 <__divdi3+0x510>
800143b8:	ffe40d93          	addi	s11,s0,-2
800143bc:	01a70733          	add	a4,a4,s10
800143c0:	40a704b3          	sub	s1,a4,a0
800143c4:	000c0593          	mv	a1,s8
800143c8:	00048513          	mv	a0,s1
800143cc:	735020ef          	jal	ra,80017300 <__umodsi3>
800143d0:	00050993          	mv	s3,a0
800143d4:	000c0593          	mv	a1,s8
800143d8:	00048513          	mv	a0,s1
800143dc:	6dd020ef          	jal	ra,800172b8 <__udivsi3>
800143e0:	010b1413          	slli	s0,s6,0x10
800143e4:	00050493          	mv	s1,a0
800143e8:	00050593          	mv	a1,a0
800143ec:	01099993          	slli	s3,s3,0x10
800143f0:	000c8513          	mv	a0,s9
800143f4:	01045413          	srli	s0,s0,0x10
800143f8:	605020ef          	jal	ra,800171fc <__mulsi3>
800143fc:	0089e433          	or	s0,s3,s0
80014400:	00048613          	mv	a2,s1
80014404:	00a47e63          	bgeu	s0,a0,80014420 <__divdi3+0x570>
80014408:	01a40433          	add	s0,s0,s10
8001440c:	fff48613          	addi	a2,s1,-1
80014410:	01a46863          	bltu	s0,s10,80014420 <__divdi3+0x570>
80014414:	00a47663          	bgeu	s0,a0,80014420 <__divdi3+0x570>
80014418:	ffe48613          	addi	a2,s1,-2
8001441c:	01a40433          	add	s0,s0,s10
80014420:	010d9793          	slli	a5,s11,0x10
80014424:	00010e37          	lui	t3,0x10
80014428:	00c7e7b3          	or	a5,a5,a2
8001442c:	fffe0313          	addi	t1,t3,-1 # ffff <font6x8-0x7fff002d>
80014430:	0067f8b3          	and	a7,a5,t1
80014434:	006a7333          	and	t1,s4,t1
80014438:	40a40433          	sub	s0,s0,a0
8001443c:	0107de93          	srli	t4,a5,0x10
80014440:	010a5a13          	srli	s4,s4,0x10
80014444:	00088513          	mv	a0,a7
80014448:	00030593          	mv	a1,t1
8001444c:	5b1020ef          	jal	ra,800171fc <__mulsi3>
80014450:	00050813          	mv	a6,a0
80014454:	000a0593          	mv	a1,s4
80014458:	00088513          	mv	a0,a7
8001445c:	5a1020ef          	jal	ra,800171fc <__mulsi3>
80014460:	00050893          	mv	a7,a0
80014464:	00030593          	mv	a1,t1
80014468:	000e8513          	mv	a0,t4
8001446c:	591020ef          	jal	ra,800171fc <__mulsi3>
80014470:	00050313          	mv	t1,a0
80014474:	000a0593          	mv	a1,s4
80014478:	000e8513          	mv	a0,t4
8001447c:	581020ef          	jal	ra,800171fc <__mulsi3>
80014480:	01085713          	srli	a4,a6,0x10
80014484:	006888b3          	add	a7,a7,t1
80014488:	01170733          	add	a4,a4,a7
8001448c:	00050693          	mv	a3,a0
80014490:	00677463          	bgeu	a4,t1,80014498 <__divdi3+0x5e8>
80014494:	01c506b3          	add	a3,a0,t3
80014498:	01075513          	srli	a0,a4,0x10
8001449c:	00d506b3          	add	a3,a0,a3
800144a0:	02d46663          	bltu	s0,a3,800144cc <__divdi3+0x61c>
800144a4:	bad416e3          	bne	s0,a3,80014050 <__divdi3+0x1a0>
800144a8:	00010537          	lui	a0,0x10
800144ac:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
800144b0:	00a77733          	and	a4,a4,a0
800144b4:	01071713          	slli	a4,a4,0x10
800144b8:	00a87833          	and	a6,a6,a0
800144bc:	015b9bb3          	sll	s7,s7,s5
800144c0:	01070733          	add	a4,a4,a6
800144c4:	00000a93          	li	s5,0
800144c8:	caebfce3          	bgeu	s7,a4,80014180 <__divdi3+0x2d0>
800144cc:	fff78793          	addi	a5,a5,-1 # ffff <font6x8-0x7fff002d>
800144d0:	b81ff06f          	j	80014050 <__divdi3+0x1a0>
800144d4:	00000a93          	li	s5,0
800144d8:	00000793          	li	a5,0
800144dc:	ca5ff06f          	j	80014180 <__divdi3+0x2d0>

800144e0 <__udivdi3>:
800144e0:	fd010113          	addi	sp,sp,-48
800144e4:	02812423          	sw	s0,40(sp)
800144e8:	01712623          	sw	s7,12(sp)
800144ec:	02112623          	sw	ra,44(sp)
800144f0:	02912223          	sw	s1,36(sp)
800144f4:	03212023          	sw	s2,32(sp)
800144f8:	01312e23          	sw	s3,28(sp)
800144fc:	01412c23          	sw	s4,24(sp)
80014500:	01512a23          	sw	s5,20(sp)
80014504:	01612823          	sw	s6,16(sp)
80014508:	01812423          	sw	s8,8(sp)
8001450c:	01912223          	sw	s9,4(sp)
80014510:	00050b93          	mv	s7,a0
80014514:	00058413          	mv	s0,a1
80014518:	38069c63          	bnez	a3,800148b0 <__udivdi3+0x3d0>
8001451c:	800004b7          	lui	s1,0x80000
80014520:	00060913          	mv	s2,a2
80014524:	00050a13          	mv	s4,a0
80014528:	5d848493          	addi	s1,s1,1496 # 800005d8 <__clzsi2+0xfffe9274>
8001452c:	12c5f863          	bgeu	a1,a2,8001465c <__udivdi3+0x17c>
80014530:	000107b7          	lui	a5,0x10
80014534:	00058c13          	mv	s8,a1
80014538:	10f67863          	bgeu	a2,a5,80014648 <__udivdi3+0x168>
8001453c:	0ff00713          	li	a4,255
80014540:	00c73733          	sltu	a4,a4,a2
80014544:	00371713          	slli	a4,a4,0x3
80014548:	00e657b3          	srl	a5,a2,a4
8001454c:	00f484b3          	add	s1,s1,a5
80014550:	0004c683          	lbu	a3,0(s1)
80014554:	00e68733          	add	a4,a3,a4
80014558:	02000693          	li	a3,32
8001455c:	40e687b3          	sub	a5,a3,a4
80014560:	00e68c63          	beq	a3,a4,80014578 <__udivdi3+0x98>
80014564:	00f41433          	sll	s0,s0,a5
80014568:	00ebd733          	srl	a4,s7,a4
8001456c:	00f61933          	sll	s2,a2,a5
80014570:	00876c33          	or	s8,a4,s0
80014574:	00fb9a33          	sll	s4,s7,a5
80014578:	01095b13          	srli	s6,s2,0x10
8001457c:	000b0593          	mv	a1,s6
80014580:	000c0513          	mv	a0,s8
80014584:	57d020ef          	jal	ra,80017300 <__umodsi3>
80014588:	00050493          	mv	s1,a0
8001458c:	000b0593          	mv	a1,s6
80014590:	01091a93          	slli	s5,s2,0x10
80014594:	000c0513          	mv	a0,s8
80014598:	521020ef          	jal	ra,800172b8 <__udivsi3>
8001459c:	010ada93          	srli	s5,s5,0x10
800145a0:	00050413          	mv	s0,a0
800145a4:	00050593          	mv	a1,a0
800145a8:	000a8513          	mv	a0,s5
800145ac:	451020ef          	jal	ra,800171fc <__mulsi3>
800145b0:	01049493          	slli	s1,s1,0x10
800145b4:	010a5713          	srli	a4,s4,0x10
800145b8:	00e4e733          	or	a4,s1,a4
800145bc:	00040993          	mv	s3,s0
800145c0:	00a77e63          	bgeu	a4,a0,800145dc <__udivdi3+0xfc>
800145c4:	01270733          	add	a4,a4,s2
800145c8:	fff40993          	addi	s3,s0,-1
800145cc:	01276863          	bltu	a4,s2,800145dc <__udivdi3+0xfc>
800145d0:	00a77663          	bgeu	a4,a0,800145dc <__udivdi3+0xfc>
800145d4:	ffe40993          	addi	s3,s0,-2
800145d8:	01270733          	add	a4,a4,s2
800145dc:	40a70433          	sub	s0,a4,a0
800145e0:	000b0593          	mv	a1,s6
800145e4:	00040513          	mv	a0,s0
800145e8:	519020ef          	jal	ra,80017300 <__umodsi3>
800145ec:	00050493          	mv	s1,a0
800145f0:	000b0593          	mv	a1,s6
800145f4:	00040513          	mv	a0,s0
800145f8:	4c1020ef          	jal	ra,800172b8 <__udivsi3>
800145fc:	010a1a13          	slli	s4,s4,0x10
80014600:	00050413          	mv	s0,a0
80014604:	00050593          	mv	a1,a0
80014608:	01049493          	slli	s1,s1,0x10
8001460c:	000a8513          	mv	a0,s5
80014610:	010a5a13          	srli	s4,s4,0x10
80014614:	3e9020ef          	jal	ra,800171fc <__mulsi3>
80014618:	0144ea33          	or	s4,s1,s4
8001461c:	00040613          	mv	a2,s0
80014620:	00aa7c63          	bgeu	s4,a0,80014638 <__udivdi3+0x158>
80014624:	01490a33          	add	s4,s2,s4
80014628:	fff40613          	addi	a2,s0,-1
8001462c:	012a6663          	bltu	s4,s2,80014638 <__udivdi3+0x158>
80014630:	00aa7463          	bgeu	s4,a0,80014638 <__udivdi3+0x158>
80014634:	ffe40613          	addi	a2,s0,-2
80014638:	01099793          	slli	a5,s3,0x10
8001463c:	00c7e7b3          	or	a5,a5,a2
80014640:	00000493          	li	s1,0
80014644:	1300006f          	j	80014774 <__udivdi3+0x294>
80014648:	010007b7          	lui	a5,0x1000
8001464c:	01000713          	li	a4,16
80014650:	eef66ce3          	bltu	a2,a5,80014548 <__udivdi3+0x68>
80014654:	01800713          	li	a4,24
80014658:	ef1ff06f          	j	80014548 <__udivdi3+0x68>
8001465c:	00068993          	mv	s3,a3
80014660:	00061a63          	bnez	a2,80014674 <__udivdi3+0x194>
80014664:	00000593          	li	a1,0
80014668:	00100513          	li	a0,1
8001466c:	44d020ef          	jal	ra,800172b8 <__udivsi3>
80014670:	00050913          	mv	s2,a0
80014674:	000107b7          	lui	a5,0x10
80014678:	12f97c63          	bgeu	s2,a5,800147b0 <__udivdi3+0x2d0>
8001467c:	0ff00793          	li	a5,255
80014680:	0127f463          	bgeu	a5,s2,80014688 <__udivdi3+0x1a8>
80014684:	00800993          	li	s3,8
80014688:	013957b3          	srl	a5,s2,s3
8001468c:	00f484b3          	add	s1,s1,a5
80014690:	0004c783          	lbu	a5,0(s1)
80014694:	02000693          	li	a3,32
80014698:	013787b3          	add	a5,a5,s3
8001469c:	40f68733          	sub	a4,a3,a5
800146a0:	12f69263          	bne	a3,a5,800147c4 <__udivdi3+0x2e4>
800146a4:	41240433          	sub	s0,s0,s2
800146a8:	00100493          	li	s1,1
800146ac:	01095a93          	srli	s5,s2,0x10
800146b0:	000a8593          	mv	a1,s5
800146b4:	00040513          	mv	a0,s0
800146b8:	449020ef          	jal	ra,80017300 <__umodsi3>
800146bc:	00050993          	mv	s3,a0
800146c0:	000a8593          	mv	a1,s5
800146c4:	00040513          	mv	a0,s0
800146c8:	01091b13          	slli	s6,s2,0x10
800146cc:	3ed020ef          	jal	ra,800172b8 <__udivsi3>
800146d0:	010b5b13          	srli	s6,s6,0x10
800146d4:	00050413          	mv	s0,a0
800146d8:	00050593          	mv	a1,a0
800146dc:	000b0513          	mv	a0,s6
800146e0:	31d020ef          	jal	ra,800171fc <__mulsi3>
800146e4:	01099993          	slli	s3,s3,0x10
800146e8:	010a5713          	srli	a4,s4,0x10
800146ec:	00e9e733          	or	a4,s3,a4
800146f0:	00040b93          	mv	s7,s0
800146f4:	00a77e63          	bgeu	a4,a0,80014710 <__udivdi3+0x230>
800146f8:	01270733          	add	a4,a4,s2
800146fc:	fff40b93          	addi	s7,s0,-1
80014700:	01276863          	bltu	a4,s2,80014710 <__udivdi3+0x230>
80014704:	00a77663          	bgeu	a4,a0,80014710 <__udivdi3+0x230>
80014708:	ffe40b93          	addi	s7,s0,-2
8001470c:	01270733          	add	a4,a4,s2
80014710:	40a70433          	sub	s0,a4,a0
80014714:	000a8593          	mv	a1,s5
80014718:	00040513          	mv	a0,s0
8001471c:	3e5020ef          	jal	ra,80017300 <__umodsi3>
80014720:	00050993          	mv	s3,a0
80014724:	000a8593          	mv	a1,s5
80014728:	00040513          	mv	a0,s0
8001472c:	38d020ef          	jal	ra,800172b8 <__udivsi3>
80014730:	010a1a13          	slli	s4,s4,0x10
80014734:	00050413          	mv	s0,a0
80014738:	00050593          	mv	a1,a0
8001473c:	01099993          	slli	s3,s3,0x10
80014740:	000b0513          	mv	a0,s6
80014744:	010a5a13          	srli	s4,s4,0x10
80014748:	2b5020ef          	jal	ra,800171fc <__mulsi3>
8001474c:	0149ea33          	or	s4,s3,s4
80014750:	00040613          	mv	a2,s0
80014754:	00aa7c63          	bgeu	s4,a0,8001476c <__udivdi3+0x28c>
80014758:	01490a33          	add	s4,s2,s4
8001475c:	fff40613          	addi	a2,s0,-1
80014760:	012a6663          	bltu	s4,s2,8001476c <__udivdi3+0x28c>
80014764:	00aa7463          	bgeu	s4,a0,8001476c <__udivdi3+0x28c>
80014768:	ffe40613          	addi	a2,s0,-2
8001476c:	010b9793          	slli	a5,s7,0x10
80014770:	00c7e7b3          	or	a5,a5,a2
80014774:	00078513          	mv	a0,a5
80014778:	00048593          	mv	a1,s1
8001477c:	02c12083          	lw	ra,44(sp)
80014780:	02812403          	lw	s0,40(sp)
80014784:	02412483          	lw	s1,36(sp)
80014788:	02012903          	lw	s2,32(sp)
8001478c:	01c12983          	lw	s3,28(sp)
80014790:	01812a03          	lw	s4,24(sp)
80014794:	01412a83          	lw	s5,20(sp)
80014798:	01012b03          	lw	s6,16(sp)
8001479c:	00c12b83          	lw	s7,12(sp)
800147a0:	00812c03          	lw	s8,8(sp)
800147a4:	00412c83          	lw	s9,4(sp)
800147a8:	03010113          	addi	sp,sp,48
800147ac:	00008067          	ret
800147b0:	010007b7          	lui	a5,0x1000
800147b4:	01000993          	li	s3,16
800147b8:	ecf968e3          	bltu	s2,a5,80014688 <__udivdi3+0x1a8>
800147bc:	01800993          	li	s3,24
800147c0:	ec9ff06f          	j	80014688 <__udivdi3+0x1a8>
800147c4:	00e91933          	sll	s2,s2,a4
800147c8:	00f459b3          	srl	s3,s0,a5
800147cc:	00fbd7b3          	srl	a5,s7,a5
800147d0:	00e41433          	sll	s0,s0,a4
800147d4:	0087eab3          	or	s5,a5,s0
800147d8:	01095413          	srli	s0,s2,0x10
800147dc:	00040593          	mv	a1,s0
800147e0:	00098513          	mv	a0,s3
800147e4:	00eb9a33          	sll	s4,s7,a4
800147e8:	319020ef          	jal	ra,80017300 <__umodsi3>
800147ec:	00050493          	mv	s1,a0
800147f0:	00040593          	mv	a1,s0
800147f4:	00098513          	mv	a0,s3
800147f8:	01091b13          	slli	s6,s2,0x10
800147fc:	2bd020ef          	jal	ra,800172b8 <__udivsi3>
80014800:	010b5b13          	srli	s6,s6,0x10
80014804:	00050993          	mv	s3,a0
80014808:	00050593          	mv	a1,a0
8001480c:	000b0513          	mv	a0,s6
80014810:	1ed020ef          	jal	ra,800171fc <__mulsi3>
80014814:	01049493          	slli	s1,s1,0x10
80014818:	010ad793          	srli	a5,s5,0x10
8001481c:	00f4e7b3          	or	a5,s1,a5
80014820:	00098b93          	mv	s7,s3
80014824:	00a7fe63          	bgeu	a5,a0,80014840 <__udivdi3+0x360>
80014828:	012787b3          	add	a5,a5,s2
8001482c:	fff98b93          	addi	s7,s3,-1
80014830:	0127e863          	bltu	a5,s2,80014840 <__udivdi3+0x360>
80014834:	00a7f663          	bgeu	a5,a0,80014840 <__udivdi3+0x360>
80014838:	ffe98b93          	addi	s7,s3,-2
8001483c:	012787b3          	add	a5,a5,s2
80014840:	40a789b3          	sub	s3,a5,a0
80014844:	00040593          	mv	a1,s0
80014848:	00098513          	mv	a0,s3
8001484c:	2b5020ef          	jal	ra,80017300 <__umodsi3>
80014850:	00040593          	mv	a1,s0
80014854:	00050493          	mv	s1,a0
80014858:	00098513          	mv	a0,s3
8001485c:	25d020ef          	jal	ra,800172b8 <__udivsi3>
80014860:	010a9413          	slli	s0,s5,0x10
80014864:	00050993          	mv	s3,a0
80014868:	00050593          	mv	a1,a0
8001486c:	01049493          	slli	s1,s1,0x10
80014870:	000b0513          	mv	a0,s6
80014874:	01045413          	srli	s0,s0,0x10
80014878:	185020ef          	jal	ra,800171fc <__mulsi3>
8001487c:	0084e433          	or	s0,s1,s0
80014880:	00098793          	mv	a5,s3
80014884:	00a47e63          	bgeu	s0,a0,800148a0 <__udivdi3+0x3c0>
80014888:	01240433          	add	s0,s0,s2
8001488c:	fff98793          	addi	a5,s3,-1
80014890:	01246863          	bltu	s0,s2,800148a0 <__udivdi3+0x3c0>
80014894:	00a47663          	bgeu	s0,a0,800148a0 <__udivdi3+0x3c0>
80014898:	ffe98793          	addi	a5,s3,-2
8001489c:	01240433          	add	s0,s0,s2
800148a0:	010b9493          	slli	s1,s7,0x10
800148a4:	40a40433          	sub	s0,s0,a0
800148a8:	00f4e4b3          	or	s1,s1,a5
800148ac:	e01ff06f          	j	800146ac <__udivdi3+0x1cc>
800148b0:	1ed5ee63          	bltu	a1,a3,80014aac <__udivdi3+0x5cc>
800148b4:	000107b7          	lui	a5,0x10
800148b8:	04f6f463          	bgeu	a3,a5,80014900 <__udivdi3+0x420>
800148bc:	0ff00a93          	li	s5,255
800148c0:	00dab733          	sltu	a4,s5,a3
800148c4:	00371713          	slli	a4,a4,0x3
800148c8:	800007b7          	lui	a5,0x80000
800148cc:	00e6d5b3          	srl	a1,a3,a4
800148d0:	5d878793          	addi	a5,a5,1496 # 800005d8 <__clzsi2+0xfffe9274>
800148d4:	00b787b3          	add	a5,a5,a1
800148d8:	0007ca83          	lbu	s5,0(a5)
800148dc:	02000793          	li	a5,32
800148e0:	00ea8ab3          	add	s5,s5,a4
800148e4:	415784b3          	sub	s1,a5,s5
800148e8:	03579663          	bne	a5,s5,80014914 <__udivdi3+0x434>
800148ec:	00100793          	li	a5,1
800148f0:	e886e2e3          	bltu	a3,s0,80014774 <__udivdi3+0x294>
800148f4:	00cbb7b3          	sltu	a5,s7,a2
800148f8:	0017c793          	xori	a5,a5,1
800148fc:	e79ff06f          	j	80014774 <__udivdi3+0x294>
80014900:	010007b7          	lui	a5,0x1000
80014904:	01000713          	li	a4,16
80014908:	fcf6e0e3          	bltu	a3,a5,800148c8 <__udivdi3+0x3e8>
8001490c:	01800713          	li	a4,24
80014910:	fb9ff06f          	j	800148c8 <__udivdi3+0x3e8>
80014914:	01565cb3          	srl	s9,a2,s5
80014918:	009696b3          	sll	a3,a3,s1
8001491c:	00dcecb3          	or	s9,s9,a3
80014920:	015459b3          	srl	s3,s0,s5
80014924:	00941433          	sll	s0,s0,s1
80014928:	015bdab3          	srl	s5,s7,s5
8001492c:	008aeab3          	or	s5,s5,s0
80014930:	010cd413          	srli	s0,s9,0x10
80014934:	00040593          	mv	a1,s0
80014938:	00098513          	mv	a0,s3
8001493c:	00961933          	sll	s2,a2,s1
80014940:	1c1020ef          	jal	ra,80017300 <__umodsi3>
80014944:	00050a13          	mv	s4,a0
80014948:	00040593          	mv	a1,s0
8001494c:	00098513          	mv	a0,s3
80014950:	010c9b13          	slli	s6,s9,0x10
80014954:	165020ef          	jal	ra,800172b8 <__udivsi3>
80014958:	010b5b13          	srli	s6,s6,0x10
8001495c:	00050993          	mv	s3,a0
80014960:	00050593          	mv	a1,a0
80014964:	000b0513          	mv	a0,s6
80014968:	095020ef          	jal	ra,800171fc <__mulsi3>
8001496c:	010a1a13          	slli	s4,s4,0x10
80014970:	010ad713          	srli	a4,s5,0x10
80014974:	00ea6733          	or	a4,s4,a4
80014978:	00098c13          	mv	s8,s3
8001497c:	00a77e63          	bgeu	a4,a0,80014998 <__udivdi3+0x4b8>
80014980:	01970733          	add	a4,a4,s9
80014984:	fff98c13          	addi	s8,s3,-1
80014988:	01976863          	bltu	a4,s9,80014998 <__udivdi3+0x4b8>
8001498c:	00a77663          	bgeu	a4,a0,80014998 <__udivdi3+0x4b8>
80014990:	ffe98c13          	addi	s8,s3,-2
80014994:	01970733          	add	a4,a4,s9
80014998:	40a709b3          	sub	s3,a4,a0
8001499c:	00040593          	mv	a1,s0
800149a0:	00098513          	mv	a0,s3
800149a4:	15d020ef          	jal	ra,80017300 <__umodsi3>
800149a8:	00040593          	mv	a1,s0
800149ac:	00050a13          	mv	s4,a0
800149b0:	00098513          	mv	a0,s3
800149b4:	105020ef          	jal	ra,800172b8 <__udivsi3>
800149b8:	010a9413          	slli	s0,s5,0x10
800149bc:	00050993          	mv	s3,a0
800149c0:	00050593          	mv	a1,a0
800149c4:	010a1a13          	slli	s4,s4,0x10
800149c8:	000b0513          	mv	a0,s6
800149cc:	01045413          	srli	s0,s0,0x10
800149d0:	02d020ef          	jal	ra,800171fc <__mulsi3>
800149d4:	008a6433          	or	s0,s4,s0
800149d8:	00098613          	mv	a2,s3
800149dc:	00a47e63          	bgeu	s0,a0,800149f8 <__udivdi3+0x518>
800149e0:	01940433          	add	s0,s0,s9
800149e4:	fff98613          	addi	a2,s3,-1
800149e8:	01946863          	bltu	s0,s9,800149f8 <__udivdi3+0x518>
800149ec:	00a47663          	bgeu	s0,a0,800149f8 <__udivdi3+0x518>
800149f0:	ffe98613          	addi	a2,s3,-2
800149f4:	01940433          	add	s0,s0,s9
800149f8:	010c1793          	slli	a5,s8,0x10
800149fc:	00010e37          	lui	t3,0x10
80014a00:	00c7e7b3          	or	a5,a5,a2
80014a04:	fffe0313          	addi	t1,t3,-1 # ffff <font6x8-0x7fff002d>
80014a08:	0067f8b3          	and	a7,a5,t1
80014a0c:	00697333          	and	t1,s2,t1
80014a10:	40a40433          	sub	s0,s0,a0
80014a14:	0107de93          	srli	t4,a5,0x10
80014a18:	01095913          	srli	s2,s2,0x10
80014a1c:	00088513          	mv	a0,a7
80014a20:	00030593          	mv	a1,t1
80014a24:	7d8020ef          	jal	ra,800171fc <__mulsi3>
80014a28:	00050813          	mv	a6,a0
80014a2c:	00090593          	mv	a1,s2
80014a30:	00088513          	mv	a0,a7
80014a34:	7c8020ef          	jal	ra,800171fc <__mulsi3>
80014a38:	00050893          	mv	a7,a0
80014a3c:	00030593          	mv	a1,t1
80014a40:	000e8513          	mv	a0,t4
80014a44:	7b8020ef          	jal	ra,800171fc <__mulsi3>
80014a48:	00050313          	mv	t1,a0
80014a4c:	00090593          	mv	a1,s2
80014a50:	000e8513          	mv	a0,t4
80014a54:	7a8020ef          	jal	ra,800171fc <__mulsi3>
80014a58:	01085713          	srli	a4,a6,0x10
80014a5c:	006888b3          	add	a7,a7,t1
80014a60:	01170733          	add	a4,a4,a7
80014a64:	00050693          	mv	a3,a0
80014a68:	00677463          	bgeu	a4,t1,80014a70 <__udivdi3+0x590>
80014a6c:	01c506b3          	add	a3,a0,t3
80014a70:	01075513          	srli	a0,a4,0x10
80014a74:	00d506b3          	add	a3,a0,a3
80014a78:	02d46663          	bltu	s0,a3,80014aa4 <__udivdi3+0x5c4>
80014a7c:	bcd412e3          	bne	s0,a3,80014640 <__udivdi3+0x160>
80014a80:	00010537          	lui	a0,0x10
80014a84:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80014a88:	00a77733          	and	a4,a4,a0
80014a8c:	01071713          	slli	a4,a4,0x10
80014a90:	00a87833          	and	a6,a6,a0
80014a94:	009b9bb3          	sll	s7,s7,s1
80014a98:	01070733          	add	a4,a4,a6
80014a9c:	00000493          	li	s1,0
80014aa0:	ccebfae3          	bgeu	s7,a4,80014774 <__udivdi3+0x294>
80014aa4:	fff78793          	addi	a5,a5,-1 # ffffff <font6x8-0x7f00002d>
80014aa8:	b99ff06f          	j	80014640 <__udivdi3+0x160>
80014aac:	00000493          	li	s1,0
80014ab0:	00000793          	li	a5,0
80014ab4:	cc1ff06f          	j	80014774 <__udivdi3+0x294>

80014ab8 <__umoddi3>:
80014ab8:	fd010113          	addi	sp,sp,-48
80014abc:	02812423          	sw	s0,40(sp)
80014ac0:	02912223          	sw	s1,36(sp)
80014ac4:	03212023          	sw	s2,32(sp)
80014ac8:	01612823          	sw	s6,16(sp)
80014acc:	02112623          	sw	ra,44(sp)
80014ad0:	01312e23          	sw	s3,28(sp)
80014ad4:	01412c23          	sw	s4,24(sp)
80014ad8:	01512a23          	sw	s5,20(sp)
80014adc:	01712623          	sw	s7,12(sp)
80014ae0:	01812423          	sw	s8,8(sp)
80014ae4:	01912223          	sw	s9,4(sp)
80014ae8:	01a12023          	sw	s10,0(sp)
80014aec:	00050913          	mv	s2,a0
80014af0:	00058b13          	mv	s6,a1
80014af4:	00050413          	mv	s0,a0
80014af8:	00058493          	mv	s1,a1
80014afc:	26069c63          	bnez	a3,80014d74 <__umoddi3+0x2bc>
80014b00:	80000ab7          	lui	s5,0x80000
80014b04:	00060a13          	mv	s4,a2
80014b08:	00068993          	mv	s3,a3
80014b0c:	5d8a8a93          	addi	s5,s5,1496 # 800005d8 <__clzsi2+0xfffe9274>
80014b10:	14c5f263          	bgeu	a1,a2,80014c54 <__umoddi3+0x19c>
80014b14:	000107b7          	lui	a5,0x10
80014b18:	12f67463          	bgeu	a2,a5,80014c40 <__umoddi3+0x188>
80014b1c:	0ff00793          	li	a5,255
80014b20:	00c7f463          	bgeu	a5,a2,80014b28 <__umoddi3+0x70>
80014b24:	00800993          	li	s3,8
80014b28:	013657b3          	srl	a5,a2,s3
80014b2c:	00fa8ab3          	add	s5,s5,a5
80014b30:	000ac783          	lbu	a5,0(s5)
80014b34:	02000713          	li	a4,32
80014b38:	013787b3          	add	a5,a5,s3
80014b3c:	40f709b3          	sub	s3,a4,a5
80014b40:	00f70c63          	beq	a4,a5,80014b58 <__umoddi3+0xa0>
80014b44:	013b15b3          	sll	a1,s6,s3
80014b48:	00f957b3          	srl	a5,s2,a5
80014b4c:	01361a33          	sll	s4,a2,s3
80014b50:	00b7e4b3          	or	s1,a5,a1
80014b54:	01391433          	sll	s0,s2,s3
80014b58:	010a5a93          	srli	s5,s4,0x10
80014b5c:	000a8593          	mv	a1,s5
80014b60:	00048513          	mv	a0,s1
80014b64:	79c020ef          	jal	ra,80017300 <__umodsi3>
80014b68:	00050913          	mv	s2,a0
80014b6c:	000a8593          	mv	a1,s5
80014b70:	010a1b13          	slli	s6,s4,0x10
80014b74:	00048513          	mv	a0,s1
80014b78:	740020ef          	jal	ra,800172b8 <__udivsi3>
80014b7c:	010b5b13          	srli	s6,s6,0x10
80014b80:	00050593          	mv	a1,a0
80014b84:	000b0513          	mv	a0,s6
80014b88:	674020ef          	jal	ra,800171fc <__mulsi3>
80014b8c:	01091913          	slli	s2,s2,0x10
80014b90:	01045793          	srli	a5,s0,0x10
80014b94:	00f967b3          	or	a5,s2,a5
80014b98:	00a7fa63          	bgeu	a5,a0,80014bac <__umoddi3+0xf4>
80014b9c:	014787b3          	add	a5,a5,s4
80014ba0:	0147e663          	bltu	a5,s4,80014bac <__umoddi3+0xf4>
80014ba4:	00a7f463          	bgeu	a5,a0,80014bac <__umoddi3+0xf4>
80014ba8:	014787b3          	add	a5,a5,s4
80014bac:	40a784b3          	sub	s1,a5,a0
80014bb0:	000a8593          	mv	a1,s5
80014bb4:	00048513          	mv	a0,s1
80014bb8:	748020ef          	jal	ra,80017300 <__umodsi3>
80014bbc:	00050913          	mv	s2,a0
80014bc0:	000a8593          	mv	a1,s5
80014bc4:	00048513          	mv	a0,s1
80014bc8:	6f0020ef          	jal	ra,800172b8 <__udivsi3>
80014bcc:	01041413          	slli	s0,s0,0x10
80014bd0:	00050593          	mv	a1,a0
80014bd4:	01091913          	slli	s2,s2,0x10
80014bd8:	000b0513          	mv	a0,s6
80014bdc:	01045413          	srli	s0,s0,0x10
80014be0:	61c020ef          	jal	ra,800171fc <__mulsi3>
80014be4:	00896433          	or	s0,s2,s0
80014be8:	00a47a63          	bgeu	s0,a0,80014bfc <__umoddi3+0x144>
80014bec:	01440433          	add	s0,s0,s4
80014bf0:	01446663          	bltu	s0,s4,80014bfc <__umoddi3+0x144>
80014bf4:	00a47463          	bgeu	s0,a0,80014bfc <__umoddi3+0x144>
80014bf8:	01440433          	add	s0,s0,s4
80014bfc:	40a40433          	sub	s0,s0,a0
80014c00:	01345533          	srl	a0,s0,s3
80014c04:	00000593          	li	a1,0
80014c08:	02c12083          	lw	ra,44(sp)
80014c0c:	02812403          	lw	s0,40(sp)
80014c10:	02412483          	lw	s1,36(sp)
80014c14:	02012903          	lw	s2,32(sp)
80014c18:	01c12983          	lw	s3,28(sp)
80014c1c:	01812a03          	lw	s4,24(sp)
80014c20:	01412a83          	lw	s5,20(sp)
80014c24:	01012b03          	lw	s6,16(sp)
80014c28:	00c12b83          	lw	s7,12(sp)
80014c2c:	00812c03          	lw	s8,8(sp)
80014c30:	00412c83          	lw	s9,4(sp)
80014c34:	00012d03          	lw	s10,0(sp)
80014c38:	03010113          	addi	sp,sp,48
80014c3c:	00008067          	ret
80014c40:	010007b7          	lui	a5,0x1000
80014c44:	01000993          	li	s3,16
80014c48:	eef660e3          	bltu	a2,a5,80014b28 <__umoddi3+0x70>
80014c4c:	01800993          	li	s3,24
80014c50:	ed9ff06f          	j	80014b28 <__umoddi3+0x70>
80014c54:	00061a63          	bnez	a2,80014c68 <__umoddi3+0x1b0>
80014c58:	00000593          	li	a1,0
80014c5c:	00100513          	li	a0,1
80014c60:	658020ef          	jal	ra,800172b8 <__udivsi3>
80014c64:	00050a13          	mv	s4,a0
80014c68:	000107b7          	lui	a5,0x10
80014c6c:	0efa7a63          	bgeu	s4,a5,80014d60 <__umoddi3+0x2a8>
80014c70:	0ff00793          	li	a5,255
80014c74:	0147f463          	bgeu	a5,s4,80014c7c <__umoddi3+0x1c4>
80014c78:	00800993          	li	s3,8
80014c7c:	013a57b3          	srl	a5,s4,s3
80014c80:	00fa8ab3          	add	s5,s5,a5
80014c84:	000ac783          	lbu	a5,0(s5)
80014c88:	02000713          	li	a4,32
80014c8c:	414b04b3          	sub	s1,s6,s4
80014c90:	013787b3          	add	a5,a5,s3
80014c94:	40f709b3          	sub	s3,a4,a5
80014c98:	ecf700e3          	beq	a4,a5,80014b58 <__umoddi3+0xa0>
80014c9c:	013a1a33          	sll	s4,s4,s3
80014ca0:	00fb5ab3          	srl	s5,s6,a5
80014ca4:	013b15b3          	sll	a1,s6,s3
80014ca8:	00f957b3          	srl	a5,s2,a5
80014cac:	010a5493          	srli	s1,s4,0x10
80014cb0:	00b7eb33          	or	s6,a5,a1
80014cb4:	000a8513          	mv	a0,s5
80014cb8:	00048593          	mv	a1,s1
80014cbc:	644020ef          	jal	ra,80017300 <__umodsi3>
80014cc0:	00048593          	mv	a1,s1
80014cc4:	01391433          	sll	s0,s2,s3
80014cc8:	010a1b93          	slli	s7,s4,0x10
80014ccc:	00050913          	mv	s2,a0
80014cd0:	000a8513          	mv	a0,s5
80014cd4:	5e4020ef          	jal	ra,800172b8 <__udivsi3>
80014cd8:	010bdb93          	srli	s7,s7,0x10
80014cdc:	00050593          	mv	a1,a0
80014ce0:	000b8513          	mv	a0,s7
80014ce4:	518020ef          	jal	ra,800171fc <__mulsi3>
80014ce8:	01091913          	slli	s2,s2,0x10
80014cec:	010b5793          	srli	a5,s6,0x10
80014cf0:	00f967b3          	or	a5,s2,a5
80014cf4:	00a7fa63          	bgeu	a5,a0,80014d08 <__umoddi3+0x250>
80014cf8:	014787b3          	add	a5,a5,s4
80014cfc:	0147e663          	bltu	a5,s4,80014d08 <__umoddi3+0x250>
80014d00:	00a7f463          	bgeu	a5,a0,80014d08 <__umoddi3+0x250>
80014d04:	014787b3          	add	a5,a5,s4
80014d08:	40a78ab3          	sub	s5,a5,a0
80014d0c:	00048593          	mv	a1,s1
80014d10:	000a8513          	mv	a0,s5
80014d14:	5ec020ef          	jal	ra,80017300 <__umodsi3>
80014d18:	00050913          	mv	s2,a0
80014d1c:	00048593          	mv	a1,s1
80014d20:	000a8513          	mv	a0,s5
80014d24:	594020ef          	jal	ra,800172b8 <__udivsi3>
80014d28:	00050593          	mv	a1,a0
80014d2c:	000b8513          	mv	a0,s7
80014d30:	4cc020ef          	jal	ra,800171fc <__mulsi3>
80014d34:	010b1593          	slli	a1,s6,0x10
80014d38:	01091913          	slli	s2,s2,0x10
80014d3c:	0105d593          	srli	a1,a1,0x10
80014d40:	00b965b3          	or	a1,s2,a1
80014d44:	00a5fa63          	bgeu	a1,a0,80014d58 <__umoddi3+0x2a0>
80014d48:	014585b3          	add	a1,a1,s4
80014d4c:	0145e663          	bltu	a1,s4,80014d58 <__umoddi3+0x2a0>
80014d50:	00a5f463          	bgeu	a1,a0,80014d58 <__umoddi3+0x2a0>
80014d54:	014585b3          	add	a1,a1,s4
80014d58:	40a584b3          	sub	s1,a1,a0
80014d5c:	dfdff06f          	j	80014b58 <__umoddi3+0xa0>
80014d60:	010007b7          	lui	a5,0x1000
80014d64:	01000993          	li	s3,16
80014d68:	f0fa6ae3          	bltu	s4,a5,80014c7c <__umoddi3+0x1c4>
80014d6c:	01800993          	li	s3,24
80014d70:	f0dff06f          	j	80014c7c <__umoddi3+0x1c4>
80014d74:	e8d5eae3          	bltu	a1,a3,80014c08 <__umoddi3+0x150>
80014d78:	000107b7          	lui	a5,0x10
80014d7c:	04f6fc63          	bgeu	a3,a5,80014dd4 <__umoddi3+0x31c>
80014d80:	0ff00a93          	li	s5,255
80014d84:	00dab533          	sltu	a0,s5,a3
80014d88:	00351513          	slli	a0,a0,0x3
80014d8c:	800007b7          	lui	a5,0x80000
80014d90:	00a6d733          	srl	a4,a3,a0
80014d94:	5d878793          	addi	a5,a5,1496 # 800005d8 <__clzsi2+0xfffe9274>
80014d98:	00e787b3          	add	a5,a5,a4
80014d9c:	0007ca83          	lbu	s5,0(a5)
80014da0:	02000793          	li	a5,32
80014da4:	00aa8ab3          	add	s5,s5,a0
80014da8:	41578a33          	sub	s4,a5,s5
80014dac:	03579e63          	bne	a5,s5,80014de8 <__umoddi3+0x330>
80014db0:	0166e463          	bltu	a3,s6,80014db8 <__umoddi3+0x300>
80014db4:	00c96a63          	bltu	s2,a2,80014dc8 <__umoddi3+0x310>
80014db8:	40c90433          	sub	s0,s2,a2
80014dbc:	40db05b3          	sub	a1,s6,a3
80014dc0:	008934b3          	sltu	s1,s2,s0
80014dc4:	409584b3          	sub	s1,a1,s1
80014dc8:	00040513          	mv	a0,s0
80014dcc:	00048593          	mv	a1,s1
80014dd0:	e39ff06f          	j	80014c08 <__umoddi3+0x150>
80014dd4:	010007b7          	lui	a5,0x1000
80014dd8:	01000513          	li	a0,16
80014ddc:	faf6e8e3          	bltu	a3,a5,80014d8c <__umoddi3+0x2d4>
80014de0:	01800513          	li	a0,24
80014de4:	fa9ff06f          	j	80014d8c <__umoddi3+0x2d4>
80014de8:	014696b3          	sll	a3,a3,s4
80014dec:	015657b3          	srl	a5,a2,s5
80014df0:	00d7ecb3          	or	s9,a5,a3
80014df4:	015b5433          	srl	s0,s6,s5
80014df8:	014b15b3          	sll	a1,s6,s4
80014dfc:	010cdb93          	srli	s7,s9,0x10
80014e00:	01595b33          	srl	s6,s2,s5
80014e04:	00bb6b33          	or	s6,s6,a1
80014e08:	00040513          	mv	a0,s0
80014e0c:	000b8593          	mv	a1,s7
80014e10:	01461d33          	sll	s10,a2,s4
80014e14:	4ec020ef          	jal	ra,80017300 <__umodsi3>
80014e18:	00050993          	mv	s3,a0
80014e1c:	000b8593          	mv	a1,s7
80014e20:	00040513          	mv	a0,s0
80014e24:	010c9c13          	slli	s8,s9,0x10
80014e28:	490020ef          	jal	ra,800172b8 <__udivsi3>
80014e2c:	010c5c13          	srli	s8,s8,0x10
80014e30:	00050593          	mv	a1,a0
80014e34:	014914b3          	sll	s1,s2,s4
80014e38:	00050913          	mv	s2,a0
80014e3c:	000c0513          	mv	a0,s8
80014e40:	3bc020ef          	jal	ra,800171fc <__mulsi3>
80014e44:	01099993          	slli	s3,s3,0x10
80014e48:	010b5713          	srli	a4,s6,0x10
80014e4c:	00e9e733          	or	a4,s3,a4
80014e50:	00090413          	mv	s0,s2
80014e54:	00a77e63          	bgeu	a4,a0,80014e70 <__umoddi3+0x3b8>
80014e58:	01970733          	add	a4,a4,s9
80014e5c:	fff90413          	addi	s0,s2,-1
80014e60:	01976863          	bltu	a4,s9,80014e70 <__umoddi3+0x3b8>
80014e64:	00a77663          	bgeu	a4,a0,80014e70 <__umoddi3+0x3b8>
80014e68:	ffe90413          	addi	s0,s2,-2
80014e6c:	01970733          	add	a4,a4,s9
80014e70:	40a70933          	sub	s2,a4,a0
80014e74:	000b8593          	mv	a1,s7
80014e78:	00090513          	mv	a0,s2
80014e7c:	484020ef          	jal	ra,80017300 <__umodsi3>
80014e80:	00050993          	mv	s3,a0
80014e84:	000b8593          	mv	a1,s7
80014e88:	00090513          	mv	a0,s2
80014e8c:	42c020ef          	jal	ra,800172b8 <__udivsi3>
80014e90:	00050913          	mv	s2,a0
80014e94:	00050593          	mv	a1,a0
80014e98:	000c0513          	mv	a0,s8
80014e9c:	360020ef          	jal	ra,800171fc <__mulsi3>
80014ea0:	010b1713          	slli	a4,s6,0x10
80014ea4:	01099993          	slli	s3,s3,0x10
80014ea8:	01075713          	srli	a4,a4,0x10
80014eac:	00e9e733          	or	a4,s3,a4
80014eb0:	00090793          	mv	a5,s2
80014eb4:	00a77e63          	bgeu	a4,a0,80014ed0 <__umoddi3+0x418>
80014eb8:	01970733          	add	a4,a4,s9
80014ebc:	fff90793          	addi	a5,s2,-1
80014ec0:	01976863          	bltu	a4,s9,80014ed0 <__umoddi3+0x418>
80014ec4:	00a77663          	bgeu	a4,a0,80014ed0 <__umoddi3+0x418>
80014ec8:	ffe90793          	addi	a5,s2,-2
80014ecc:	01970733          	add	a4,a4,s9
80014ed0:	00010eb7          	lui	t4,0x10
80014ed4:	01041413          	slli	s0,s0,0x10
80014ed8:	40a70833          	sub	a6,a4,a0
80014edc:	00f46433          	or	s0,s0,a5
80014ee0:	fffe8713          	addi	a4,t4,-1 # ffff <font6x8-0x7fff002d>
80014ee4:	00e478b3          	and	a7,s0,a4
80014ee8:	00ed7733          	and	a4,s10,a4
80014eec:	01045413          	srli	s0,s0,0x10
80014ef0:	010d5e13          	srli	t3,s10,0x10
80014ef4:	00088513          	mv	a0,a7
80014ef8:	00070593          	mv	a1,a4
80014efc:	300020ef          	jal	ra,800171fc <__mulsi3>
80014f00:	00050793          	mv	a5,a0
80014f04:	000e0593          	mv	a1,t3
80014f08:	00088513          	mv	a0,a7
80014f0c:	2f0020ef          	jal	ra,800171fc <__mulsi3>
80014f10:	00050893          	mv	a7,a0
80014f14:	00070593          	mv	a1,a4
80014f18:	00040513          	mv	a0,s0
80014f1c:	2e0020ef          	jal	ra,800171fc <__mulsi3>
80014f20:	00050313          	mv	t1,a0
80014f24:	000e0593          	mv	a1,t3
80014f28:	00040513          	mv	a0,s0
80014f2c:	2d0020ef          	jal	ra,800171fc <__mulsi3>
80014f30:	0107d713          	srli	a4,a5,0x10
80014f34:	006888b3          	add	a7,a7,t1
80014f38:	01170733          	add	a4,a4,a7
80014f3c:	00677463          	bgeu	a4,t1,80014f44 <__umoddi3+0x48c>
80014f40:	01d50533          	add	a0,a0,t4
80014f44:	01075593          	srli	a1,a4,0x10
80014f48:	00a585b3          	add	a1,a1,a0
80014f4c:	00010537          	lui	a0,0x10
80014f50:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80014f54:	00a77733          	and	a4,a4,a0
80014f58:	01071713          	slli	a4,a4,0x10
80014f5c:	00a7f7b3          	and	a5,a5,a0
80014f60:	00f707b3          	add	a5,a4,a5
80014f64:	00b86663          	bltu	a6,a1,80014f70 <__umoddi3+0x4b8>
80014f68:	00b81e63          	bne	a6,a1,80014f84 <__umoddi3+0x4cc>
80014f6c:	00f4fc63          	bgeu	s1,a5,80014f84 <__umoddi3+0x4cc>
80014f70:	41a78633          	sub	a2,a5,s10
80014f74:	00c7b7b3          	sltu	a5,a5,a2
80014f78:	019787b3          	add	a5,a5,s9
80014f7c:	40f585b3          	sub	a1,a1,a5
80014f80:	00060793          	mv	a5,a2
80014f84:	40f487b3          	sub	a5,s1,a5
80014f88:	00f4b4b3          	sltu	s1,s1,a5
80014f8c:	40b805b3          	sub	a1,a6,a1
80014f90:	409585b3          	sub	a1,a1,s1
80014f94:	01559433          	sll	s0,a1,s5
80014f98:	0147d7b3          	srl	a5,a5,s4
80014f9c:	00f46533          	or	a0,s0,a5
80014fa0:	0145d5b3          	srl	a1,a1,s4
80014fa4:	c65ff06f          	j	80014c08 <__umoddi3+0x150>

80014fa8 <__adddf3>:
80014fa8:	00100837          	lui	a6,0x100
80014fac:	fff80813          	addi	a6,a6,-1 # fffff <font6x8-0x7ff0002d>
80014fb0:	fe010113          	addi	sp,sp,-32
80014fb4:	00b877b3          	and	a5,a6,a1
80014fb8:	0145d713          	srli	a4,a1,0x14
80014fbc:	00d87833          	and	a6,a6,a3
80014fc0:	0146d893          	srli	a7,a3,0x14
80014fc4:	00812c23          	sw	s0,24(sp)
80014fc8:	00379793          	slli	a5,a5,0x3
80014fcc:	7ff77413          	andi	s0,a4,2047
80014fd0:	01d55713          	srli	a4,a0,0x1d
80014fd4:	00912a23          	sw	s1,20(sp)
80014fd8:	00f767b3          	or	a5,a4,a5
80014fdc:	01f5d493          	srli	s1,a1,0x1f
80014fe0:	01d65713          	srli	a4,a2,0x1d
80014fe4:	7ff8f893          	andi	a7,a7,2047
80014fe8:	01f6d593          	srli	a1,a3,0x1f
80014fec:	00381813          	slli	a6,a6,0x3
80014ff0:	00112e23          	sw	ra,28(sp)
80014ff4:	01212823          	sw	s2,16(sp)
80014ff8:	01312623          	sw	s3,12(sp)
80014ffc:	00351513          	slli	a0,a0,0x3
80015000:	01076733          	or	a4,a4,a6
80015004:	00361613          	slli	a2,a2,0x3
80015008:	411406b3          	sub	a3,s0,a7
8001500c:	2cb49463          	bne	s1,a1,800152d4 <__adddf3+0x32c>
80015010:	10d05e63          	blez	a3,8001512c <__adddf3+0x184>
80015014:	04089063          	bnez	a7,80015054 <__adddf3+0xac>
80015018:	00c765b3          	or	a1,a4,a2
8001501c:	2a058863          	beqz	a1,800152cc <__adddf3+0x324>
80015020:	fff68593          	addi	a1,a3,-1
80015024:	02059063          	bnez	a1,80015044 <__adddf3+0x9c>
80015028:	00c50633          	add	a2,a0,a2
8001502c:	00a63533          	sltu	a0,a2,a0
80015030:	00e787b3          	add	a5,a5,a4
80015034:	00a787b3          	add	a5,a5,a0
80015038:	00060513          	mv	a0,a2
8001503c:	00100413          	li	s0,1
80015040:	0700006f          	j	800150b0 <__adddf3+0x108>
80015044:	7ff00813          	li	a6,2047
80015048:	03069063          	bne	a3,a6,80015068 <__adddf3+0xc0>
8001504c:	7ff00413          	li	s0,2047
80015050:	20c0006f          	j	8001525c <__adddf3+0x2b4>
80015054:	7ff00593          	li	a1,2047
80015058:	20b40263          	beq	s0,a1,8001525c <__adddf3+0x2b4>
8001505c:	008005b7          	lui	a1,0x800
80015060:	00b76733          	or	a4,a4,a1
80015064:	00068593          	mv	a1,a3
80015068:	03800693          	li	a3,56
8001506c:	0ab6ca63          	blt	a3,a1,80015120 <__adddf3+0x178>
80015070:	01f00693          	li	a3,31
80015074:	06b6cc63          	blt	a3,a1,800150ec <__adddf3+0x144>
80015078:	02000813          	li	a6,32
8001507c:	40b80833          	sub	a6,a6,a1
80015080:	010716b3          	sll	a3,a4,a6
80015084:	00b658b3          	srl	a7,a2,a1
80015088:	01061633          	sll	a2,a2,a6
8001508c:	0116e6b3          	or	a3,a3,a7
80015090:	00c03633          	snez	a2,a2
80015094:	00c6e633          	or	a2,a3,a2
80015098:	00b75733          	srl	a4,a4,a1
8001509c:	00a60633          	add	a2,a2,a0
800150a0:	00f70733          	add	a4,a4,a5
800150a4:	00a637b3          	sltu	a5,a2,a0
800150a8:	00f707b3          	add	a5,a4,a5
800150ac:	00060513          	mv	a0,a2
800150b0:	00879713          	slli	a4,a5,0x8
800150b4:	1a075463          	bgez	a4,8001525c <__adddf3+0x2b4>
800150b8:	00140413          	addi	s0,s0,1
800150bc:	7ff00713          	li	a4,2047
800150c0:	5ce40463          	beq	s0,a4,80015688 <__adddf3+0x6e0>
800150c4:	ff8006b7          	lui	a3,0xff800
800150c8:	fff68693          	addi	a3,a3,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
800150cc:	00d7f6b3          	and	a3,a5,a3
800150d0:	00155593          	srli	a1,a0,0x1
800150d4:	00157513          	andi	a0,a0,1
800150d8:	01f69793          	slli	a5,a3,0x1f
800150dc:	00a5e533          	or	a0,a1,a0
800150e0:	00a7e533          	or	a0,a5,a0
800150e4:	0016d793          	srli	a5,a3,0x1
800150e8:	1740006f          	j	8001525c <__adddf3+0x2b4>
800150ec:	fe058693          	addi	a3,a1,-32 # 7fffe0 <font6x8-0x7f80004c>
800150f0:	02000893          	li	a7,32
800150f4:	00d756b3          	srl	a3,a4,a3
800150f8:	00000813          	li	a6,0
800150fc:	01158863          	beq	a1,a7,8001510c <__adddf3+0x164>
80015100:	04000813          	li	a6,64
80015104:	40b805b3          	sub	a1,a6,a1
80015108:	00b71833          	sll	a6,a4,a1
8001510c:	00c86633          	or	a2,a6,a2
80015110:	00c03633          	snez	a2,a2
80015114:	00c6e633          	or	a2,a3,a2
80015118:	00000713          	li	a4,0
8001511c:	f81ff06f          	j	8001509c <__adddf3+0xf4>
80015120:	00c76633          	or	a2,a4,a2
80015124:	00c03633          	snez	a2,a2
80015128:	ff1ff06f          	j	80015118 <__adddf3+0x170>
8001512c:	0e068263          	beqz	a3,80015210 <__adddf3+0x268>
80015130:	408885b3          	sub	a1,a7,s0
80015134:	02041e63          	bnez	s0,80015170 <__adddf3+0x1c8>
80015138:	00a7e6b3          	or	a3,a5,a0
8001513c:	52068663          	beqz	a3,80015668 <__adddf3+0x6c0>
80015140:	fff58693          	addi	a3,a1,-1
80015144:	00069c63          	bnez	a3,8001515c <__adddf3+0x1b4>
80015148:	00c50533          	add	a0,a0,a2
8001514c:	00e787b3          	add	a5,a5,a4
80015150:	00c53633          	sltu	a2,a0,a2
80015154:	00c787b3          	add	a5,a5,a2
80015158:	ee5ff06f          	j	8001503c <__adddf3+0x94>
8001515c:	7ff00813          	li	a6,2047
80015160:	03059263          	bne	a1,a6,80015184 <__adddf3+0x1dc>
80015164:	00070793          	mv	a5,a4
80015168:	00060513          	mv	a0,a2
8001516c:	ee1ff06f          	j	8001504c <__adddf3+0xa4>
80015170:	7ff00693          	li	a3,2047
80015174:	fed888e3          	beq	a7,a3,80015164 <__adddf3+0x1bc>
80015178:	008006b7          	lui	a3,0x800
8001517c:	00d7e7b3          	or	a5,a5,a3
80015180:	00058693          	mv	a3,a1
80015184:	03800593          	li	a1,56
80015188:	06d5ce63          	blt	a1,a3,80015204 <__adddf3+0x25c>
8001518c:	01f00593          	li	a1,31
80015190:	04d5c063          	blt	a1,a3,800151d0 <__adddf3+0x228>
80015194:	02000813          	li	a6,32
80015198:	40d80833          	sub	a6,a6,a3
8001519c:	00d55333          	srl	t1,a0,a3
800151a0:	010795b3          	sll	a1,a5,a6
800151a4:	01051533          	sll	a0,a0,a6
800151a8:	0065e5b3          	or	a1,a1,t1
800151ac:	00a03533          	snez	a0,a0
800151b0:	00a5e533          	or	a0,a1,a0
800151b4:	00d7d6b3          	srl	a3,a5,a3
800151b8:	00c50533          	add	a0,a0,a2
800151bc:	00e687b3          	add	a5,a3,a4
800151c0:	00c53633          	sltu	a2,a0,a2
800151c4:	00c787b3          	add	a5,a5,a2
800151c8:	00088413          	mv	s0,a7
800151cc:	ee5ff06f          	j	800150b0 <__adddf3+0x108>
800151d0:	fe068593          	addi	a1,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
800151d4:	02000313          	li	t1,32
800151d8:	00b7d5b3          	srl	a1,a5,a1
800151dc:	00000813          	li	a6,0
800151e0:	00668863          	beq	a3,t1,800151f0 <__adddf3+0x248>
800151e4:	04000813          	li	a6,64
800151e8:	40d806b3          	sub	a3,a6,a3
800151ec:	00d79833          	sll	a6,a5,a3
800151f0:	00a86533          	or	a0,a6,a0
800151f4:	00a03533          	snez	a0,a0
800151f8:	00a5e533          	or	a0,a1,a0
800151fc:	00000693          	li	a3,0
80015200:	fb9ff06f          	j	800151b8 <__adddf3+0x210>
80015204:	00a7e533          	or	a0,a5,a0
80015208:	00a03533          	snez	a0,a0
8001520c:	ff1ff06f          	j	800151fc <__adddf3+0x254>
80015210:	00140693          	addi	a3,s0,1
80015214:	7fe6f593          	andi	a1,a3,2046
80015218:	08059663          	bnez	a1,800152a4 <__adddf3+0x2fc>
8001521c:	00a7e6b3          	or	a3,a5,a0
80015220:	06041263          	bnez	s0,80015284 <__adddf3+0x2dc>
80015224:	44068a63          	beqz	a3,80015678 <__adddf3+0x6d0>
80015228:	00c766b3          	or	a3,a4,a2
8001522c:	02068863          	beqz	a3,8001525c <__adddf3+0x2b4>
80015230:	00c50633          	add	a2,a0,a2
80015234:	00e787b3          	add	a5,a5,a4
80015238:	00a63533          	sltu	a0,a2,a0
8001523c:	00a787b3          	add	a5,a5,a0
80015240:	00879713          	slli	a4,a5,0x8
80015244:	00060513          	mv	a0,a2
80015248:	00075a63          	bgez	a4,8001525c <__adddf3+0x2b4>
8001524c:	ff800737          	lui	a4,0xff800
80015250:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
80015254:	00e7f7b3          	and	a5,a5,a4
80015258:	00100413          	li	s0,1
8001525c:	00757713          	andi	a4,a0,7
80015260:	42070863          	beqz	a4,80015690 <__adddf3+0x6e8>
80015264:	00f57713          	andi	a4,a0,15
80015268:	00400693          	li	a3,4
8001526c:	42d70263          	beq	a4,a3,80015690 <__adddf3+0x6e8>
80015270:	00450693          	addi	a3,a0,4
80015274:	00a6b533          	sltu	a0,a3,a0
80015278:	00a787b3          	add	a5,a5,a0
8001527c:	00068513          	mv	a0,a3
80015280:	4100006f          	j	80015690 <__adddf3+0x6e8>
80015284:	ee0680e3          	beqz	a3,80015164 <__adddf3+0x1bc>
80015288:	00c76633          	or	a2,a4,a2
8001528c:	dc0600e3          	beqz	a2,8001504c <__adddf3+0xa4>
80015290:	00000493          	li	s1,0
80015294:	004007b7          	lui	a5,0x400
80015298:	00000513          	li	a0,0
8001529c:	7ff00413          	li	s0,2047
800152a0:	3f00006f          	j	80015690 <__adddf3+0x6e8>
800152a4:	7ff00593          	li	a1,2047
800152a8:	3cb68e63          	beq	a3,a1,80015684 <__adddf3+0x6dc>
800152ac:	00c50633          	add	a2,a0,a2
800152b0:	00e78733          	add	a4,a5,a4
800152b4:	00a637b3          	sltu	a5,a2,a0
800152b8:	00f70733          	add	a4,a4,a5
800152bc:	01f71513          	slli	a0,a4,0x1f
800152c0:	00165613          	srli	a2,a2,0x1
800152c4:	00c56533          	or	a0,a0,a2
800152c8:	00175793          	srli	a5,a4,0x1
800152cc:	00068413          	mv	s0,a3
800152d0:	f8dff06f          	j	8001525c <__adddf3+0x2b4>
800152d4:	0ed05c63          	blez	a3,800153cc <__adddf3+0x424>
800152d8:	08089e63          	bnez	a7,80015374 <__adddf3+0x3cc>
800152dc:	00c765b3          	or	a1,a4,a2
800152e0:	fe0586e3          	beqz	a1,800152cc <__adddf3+0x324>
800152e4:	fff68593          	addi	a1,a3,-1
800152e8:	02059063          	bnez	a1,80015308 <__adddf3+0x360>
800152ec:	40c50633          	sub	a2,a0,a2
800152f0:	00c53533          	sltu	a0,a0,a2
800152f4:	40e787b3          	sub	a5,a5,a4
800152f8:	40a787b3          	sub	a5,a5,a0
800152fc:	00060513          	mv	a0,a2
80015300:	00100413          	li	s0,1
80015304:	0540006f          	j	80015358 <__adddf3+0x3b0>
80015308:	7ff00813          	li	a6,2047
8001530c:	d50680e3          	beq	a3,a6,8001504c <__adddf3+0xa4>
80015310:	03800693          	li	a3,56
80015314:	0ab6c663          	blt	a3,a1,800153c0 <__adddf3+0x418>
80015318:	01f00693          	li	a3,31
8001531c:	06b6c863          	blt	a3,a1,8001538c <__adddf3+0x3e4>
80015320:	02000813          	li	a6,32
80015324:	40b80833          	sub	a6,a6,a1
80015328:	010716b3          	sll	a3,a4,a6
8001532c:	00b658b3          	srl	a7,a2,a1
80015330:	01061633          	sll	a2,a2,a6
80015334:	0116e6b3          	or	a3,a3,a7
80015338:	00c03633          	snez	a2,a2
8001533c:	00c6e633          	or	a2,a3,a2
80015340:	00b75733          	srl	a4,a4,a1
80015344:	40c50633          	sub	a2,a0,a2
80015348:	40e78733          	sub	a4,a5,a4
8001534c:	00c537b3          	sltu	a5,a0,a2
80015350:	40f707b3          	sub	a5,a4,a5
80015354:	00060513          	mv	a0,a2
80015358:	00879713          	slli	a4,a5,0x8
8001535c:	f00750e3          	bgez	a4,8001525c <__adddf3+0x2b4>
80015360:	00800937          	lui	s2,0x800
80015364:	fff90913          	addi	s2,s2,-1 # 7fffff <font6x8-0x7f80002d>
80015368:	0127f933          	and	s2,a5,s2
8001536c:	00050993          	mv	s3,a0
80015370:	20c0006f          	j	8001557c <__adddf3+0x5d4>
80015374:	7ff00593          	li	a1,2047
80015378:	eeb402e3          	beq	s0,a1,8001525c <__adddf3+0x2b4>
8001537c:	008005b7          	lui	a1,0x800
80015380:	00b76733          	or	a4,a4,a1
80015384:	00068593          	mv	a1,a3
80015388:	f89ff06f          	j	80015310 <__adddf3+0x368>
8001538c:	fe058693          	addi	a3,a1,-32 # 7fffe0 <font6x8-0x7f80004c>
80015390:	02000893          	li	a7,32
80015394:	00d756b3          	srl	a3,a4,a3
80015398:	00000813          	li	a6,0
8001539c:	01158863          	beq	a1,a7,800153ac <__adddf3+0x404>
800153a0:	04000813          	li	a6,64
800153a4:	40b805b3          	sub	a1,a6,a1
800153a8:	00b71833          	sll	a6,a4,a1
800153ac:	00c86633          	or	a2,a6,a2
800153b0:	00c03633          	snez	a2,a2
800153b4:	00c6e633          	or	a2,a3,a2
800153b8:	00000713          	li	a4,0
800153bc:	f89ff06f          	j	80015344 <__adddf3+0x39c>
800153c0:	00c76633          	or	a2,a4,a2
800153c4:	00c03633          	snez	a2,a2
800153c8:	ff1ff06f          	j	800153b8 <__adddf3+0x410>
800153cc:	0e068863          	beqz	a3,800154bc <__adddf3+0x514>
800153d0:	40888833          	sub	a6,a7,s0
800153d4:	04041263          	bnez	s0,80015418 <__adddf3+0x470>
800153d8:	00a7e6b3          	or	a3,a5,a0
800153dc:	34068263          	beqz	a3,80015720 <__adddf3+0x778>
800153e0:	fff80693          	addi	a3,a6,-1
800153e4:	00069e63          	bnez	a3,80015400 <__adddf3+0x458>
800153e8:	40a60533          	sub	a0,a2,a0
800153ec:	40f707b3          	sub	a5,a4,a5
800153f0:	00a63633          	sltu	a2,a2,a0
800153f4:	40c787b3          	sub	a5,a5,a2
800153f8:	00058493          	mv	s1,a1
800153fc:	f05ff06f          	j	80015300 <__adddf3+0x358>
80015400:	7ff00313          	li	t1,2047
80015404:	02681463          	bne	a6,t1,8001542c <__adddf3+0x484>
80015408:	00070793          	mv	a5,a4
8001540c:	00060513          	mv	a0,a2
80015410:	7ff00413          	li	s0,2047
80015414:	0d00006f          	j	800154e4 <__adddf3+0x53c>
80015418:	7ff00693          	li	a3,2047
8001541c:	fed886e3          	beq	a7,a3,80015408 <__adddf3+0x460>
80015420:	008006b7          	lui	a3,0x800
80015424:	00d7e7b3          	or	a5,a5,a3
80015428:	00080693          	mv	a3,a6
8001542c:	03800813          	li	a6,56
80015430:	08d84063          	blt	a6,a3,800154b0 <__adddf3+0x508>
80015434:	01f00813          	li	a6,31
80015438:	04d84263          	blt	a6,a3,8001547c <__adddf3+0x4d4>
8001543c:	02000313          	li	t1,32
80015440:	40d30333          	sub	t1,t1,a3
80015444:	00d55e33          	srl	t3,a0,a3
80015448:	00679833          	sll	a6,a5,t1
8001544c:	00651533          	sll	a0,a0,t1
80015450:	01c86833          	or	a6,a6,t3
80015454:	00a03533          	snez	a0,a0
80015458:	00a86533          	or	a0,a6,a0
8001545c:	00d7d6b3          	srl	a3,a5,a3
80015460:	40a60533          	sub	a0,a2,a0
80015464:	40d707b3          	sub	a5,a4,a3
80015468:	00a63633          	sltu	a2,a2,a0
8001546c:	40c787b3          	sub	a5,a5,a2
80015470:	00088413          	mv	s0,a7
80015474:	00058493          	mv	s1,a1
80015478:	ee1ff06f          	j	80015358 <__adddf3+0x3b0>
8001547c:	fe068813          	addi	a6,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80015480:	02000e13          	li	t3,32
80015484:	0107d833          	srl	a6,a5,a6
80015488:	00000313          	li	t1,0
8001548c:	01c68863          	beq	a3,t3,8001549c <__adddf3+0x4f4>
80015490:	04000313          	li	t1,64
80015494:	40d306b3          	sub	a3,t1,a3
80015498:	00d79333          	sll	t1,a5,a3
8001549c:	00a36533          	or	a0,t1,a0
800154a0:	00a03533          	snez	a0,a0
800154a4:	00a86533          	or	a0,a6,a0
800154a8:	00000693          	li	a3,0
800154ac:	fb5ff06f          	j	80015460 <__adddf3+0x4b8>
800154b0:	00a7e533          	or	a0,a5,a0
800154b4:	00a03533          	snez	a0,a0
800154b8:	ff1ff06f          	j	800154a8 <__adddf3+0x500>
800154bc:	00140693          	addi	a3,s0,1
800154c0:	7fe6f693          	andi	a3,a3,2046
800154c4:	08069663          	bnez	a3,80015550 <__adddf3+0x5a8>
800154c8:	00a7e833          	or	a6,a5,a0
800154cc:	00c766b3          	or	a3,a4,a2
800154d0:	06041063          	bnez	s0,80015530 <__adddf3+0x588>
800154d4:	00081c63          	bnez	a6,800154ec <__adddf3+0x544>
800154d8:	24068c63          	beqz	a3,80015730 <__adddf3+0x788>
800154dc:	00070793          	mv	a5,a4
800154e0:	00060513          	mv	a0,a2
800154e4:	00058493          	mv	s1,a1
800154e8:	d75ff06f          	j	8001525c <__adddf3+0x2b4>
800154ec:	d60688e3          	beqz	a3,8001525c <__adddf3+0x2b4>
800154f0:	40c50833          	sub	a6,a0,a2
800154f4:	010538b3          	sltu	a7,a0,a6
800154f8:	40e786b3          	sub	a3,a5,a4
800154fc:	411686b3          	sub	a3,a3,a7
80015500:	00869893          	slli	a7,a3,0x8
80015504:	0008dc63          	bgez	a7,8001551c <__adddf3+0x574>
80015508:	40a60533          	sub	a0,a2,a0
8001550c:	40f707b3          	sub	a5,a4,a5
80015510:	00a63633          	sltu	a2,a2,a0
80015514:	40c787b3          	sub	a5,a5,a2
80015518:	fcdff06f          	j	800154e4 <__adddf3+0x53c>
8001551c:	00d86533          	or	a0,a6,a3
80015520:	22050063          	beqz	a0,80015740 <__adddf3+0x798>
80015524:	00068793          	mv	a5,a3
80015528:	00080513          	mv	a0,a6
8001552c:	d31ff06f          	j	8001525c <__adddf3+0x2b4>
80015530:	00081c63          	bnez	a6,80015548 <__adddf3+0x5a0>
80015534:	20068a63          	beqz	a3,80015748 <__adddf3+0x7a0>
80015538:	00070793          	mv	a5,a4
8001553c:	00060513          	mv	a0,a2
80015540:	00058493          	mv	s1,a1
80015544:	b09ff06f          	j	8001504c <__adddf3+0xa4>
80015548:	b00682e3          	beqz	a3,8001504c <__adddf3+0xa4>
8001554c:	d45ff06f          	j	80015290 <__adddf3+0x2e8>
80015550:	40c509b3          	sub	s3,a0,a2
80015554:	013536b3          	sltu	a3,a0,s3
80015558:	40e78933          	sub	s2,a5,a4
8001555c:	40d90933          	sub	s2,s2,a3
80015560:	00891693          	slli	a3,s2,0x8
80015564:	0806d463          	bgez	a3,800155ec <__adddf3+0x644>
80015568:	40a609b3          	sub	s3,a2,a0
8001556c:	40f707b3          	sub	a5,a4,a5
80015570:	01363633          	sltu	a2,a2,s3
80015574:	40c78933          	sub	s2,a5,a2
80015578:	00058493          	mv	s1,a1
8001557c:	08090263          	beqz	s2,80015600 <__adddf3+0x658>
80015580:	00090513          	mv	a0,s2
80015584:	5e1010ef          	jal	ra,80017364 <__clzsi2>
80015588:	ff850713          	addi	a4,a0,-8
8001558c:	01f00793          	li	a5,31
80015590:	08e7c063          	blt	a5,a4,80015610 <__adddf3+0x668>
80015594:	02000693          	li	a3,32
80015598:	40e686b3          	sub	a3,a3,a4
8001559c:	00e917b3          	sll	a5,s2,a4
800155a0:	00d9d6b3          	srl	a3,s3,a3
800155a4:	00f6e6b3          	or	a3,a3,a5
800155a8:	00e99533          	sll	a0,s3,a4
800155ac:	0a874463          	blt	a4,s0,80015654 <__adddf3+0x6ac>
800155b0:	40870733          	sub	a4,a4,s0
800155b4:	00170793          	addi	a5,a4,1
800155b8:	01f00613          	li	a2,31
800155bc:	06f64263          	blt	a2,a5,80015620 <__adddf3+0x678>
800155c0:	02000713          	li	a4,32
800155c4:	40f70733          	sub	a4,a4,a5
800155c8:	00f555b3          	srl	a1,a0,a5
800155cc:	00e69633          	sll	a2,a3,a4
800155d0:	00e51533          	sll	a0,a0,a4
800155d4:	00b66633          	or	a2,a2,a1
800155d8:	00a03533          	snez	a0,a0
800155dc:	00a66533          	or	a0,a2,a0
800155e0:	00f6d7b3          	srl	a5,a3,a5
800155e4:	00000413          	li	s0,0
800155e8:	c75ff06f          	j	8001525c <__adddf3+0x2b4>
800155ec:	0129e533          	or	a0,s3,s2
800155f0:	f80516e3          	bnez	a0,8001557c <__adddf3+0x5d4>
800155f4:	00000793          	li	a5,0
800155f8:	00000413          	li	s0,0
800155fc:	13c0006f          	j	80015738 <__adddf3+0x790>
80015600:	00098513          	mv	a0,s3
80015604:	561010ef          	jal	ra,80017364 <__clzsi2>
80015608:	02050513          	addi	a0,a0,32
8001560c:	f7dff06f          	j	80015588 <__adddf3+0x5e0>
80015610:	fd850513          	addi	a0,a0,-40
80015614:	00a996b3          	sll	a3,s3,a0
80015618:	00000513          	li	a0,0
8001561c:	f91ff06f          	j	800155ac <__adddf3+0x604>
80015620:	fe170713          	addi	a4,a4,-31
80015624:	02000593          	li	a1,32
80015628:	00e6d733          	srl	a4,a3,a4
8001562c:	00000613          	li	a2,0
80015630:	00b78863          	beq	a5,a1,80015640 <__adddf3+0x698>
80015634:	04000613          	li	a2,64
80015638:	40f60633          	sub	a2,a2,a5
8001563c:	00c69633          	sll	a2,a3,a2
80015640:	00c56533          	or	a0,a0,a2
80015644:	00a03533          	snez	a0,a0
80015648:	00a76533          	or	a0,a4,a0
8001564c:	00000793          	li	a5,0
80015650:	f95ff06f          	j	800155e4 <__adddf3+0x63c>
80015654:	ff8007b7          	lui	a5,0xff800
80015658:	fff78793          	addi	a5,a5,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
8001565c:	40e40433          	sub	s0,s0,a4
80015660:	00f6f7b3          	and	a5,a3,a5
80015664:	bf9ff06f          	j	8001525c <__adddf3+0x2b4>
80015668:	00070793          	mv	a5,a4
8001566c:	00060513          	mv	a0,a2
80015670:	00058413          	mv	s0,a1
80015674:	be9ff06f          	j	8001525c <__adddf3+0x2b4>
80015678:	00070793          	mv	a5,a4
8001567c:	00060513          	mv	a0,a2
80015680:	bddff06f          	j	8001525c <__adddf3+0x2b4>
80015684:	7ff00413          	li	s0,2047
80015688:	00000793          	li	a5,0
8001568c:	00000513          	li	a0,0
80015690:	00879713          	slli	a4,a5,0x8
80015694:	00075e63          	bgez	a4,800156b0 <__adddf3+0x708>
80015698:	00140413          	addi	s0,s0,1
8001569c:	7ff00713          	li	a4,2047
800156a0:	0ae40c63          	beq	s0,a4,80015758 <__adddf3+0x7b0>
800156a4:	ff800737          	lui	a4,0xff800
800156a8:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
800156ac:	00e7f7b3          	and	a5,a5,a4
800156b0:	01d79713          	slli	a4,a5,0x1d
800156b4:	00355513          	srli	a0,a0,0x3
800156b8:	00a76533          	or	a0,a4,a0
800156bc:	7ff00713          	li	a4,2047
800156c0:	0037d793          	srli	a5,a5,0x3
800156c4:	00e41e63          	bne	s0,a4,800156e0 <__adddf3+0x738>
800156c8:	00f56533          	or	a0,a0,a5
800156cc:	00000793          	li	a5,0
800156d0:	00050863          	beqz	a0,800156e0 <__adddf3+0x738>
800156d4:	000807b7          	lui	a5,0x80
800156d8:	00000513          	li	a0,0
800156dc:	00000493          	li	s1,0
800156e0:	01441713          	slli	a4,s0,0x14
800156e4:	7ff006b7          	lui	a3,0x7ff00
800156e8:	00c79793          	slli	a5,a5,0xc
800156ec:	01c12083          	lw	ra,28(sp)
800156f0:	01812403          	lw	s0,24(sp)
800156f4:	00d77733          	and	a4,a4,a3
800156f8:	00c7d793          	srli	a5,a5,0xc
800156fc:	01f49493          	slli	s1,s1,0x1f
80015700:	00f767b3          	or	a5,a4,a5
80015704:	0097e733          	or	a4,a5,s1
80015708:	01012903          	lw	s2,16(sp)
8001570c:	01412483          	lw	s1,20(sp)
80015710:	00c12983          	lw	s3,12(sp)
80015714:	00070593          	mv	a1,a4
80015718:	02010113          	addi	sp,sp,32
8001571c:	00008067          	ret
80015720:	00070793          	mv	a5,a4
80015724:	00060513          	mv	a0,a2
80015728:	00080413          	mv	s0,a6
8001572c:	db9ff06f          	j	800154e4 <__adddf3+0x53c>
80015730:	00000793          	li	a5,0
80015734:	00000513          	li	a0,0
80015738:	00000493          	li	s1,0
8001573c:	f55ff06f          	j	80015690 <__adddf3+0x6e8>
80015740:	00000793          	li	a5,0
80015744:	ff5ff06f          	j	80015738 <__adddf3+0x790>
80015748:	00000513          	li	a0,0
8001574c:	00000493          	li	s1,0
80015750:	004007b7          	lui	a5,0x400
80015754:	b49ff06f          	j	8001529c <__adddf3+0x2f4>
80015758:	00000793          	li	a5,0
8001575c:	00000513          	li	a0,0
80015760:	f51ff06f          	j	800156b0 <__adddf3+0x708>

80015764 <__divdf3>:
80015764:	fb010113          	addi	sp,sp,-80
80015768:	0145d793          	srli	a5,a1,0x14
8001576c:	04912223          	sw	s1,68(sp)
80015770:	03312e23          	sw	s3,60(sp)
80015774:	03412c23          	sw	s4,56(sp)
80015778:	03512a23          	sw	s5,52(sp)
8001577c:	03612823          	sw	s6,48(sp)
80015780:	00c59493          	slli	s1,a1,0xc
80015784:	04112623          	sw	ra,76(sp)
80015788:	04812423          	sw	s0,72(sp)
8001578c:	05212023          	sw	s2,64(sp)
80015790:	03712623          	sw	s7,44(sp)
80015794:	03812423          	sw	s8,40(sp)
80015798:	03912223          	sw	s9,36(sp)
8001579c:	03a12023          	sw	s10,32(sp)
800157a0:	01b12e23          	sw	s11,28(sp)
800157a4:	01579713          	slli	a4,a5,0x15
800157a8:	00050993          	mv	s3,a0
800157ac:	00060a13          	mv	s4,a2
800157b0:	00068b13          	mv	s6,a3
800157b4:	00c4d493          	srli	s1,s1,0xc
800157b8:	01f5da93          	srli	s5,a1,0x1f
800157bc:	0a070463          	beqz	a4,80015864 <__divdf3+0x100>
800157c0:	7ff7f913          	andi	s2,a5,2047
800157c4:	7ff00793          	li	a5,2047
800157c8:	10f90063          	beq	s2,a5,800158c8 <__divdf3+0x164>
800157cc:	01d55c93          	srli	s9,a0,0x1d
800157d0:	00349493          	slli	s1,s1,0x3
800157d4:	009ce4b3          	or	s1,s9,s1
800157d8:	00800cb7          	lui	s9,0x800
800157dc:	0194ecb3          	or	s9,s1,s9
800157e0:	00351413          	slli	s0,a0,0x3
800157e4:	c0190913          	addi	s2,s2,-1023
800157e8:	00000c13          	li	s8,0
800157ec:	014b5793          	srli	a5,s6,0x14
800157f0:	00cb1593          	slli	a1,s6,0xc
800157f4:	01579713          	slli	a4,a5,0x15
800157f8:	00c5d993          	srli	s3,a1,0xc
800157fc:	7ff7f513          	andi	a0,a5,2047
80015800:	01fb5b13          	srli	s6,s6,0x1f
80015804:	10070063          	beqz	a4,80015904 <__divdf3+0x1a0>
80015808:	7ff00793          	li	a5,2047
8001580c:	16f50063          	beq	a0,a5,8001596c <__divdf3+0x208>
80015810:	00399593          	slli	a1,s3,0x3
80015814:	01da5793          	srli	a5,s4,0x1d
80015818:	00b7e5b3          	or	a1,a5,a1
8001581c:	008009b7          	lui	s3,0x800
80015820:	0135e9b3          	or	s3,a1,s3
80015824:	003a1813          	slli	a6,s4,0x3
80015828:	c0150513          	addi	a0,a0,-1023
8001582c:	00000693          	li	a3,0
80015830:	002c1793          	slli	a5,s8,0x2
80015834:	00d7e7b3          	or	a5,a5,a3
80015838:	fff78793          	addi	a5,a5,-1 # 3fffff <font6x8-0x7fc0002d>
8001583c:	00e00713          	li	a4,14
80015840:	016ac4b3          	xor	s1,s5,s6
80015844:	40a90933          	sub	s2,s2,a0
80015848:	14f76e63          	bltu	a4,a5,800159a4 <__divdf3+0x240>
8001584c:	80000737          	lui	a4,0x80000
80015850:	00279793          	slli	a5,a5,0x2
80015854:	56070713          	addi	a4,a4,1376 # 80000560 <__clzsi2+0xfffe91fc>
80015858:	00e787b3          	add	a5,a5,a4
8001585c:	0007a783          	lw	a5,0(a5)
80015860:	00078067          	jr	a5
80015864:	00a4ecb3          	or	s9,s1,a0
80015868:	060c8e63          	beqz	s9,800158e4 <__divdf3+0x180>
8001586c:	04048063          	beqz	s1,800158ac <__divdf3+0x148>
80015870:	00048513          	mv	a0,s1
80015874:	2f1010ef          	jal	ra,80017364 <__clzsi2>
80015878:	ff550793          	addi	a5,a0,-11
8001587c:	01c00713          	li	a4,28
80015880:	02f74c63          	blt	a4,a5,800158b8 <__divdf3+0x154>
80015884:	01d00c93          	li	s9,29
80015888:	ff850413          	addi	s0,a0,-8
8001588c:	40fc8cb3          	sub	s9,s9,a5
80015890:	008494b3          	sll	s1,s1,s0
80015894:	0199dcb3          	srl	s9,s3,s9
80015898:	009cecb3          	or	s9,s9,s1
8001589c:	00899433          	sll	s0,s3,s0
800158a0:	c0d00913          	li	s2,-1011
800158a4:	40a90933          	sub	s2,s2,a0
800158a8:	f41ff06f          	j	800157e8 <__divdf3+0x84>
800158ac:	2b9010ef          	jal	ra,80017364 <__clzsi2>
800158b0:	02050513          	addi	a0,a0,32
800158b4:	fc5ff06f          	j	80015878 <__divdf3+0x114>
800158b8:	fd850493          	addi	s1,a0,-40
800158bc:	00999cb3          	sll	s9,s3,s1
800158c0:	00000413          	li	s0,0
800158c4:	fddff06f          	j	800158a0 <__divdf3+0x13c>
800158c8:	00a4ecb3          	or	s9,s1,a0
800158cc:	020c8463          	beqz	s9,800158f4 <__divdf3+0x190>
800158d0:	00050413          	mv	s0,a0
800158d4:	00048c93          	mv	s9,s1
800158d8:	7ff00913          	li	s2,2047
800158dc:	00300c13          	li	s8,3
800158e0:	f0dff06f          	j	800157ec <__divdf3+0x88>
800158e4:	00000413          	li	s0,0
800158e8:	00000913          	li	s2,0
800158ec:	00100c13          	li	s8,1
800158f0:	efdff06f          	j	800157ec <__divdf3+0x88>
800158f4:	00000413          	li	s0,0
800158f8:	7ff00913          	li	s2,2047
800158fc:	00200c13          	li	s8,2
80015900:	eedff06f          	j	800157ec <__divdf3+0x88>
80015904:	0149e833          	or	a6,s3,s4
80015908:	06080e63          	beqz	a6,80015984 <__divdf3+0x220>
8001590c:	04098063          	beqz	s3,8001594c <__divdf3+0x1e8>
80015910:	00098513          	mv	a0,s3
80015914:	251010ef          	jal	ra,80017364 <__clzsi2>
80015918:	ff550793          	addi	a5,a0,-11
8001591c:	01c00713          	li	a4,28
80015920:	02f74e63          	blt	a4,a5,8001595c <__divdf3+0x1f8>
80015924:	01d00693          	li	a3,29
80015928:	ff850813          	addi	a6,a0,-8
8001592c:	40f686b3          	sub	a3,a3,a5
80015930:	010995b3          	sll	a1,s3,a6
80015934:	00da56b3          	srl	a3,s4,a3
80015938:	00b6e9b3          	or	s3,a3,a1
8001593c:	010a1833          	sll	a6,s4,a6
80015940:	c0d00713          	li	a4,-1011
80015944:	40a70533          	sub	a0,a4,a0
80015948:	ee5ff06f          	j	8001582c <__divdf3+0xc8>
8001594c:	000a0513          	mv	a0,s4
80015950:	215010ef          	jal	ra,80017364 <__clzsi2>
80015954:	02050513          	addi	a0,a0,32
80015958:	fc1ff06f          	j	80015918 <__divdf3+0x1b4>
8001595c:	fd850593          	addi	a1,a0,-40
80015960:	00ba19b3          	sll	s3,s4,a1
80015964:	00000813          	li	a6,0
80015968:	fd9ff06f          	j	80015940 <__divdf3+0x1dc>
8001596c:	0149e833          	or	a6,s3,s4
80015970:	02080263          	beqz	a6,80015994 <__divdf3+0x230>
80015974:	000a0813          	mv	a6,s4
80015978:	7ff00513          	li	a0,2047
8001597c:	00300693          	li	a3,3
80015980:	eb1ff06f          	j	80015830 <__divdf3+0xcc>
80015984:	00000993          	li	s3,0
80015988:	00000513          	li	a0,0
8001598c:	00100693          	li	a3,1
80015990:	ea1ff06f          	j	80015830 <__divdf3+0xcc>
80015994:	00000993          	li	s3,0
80015998:	7ff00513          	li	a0,2047
8001599c:	00200693          	li	a3,2
800159a0:	e91ff06f          	j	80015830 <__divdf3+0xcc>
800159a4:	0199e663          	bltu	s3,s9,800159b0 <__divdf3+0x24c>
800159a8:	453c9463          	bne	s9,s3,80015df0 <__divdf3+0x68c>
800159ac:	45046263          	bltu	s0,a6,80015df0 <__divdf3+0x68c>
800159b0:	01fc9713          	slli	a4,s9,0x1f
800159b4:	00145793          	srli	a5,s0,0x1
800159b8:	01f41d93          	slli	s11,s0,0x1f
800159bc:	001cdc93          	srli	s9,s9,0x1
800159c0:	00f76433          	or	s0,a4,a5
800159c4:	00899593          	slli	a1,s3,0x8
800159c8:	01885a93          	srli	s5,a6,0x18
800159cc:	00baeab3          	or	s5,s5,a1
800159d0:	0105db93          	srli	s7,a1,0x10
800159d4:	000b8593          	mv	a1,s7
800159d8:	010a9c13          	slli	s8,s5,0x10
800159dc:	000c8513          	mv	a0,s9
800159e0:	00881b13          	slli	s6,a6,0x8
800159e4:	010c5c13          	srli	s8,s8,0x10
800159e8:	0d1010ef          	jal	ra,800172b8 <__udivsi3>
800159ec:	00050593          	mv	a1,a0
800159f0:	00050d13          	mv	s10,a0
800159f4:	000c0513          	mv	a0,s8
800159f8:	005010ef          	jal	ra,800171fc <__mulsi3>
800159fc:	00050993          	mv	s3,a0
80015a00:	000b8593          	mv	a1,s7
80015a04:	000c8513          	mv	a0,s9
80015a08:	0f9010ef          	jal	ra,80017300 <__umodsi3>
80015a0c:	01051513          	slli	a0,a0,0x10
80015a10:	01045713          	srli	a4,s0,0x10
80015a14:	00a76733          	or	a4,a4,a0
80015a18:	000d0a13          	mv	s4,s10
80015a1c:	01377e63          	bgeu	a4,s3,80015a38 <__divdf3+0x2d4>
80015a20:	01570733          	add	a4,a4,s5
80015a24:	fffd0a13          	addi	s4,s10,-1
80015a28:	01576863          	bltu	a4,s5,80015a38 <__divdf3+0x2d4>
80015a2c:	01377663          	bgeu	a4,s3,80015a38 <__divdf3+0x2d4>
80015a30:	ffed0a13          	addi	s4,s10,-2
80015a34:	01570733          	add	a4,a4,s5
80015a38:	413709b3          	sub	s3,a4,s3
80015a3c:	000b8593          	mv	a1,s7
80015a40:	00098513          	mv	a0,s3
80015a44:	075010ef          	jal	ra,800172b8 <__udivsi3>
80015a48:	00050593          	mv	a1,a0
80015a4c:	00050d13          	mv	s10,a0
80015a50:	000c0513          	mv	a0,s8
80015a54:	7a8010ef          	jal	ra,800171fc <__mulsi3>
80015a58:	00050c93          	mv	s9,a0
80015a5c:	000b8593          	mv	a1,s7
80015a60:	00098513          	mv	a0,s3
80015a64:	09d010ef          	jal	ra,80017300 <__umodsi3>
80015a68:	01041413          	slli	s0,s0,0x10
80015a6c:	01051513          	slli	a0,a0,0x10
80015a70:	01045413          	srli	s0,s0,0x10
80015a74:	00a46433          	or	s0,s0,a0
80015a78:	000d0793          	mv	a5,s10
80015a7c:	01947e63          	bgeu	s0,s9,80015a98 <__divdf3+0x334>
80015a80:	01540433          	add	s0,s0,s5
80015a84:	fffd0793          	addi	a5,s10,-1
80015a88:	01546863          	bltu	s0,s5,80015a98 <__divdf3+0x334>
80015a8c:	01947663          	bgeu	s0,s9,80015a98 <__divdf3+0x334>
80015a90:	ffed0793          	addi	a5,s10,-2
80015a94:	01540433          	add	s0,s0,s5
80015a98:	010a1813          	slli	a6,s4,0x10
80015a9c:	00010337          	lui	t1,0x10
80015aa0:	00f86833          	or	a6,a6,a5
80015aa4:	41940433          	sub	s0,s0,s9
80015aa8:	fff30c93          	addi	s9,t1,-1 # ffff <font6x8-0x7fff002d>
80015aac:	019878b3          	and	a7,a6,s9
80015ab0:	019b7cb3          	and	s9,s6,s9
80015ab4:	01085713          	srli	a4,a6,0x10
80015ab8:	010b5d13          	srli	s10,s6,0x10
80015abc:	00088513          	mv	a0,a7
80015ac0:	000c8593          	mv	a1,s9
80015ac4:	738010ef          	jal	ra,800171fc <__mulsi3>
80015ac8:	00050793          	mv	a5,a0
80015acc:	000d0593          	mv	a1,s10
80015ad0:	00088513          	mv	a0,a7
80015ad4:	728010ef          	jal	ra,800171fc <__mulsi3>
80015ad8:	00050a13          	mv	s4,a0
80015adc:	000c8593          	mv	a1,s9
80015ae0:	00070513          	mv	a0,a4
80015ae4:	718010ef          	jal	ra,800171fc <__mulsi3>
80015ae8:	00050893          	mv	a7,a0
80015aec:	000d0593          	mv	a1,s10
80015af0:	00070513          	mv	a0,a4
80015af4:	708010ef          	jal	ra,800171fc <__mulsi3>
80015af8:	0107d713          	srli	a4,a5,0x10
80015afc:	011a0a33          	add	s4,s4,a7
80015b00:	01470733          	add	a4,a4,s4
80015b04:	01177463          	bgeu	a4,a7,80015b0c <__divdf3+0x3a8>
80015b08:	00650533          	add	a0,a0,t1
80015b0c:	01075693          	srli	a3,a4,0x10
80015b10:	00a686b3          	add	a3,a3,a0
80015b14:	00010537          	lui	a0,0x10
80015b18:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80015b1c:	00a77a33          	and	s4,a4,a0
80015b20:	010a1a13          	slli	s4,s4,0x10
80015b24:	00a7f7b3          	and	a5,a5,a0
80015b28:	00fa0a33          	add	s4,s4,a5
80015b2c:	00d46863          	bltu	s0,a3,80015b3c <__divdf3+0x3d8>
80015b30:	00080993          	mv	s3,a6
80015b34:	04d41463          	bne	s0,a3,80015b7c <__divdf3+0x418>
80015b38:	054df263          	bgeu	s11,s4,80015b7c <__divdf3+0x418>
80015b3c:	016d8db3          	add	s11,s11,s6
80015b40:	016db7b3          	sltu	a5,s11,s6
80015b44:	015787b3          	add	a5,a5,s5
80015b48:	00f40433          	add	s0,s0,a5
80015b4c:	fff80993          	addi	s3,a6,-1
80015b50:	008ae663          	bltu	s5,s0,80015b5c <__divdf3+0x3f8>
80015b54:	028a9463          	bne	s5,s0,80015b7c <__divdf3+0x418>
80015b58:	036de263          	bltu	s11,s6,80015b7c <__divdf3+0x418>
80015b5c:	00d46663          	bltu	s0,a3,80015b68 <__divdf3+0x404>
80015b60:	00869e63          	bne	a3,s0,80015b7c <__divdf3+0x418>
80015b64:	014dfc63          	bgeu	s11,s4,80015b7c <__divdf3+0x418>
80015b68:	016d8db3          	add	s11,s11,s6
80015b6c:	016db7b3          	sltu	a5,s11,s6
80015b70:	015787b3          	add	a5,a5,s5
80015b74:	ffe80993          	addi	s3,a6,-2
80015b78:	00f40433          	add	s0,s0,a5
80015b7c:	414d8a33          	sub	s4,s11,s4
80015b80:	40d40433          	sub	s0,s0,a3
80015b84:	014db7b3          	sltu	a5,s11,s4
80015b88:	40f40433          	sub	s0,s0,a5
80015b8c:	fff00813          	li	a6,-1
80015b90:	1a8a8063          	beq	s5,s0,80015d30 <__divdf3+0x5cc>
80015b94:	000b8593          	mv	a1,s7
80015b98:	00040513          	mv	a0,s0
80015b9c:	71c010ef          	jal	ra,800172b8 <__udivsi3>
80015ba0:	00050593          	mv	a1,a0
80015ba4:	00a12623          	sw	a0,12(sp)
80015ba8:	000c0513          	mv	a0,s8
80015bac:	650010ef          	jal	ra,800171fc <__mulsi3>
80015bb0:	00a12423          	sw	a0,8(sp)
80015bb4:	000b8593          	mv	a1,s7
80015bb8:	00040513          	mv	a0,s0
80015bbc:	744010ef          	jal	ra,80017300 <__umodsi3>
80015bc0:	00c12683          	lw	a3,12(sp)
80015bc4:	00812703          	lw	a4,8(sp)
80015bc8:	01051513          	slli	a0,a0,0x10
80015bcc:	010a5793          	srli	a5,s4,0x10
80015bd0:	00a7e7b3          	or	a5,a5,a0
80015bd4:	00068d93          	mv	s11,a3
80015bd8:	00e7fe63          	bgeu	a5,a4,80015bf4 <__divdf3+0x490>
80015bdc:	015787b3          	add	a5,a5,s5
80015be0:	fff68d93          	addi	s11,a3,-1 # 7fefffff <font6x8-0x10002d>
80015be4:	0157e863          	bltu	a5,s5,80015bf4 <__divdf3+0x490>
80015be8:	00e7f663          	bgeu	a5,a4,80015bf4 <__divdf3+0x490>
80015bec:	ffe68d93          	addi	s11,a3,-2
80015bf0:	015787b3          	add	a5,a5,s5
80015bf4:	40e78433          	sub	s0,a5,a4
80015bf8:	000b8593          	mv	a1,s7
80015bfc:	00040513          	mv	a0,s0
80015c00:	6b8010ef          	jal	ra,800172b8 <__udivsi3>
80015c04:	00050593          	mv	a1,a0
80015c08:	00a12423          	sw	a0,8(sp)
80015c0c:	000c0513          	mv	a0,s8
80015c10:	5ec010ef          	jal	ra,800171fc <__mulsi3>
80015c14:	00050c13          	mv	s8,a0
80015c18:	000b8593          	mv	a1,s7
80015c1c:	00040513          	mv	a0,s0
80015c20:	6e0010ef          	jal	ra,80017300 <__umodsi3>
80015c24:	00812703          	lw	a4,8(sp)
80015c28:	010a1a13          	slli	s4,s4,0x10
80015c2c:	01051793          	slli	a5,a0,0x10
80015c30:	010a5a13          	srli	s4,s4,0x10
80015c34:	00fa67b3          	or	a5,s4,a5
80015c38:	00070693          	mv	a3,a4
80015c3c:	0187fe63          	bgeu	a5,s8,80015c58 <__divdf3+0x4f4>
80015c40:	015787b3          	add	a5,a5,s5
80015c44:	fff70693          	addi	a3,a4,-1
80015c48:	0157e863          	bltu	a5,s5,80015c58 <__divdf3+0x4f4>
80015c4c:	0187f663          	bgeu	a5,s8,80015c58 <__divdf3+0x4f4>
80015c50:	ffe70693          	addi	a3,a4,-2
80015c54:	015787b3          	add	a5,a5,s5
80015c58:	010d9893          	slli	a7,s11,0x10
80015c5c:	00d8e8b3          	or	a7,a7,a3
80015c60:	01089313          	slli	t1,a7,0x10
80015c64:	01035313          	srli	t1,t1,0x10
80015c68:	418787b3          	sub	a5,a5,s8
80015c6c:	0108d713          	srli	a4,a7,0x10
80015c70:	00030513          	mv	a0,t1
80015c74:	000c8593          	mv	a1,s9
80015c78:	584010ef          	jal	ra,800171fc <__mulsi3>
80015c7c:	00050813          	mv	a6,a0
80015c80:	000d0593          	mv	a1,s10
80015c84:	00030513          	mv	a0,t1
80015c88:	574010ef          	jal	ra,800171fc <__mulsi3>
80015c8c:	00050313          	mv	t1,a0
80015c90:	000c8593          	mv	a1,s9
80015c94:	00070513          	mv	a0,a4
80015c98:	564010ef          	jal	ra,800171fc <__mulsi3>
80015c9c:	00050e13          	mv	t3,a0
80015ca0:	000d0593          	mv	a1,s10
80015ca4:	00070513          	mv	a0,a4
80015ca8:	554010ef          	jal	ra,800171fc <__mulsi3>
80015cac:	01085713          	srli	a4,a6,0x10
80015cb0:	01c30333          	add	t1,t1,t3
80015cb4:	00670733          	add	a4,a4,t1
80015cb8:	01c77663          	bgeu	a4,t3,80015cc4 <__divdf3+0x560>
80015cbc:	000106b7          	lui	a3,0x10
80015cc0:	00d50533          	add	a0,a0,a3
80015cc4:	01075593          	srli	a1,a4,0x10
80015cc8:	00a585b3          	add	a1,a1,a0
80015ccc:	00010537          	lui	a0,0x10
80015cd0:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80015cd4:	00a776b3          	and	a3,a4,a0
80015cd8:	01069693          	slli	a3,a3,0x10
80015cdc:	00a87833          	and	a6,a6,a0
80015ce0:	010686b3          	add	a3,a3,a6
80015ce4:	00b7e863          	bltu	a5,a1,80015cf4 <__divdf3+0x590>
80015ce8:	24b79663          	bne	a5,a1,80015f34 <__divdf3+0x7d0>
80015cec:	00088813          	mv	a6,a7
80015cf0:	04068063          	beqz	a3,80015d30 <__divdf3+0x5cc>
80015cf4:	00fa8633          	add	a2,s5,a5
80015cf8:	fff88813          	addi	a6,a7,-1
80015cfc:	03566463          	bltu	a2,s5,80015d24 <__divdf3+0x5c0>
80015d00:	00b66663          	bltu	a2,a1,80015d0c <__divdf3+0x5a8>
80015d04:	22b61663          	bne	a2,a1,80015f30 <__divdf3+0x7cc>
80015d08:	02db7063          	bgeu	s6,a3,80015d28 <__divdf3+0x5c4>
80015d0c:	001b1793          	slli	a5,s6,0x1
80015d10:	0167bb33          	sltu	s6,a5,s6
80015d14:	015b0ab3          	add	s5,s6,s5
80015d18:	ffe88813          	addi	a6,a7,-2
80015d1c:	01560633          	add	a2,a2,s5
80015d20:	00078b13          	mv	s6,a5
80015d24:	00b61463          	bne	a2,a1,80015d2c <__divdf3+0x5c8>
80015d28:	00db0463          	beq	s6,a3,80015d30 <__divdf3+0x5cc>
80015d2c:	00186813          	ori	a6,a6,1
80015d30:	3ff90793          	addi	a5,s2,1023
80015d34:	10f05e63          	blez	a5,80015e50 <__divdf3+0x6ec>
80015d38:	00787713          	andi	a4,a6,7
80015d3c:	02070063          	beqz	a4,80015d5c <__divdf3+0x5f8>
80015d40:	00f87713          	andi	a4,a6,15
80015d44:	00400693          	li	a3,4
80015d48:	00d70a63          	beq	a4,a3,80015d5c <__divdf3+0x5f8>
80015d4c:	00480693          	addi	a3,a6,4
80015d50:	0106b833          	sltu	a6,a3,a6
80015d54:	010989b3          	add	s3,s3,a6
80015d58:	00068813          	mv	a6,a3
80015d5c:	00799713          	slli	a4,s3,0x7
80015d60:	00075a63          	bgez	a4,80015d74 <__divdf3+0x610>
80015d64:	ff0007b7          	lui	a5,0xff000
80015d68:	fff78793          	addi	a5,a5,-1 # feffffff <__clzsi2+0x7efe8c9b>
80015d6c:	00f9f9b3          	and	s3,s3,a5
80015d70:	40090793          	addi	a5,s2,1024
80015d74:	7fe00713          	li	a4,2046
80015d78:	0af74663          	blt	a4,a5,80015e24 <__divdf3+0x6c0>
80015d7c:	00385813          	srli	a6,a6,0x3
80015d80:	01d99713          	slli	a4,s3,0x1d
80015d84:	01076733          	or	a4,a4,a6
80015d88:	0039d593          	srli	a1,s3,0x3
80015d8c:	01479793          	slli	a5,a5,0x14
80015d90:	7ff006b7          	lui	a3,0x7ff00
80015d94:	00c59593          	slli	a1,a1,0xc
80015d98:	04c12083          	lw	ra,76(sp)
80015d9c:	04812403          	lw	s0,72(sp)
80015da0:	00d7f7b3          	and	a5,a5,a3
80015da4:	00c5d593          	srli	a1,a1,0xc
80015da8:	00b7e5b3          	or	a1,a5,a1
80015dac:	01f49493          	slli	s1,s1,0x1f
80015db0:	0095e7b3          	or	a5,a1,s1
80015db4:	04012903          	lw	s2,64(sp)
80015db8:	04412483          	lw	s1,68(sp)
80015dbc:	03c12983          	lw	s3,60(sp)
80015dc0:	03812a03          	lw	s4,56(sp)
80015dc4:	03412a83          	lw	s5,52(sp)
80015dc8:	03012b03          	lw	s6,48(sp)
80015dcc:	02c12b83          	lw	s7,44(sp)
80015dd0:	02812c03          	lw	s8,40(sp)
80015dd4:	02412c83          	lw	s9,36(sp)
80015dd8:	02012d03          	lw	s10,32(sp)
80015ddc:	01c12d83          	lw	s11,28(sp)
80015de0:	00070513          	mv	a0,a4
80015de4:	00078593          	mv	a1,a5
80015de8:	05010113          	addi	sp,sp,80
80015dec:	00008067          	ret
80015df0:	fff90913          	addi	s2,s2,-1
80015df4:	00000d93          	li	s11,0
80015df8:	bcdff06f          	j	800159c4 <__divdf3+0x260>
80015dfc:	000a8493          	mv	s1,s5
80015e00:	000c8993          	mv	s3,s9
80015e04:	00040813          	mv	a6,s0
80015e08:	000c0693          	mv	a3,s8
80015e0c:	00300793          	li	a5,3
80015e10:	0ef68863          	beq	a3,a5,80015f00 <__divdf3+0x79c>
80015e14:	00100793          	li	a5,1
80015e18:	0ef68e63          	beq	a3,a5,80015f14 <__divdf3+0x7b0>
80015e1c:	00200793          	li	a5,2
80015e20:	f0f698e3          	bne	a3,a5,80015d30 <__divdf3+0x5cc>
80015e24:	00000593          	li	a1,0
80015e28:	00000713          	li	a4,0
80015e2c:	7ff00793          	li	a5,2047
80015e30:	f5dff06f          	j	80015d8c <__divdf3+0x628>
80015e34:	000b0493          	mv	s1,s6
80015e38:	fd5ff06f          	j	80015e0c <__divdf3+0x6a8>
80015e3c:	000809b7          	lui	s3,0x80
80015e40:	00000813          	li	a6,0
80015e44:	00000493          	li	s1,0
80015e48:	00300693          	li	a3,3
80015e4c:	fc1ff06f          	j	80015e0c <__divdf3+0x6a8>
80015e50:	00100593          	li	a1,1
80015e54:	40f585b3          	sub	a1,a1,a5
80015e58:	03800713          	li	a4,56
80015e5c:	0ab74c63          	blt	a4,a1,80015f14 <__divdf3+0x7b0>
80015e60:	01f00713          	li	a4,31
80015e64:	06b74463          	blt	a4,a1,80015ecc <__divdf3+0x768>
80015e68:	41e90913          	addi	s2,s2,1054
80015e6c:	012997b3          	sll	a5,s3,s2
80015e70:	00b85733          	srl	a4,a6,a1
80015e74:	01281933          	sll	s2,a6,s2
80015e78:	00e7e7b3          	or	a5,a5,a4
80015e7c:	01203933          	snez	s2,s2
80015e80:	0127e7b3          	or	a5,a5,s2
80015e84:	00b9d5b3          	srl	a1,s3,a1
80015e88:	0077f713          	andi	a4,a5,7
80015e8c:	02070063          	beqz	a4,80015eac <__divdf3+0x748>
80015e90:	00f7f713          	andi	a4,a5,15
80015e94:	00400693          	li	a3,4
80015e98:	00d70a63          	beq	a4,a3,80015eac <__divdf3+0x748>
80015e9c:	00478713          	addi	a4,a5,4
80015ea0:	00f737b3          	sltu	a5,a4,a5
80015ea4:	00f585b3          	add	a1,a1,a5
80015ea8:	00070793          	mv	a5,a4
80015eac:	00859713          	slli	a4,a1,0x8
80015eb0:	06074863          	bltz	a4,80015f20 <__divdf3+0x7bc>
80015eb4:	01d59713          	slli	a4,a1,0x1d
80015eb8:	0037d793          	srli	a5,a5,0x3
80015ebc:	00f76733          	or	a4,a4,a5
80015ec0:	0035d593          	srli	a1,a1,0x3
80015ec4:	00000793          	li	a5,0
80015ec8:	ec5ff06f          	j	80015d8c <__divdf3+0x628>
80015ecc:	fe100713          	li	a4,-31
80015ed0:	40f707b3          	sub	a5,a4,a5
80015ed4:	02000693          	li	a3,32
80015ed8:	00f9d7b3          	srl	a5,s3,a5
80015edc:	00000713          	li	a4,0
80015ee0:	00d58663          	beq	a1,a3,80015eec <__divdf3+0x788>
80015ee4:	43e90913          	addi	s2,s2,1086
80015ee8:	01299733          	sll	a4,s3,s2
80015eec:	01076733          	or	a4,a4,a6
80015ef0:	00e03733          	snez	a4,a4
80015ef4:	00e7e7b3          	or	a5,a5,a4
80015ef8:	00000593          	li	a1,0
80015efc:	f8dff06f          	j	80015e88 <__divdf3+0x724>
80015f00:	000805b7          	lui	a1,0x80
80015f04:	00000713          	li	a4,0
80015f08:	7ff00793          	li	a5,2047
80015f0c:	00000493          	li	s1,0
80015f10:	e7dff06f          	j	80015d8c <__divdf3+0x628>
80015f14:	00000593          	li	a1,0
80015f18:	00000713          	li	a4,0
80015f1c:	fa9ff06f          	j	80015ec4 <__divdf3+0x760>
80015f20:	00000593          	li	a1,0
80015f24:	00000713          	li	a4,0
80015f28:	00100793          	li	a5,1
80015f2c:	e61ff06f          	j	80015d8c <__divdf3+0x628>
80015f30:	00080893          	mv	a7,a6
80015f34:	00088813          	mv	a6,a7
80015f38:	df5ff06f          	j	80015d2c <__divdf3+0x5c8>

80015f3c <__eqdf2>:
80015f3c:	0145d713          	srli	a4,a1,0x14
80015f40:	001007b7          	lui	a5,0x100
80015f44:	fff78793          	addi	a5,a5,-1 # fffff <font6x8-0x7ff0002d>
80015f48:	0146d813          	srli	a6,a3,0x14
80015f4c:	00050313          	mv	t1,a0
80015f50:	00050e93          	mv	t4,a0
80015f54:	7ff77713          	andi	a4,a4,2047
80015f58:	7ff00513          	li	a0,2047
80015f5c:	00b7f8b3          	and	a7,a5,a1
80015f60:	00060f13          	mv	t5,a2
80015f64:	00d7f7b3          	and	a5,a5,a3
80015f68:	01f5d593          	srli	a1,a1,0x1f
80015f6c:	7ff87813          	andi	a6,a6,2047
80015f70:	01f6d693          	srli	a3,a3,0x1f
80015f74:	00a71c63          	bne	a4,a0,80015f8c <__eqdf2+0x50>
80015f78:	0068ee33          	or	t3,a7,t1
80015f7c:	00100513          	li	a0,1
80015f80:	000e1463          	bnez	t3,80015f88 <__eqdf2+0x4c>
80015f84:	00e80663          	beq	a6,a4,80015f90 <__eqdf2+0x54>
80015f88:	00008067          	ret
80015f8c:	00a81863          	bne	a6,a0,80015f9c <__eqdf2+0x60>
80015f90:	00c7e633          	or	a2,a5,a2
80015f94:	00100513          	li	a0,1
80015f98:	fe0618e3          	bnez	a2,80015f88 <__eqdf2+0x4c>
80015f9c:	00100513          	li	a0,1
80015fa0:	ff0714e3          	bne	a4,a6,80015f88 <__eqdf2+0x4c>
80015fa4:	fef892e3          	bne	a7,a5,80015f88 <__eqdf2+0x4c>
80015fa8:	ffee90e3          	bne	t4,t5,80015f88 <__eqdf2+0x4c>
80015fac:	00d58a63          	beq	a1,a3,80015fc0 <__eqdf2+0x84>
80015fb0:	fc071ce3          	bnez	a4,80015f88 <__eqdf2+0x4c>
80015fb4:	0068e533          	or	a0,a7,t1
80015fb8:	00a03533          	snez	a0,a0
80015fbc:	00008067          	ret
80015fc0:	00000513          	li	a0,0
80015fc4:	00008067          	ret

80015fc8 <__gedf2>:
80015fc8:	00100737          	lui	a4,0x100
80015fcc:	fff70713          	addi	a4,a4,-1 # fffff <font6x8-0x7ff0002d>
80015fd0:	0145d813          	srli	a6,a1,0x14
80015fd4:	00b778b3          	and	a7,a4,a1
80015fd8:	00050793          	mv	a5,a0
80015fdc:	00050313          	mv	t1,a0
80015fe0:	7ff87813          	andi	a6,a6,2047
80015fe4:	01f5d513          	srli	a0,a1,0x1f
80015fe8:	7ff00e93          	li	t4,2047
80015fec:	0146d593          	srli	a1,a3,0x14
80015ff0:	00d77733          	and	a4,a4,a3
80015ff4:	00060e13          	mv	t3,a2
80015ff8:	7ff5f593          	andi	a1,a1,2047
80015ffc:	01f6d693          	srli	a3,a3,0x1f
80016000:	01d81a63          	bne	a6,t4,80016014 <__gedf2+0x4c>
80016004:	00f8eeb3          	or	t4,a7,a5
80016008:	080e8a63          	beqz	t4,8001609c <__gedf2+0xd4>
8001600c:	ffe00513          	li	a0,-2
80016010:	00008067          	ret
80016014:	01d59663          	bne	a1,t4,80016020 <__gedf2+0x58>
80016018:	00c76eb3          	or	t4,a4,a2
8001601c:	fe0e98e3          	bnez	t4,8001600c <__gedf2+0x44>
80016020:	08081063          	bnez	a6,800160a0 <__gedf2+0xd8>
80016024:	00f8e7b3          	or	a5,a7,a5
80016028:	0017b793          	seqz	a5,a5
8001602c:	00059663          	bnez	a1,80016038 <__gedf2+0x70>
80016030:	00c76633          	or	a2,a4,a2
80016034:	04060c63          	beqz	a2,8001608c <__gedf2+0xc4>
80016038:	00079c63          	bnez	a5,80016050 <__gedf2+0x88>
8001603c:	00d51463          	bne	a0,a3,80016044 <__gedf2+0x7c>
80016040:	0305d063          	bge	a1,a6,80016060 <__gedf2+0x98>
80016044:	04050063          	beqz	a0,80016084 <__gedf2+0xbc>
80016048:	fff00513          	li	a0,-1
8001604c:	00008067          	ret
80016050:	fff00513          	li	a0,-1
80016054:	00068a63          	beqz	a3,80016068 <__gedf2+0xa0>
80016058:	00068513          	mv	a0,a3
8001605c:	00008067          	ret
80016060:	00b85663          	bge	a6,a1,8001606c <__gedf2+0xa4>
80016064:	fe0502e3          	beqz	a0,80016048 <__gedf2+0x80>
80016068:	00008067          	ret
8001606c:	fd176ce3          	bltu	a4,a7,80016044 <__gedf2+0x7c>
80016070:	02e89263          	bne	a7,a4,80016094 <__gedf2+0xcc>
80016074:	fc6e68e3          	bltu	t3,t1,80016044 <__gedf2+0x7c>
80016078:	ffc366e3          	bltu	t1,t3,80016064 <__gedf2+0x9c>
8001607c:	00000513          	li	a0,0
80016080:	00008067          	ret
80016084:	00100513          	li	a0,1
80016088:	00008067          	ret
8001608c:	fe0798e3          	bnez	a5,8001607c <__gedf2+0xb4>
80016090:	fb5ff06f          	j	80016044 <__gedf2+0x7c>
80016094:	fce8e8e3          	bltu	a7,a4,80016064 <__gedf2+0x9c>
80016098:	fe5ff06f          	j	8001607c <__gedf2+0xb4>
8001609c:	f7058ee3          	beq	a1,a6,80016018 <__gedf2+0x50>
800160a0:	f8059ee3          	bnez	a1,8001603c <__gedf2+0x74>
800160a4:	00000793          	li	a5,0
800160a8:	f89ff06f          	j	80016030 <__gedf2+0x68>

800160ac <__ledf2>:
800160ac:	00100737          	lui	a4,0x100
800160b0:	fff70713          	addi	a4,a4,-1 # fffff <font6x8-0x7ff0002d>
800160b4:	0145d813          	srli	a6,a1,0x14
800160b8:	00b778b3          	and	a7,a4,a1
800160bc:	00050793          	mv	a5,a0
800160c0:	00050313          	mv	t1,a0
800160c4:	7ff87813          	andi	a6,a6,2047
800160c8:	01f5d513          	srli	a0,a1,0x1f
800160cc:	7ff00e93          	li	t4,2047
800160d0:	0146d593          	srli	a1,a3,0x14
800160d4:	00d77733          	and	a4,a4,a3
800160d8:	00060e13          	mv	t3,a2
800160dc:	7ff5f593          	andi	a1,a1,2047
800160e0:	01f6d693          	srli	a3,a3,0x1f
800160e4:	01d81a63          	bne	a6,t4,800160f8 <__ledf2+0x4c>
800160e8:	00f8eeb3          	or	t4,a7,a5
800160ec:	080e8a63          	beqz	t4,80016180 <__ledf2+0xd4>
800160f0:	00200513          	li	a0,2
800160f4:	00008067          	ret
800160f8:	01d59663          	bne	a1,t4,80016104 <__ledf2+0x58>
800160fc:	00c76eb3          	or	t4,a4,a2
80016100:	fe0e98e3          	bnez	t4,800160f0 <__ledf2+0x44>
80016104:	08081063          	bnez	a6,80016184 <__ledf2+0xd8>
80016108:	00f8e7b3          	or	a5,a7,a5
8001610c:	0017b793          	seqz	a5,a5
80016110:	00059663          	bnez	a1,8001611c <__ledf2+0x70>
80016114:	00c76633          	or	a2,a4,a2
80016118:	04060c63          	beqz	a2,80016170 <__ledf2+0xc4>
8001611c:	00079c63          	bnez	a5,80016134 <__ledf2+0x88>
80016120:	00d51463          	bne	a0,a3,80016128 <__ledf2+0x7c>
80016124:	0305d063          	bge	a1,a6,80016144 <__ledf2+0x98>
80016128:	04050063          	beqz	a0,80016168 <__ledf2+0xbc>
8001612c:	fff00513          	li	a0,-1
80016130:	00008067          	ret
80016134:	fff00513          	li	a0,-1
80016138:	00068a63          	beqz	a3,8001614c <__ledf2+0xa0>
8001613c:	00068513          	mv	a0,a3
80016140:	00008067          	ret
80016144:	00b85663          	bge	a6,a1,80016150 <__ledf2+0xa4>
80016148:	fe0502e3          	beqz	a0,8001612c <__ledf2+0x80>
8001614c:	00008067          	ret
80016150:	fd176ce3          	bltu	a4,a7,80016128 <__ledf2+0x7c>
80016154:	02e89263          	bne	a7,a4,80016178 <__ledf2+0xcc>
80016158:	fc6e68e3          	bltu	t3,t1,80016128 <__ledf2+0x7c>
8001615c:	ffc366e3          	bltu	t1,t3,80016148 <__ledf2+0x9c>
80016160:	00000513          	li	a0,0
80016164:	00008067          	ret
80016168:	00100513          	li	a0,1
8001616c:	00008067          	ret
80016170:	fe0798e3          	bnez	a5,80016160 <__ledf2+0xb4>
80016174:	fb5ff06f          	j	80016128 <__ledf2+0x7c>
80016178:	fce8e8e3          	bltu	a7,a4,80016148 <__ledf2+0x9c>
8001617c:	fe5ff06f          	j	80016160 <__ledf2+0xb4>
80016180:	f7058ee3          	beq	a1,a6,800160fc <__ledf2+0x50>
80016184:	f8059ee3          	bnez	a1,80016120 <__ledf2+0x74>
80016188:	00000793          	li	a5,0
8001618c:	f89ff06f          	j	80016114 <__ledf2+0x68>

80016190 <__muldf3>:
80016190:	fd010113          	addi	sp,sp,-48
80016194:	0145d793          	srli	a5,a1,0x14
80016198:	02812423          	sw	s0,40(sp)
8001619c:	02912223          	sw	s1,36(sp)
800161a0:	01312e23          	sw	s3,28(sp)
800161a4:	01412c23          	sw	s4,24(sp)
800161a8:	01512a23          	sw	s5,20(sp)
800161ac:	00c59493          	slli	s1,a1,0xc
800161b0:	02112623          	sw	ra,44(sp)
800161b4:	03212023          	sw	s2,32(sp)
800161b8:	01612823          	sw	s6,16(sp)
800161bc:	01712623          	sw	s7,12(sp)
800161c0:	01579713          	slli	a4,a5,0x15
800161c4:	00050413          	mv	s0,a0
800161c8:	00060993          	mv	s3,a2
800161cc:	00068a93          	mv	s5,a3
800161d0:	00c4d493          	srli	s1,s1,0xc
800161d4:	01f5da13          	srli	s4,a1,0x1f
800161d8:	0a070663          	beqz	a4,80016284 <__muldf3+0xf4>
800161dc:	7ff7fb13          	andi	s6,a5,2047
800161e0:	7ff00793          	li	a5,2047
800161e4:	10fb0263          	beq	s6,a5,800162e8 <__muldf3+0x158>
800161e8:	01d55793          	srli	a5,a0,0x1d
800161ec:	00349493          	slli	s1,s1,0x3
800161f0:	0097e4b3          	or	s1,a5,s1
800161f4:	008007b7          	lui	a5,0x800
800161f8:	00f4e4b3          	or	s1,s1,a5
800161fc:	00351913          	slli	s2,a0,0x3
80016200:	c01b0b13          	addi	s6,s6,-1023
80016204:	00000b93          	li	s7,0
80016208:	014ad793          	srli	a5,s5,0x14
8001620c:	00ca9413          	slli	s0,s5,0xc
80016210:	01579713          	slli	a4,a5,0x15
80016214:	00c45413          	srli	s0,s0,0xc
80016218:	7ff7f513          	andi	a0,a5,2047
8001621c:	01fada93          	srli	s5,s5,0x1f
80016220:	10070063          	beqz	a4,80016320 <__muldf3+0x190>
80016224:	7ff00793          	li	a5,2047
80016228:	16f50063          	beq	a0,a5,80016388 <__muldf3+0x1f8>
8001622c:	01d9d793          	srli	a5,s3,0x1d
80016230:	00341413          	slli	s0,s0,0x3
80016234:	0087e433          	or	s0,a5,s0
80016238:	008007b7          	lui	a5,0x800
8001623c:	00f46433          	or	s0,s0,a5
80016240:	c0150513          	addi	a0,a0,-1023
80016244:	00399793          	slli	a5,s3,0x3
80016248:	00000713          	li	a4,0
8001624c:	002b9693          	slli	a3,s7,0x2
80016250:	00e6e6b3          	or	a3,a3,a4
80016254:	00ab0b33          	add	s6,s6,a0
80016258:	fff68693          	addi	a3,a3,-1 # 7fefffff <font6x8-0x10002d>
8001625c:	00e00613          	li	a2,14
80016260:	015a4833          	xor	a6,s4,s5
80016264:	001b0893          	addi	a7,s6,1
80016268:	14d66c63          	bltu	a2,a3,800163c0 <__muldf3+0x230>
8001626c:	80000637          	lui	a2,0x80000
80016270:	00269693          	slli	a3,a3,0x2
80016274:	59c60613          	addi	a2,a2,1436 # 8000059c <__clzsi2+0xfffe9238>
80016278:	00c686b3          	add	a3,a3,a2
8001627c:	0006a683          	lw	a3,0(a3)
80016280:	00068067          	jr	a3
80016284:	00a4e933          	or	s2,s1,a0
80016288:	06090c63          	beqz	s2,80016300 <__muldf3+0x170>
8001628c:	04048063          	beqz	s1,800162cc <__muldf3+0x13c>
80016290:	00048513          	mv	a0,s1
80016294:	0d0010ef          	jal	ra,80017364 <__clzsi2>
80016298:	ff550713          	addi	a4,a0,-11
8001629c:	01c00793          	li	a5,28
800162a0:	02e7cc63          	blt	a5,a4,800162d8 <__muldf3+0x148>
800162a4:	01d00793          	li	a5,29
800162a8:	ff850913          	addi	s2,a0,-8
800162ac:	40e787b3          	sub	a5,a5,a4
800162b0:	012494b3          	sll	s1,s1,s2
800162b4:	00f457b3          	srl	a5,s0,a5
800162b8:	0097e4b3          	or	s1,a5,s1
800162bc:	01241933          	sll	s2,s0,s2
800162c0:	c0d00b13          	li	s6,-1011
800162c4:	40ab0b33          	sub	s6,s6,a0
800162c8:	f3dff06f          	j	80016204 <__muldf3+0x74>
800162cc:	098010ef          	jal	ra,80017364 <__clzsi2>
800162d0:	02050513          	addi	a0,a0,32
800162d4:	fc5ff06f          	j	80016298 <__muldf3+0x108>
800162d8:	fd850493          	addi	s1,a0,-40
800162dc:	009414b3          	sll	s1,s0,s1
800162e0:	00000913          	li	s2,0
800162e4:	fddff06f          	j	800162c0 <__muldf3+0x130>
800162e8:	00a4e933          	or	s2,s1,a0
800162ec:	02090263          	beqz	s2,80016310 <__muldf3+0x180>
800162f0:	00050913          	mv	s2,a0
800162f4:	7ff00b13          	li	s6,2047
800162f8:	00300b93          	li	s7,3
800162fc:	f0dff06f          	j	80016208 <__muldf3+0x78>
80016300:	00000493          	li	s1,0
80016304:	00000b13          	li	s6,0
80016308:	00100b93          	li	s7,1
8001630c:	efdff06f          	j	80016208 <__muldf3+0x78>
80016310:	00000493          	li	s1,0
80016314:	7ff00b13          	li	s6,2047
80016318:	00200b93          	li	s7,2
8001631c:	eedff06f          	j	80016208 <__muldf3+0x78>
80016320:	013467b3          	or	a5,s0,s3
80016324:	06078e63          	beqz	a5,800163a0 <__muldf3+0x210>
80016328:	04040063          	beqz	s0,80016368 <__muldf3+0x1d8>
8001632c:	00040513          	mv	a0,s0
80016330:	034010ef          	jal	ra,80017364 <__clzsi2>
80016334:	ff550693          	addi	a3,a0,-11
80016338:	01c00793          	li	a5,28
8001633c:	02d7ce63          	blt	a5,a3,80016378 <__muldf3+0x1e8>
80016340:	01d00713          	li	a4,29
80016344:	ff850793          	addi	a5,a0,-8
80016348:	40d70733          	sub	a4,a4,a3
8001634c:	00f41433          	sll	s0,s0,a5
80016350:	00e9d733          	srl	a4,s3,a4
80016354:	00876433          	or	s0,a4,s0
80016358:	00f997b3          	sll	a5,s3,a5
8001635c:	c0d00713          	li	a4,-1011
80016360:	40a70533          	sub	a0,a4,a0
80016364:	ee5ff06f          	j	80016248 <__muldf3+0xb8>
80016368:	00098513          	mv	a0,s3
8001636c:	7f9000ef          	jal	ra,80017364 <__clzsi2>
80016370:	02050513          	addi	a0,a0,32
80016374:	fc1ff06f          	j	80016334 <__muldf3+0x1a4>
80016378:	fd850413          	addi	s0,a0,-40
8001637c:	00899433          	sll	s0,s3,s0
80016380:	00000793          	li	a5,0
80016384:	fd9ff06f          	j	8001635c <__muldf3+0x1cc>
80016388:	013467b3          	or	a5,s0,s3
8001638c:	02078263          	beqz	a5,800163b0 <__muldf3+0x220>
80016390:	00098793          	mv	a5,s3
80016394:	7ff00513          	li	a0,2047
80016398:	00300713          	li	a4,3
8001639c:	eb1ff06f          	j	8001624c <__muldf3+0xbc>
800163a0:	00000413          	li	s0,0
800163a4:	00000513          	li	a0,0
800163a8:	00100713          	li	a4,1
800163ac:	ea1ff06f          	j	8001624c <__muldf3+0xbc>
800163b0:	00000413          	li	s0,0
800163b4:	7ff00513          	li	a0,2047
800163b8:	00200713          	li	a4,2
800163bc:	e91ff06f          	j	8001624c <__muldf3+0xbc>
800163c0:	00010ab7          	lui	s5,0x10
800163c4:	fffa8313          	addi	t1,s5,-1 # ffff <font6x8-0x7fff002d>
800163c8:	01095f93          	srli	t6,s2,0x10
800163cc:	0067f9b3          	and	s3,a5,t1
800163d0:	00697933          	and	s2,s2,t1
800163d4:	0107d293          	srli	t0,a5,0x10
800163d8:	00090513          	mv	a0,s2
800163dc:	00098593          	mv	a1,s3
800163e0:	61d000ef          	jal	ra,800171fc <__mulsi3>
800163e4:	00050a13          	mv	s4,a0
800163e8:	00028593          	mv	a1,t0
800163ec:	00090513          	mv	a0,s2
800163f0:	60d000ef          	jal	ra,800171fc <__mulsi3>
800163f4:	00050e93          	mv	t4,a0
800163f8:	00098593          	mv	a1,s3
800163fc:	000f8513          	mv	a0,t6
80016400:	5fd000ef          	jal	ra,800171fc <__mulsi3>
80016404:	00050393          	mv	t2,a0
80016408:	00028593          	mv	a1,t0
8001640c:	000f8513          	mv	a0,t6
80016410:	5ed000ef          	jal	ra,800171fc <__mulsi3>
80016414:	010a5713          	srli	a4,s4,0x10
80016418:	007e8eb3          	add	t4,t4,t2
8001641c:	01d70733          	add	a4,a4,t4
80016420:	00050f13          	mv	t5,a0
80016424:	00777463          	bgeu	a4,t2,8001642c <__muldf3+0x29c>
80016428:	01550f33          	add	t5,a0,s5
8001642c:	00677e33          	and	t3,a4,t1
80016430:	006a7533          	and	a0,s4,t1
80016434:	01045393          	srli	t2,s0,0x10
80016438:	010e1e13          	slli	t3,t3,0x10
8001643c:	00647433          	and	s0,s0,t1
80016440:	00ae0e33          	add	t3,t3,a0
80016444:	01075793          	srli	a5,a4,0x10
80016448:	00090513          	mv	a0,s2
8001644c:	00040593          	mv	a1,s0
80016450:	5ad000ef          	jal	ra,800171fc <__mulsi3>
80016454:	00050e93          	mv	t4,a0
80016458:	00038593          	mv	a1,t2
8001645c:	00090513          	mv	a0,s2
80016460:	59d000ef          	jal	ra,800171fc <__mulsi3>
80016464:	00050313          	mv	t1,a0
80016468:	00040593          	mv	a1,s0
8001646c:	000f8513          	mv	a0,t6
80016470:	58d000ef          	jal	ra,800171fc <__mulsi3>
80016474:	00050913          	mv	s2,a0
80016478:	00038593          	mv	a1,t2
8001647c:	000f8513          	mv	a0,t6
80016480:	57d000ef          	jal	ra,800171fc <__mulsi3>
80016484:	010ed693          	srli	a3,t4,0x10
80016488:	01230333          	add	t1,t1,s2
8001648c:	006686b3          	add	a3,a3,t1
80016490:	00050713          	mv	a4,a0
80016494:	0126f663          	bgeu	a3,s2,800164a0 <__muldf3+0x310>
80016498:	00010637          	lui	a2,0x10
8001649c:	00c50733          	add	a4,a0,a2
800164a0:	0106df93          	srli	t6,a3,0x10
800164a4:	00010bb7          	lui	s7,0x10
800164a8:	00ef8fb3          	add	t6,t6,a4
800164ac:	fffb8713          	addi	a4,s7,-1 # ffff <font6x8-0x7fff002d>
800164b0:	00e6f6b3          	and	a3,a3,a4
800164b4:	01069693          	slli	a3,a3,0x10
800164b8:	00eefeb3          	and	t4,t4,a4
800164bc:	01d68eb3          	add	t4,a3,t4
800164c0:	0104da93          	srli	s5,s1,0x10
800164c4:	00e4f4b3          	and	s1,s1,a4
800164c8:	01d78933          	add	s2,a5,t4
800164cc:	00048513          	mv	a0,s1
800164d0:	00098593          	mv	a1,s3
800164d4:	529000ef          	jal	ra,800171fc <__mulsi3>
800164d8:	00050a13          	mv	s4,a0
800164dc:	00028593          	mv	a1,t0
800164e0:	00048513          	mv	a0,s1
800164e4:	519000ef          	jal	ra,800171fc <__mulsi3>
800164e8:	00050713          	mv	a4,a0
800164ec:	00098593          	mv	a1,s3
800164f0:	000a8513          	mv	a0,s5
800164f4:	509000ef          	jal	ra,800171fc <__mulsi3>
800164f8:	00050313          	mv	t1,a0
800164fc:	00028593          	mv	a1,t0
80016500:	000a8513          	mv	a0,s5
80016504:	4f9000ef          	jal	ra,800171fc <__mulsi3>
80016508:	010a5793          	srli	a5,s4,0x10
8001650c:	00670733          	add	a4,a4,t1
80016510:	00e787b3          	add	a5,a5,a4
80016514:	00050293          	mv	t0,a0
80016518:	0067f463          	bgeu	a5,t1,80016520 <__muldf3+0x390>
8001651c:	017502b3          	add	t0,a0,s7
80016520:	0107d513          	srli	a0,a5,0x10
80016524:	00010bb7          	lui	s7,0x10
80016528:	005502b3          	add	t0,a0,t0
8001652c:	fffb8513          	addi	a0,s7,-1 # ffff <font6x8-0x7fff002d>
80016530:	00a7f333          	and	t1,a5,a0
80016534:	00aa7a33          	and	s4,s4,a0
80016538:	01031313          	slli	t1,t1,0x10
8001653c:	01430333          	add	t1,t1,s4
80016540:	00048513          	mv	a0,s1
80016544:	00040593          	mv	a1,s0
80016548:	4b5000ef          	jal	ra,800171fc <__mulsi3>
8001654c:	00050993          	mv	s3,a0
80016550:	00038593          	mv	a1,t2
80016554:	00048513          	mv	a0,s1
80016558:	4a5000ef          	jal	ra,800171fc <__mulsi3>
8001655c:	00050793          	mv	a5,a0
80016560:	00040593          	mv	a1,s0
80016564:	000a8513          	mv	a0,s5
80016568:	495000ef          	jal	ra,800171fc <__mulsi3>
8001656c:	00050413          	mv	s0,a0
80016570:	00038593          	mv	a1,t2
80016574:	000a8513          	mv	a0,s5
80016578:	485000ef          	jal	ra,800171fc <__mulsi3>
8001657c:	0109d593          	srli	a1,s3,0x10
80016580:	008787b3          	add	a5,a5,s0
80016584:	00f585b3          	add	a1,a1,a5
80016588:	0085f463          	bgeu	a1,s0,80016590 <__muldf3+0x400>
8001658c:	01750533          	add	a0,a0,s7
80016590:	00010737          	lui	a4,0x10
80016594:	fff70713          	addi	a4,a4,-1 # ffff <font6x8-0x7fff002d>
80016598:	00e5f6b3          	and	a3,a1,a4
8001659c:	01069693          	slli	a3,a3,0x10
800165a0:	00e9f733          	and	a4,s3,a4
800165a4:	01e90633          	add	a2,s2,t5
800165a8:	00e686b3          	add	a3,a3,a4
800165ac:	01d63eb3          	sltu	t4,a2,t4
800165b0:	01f68733          	add	a4,a3,t6
800165b4:	01d706b3          	add	a3,a4,t4
800165b8:	00660633          	add	a2,a2,t1
800165bc:	00663333          	sltu	t1,a2,t1
800165c0:	00568f33          	add	t5,a3,t0
800165c4:	006f03b3          	add	t2,t5,t1
800165c8:	01f73733          	sltu	a4,a4,t6
800165cc:	01d6beb3          	sltu	t4,a3,t4
800165d0:	01d76733          	or	a4,a4,t4
800165d4:	0105d593          	srli	a1,a1,0x10
800165d8:	005f32b3          	sltu	t0,t5,t0
800165dc:	0063b333          	sltu	t1,t2,t1
800165e0:	00961793          	slli	a5,a2,0x9
800165e4:	00b70733          	add	a4,a4,a1
800165e8:	0062e333          	or	t1,t0,t1
800165ec:	00670733          	add	a4,a4,t1
800165f0:	01c7e7b3          	or	a5,a5,t3
800165f4:	00a70533          	add	a0,a4,a0
800165f8:	00f037b3          	snez	a5,a5
800165fc:	01765613          	srli	a2,a2,0x17
80016600:	00951513          	slli	a0,a0,0x9
80016604:	00939713          	slli	a4,t2,0x9
80016608:	00c7e7b3          	or	a5,a5,a2
8001660c:	0173d413          	srli	s0,t2,0x17
80016610:	00e7e7b3          	or	a5,a5,a4
80016614:	00751713          	slli	a4,a0,0x7
80016618:	00856433          	or	s0,a0,s0
8001661c:	10075463          	bgez	a4,80016724 <__muldf3+0x594>
80016620:	0017d713          	srli	a4,a5,0x1
80016624:	0017f793          	andi	a5,a5,1
80016628:	00f767b3          	or	a5,a4,a5
8001662c:	01f41713          	slli	a4,s0,0x1f
80016630:	00e7e7b3          	or	a5,a5,a4
80016634:	00145413          	srli	s0,s0,0x1
80016638:	3ff88693          	addi	a3,a7,1023
8001663c:	0ed05863          	blez	a3,8001672c <__muldf3+0x59c>
80016640:	0077f713          	andi	a4,a5,7
80016644:	02070063          	beqz	a4,80016664 <__muldf3+0x4d4>
80016648:	00f7f713          	andi	a4,a5,15
8001664c:	00400613          	li	a2,4
80016650:	00c70a63          	beq	a4,a2,80016664 <__muldf3+0x4d4>
80016654:	00478713          	addi	a4,a5,4 # 800004 <font6x8-0x7f800028>
80016658:	00f737b3          	sltu	a5,a4,a5
8001665c:	00f40433          	add	s0,s0,a5
80016660:	00070793          	mv	a5,a4
80016664:	00741713          	slli	a4,s0,0x7
80016668:	00075a63          	bgez	a4,8001667c <__muldf3+0x4ec>
8001666c:	ff000737          	lui	a4,0xff000
80016670:	fff70713          	addi	a4,a4,-1 # feffffff <__clzsi2+0x7efe8c9b>
80016674:	00e47433          	and	s0,s0,a4
80016678:	40088693          	addi	a3,a7,1024
8001667c:	7fe00713          	li	a4,2046
80016680:	16d74863          	blt	a4,a3,800167f0 <__muldf3+0x660>
80016684:	0037d713          	srli	a4,a5,0x3
80016688:	01d41793          	slli	a5,s0,0x1d
8001668c:	00e7e7b3          	or	a5,a5,a4
80016690:	00345413          	srli	s0,s0,0x3
80016694:	01469713          	slli	a4,a3,0x14
80016698:	00c41413          	slli	s0,s0,0xc
8001669c:	7ff006b7          	lui	a3,0x7ff00
800166a0:	00d77733          	and	a4,a4,a3
800166a4:	00c45413          	srli	s0,s0,0xc
800166a8:	00876433          	or	s0,a4,s0
800166ac:	01f81813          	slli	a6,a6,0x1f
800166b0:	02c12083          	lw	ra,44(sp)
800166b4:	01046733          	or	a4,s0,a6
800166b8:	02812403          	lw	s0,40(sp)
800166bc:	02412483          	lw	s1,36(sp)
800166c0:	02012903          	lw	s2,32(sp)
800166c4:	01c12983          	lw	s3,28(sp)
800166c8:	01812a03          	lw	s4,24(sp)
800166cc:	01412a83          	lw	s5,20(sp)
800166d0:	01012b03          	lw	s6,16(sp)
800166d4:	00c12b83          	lw	s7,12(sp)
800166d8:	00078513          	mv	a0,a5
800166dc:	00070593          	mv	a1,a4
800166e0:	03010113          	addi	sp,sp,48
800166e4:	00008067          	ret
800166e8:	000a0813          	mv	a6,s4
800166ec:	00048413          	mv	s0,s1
800166f0:	00090793          	mv	a5,s2
800166f4:	000b8713          	mv	a4,s7
800166f8:	00200693          	li	a3,2
800166fc:	0ed70a63          	beq	a4,a3,800167f0 <__muldf3+0x660>
80016700:	00300693          	li	a3,3
80016704:	0cd70c63          	beq	a4,a3,800167dc <__muldf3+0x64c>
80016708:	00100693          	li	a3,1
8001670c:	f2d716e3          	bne	a4,a3,80016638 <__muldf3+0x4a8>
80016710:	00000413          	li	s0,0
80016714:	00000793          	li	a5,0
80016718:	0880006f          	j	800167a0 <__muldf3+0x610>
8001671c:	000a8813          	mv	a6,s5
80016720:	fd9ff06f          	j	800166f8 <__muldf3+0x568>
80016724:	000b0893          	mv	a7,s6
80016728:	f11ff06f          	j	80016638 <__muldf3+0x4a8>
8001672c:	00100613          	li	a2,1
80016730:	40d60633          	sub	a2,a2,a3
80016734:	03800713          	li	a4,56
80016738:	fcc74ce3          	blt	a4,a2,80016710 <__muldf3+0x580>
8001673c:	01f00713          	li	a4,31
80016740:	06c74463          	blt	a4,a2,800167a8 <__muldf3+0x618>
80016744:	41e88893          	addi	a7,a7,1054
80016748:	01141733          	sll	a4,s0,a7
8001674c:	00c7d6b3          	srl	a3,a5,a2
80016750:	011797b3          	sll	a5,a5,a7
80016754:	00d76733          	or	a4,a4,a3
80016758:	00f037b3          	snez	a5,a5
8001675c:	00f767b3          	or	a5,a4,a5
80016760:	00c45433          	srl	s0,s0,a2
80016764:	0077f713          	andi	a4,a5,7
80016768:	02070063          	beqz	a4,80016788 <__muldf3+0x5f8>
8001676c:	00f7f713          	andi	a4,a5,15
80016770:	00400693          	li	a3,4
80016774:	00d70a63          	beq	a4,a3,80016788 <__muldf3+0x5f8>
80016778:	00478713          	addi	a4,a5,4
8001677c:	00f737b3          	sltu	a5,a4,a5
80016780:	00f40433          	add	s0,s0,a5
80016784:	00070793          	mv	a5,a4
80016788:	00841713          	slli	a4,s0,0x8
8001678c:	06074a63          	bltz	a4,80016800 <__muldf3+0x670>
80016790:	01d41713          	slli	a4,s0,0x1d
80016794:	0037d793          	srli	a5,a5,0x3
80016798:	00f767b3          	or	a5,a4,a5
8001679c:	00345413          	srli	s0,s0,0x3
800167a0:	00000693          	li	a3,0
800167a4:	ef1ff06f          	j	80016694 <__muldf3+0x504>
800167a8:	fe100713          	li	a4,-31
800167ac:	40d70733          	sub	a4,a4,a3
800167b0:	02000593          	li	a1,32
800167b4:	00e45733          	srl	a4,s0,a4
800167b8:	00000693          	li	a3,0
800167bc:	00b60663          	beq	a2,a1,800167c8 <__muldf3+0x638>
800167c0:	43e88893          	addi	a7,a7,1086
800167c4:	011416b3          	sll	a3,s0,a7
800167c8:	00f6e7b3          	or	a5,a3,a5
800167cc:	00f037b3          	snez	a5,a5
800167d0:	00f767b3          	or	a5,a4,a5
800167d4:	00000413          	li	s0,0
800167d8:	f8dff06f          	j	80016764 <__muldf3+0x5d4>
800167dc:	00080437          	lui	s0,0x80
800167e0:	00000793          	li	a5,0
800167e4:	7ff00693          	li	a3,2047
800167e8:	00000813          	li	a6,0
800167ec:	ea9ff06f          	j	80016694 <__muldf3+0x504>
800167f0:	00000413          	li	s0,0
800167f4:	00000793          	li	a5,0
800167f8:	7ff00693          	li	a3,2047
800167fc:	e99ff06f          	j	80016694 <__muldf3+0x504>
80016800:	00000413          	li	s0,0
80016804:	00000793          	li	a5,0
80016808:	00100693          	li	a3,1
8001680c:	e89ff06f          	j	80016694 <__muldf3+0x504>

80016810 <__subdf3>:
80016810:	00100837          	lui	a6,0x100
80016814:	fff80813          	addi	a6,a6,-1 # fffff <font6x8-0x7ff0002d>
80016818:	fe010113          	addi	sp,sp,-32
8001681c:	00b877b3          	and	a5,a6,a1
80016820:	0145d713          	srli	a4,a1,0x14
80016824:	00d87833          	and	a6,a6,a3
80016828:	0146d893          	srli	a7,a3,0x14
8001682c:	00812c23          	sw	s0,24(sp)
80016830:	00379793          	slli	a5,a5,0x3
80016834:	7ff77413          	andi	s0,a4,2047
80016838:	01d55713          	srli	a4,a0,0x1d
8001683c:	00912a23          	sw	s1,20(sp)
80016840:	00f767b3          	or	a5,a4,a5
80016844:	01f5d493          	srli	s1,a1,0x1f
80016848:	01d65713          	srli	a4,a2,0x1d
8001684c:	01f6d593          	srli	a1,a3,0x1f
80016850:	00381813          	slli	a6,a6,0x3
80016854:	00112e23          	sw	ra,28(sp)
80016858:	01212823          	sw	s2,16(sp)
8001685c:	01312623          	sw	s3,12(sp)
80016860:	7ff8f893          	andi	a7,a7,2047
80016864:	7ff00693          	li	a3,2047
80016868:	00351513          	slli	a0,a0,0x3
8001686c:	01076733          	or	a4,a4,a6
80016870:	00361613          	slli	a2,a2,0x3
80016874:	00d89663          	bne	a7,a3,80016880 <__subdf3+0x70>
80016878:	00c766b3          	or	a3,a4,a2
8001687c:	00069463          	bnez	a3,80016884 <__subdf3+0x74>
80016880:	0015c593          	xori	a1,a1,1
80016884:	41140833          	sub	a6,s0,a7
80016888:	2c959063          	bne	a1,s1,80016b48 <__subdf3+0x338>
8001688c:	13005c63          	blez	a6,800169c4 <__subdf3+0x1b4>
80016890:	06089063          	bnez	a7,800168f0 <__subdf3+0xe0>
80016894:	00c766b3          	or	a3,a4,a2
80016898:	02068863          	beqz	a3,800168c8 <__subdf3+0xb8>
8001689c:	fff40813          	addi	a6,s0,-1 # 7ffff <font6x8-0x7ff8002d>
800168a0:	02081063          	bnez	a6,800168c0 <__subdf3+0xb0>
800168a4:	00c50633          	add	a2,a0,a2
800168a8:	00a63533          	sltu	a0,a2,a0
800168ac:	00e787b3          	add	a5,a5,a4
800168b0:	00a787b3          	add	a5,a5,a0
800168b4:	00060513          	mv	a0,a2
800168b8:	00100413          	li	s0,1
800168bc:	08c0006f          	j	80016948 <__subdf3+0x138>
800168c0:	7ff00693          	li	a3,2047
800168c4:	02d41e63          	bne	s0,a3,80016900 <__subdf3+0xf0>
800168c8:	00757713          	andi	a4,a0,7
800168cc:	62070c63          	beqz	a4,80016f04 <__subdf3+0x6f4>
800168d0:	00f57713          	andi	a4,a0,15
800168d4:	00400693          	li	a3,4
800168d8:	62d70663          	beq	a4,a3,80016f04 <__subdf3+0x6f4>
800168dc:	00450693          	addi	a3,a0,4
800168e0:	00a6b533          	sltu	a0,a3,a0
800168e4:	00a787b3          	add	a5,a5,a0
800168e8:	00068513          	mv	a0,a3
800168ec:	6180006f          	j	80016f04 <__subdf3+0x6f4>
800168f0:	7ff00693          	li	a3,2047
800168f4:	fcd40ae3          	beq	s0,a3,800168c8 <__subdf3+0xb8>
800168f8:	008006b7          	lui	a3,0x800
800168fc:	00d76733          	or	a4,a4,a3
80016900:	03800693          	li	a3,56
80016904:	0b06ca63          	blt	a3,a6,800169b8 <__subdf3+0x1a8>
80016908:	01f00693          	li	a3,31
8001690c:	0706cc63          	blt	a3,a6,80016984 <__subdf3+0x174>
80016910:	02000593          	li	a1,32
80016914:	410585b3          	sub	a1,a1,a6
80016918:	00b716b3          	sll	a3,a4,a1
8001691c:	010658b3          	srl	a7,a2,a6
80016920:	00b61633          	sll	a2,a2,a1
80016924:	0116e6b3          	or	a3,a3,a7
80016928:	00c03633          	snez	a2,a2
8001692c:	00c6e633          	or	a2,a3,a2
80016930:	01075733          	srl	a4,a4,a6
80016934:	00a60633          	add	a2,a2,a0
80016938:	00f70733          	add	a4,a4,a5
8001693c:	00a637b3          	sltu	a5,a2,a0
80016940:	00f707b3          	add	a5,a4,a5
80016944:	00060513          	mv	a0,a2
80016948:	00879713          	slli	a4,a5,0x8
8001694c:	f6075ee3          	bgez	a4,800168c8 <__subdf3+0xb8>
80016950:	00140413          	addi	s0,s0,1
80016954:	7ff00713          	li	a4,2047
80016958:	5ae40263          	beq	s0,a4,80016efc <__subdf3+0x6ec>
8001695c:	ff8006b7          	lui	a3,0xff800
80016960:	fff68693          	addi	a3,a3,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
80016964:	00d7f6b3          	and	a3,a5,a3
80016968:	00155593          	srli	a1,a0,0x1
8001696c:	00157513          	andi	a0,a0,1
80016970:	01f69793          	slli	a5,a3,0x1f
80016974:	00a5e533          	or	a0,a1,a0
80016978:	00a7e533          	or	a0,a5,a0
8001697c:	0016d793          	srli	a5,a3,0x1
80016980:	f49ff06f          	j	800168c8 <__subdf3+0xb8>
80016984:	fe080693          	addi	a3,a6,-32
80016988:	02000893          	li	a7,32
8001698c:	00d756b3          	srl	a3,a4,a3
80016990:	00000593          	li	a1,0
80016994:	01180863          	beq	a6,a7,800169a4 <__subdf3+0x194>
80016998:	04000593          	li	a1,64
8001699c:	41058833          	sub	a6,a1,a6
800169a0:	010715b3          	sll	a1,a4,a6
800169a4:	00c5e633          	or	a2,a1,a2
800169a8:	00c03633          	snez	a2,a2
800169ac:	00c6e633          	or	a2,a3,a2
800169b0:	00000713          	li	a4,0
800169b4:	f81ff06f          	j	80016934 <__subdf3+0x124>
800169b8:	00c76633          	or	a2,a4,a2
800169bc:	00c03633          	snez	a2,a2
800169c0:	ff1ff06f          	j	800169b0 <__subdf3+0x1a0>
800169c4:	0e080263          	beqz	a6,80016aa8 <__subdf3+0x298>
800169c8:	408885b3          	sub	a1,a7,s0
800169cc:	02041e63          	bnez	s0,80016a08 <__subdf3+0x1f8>
800169d0:	00a7e6b3          	or	a3,a5,a0
800169d4:	50068463          	beqz	a3,80016edc <__subdf3+0x6cc>
800169d8:	fff58693          	addi	a3,a1,-1 # 7ffff <font6x8-0x7ff8002d>
800169dc:	00069c63          	bnez	a3,800169f4 <__subdf3+0x1e4>
800169e0:	00c50533          	add	a0,a0,a2
800169e4:	00e787b3          	add	a5,a5,a4
800169e8:	00c53633          	sltu	a2,a0,a2
800169ec:	00c787b3          	add	a5,a5,a2
800169f0:	ec9ff06f          	j	800168b8 <__subdf3+0xa8>
800169f4:	7ff00813          	li	a6,2047
800169f8:	03059263          	bne	a1,a6,80016a1c <__subdf3+0x20c>
800169fc:	00070793          	mv	a5,a4
80016a00:	00060513          	mv	a0,a2
80016a04:	3b00006f          	j	80016db4 <__subdf3+0x5a4>
80016a08:	7ff00693          	li	a3,2047
80016a0c:	fed888e3          	beq	a7,a3,800169fc <__subdf3+0x1ec>
80016a10:	008006b7          	lui	a3,0x800
80016a14:	00d7e7b3          	or	a5,a5,a3
80016a18:	00058693          	mv	a3,a1
80016a1c:	03800593          	li	a1,56
80016a20:	06d5ce63          	blt	a1,a3,80016a9c <__subdf3+0x28c>
80016a24:	01f00593          	li	a1,31
80016a28:	04d5c063          	blt	a1,a3,80016a68 <__subdf3+0x258>
80016a2c:	02000813          	li	a6,32
80016a30:	40d80833          	sub	a6,a6,a3
80016a34:	00d55333          	srl	t1,a0,a3
80016a38:	010795b3          	sll	a1,a5,a6
80016a3c:	01051533          	sll	a0,a0,a6
80016a40:	0065e5b3          	or	a1,a1,t1
80016a44:	00a03533          	snez	a0,a0
80016a48:	00a5e533          	or	a0,a1,a0
80016a4c:	00d7d6b3          	srl	a3,a5,a3
80016a50:	00c50533          	add	a0,a0,a2
80016a54:	00e687b3          	add	a5,a3,a4
80016a58:	00c53633          	sltu	a2,a0,a2
80016a5c:	00c787b3          	add	a5,a5,a2
80016a60:	00088413          	mv	s0,a7
80016a64:	ee5ff06f          	j	80016948 <__subdf3+0x138>
80016a68:	fe068593          	addi	a1,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80016a6c:	02000313          	li	t1,32
80016a70:	00b7d5b3          	srl	a1,a5,a1
80016a74:	00000813          	li	a6,0
80016a78:	00668863          	beq	a3,t1,80016a88 <__subdf3+0x278>
80016a7c:	04000813          	li	a6,64
80016a80:	40d806b3          	sub	a3,a6,a3
80016a84:	00d79833          	sll	a6,a5,a3
80016a88:	00a86533          	or	a0,a6,a0
80016a8c:	00a03533          	snez	a0,a0
80016a90:	00a5e533          	or	a0,a1,a0
80016a94:	00000693          	li	a3,0
80016a98:	fb9ff06f          	j	80016a50 <__subdf3+0x240>
80016a9c:	00a7e533          	or	a0,a5,a0
80016aa0:	00a03533          	snez	a0,a0
80016aa4:	ff1ff06f          	j	80016a94 <__subdf3+0x284>
80016aa8:	00140693          	addi	a3,s0,1
80016aac:	7fe6f593          	andi	a1,a3,2046
80016ab0:	06059463          	bnez	a1,80016b18 <__subdf3+0x308>
80016ab4:	00a7e6b3          	or	a3,a5,a0
80016ab8:	04041063          	bnez	s0,80016af8 <__subdf3+0x2e8>
80016abc:	42068863          	beqz	a3,80016eec <__subdf3+0x6dc>
80016ac0:	00c766b3          	or	a3,a4,a2
80016ac4:	e00682e3          	beqz	a3,800168c8 <__subdf3+0xb8>
80016ac8:	00c50633          	add	a2,a0,a2
80016acc:	00e787b3          	add	a5,a5,a4
80016ad0:	00a63533          	sltu	a0,a2,a0
80016ad4:	00a787b3          	add	a5,a5,a0
80016ad8:	00879713          	slli	a4,a5,0x8
80016adc:	00060513          	mv	a0,a2
80016ae0:	de0754e3          	bgez	a4,800168c8 <__subdf3+0xb8>
80016ae4:	ff800737          	lui	a4,0xff800
80016ae8:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
80016aec:	00e7f7b3          	and	a5,a5,a4
80016af0:	00100413          	li	s0,1
80016af4:	dd5ff06f          	j	800168c8 <__subdf3+0xb8>
80016af8:	f00682e3          	beqz	a3,800169fc <__subdf3+0x1ec>
80016afc:	00c76633          	or	a2,a4,a2
80016b00:	2a060a63          	beqz	a2,80016db4 <__subdf3+0x5a4>
80016b04:	00000493          	li	s1,0
80016b08:	004007b7          	lui	a5,0x400
80016b0c:	00000513          	li	a0,0
80016b10:	7ff00413          	li	s0,2047
80016b14:	3f00006f          	j	80016f04 <__subdf3+0x6f4>
80016b18:	7ff00593          	li	a1,2047
80016b1c:	3cb68e63          	beq	a3,a1,80016ef8 <__subdf3+0x6e8>
80016b20:	00c50633          	add	a2,a0,a2
80016b24:	00e78733          	add	a4,a5,a4
80016b28:	00a637b3          	sltu	a5,a2,a0
80016b2c:	00f70733          	add	a4,a4,a5
80016b30:	01f71513          	slli	a0,a4,0x1f
80016b34:	00165613          	srli	a2,a2,0x1
80016b38:	00c56533          	or	a0,a0,a2
80016b3c:	00175793          	srli	a5,a4,0x1
80016b40:	00068413          	mv	s0,a3
80016b44:	d85ff06f          	j	800168c8 <__subdf3+0xb8>
80016b48:	0f005a63          	blez	a6,80016c3c <__subdf3+0x42c>
80016b4c:	08089e63          	bnez	a7,80016be8 <__subdf3+0x3d8>
80016b50:	00c766b3          	or	a3,a4,a2
80016b54:	d6068ae3          	beqz	a3,800168c8 <__subdf3+0xb8>
80016b58:	fff40813          	addi	a6,s0,-1
80016b5c:	02081063          	bnez	a6,80016b7c <__subdf3+0x36c>
80016b60:	40c50633          	sub	a2,a0,a2
80016b64:	00c53533          	sltu	a0,a0,a2
80016b68:	40e787b3          	sub	a5,a5,a4
80016b6c:	40a787b3          	sub	a5,a5,a0
80016b70:	00060513          	mv	a0,a2
80016b74:	00100413          	li	s0,1
80016b78:	0540006f          	j	80016bcc <__subdf3+0x3bc>
80016b7c:	7ff00693          	li	a3,2047
80016b80:	d4d404e3          	beq	s0,a3,800168c8 <__subdf3+0xb8>
80016b84:	03800693          	li	a3,56
80016b88:	0b06c463          	blt	a3,a6,80016c30 <__subdf3+0x420>
80016b8c:	01f00693          	li	a3,31
80016b90:	0706c663          	blt	a3,a6,80016bfc <__subdf3+0x3ec>
80016b94:	02000593          	li	a1,32
80016b98:	410585b3          	sub	a1,a1,a6
80016b9c:	00b716b3          	sll	a3,a4,a1
80016ba0:	010658b3          	srl	a7,a2,a6
80016ba4:	00b61633          	sll	a2,a2,a1
80016ba8:	0116e6b3          	or	a3,a3,a7
80016bac:	00c03633          	snez	a2,a2
80016bb0:	00c6e633          	or	a2,a3,a2
80016bb4:	01075733          	srl	a4,a4,a6
80016bb8:	40c50633          	sub	a2,a0,a2
80016bbc:	40e78733          	sub	a4,a5,a4
80016bc0:	00c537b3          	sltu	a5,a0,a2
80016bc4:	40f707b3          	sub	a5,a4,a5
80016bc8:	00060513          	mv	a0,a2
80016bcc:	00879713          	slli	a4,a5,0x8
80016bd0:	ce075ce3          	bgez	a4,800168c8 <__subdf3+0xb8>
80016bd4:	00800937          	lui	s2,0x800
80016bd8:	fff90913          	addi	s2,s2,-1 # 7fffff <font6x8-0x7f80002d>
80016bdc:	0127f933          	and	s2,a5,s2
80016be0:	00050993          	mv	s3,a0
80016be4:	20c0006f          	j	80016df0 <__subdf3+0x5e0>
80016be8:	7ff00693          	li	a3,2047
80016bec:	ccd40ee3          	beq	s0,a3,800168c8 <__subdf3+0xb8>
80016bf0:	008006b7          	lui	a3,0x800
80016bf4:	00d76733          	or	a4,a4,a3
80016bf8:	f8dff06f          	j	80016b84 <__subdf3+0x374>
80016bfc:	fe080693          	addi	a3,a6,-32
80016c00:	02000893          	li	a7,32
80016c04:	00d756b3          	srl	a3,a4,a3
80016c08:	00000593          	li	a1,0
80016c0c:	01180863          	beq	a6,a7,80016c1c <__subdf3+0x40c>
80016c10:	04000593          	li	a1,64
80016c14:	41058833          	sub	a6,a1,a6
80016c18:	010715b3          	sll	a1,a4,a6
80016c1c:	00c5e633          	or	a2,a1,a2
80016c20:	00c03633          	snez	a2,a2
80016c24:	00c6e633          	or	a2,a3,a2
80016c28:	00000713          	li	a4,0
80016c2c:	f8dff06f          	j	80016bb8 <__subdf3+0x3a8>
80016c30:	00c76633          	or	a2,a4,a2
80016c34:	00c03633          	snez	a2,a2
80016c38:	ff1ff06f          	j	80016c28 <__subdf3+0x418>
80016c3c:	0e080863          	beqz	a6,80016d2c <__subdf3+0x51c>
80016c40:	40888833          	sub	a6,a7,s0
80016c44:	04041263          	bnez	s0,80016c88 <__subdf3+0x478>
80016c48:	00a7e6b3          	or	a3,a5,a0
80016c4c:	34068463          	beqz	a3,80016f94 <__subdf3+0x784>
80016c50:	fff80693          	addi	a3,a6,-1
80016c54:	00069e63          	bnez	a3,80016c70 <__subdf3+0x460>
80016c58:	40a60533          	sub	a0,a2,a0
80016c5c:	40f707b3          	sub	a5,a4,a5
80016c60:	00a63633          	sltu	a2,a2,a0
80016c64:	40c787b3          	sub	a5,a5,a2
80016c68:	00058493          	mv	s1,a1
80016c6c:	f09ff06f          	j	80016b74 <__subdf3+0x364>
80016c70:	7ff00313          	li	t1,2047
80016c74:	02681463          	bne	a6,t1,80016c9c <__subdf3+0x48c>
80016c78:	00070793          	mv	a5,a4
80016c7c:	00060513          	mv	a0,a2
80016c80:	7ff00413          	li	s0,2047
80016c84:	0d00006f          	j	80016d54 <__subdf3+0x544>
80016c88:	7ff00693          	li	a3,2047
80016c8c:	fed886e3          	beq	a7,a3,80016c78 <__subdf3+0x468>
80016c90:	008006b7          	lui	a3,0x800
80016c94:	00d7e7b3          	or	a5,a5,a3
80016c98:	00080693          	mv	a3,a6
80016c9c:	03800813          	li	a6,56
80016ca0:	08d84063          	blt	a6,a3,80016d20 <__subdf3+0x510>
80016ca4:	01f00813          	li	a6,31
80016ca8:	04d84263          	blt	a6,a3,80016cec <__subdf3+0x4dc>
80016cac:	02000313          	li	t1,32
80016cb0:	40d30333          	sub	t1,t1,a3
80016cb4:	00d55e33          	srl	t3,a0,a3
80016cb8:	00679833          	sll	a6,a5,t1
80016cbc:	00651533          	sll	a0,a0,t1
80016cc0:	01c86833          	or	a6,a6,t3
80016cc4:	00a03533          	snez	a0,a0
80016cc8:	00a86533          	or	a0,a6,a0
80016ccc:	00d7d6b3          	srl	a3,a5,a3
80016cd0:	40a60533          	sub	a0,a2,a0
80016cd4:	40d707b3          	sub	a5,a4,a3
80016cd8:	00a63633          	sltu	a2,a2,a0
80016cdc:	40c787b3          	sub	a5,a5,a2
80016ce0:	00088413          	mv	s0,a7
80016ce4:	00058493          	mv	s1,a1
80016ce8:	ee5ff06f          	j	80016bcc <__subdf3+0x3bc>
80016cec:	fe068813          	addi	a6,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80016cf0:	02000e13          	li	t3,32
80016cf4:	0107d833          	srl	a6,a5,a6
80016cf8:	00000313          	li	t1,0
80016cfc:	01c68863          	beq	a3,t3,80016d0c <__subdf3+0x4fc>
80016d00:	04000313          	li	t1,64
80016d04:	40d306b3          	sub	a3,t1,a3
80016d08:	00d79333          	sll	t1,a5,a3
80016d0c:	00a36533          	or	a0,t1,a0
80016d10:	00a03533          	snez	a0,a0
80016d14:	00a86533          	or	a0,a6,a0
80016d18:	00000693          	li	a3,0
80016d1c:	fb5ff06f          	j	80016cd0 <__subdf3+0x4c0>
80016d20:	00a7e533          	or	a0,a5,a0
80016d24:	00a03533          	snez	a0,a0
80016d28:	ff1ff06f          	j	80016d18 <__subdf3+0x508>
80016d2c:	00140693          	addi	a3,s0,1
80016d30:	7fe6f693          	andi	a3,a3,2046
80016d34:	08069863          	bnez	a3,80016dc4 <__subdf3+0x5b4>
80016d38:	00a7e833          	or	a6,a5,a0
80016d3c:	00c766b3          	or	a3,a4,a2
80016d40:	06041063          	bnez	s0,80016da0 <__subdf3+0x590>
80016d44:	00081c63          	bnez	a6,80016d5c <__subdf3+0x54c>
80016d48:	24068e63          	beqz	a3,80016fa4 <__subdf3+0x794>
80016d4c:	00070793          	mv	a5,a4
80016d50:	00060513          	mv	a0,a2
80016d54:	00058493          	mv	s1,a1
80016d58:	b71ff06f          	j	800168c8 <__subdf3+0xb8>
80016d5c:	b60686e3          	beqz	a3,800168c8 <__subdf3+0xb8>
80016d60:	40c50833          	sub	a6,a0,a2
80016d64:	010538b3          	sltu	a7,a0,a6
80016d68:	40e786b3          	sub	a3,a5,a4
80016d6c:	411686b3          	sub	a3,a3,a7
80016d70:	00869893          	slli	a7,a3,0x8
80016d74:	0008dc63          	bgez	a7,80016d8c <__subdf3+0x57c>
80016d78:	40a60533          	sub	a0,a2,a0
80016d7c:	40f707b3          	sub	a5,a4,a5
80016d80:	00a63633          	sltu	a2,a2,a0
80016d84:	40c787b3          	sub	a5,a5,a2
80016d88:	fcdff06f          	j	80016d54 <__subdf3+0x544>
80016d8c:	00d86533          	or	a0,a6,a3
80016d90:	22050263          	beqz	a0,80016fb4 <__subdf3+0x7a4>
80016d94:	00068793          	mv	a5,a3
80016d98:	00080513          	mv	a0,a6
80016d9c:	b2dff06f          	j	800168c8 <__subdf3+0xb8>
80016da0:	00081e63          	bnez	a6,80016dbc <__subdf3+0x5ac>
80016da4:	20068c63          	beqz	a3,80016fbc <__subdf3+0x7ac>
80016da8:	00070793          	mv	a5,a4
80016dac:	00060513          	mv	a0,a2
80016db0:	00058493          	mv	s1,a1
80016db4:	7ff00413          	li	s0,2047
80016db8:	b11ff06f          	j	800168c8 <__subdf3+0xb8>
80016dbc:	fe068ce3          	beqz	a3,80016db4 <__subdf3+0x5a4>
80016dc0:	d45ff06f          	j	80016b04 <__subdf3+0x2f4>
80016dc4:	40c509b3          	sub	s3,a0,a2
80016dc8:	013536b3          	sltu	a3,a0,s3
80016dcc:	40e78933          	sub	s2,a5,a4
80016dd0:	40d90933          	sub	s2,s2,a3
80016dd4:	00891693          	slli	a3,s2,0x8
80016dd8:	0806d463          	bgez	a3,80016e60 <__subdf3+0x650>
80016ddc:	40a609b3          	sub	s3,a2,a0
80016de0:	40f707b3          	sub	a5,a4,a5
80016de4:	01363633          	sltu	a2,a2,s3
80016de8:	40c78933          	sub	s2,a5,a2
80016dec:	00058493          	mv	s1,a1
80016df0:	08090263          	beqz	s2,80016e74 <__subdf3+0x664>
80016df4:	00090513          	mv	a0,s2
80016df8:	56c000ef          	jal	ra,80017364 <__clzsi2>
80016dfc:	ff850713          	addi	a4,a0,-8
80016e00:	01f00793          	li	a5,31
80016e04:	08e7c063          	blt	a5,a4,80016e84 <__subdf3+0x674>
80016e08:	02000693          	li	a3,32
80016e0c:	40e686b3          	sub	a3,a3,a4
80016e10:	00e917b3          	sll	a5,s2,a4
80016e14:	00d9d6b3          	srl	a3,s3,a3
80016e18:	00f6e6b3          	or	a3,a3,a5
80016e1c:	00e99533          	sll	a0,s3,a4
80016e20:	0a874463          	blt	a4,s0,80016ec8 <__subdf3+0x6b8>
80016e24:	40870733          	sub	a4,a4,s0
80016e28:	00170793          	addi	a5,a4,1
80016e2c:	01f00613          	li	a2,31
80016e30:	06f64263          	blt	a2,a5,80016e94 <__subdf3+0x684>
80016e34:	02000713          	li	a4,32
80016e38:	40f70733          	sub	a4,a4,a5
80016e3c:	00f555b3          	srl	a1,a0,a5
80016e40:	00e69633          	sll	a2,a3,a4
80016e44:	00e51533          	sll	a0,a0,a4
80016e48:	00b66633          	or	a2,a2,a1
80016e4c:	00a03533          	snez	a0,a0
80016e50:	00a66533          	or	a0,a2,a0
80016e54:	00f6d7b3          	srl	a5,a3,a5
80016e58:	00000413          	li	s0,0
80016e5c:	a6dff06f          	j	800168c8 <__subdf3+0xb8>
80016e60:	0129e533          	or	a0,s3,s2
80016e64:	f80516e3          	bnez	a0,80016df0 <__subdf3+0x5e0>
80016e68:	00000793          	li	a5,0
80016e6c:	00000413          	li	s0,0
80016e70:	13c0006f          	j	80016fac <__subdf3+0x79c>
80016e74:	00098513          	mv	a0,s3
80016e78:	4ec000ef          	jal	ra,80017364 <__clzsi2>
80016e7c:	02050513          	addi	a0,a0,32
80016e80:	f7dff06f          	j	80016dfc <__subdf3+0x5ec>
80016e84:	fd850513          	addi	a0,a0,-40
80016e88:	00a996b3          	sll	a3,s3,a0
80016e8c:	00000513          	li	a0,0
80016e90:	f91ff06f          	j	80016e20 <__subdf3+0x610>
80016e94:	fe170713          	addi	a4,a4,-31
80016e98:	02000593          	li	a1,32
80016e9c:	00e6d733          	srl	a4,a3,a4
80016ea0:	00000613          	li	a2,0
80016ea4:	00b78863          	beq	a5,a1,80016eb4 <__subdf3+0x6a4>
80016ea8:	04000613          	li	a2,64
80016eac:	40f60633          	sub	a2,a2,a5
80016eb0:	00c69633          	sll	a2,a3,a2
80016eb4:	00c56533          	or	a0,a0,a2
80016eb8:	00a03533          	snez	a0,a0
80016ebc:	00a76533          	or	a0,a4,a0
80016ec0:	00000793          	li	a5,0
80016ec4:	f95ff06f          	j	80016e58 <__subdf3+0x648>
80016ec8:	ff8007b7          	lui	a5,0xff800
80016ecc:	fff78793          	addi	a5,a5,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
80016ed0:	40e40433          	sub	s0,s0,a4
80016ed4:	00f6f7b3          	and	a5,a3,a5
80016ed8:	9f1ff06f          	j	800168c8 <__subdf3+0xb8>
80016edc:	00070793          	mv	a5,a4
80016ee0:	00060513          	mv	a0,a2
80016ee4:	00058413          	mv	s0,a1
80016ee8:	9e1ff06f          	j	800168c8 <__subdf3+0xb8>
80016eec:	00070793          	mv	a5,a4
80016ef0:	00060513          	mv	a0,a2
80016ef4:	9d5ff06f          	j	800168c8 <__subdf3+0xb8>
80016ef8:	7ff00413          	li	s0,2047
80016efc:	00000793          	li	a5,0
80016f00:	00000513          	li	a0,0
80016f04:	00879713          	slli	a4,a5,0x8
80016f08:	00075e63          	bgez	a4,80016f24 <__subdf3+0x714>
80016f0c:	00140413          	addi	s0,s0,1
80016f10:	7ff00713          	li	a4,2047
80016f14:	0ae40c63          	beq	s0,a4,80016fcc <__subdf3+0x7bc>
80016f18:	ff800737          	lui	a4,0xff800
80016f1c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8c9b>
80016f20:	00e7f7b3          	and	a5,a5,a4
80016f24:	01d79713          	slli	a4,a5,0x1d
80016f28:	00355513          	srli	a0,a0,0x3
80016f2c:	00a76533          	or	a0,a4,a0
80016f30:	7ff00713          	li	a4,2047
80016f34:	0037d793          	srli	a5,a5,0x3
80016f38:	00e41e63          	bne	s0,a4,80016f54 <__subdf3+0x744>
80016f3c:	00f56533          	or	a0,a0,a5
80016f40:	00000793          	li	a5,0
80016f44:	00050863          	beqz	a0,80016f54 <__subdf3+0x744>
80016f48:	000807b7          	lui	a5,0x80
80016f4c:	00000513          	li	a0,0
80016f50:	00000493          	li	s1,0
80016f54:	01441713          	slli	a4,s0,0x14
80016f58:	7ff006b7          	lui	a3,0x7ff00
80016f5c:	00c79793          	slli	a5,a5,0xc
80016f60:	01c12083          	lw	ra,28(sp)
80016f64:	01812403          	lw	s0,24(sp)
80016f68:	00d77733          	and	a4,a4,a3
80016f6c:	00c7d793          	srli	a5,a5,0xc
80016f70:	01f49493          	slli	s1,s1,0x1f
80016f74:	00f767b3          	or	a5,a4,a5
80016f78:	0097e733          	or	a4,a5,s1
80016f7c:	01012903          	lw	s2,16(sp)
80016f80:	01412483          	lw	s1,20(sp)
80016f84:	00c12983          	lw	s3,12(sp)
80016f88:	00070593          	mv	a1,a4
80016f8c:	02010113          	addi	sp,sp,32
80016f90:	00008067          	ret
80016f94:	00070793          	mv	a5,a4
80016f98:	00060513          	mv	a0,a2
80016f9c:	00080413          	mv	s0,a6
80016fa0:	db5ff06f          	j	80016d54 <__subdf3+0x544>
80016fa4:	00000793          	li	a5,0
80016fa8:	00000513          	li	a0,0
80016fac:	00000493          	li	s1,0
80016fb0:	f55ff06f          	j	80016f04 <__subdf3+0x6f4>
80016fb4:	00000793          	li	a5,0
80016fb8:	ff5ff06f          	j	80016fac <__subdf3+0x79c>
80016fbc:	00000513          	li	a0,0
80016fc0:	00000493          	li	s1,0
80016fc4:	004007b7          	lui	a5,0x400
80016fc8:	b49ff06f          	j	80016b10 <__subdf3+0x300>
80016fcc:	00000793          	li	a5,0
80016fd0:	00000513          	li	a0,0
80016fd4:	f51ff06f          	j	80016f24 <__subdf3+0x714>

80016fd8 <__fixdfsi>:
80016fd8:	0145d713          	srli	a4,a1,0x14
80016fdc:	001006b7          	lui	a3,0x100
80016fe0:	fff68793          	addi	a5,a3,-1 # fffff <font6x8-0x7ff0002d>
80016fe4:	7ff77713          	andi	a4,a4,2047
80016fe8:	3fe00613          	li	a2,1022
80016fec:	00b7f7b3          	and	a5,a5,a1
80016ff0:	01f5d593          	srli	a1,a1,0x1f
80016ff4:	04e65e63          	bge	a2,a4,80017050 <__fixdfsi+0x78>
80016ff8:	41d00613          	li	a2,1053
80016ffc:	00e65a63          	bge	a2,a4,80017010 <__fixdfsi+0x38>
80017000:	80000537          	lui	a0,0x80000
80017004:	fff54513          	not	a0,a0
80017008:	00a58533          	add	a0,a1,a0
8001700c:	00008067          	ret
80017010:	00d7e7b3          	or	a5,a5,a3
80017014:	43300693          	li	a3,1075
80017018:	40e686b3          	sub	a3,a3,a4
8001701c:	01f00613          	li	a2,31
80017020:	02d64063          	blt	a2,a3,80017040 <__fixdfsi+0x68>
80017024:	bed70713          	addi	a4,a4,-1043
80017028:	00e797b3          	sll	a5,a5,a4
8001702c:	00d55533          	srl	a0,a0,a3
80017030:	00a7e533          	or	a0,a5,a0
80017034:	02058063          	beqz	a1,80017054 <__fixdfsi+0x7c>
80017038:	40a00533          	neg	a0,a0
8001703c:	00008067          	ret
80017040:	41300513          	li	a0,1043
80017044:	40e50533          	sub	a0,a0,a4
80017048:	00a7d533          	srl	a0,a5,a0
8001704c:	fe9ff06f          	j	80017034 <__fixdfsi+0x5c>
80017050:	00000513          	li	a0,0
80017054:	00008067          	ret

80017058 <__fixunsdfsi>:
80017058:	0145d713          	srli	a4,a1,0x14
8001705c:	00100837          	lui	a6,0x100
80017060:	fff80793          	addi	a5,a6,-1 # fffff <font6x8-0x7ff0002d>
80017064:	7ff77713          	andi	a4,a4,2047
80017068:	3fe00613          	li	a2,1022
8001706c:	00b7f7b3          	and	a5,a5,a1
80017070:	00050693          	mv	a3,a0
80017074:	01f5d593          	srli	a1,a1,0x1f
80017078:	04e65a63          	bge	a2,a4,800170cc <__fixunsdfsi+0x74>
8001707c:	41f00613          	li	a2,1055
80017080:	40b60633          	sub	a2,a2,a1
80017084:	fff58513          	addi	a0,a1,-1
80017088:	04c75463          	bge	a4,a2,800170d0 <__fixunsdfsi+0x78>
8001708c:	00000513          	li	a0,0
80017090:	04059063          	bnez	a1,800170d0 <__fixunsdfsi+0x78>
80017094:	43300513          	li	a0,1075
80017098:	40e50533          	sub	a0,a0,a4
8001709c:	01f00613          	li	a2,31
800170a0:	0107e7b3          	or	a5,a5,a6
800170a4:	00a64c63          	blt	a2,a0,800170bc <__fixunsdfsi+0x64>
800170a8:	bed70713          	addi	a4,a4,-1043
800170ac:	00e797b3          	sll	a5,a5,a4
800170b0:	00a6d533          	srl	a0,a3,a0
800170b4:	00a7e533          	or	a0,a5,a0
800170b8:	00008067          	ret
800170bc:	41300513          	li	a0,1043
800170c0:	40e50533          	sub	a0,a0,a4
800170c4:	00a7d533          	srl	a0,a5,a0
800170c8:	00008067          	ret
800170cc:	00000513          	li	a0,0
800170d0:	00008067          	ret

800170d4 <__floatsidf>:
800170d4:	ff010113          	addi	sp,sp,-16
800170d8:	00112623          	sw	ra,12(sp)
800170dc:	00812423          	sw	s0,8(sp)
800170e0:	00912223          	sw	s1,4(sp)
800170e4:	08050663          	beqz	a0,80017170 <__floatsidf+0x9c>
800170e8:	41f55793          	srai	a5,a0,0x1f
800170ec:	00a7c433          	xor	s0,a5,a0
800170f0:	40f40433          	sub	s0,s0,a5
800170f4:	01f55493          	srli	s1,a0,0x1f
800170f8:	00040513          	mv	a0,s0
800170fc:	268000ef          	jal	ra,80017364 <__clzsi2>
80017100:	41e00713          	li	a4,1054
80017104:	00a00793          	li	a5,10
80017108:	40a70733          	sub	a4,a4,a0
8001710c:	04a7c863          	blt	a5,a0,8001715c <__floatsidf+0x88>
80017110:	00b00793          	li	a5,11
80017114:	40a787b3          	sub	a5,a5,a0
80017118:	01550513          	addi	a0,a0,21 # 80000015 <__clzsi2+0xfffe8cb1>
8001711c:	00f457b3          	srl	a5,s0,a5
80017120:	00a41433          	sll	s0,s0,a0
80017124:	00048513          	mv	a0,s1
80017128:	00c79793          	slli	a5,a5,0xc
8001712c:	01471713          	slli	a4,a4,0x14
80017130:	00c7d793          	srli	a5,a5,0xc
80017134:	01f51513          	slli	a0,a0,0x1f
80017138:	00f767b3          	or	a5,a4,a5
8001713c:	00c12083          	lw	ra,12(sp)
80017140:	00a7e733          	or	a4,a5,a0
80017144:	00040513          	mv	a0,s0
80017148:	00812403          	lw	s0,8(sp)
8001714c:	00412483          	lw	s1,4(sp)
80017150:	00070593          	mv	a1,a4
80017154:	01010113          	addi	sp,sp,16
80017158:	00008067          	ret
8001715c:	ff550513          	addi	a0,a0,-11
80017160:	00a417b3          	sll	a5,s0,a0
80017164:	00048513          	mv	a0,s1
80017168:	00000413          	li	s0,0
8001716c:	fbdff06f          	j	80017128 <__floatsidf+0x54>
80017170:	00000713          	li	a4,0
80017174:	00000793          	li	a5,0
80017178:	ff1ff06f          	j	80017168 <__floatsidf+0x94>

8001717c <__floatunsidf>:
8001717c:	ff010113          	addi	sp,sp,-16
80017180:	00812423          	sw	s0,8(sp)
80017184:	00112623          	sw	ra,12(sp)
80017188:	00050413          	mv	s0,a0
8001718c:	06050263          	beqz	a0,800171f0 <__floatunsidf+0x74>
80017190:	1d4000ef          	jal	ra,80017364 <__clzsi2>
80017194:	41e00713          	li	a4,1054
80017198:	00a00793          	li	a5,10
8001719c:	40a70733          	sub	a4,a4,a0
800171a0:	04a7c063          	blt	a5,a0,800171e0 <__floatunsidf+0x64>
800171a4:	00b00793          	li	a5,11
800171a8:	40a787b3          	sub	a5,a5,a0
800171ac:	01550513          	addi	a0,a0,21
800171b0:	00f457b3          	srl	a5,s0,a5
800171b4:	00a41433          	sll	s0,s0,a0
800171b8:	00c12083          	lw	ra,12(sp)
800171bc:	00040513          	mv	a0,s0
800171c0:	00c79793          	slli	a5,a5,0xc
800171c4:	00812403          	lw	s0,8(sp)
800171c8:	01471713          	slli	a4,a4,0x14
800171cc:	00c7d793          	srli	a5,a5,0xc
800171d0:	00f766b3          	or	a3,a4,a5
800171d4:	00068593          	mv	a1,a3
800171d8:	01010113          	addi	sp,sp,16
800171dc:	00008067          	ret
800171e0:	ff550793          	addi	a5,a0,-11
800171e4:	00f417b3          	sll	a5,s0,a5
800171e8:	00000413          	li	s0,0
800171ec:	fcdff06f          	j	800171b8 <__floatunsidf+0x3c>
800171f0:	00000793          	li	a5,0
800171f4:	00000713          	li	a4,0
800171f8:	fc1ff06f          	j	800171b8 <__floatunsidf+0x3c>

800171fc <__mulsi3>:
800171fc:	00050613          	mv	a2,a0
80017200:	00000513          	li	a0,0
80017204:	0015f693          	andi	a3,a1,1
80017208:	00068463          	beqz	a3,80017210 <__mulsi3+0x14>
8001720c:	00c50533          	add	a0,a0,a2
80017210:	0015d593          	srli	a1,a1,0x1
80017214:	00161613          	slli	a2,a2,0x1
80017218:	fe0596e3          	bnez	a1,80017204 <__mulsi3+0x8>
8001721c:	00008067          	ret

80017220 <__muldi3>:
80017220:	00050313          	mv	t1,a0
80017224:	ff010113          	addi	sp,sp,-16
80017228:	00060513          	mv	a0,a2
8001722c:	00068893          	mv	a7,a3
80017230:	00112623          	sw	ra,12(sp)
80017234:	00030613          	mv	a2,t1
80017238:	00050693          	mv	a3,a0
8001723c:	00000713          	li	a4,0
80017240:	00000793          	li	a5,0
80017244:	00000813          	li	a6,0
80017248:	0016fe13          	andi	t3,a3,1
8001724c:	00171e93          	slli	t4,a4,0x1
80017250:	000e0c63          	beqz	t3,80017268 <__muldi3+0x48>
80017254:	01060e33          	add	t3,a2,a6
80017258:	010e3833          	sltu	a6,t3,a6
8001725c:	00e787b3          	add	a5,a5,a4
80017260:	00f807b3          	add	a5,a6,a5
80017264:	000e0813          	mv	a6,t3
80017268:	01f65713          	srli	a4,a2,0x1f
8001726c:	0016d693          	srli	a3,a3,0x1
80017270:	00eee733          	or	a4,t4,a4
80017274:	00161613          	slli	a2,a2,0x1
80017278:	fc0698e3          	bnez	a3,80017248 <__muldi3+0x28>
8001727c:	00058663          	beqz	a1,80017288 <__muldi3+0x68>
80017280:	f7dff0ef          	jal	ra,800171fc <__mulsi3>
80017284:	00a787b3          	add	a5,a5,a0
80017288:	00088a63          	beqz	a7,8001729c <__muldi3+0x7c>
8001728c:	00030513          	mv	a0,t1
80017290:	00088593          	mv	a1,a7
80017294:	f69ff0ef          	jal	ra,800171fc <__mulsi3>
80017298:	00f507b3          	add	a5,a0,a5
8001729c:	00c12083          	lw	ra,12(sp)
800172a0:	00080513          	mv	a0,a6
800172a4:	00078593          	mv	a1,a5
800172a8:	01010113          	addi	sp,sp,16
800172ac:	00008067          	ret

800172b0 <__divsi3>:
800172b0:	06054063          	bltz	a0,80017310 <__umodsi3+0x10>
800172b4:	0605c663          	bltz	a1,80017320 <__umodsi3+0x20>

800172b8 <__udivsi3>:
800172b8:	00058613          	mv	a2,a1
800172bc:	00050593          	mv	a1,a0
800172c0:	fff00513          	li	a0,-1
800172c4:	02060c63          	beqz	a2,800172fc <__udivsi3+0x44>
800172c8:	00100693          	li	a3,1
800172cc:	00b67a63          	bgeu	a2,a1,800172e0 <__udivsi3+0x28>
800172d0:	00c05863          	blez	a2,800172e0 <__udivsi3+0x28>
800172d4:	00161613          	slli	a2,a2,0x1
800172d8:	00169693          	slli	a3,a3,0x1
800172dc:	feb66ae3          	bltu	a2,a1,800172d0 <__udivsi3+0x18>
800172e0:	00000513          	li	a0,0
800172e4:	00c5e663          	bltu	a1,a2,800172f0 <__udivsi3+0x38>
800172e8:	40c585b3          	sub	a1,a1,a2
800172ec:	00d56533          	or	a0,a0,a3
800172f0:	0016d693          	srli	a3,a3,0x1
800172f4:	00165613          	srli	a2,a2,0x1
800172f8:	fe0696e3          	bnez	a3,800172e4 <__udivsi3+0x2c>
800172fc:	00008067          	ret

80017300 <__umodsi3>:
80017300:	00008293          	mv	t0,ra
80017304:	fb5ff0ef          	jal	ra,800172b8 <__udivsi3>
80017308:	00058513          	mv	a0,a1
8001730c:	00028067          	jr	t0
80017310:	40a00533          	neg	a0,a0
80017314:	0005d863          	bgez	a1,80017324 <__umodsi3+0x24>
80017318:	40b005b3          	neg	a1,a1
8001731c:	f9dff06f          	j	800172b8 <__udivsi3>
80017320:	40b005b3          	neg	a1,a1
80017324:	00008293          	mv	t0,ra
80017328:	f91ff0ef          	jal	ra,800172b8 <__udivsi3>
8001732c:	40a00533          	neg	a0,a0
80017330:	00028067          	jr	t0

80017334 <__modsi3>:
80017334:	00008293          	mv	t0,ra
80017338:	0005ca63          	bltz	a1,8001734c <__modsi3+0x18>
8001733c:	00054c63          	bltz	a0,80017354 <__modsi3+0x20>
80017340:	f79ff0ef          	jal	ra,800172b8 <__udivsi3>
80017344:	00058513          	mv	a0,a1
80017348:	00028067          	jr	t0
8001734c:	40b005b3          	neg	a1,a1
80017350:	fe0558e3          	bgez	a0,80017340 <__modsi3+0xc>
80017354:	40a00533          	neg	a0,a0
80017358:	f61ff0ef          	jal	ra,800172b8 <__udivsi3>
8001735c:	40b00533          	neg	a0,a1
80017360:	00028067          	jr	t0

80017364 <__clzsi2>:
80017364:	000107b7          	lui	a5,0x10
80017368:	02f57a63          	bgeu	a0,a5,8001739c <__clzsi2+0x38>
8001736c:	0ff00793          	li	a5,255
80017370:	00a7b7b3          	sltu	a5,a5,a0
80017374:	00379793          	slli	a5,a5,0x3
80017378:	80000737          	lui	a4,0x80000
8001737c:	02000693          	li	a3,32
80017380:	40f686b3          	sub	a3,a3,a5
80017384:	00f55533          	srl	a0,a0,a5
80017388:	5d870793          	addi	a5,a4,1496 # 800005d8 <__clzsi2+0xfffe9274>
8001738c:	00a78533          	add	a0,a5,a0
80017390:	00054503          	lbu	a0,0(a0)
80017394:	40a68533          	sub	a0,a3,a0
80017398:	00008067          	ret
8001739c:	01000737          	lui	a4,0x1000
800173a0:	01000793          	li	a5,16
800173a4:	fce56ae3          	bltu	a0,a4,80017378 <__clzsi2+0x14>
800173a8:	01800793          	li	a5,24
800173ac:	fcdff06f          	j	80017378 <__clzsi2+0x14>
