
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
80010100:	7250106f          	j	80012024 <_external_interrupt>
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
80010200:	6290106f          	j	80012028 <_misaligned_instruction>

80010204 <_start>:
80010204:	00000117          	auipc	sp,0x0
80010208:	dfc10113          	addi	sp,sp,-516 # 80010000 <__stack_top>
8001020c:	00000097          	auipc	ra,0x0
80010210:	00c08093          	addi	ra,ra,12 # 80010218 <exec_done>
80010214:	1e80206f          	j	800123fc <main>

80010218 <exec_done>:
80010218:	0000006f          	j	80010218 <exec_done>
	...

80010284 <HAL_I2C_WriteByte>:
80010284:	c00047b7          	lui	a5,0xc0004
80010288:	00a78023          	sb	a0,0(a5) # c0004000 <__clzsi2+0x3ffecb2c>
8001028c:	00008067          	ret

80010290 <HAL_I2C_ReadByte>:
80010290:	c00047b7          	lui	a5,0xc0004
80010294:	0007c503          	lbu	a0,0(a5) # c0004000 <__clzsi2+0x3ffecb2c>
80010298:	0ff57513          	andi	a0,a0,255
8001029c:	00008067          	ret

800102a0 <HAL_I2C_SetDivider>:
800102a0:	c00047b7          	lui	a5,0xc0004
800102a4:	00a79223          	sh	a0,4(a5) # c0004004 <__clzsi2+0x3ffecb30>
800102a8:	00008067          	ret

800102ac <HAL_I2C_ReadACK>:
800102ac:	c00047b7          	lui	a5,0xc0004
800102b0:	0017c503          	lbu	a0,1(a5) # c0004001 <__clzsi2+0x3ffecb2d>
800102b4:	0ff57513          	andi	a0,a0,255
800102b8:	00008067          	ret

800102bc <HAL_I2C_WriteACK>:
800102bc:	00154513          	xori	a0,a0,1
800102c0:	c00047b7          	lui	a5,0xc0004
800102c4:	00a780a3          	sb	a0,1(a5) # c0004001 <__clzsi2+0x3ffecb2d>
800102c8:	00008067          	ret

800102cc <HAL_I2C_SetPins>:
800102cc:	c00047b7          	lui	a5,0xc0004
800102d0:	00a78123          	sb	a0,2(a5) # c0004002 <__clzsi2+0x3ffecb2e>
800102d4:	00008067          	ret

800102d8 <HAL_I2C_GetPins>:
800102d8:	c00047b7          	lui	a5,0xc0004
800102dc:	0027c503          	lbu	a0,2(a5) # c0004002 <__clzsi2+0x3ffecb2e>
800102e0:	0ff57513          	andi	a0,a0,255
800102e4:	00008067          	ret

800102e8 <HAL_SPI_WriteByte>:
800102e8:	c00037b7          	lui	a5,0xc0003
800102ec:	00a78023          	sb	a0,0(a5) # c0003000 <__clzsi2+0x3ffebb2c>
800102f0:	00008067          	ret

800102f4 <HAL_SPI_ReadByte>:
800102f4:	c00037b7          	lui	a5,0xc0003
800102f8:	0007c503          	lbu	a0,0(a5) # c0003000 <__clzsi2+0x3ffebb2c>
800102fc:	0ff57513          	andi	a0,a0,255
80010300:	00008067          	ret

80010304 <HAL_SPI_ReadByteWithAck>:
80010304:	c00037b7          	lui	a5,0xc0003
80010308:	0037c503          	lbu	a0,3(a5) # c0003003 <__clzsi2+0x3ffebb2f>
8001030c:	0ff57513          	andi	a0,a0,255
80010310:	00008067          	ret

80010314 <HAL_SPI_SetDivider>:
80010314:	c00037b7          	lui	a5,0xc0003
80010318:	00a780a3          	sb	a0,1(a5) # c0003001 <__clzsi2+0x3ffebb2d>
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
8001035c:	00a78123          	sb	a0,2(a5) # c0003002 <__clzsi2+0x3ffebb2e>
80010360:	00008067          	ret

80010364 <FontSizeConvert>:
80010364:	800037b7          	lui	a5,0x80003
80010368:	73a7c783          	lbu	a5,1850(a5) # 8000373a <__clzsi2+0xfffec266>
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
800103c0:	72a78d23          	sb	a0,1850(a5) # 8000373a <__clzsi2+0xfffec266>
800103c4:	00008067          	ret

800103c8 <SetFontColor>:
800103c8:	800037b7          	lui	a5,0x80003
800103cc:	74a79023          	sh	a0,1856(a5) # 80003740 <__clzsi2+0xfffec26c>
800103d0:	800037b7          	lui	a5,0x80003
800103d4:	72b79a23          	sh	a1,1844(a5) # 80003734 <__clzsi2+0xfffec260>
800103d8:	800037b7          	lui	a5,0x80003
800103dc:	72c79f23          	sh	a2,1854(a5) # 8000373e <__clzsi2+0xfffec26a>
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
80010404:	770000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
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
80010448:	73040413          	addi	s0,s0,1840 # 80000730 <__clzsi2+0xfffe925c>
8001044c:	000039b7          	lui	s3,0x3
80010450:	724000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
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
80010490:	6e4000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010494:	02812403          	lw	s0,40(sp)
80010498:	02c12083          	lw	ra,44(sp)
8001049c:	02412483          	lw	s1,36(sp)
800104a0:	02012903          	lw	s2,32(sp)
800104a4:	01c12983          	lw	s3,28(sp)
800104a8:	01812a03          	lw	s4,24(sp)
800104ac:	00500513          	li	a0,5
800104b0:	03010113          	addi	sp,sp,48
800104b4:	6900006f          	j	80010b44 <HAL_Timebase_DelayMS>

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
800104ec:	688000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
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
80010534:	640000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010538:	412485b3          	sub	a1,s1,s2
8001053c:	41340533          	sub	a0,s0,s3
80010540:	00158593          	addi	a1,a1,1
80010544:	00150513          	addi	a0,a0,1
80010548:	625060ef          	jal	ra,8001736c <__mulsi3>
8001054c:	00151493          	slli	s1,a0,0x1
80010550:	00000413          	li	s0,0
80010554:	80003937          	lui	s2,0x80003
80010558:	02849a63          	bne	s1,s0,8001058c <HAL_OLED_DrawBitmap+0xd4>
8001055c:	01d00513          	li	a0,29
80010560:	614000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010564:	02812403          	lw	s0,40(sp)
80010568:	02c12083          	lw	ra,44(sp)
8001056c:	02412483          	lw	s1,36(sp)
80010570:	02012903          	lw	s2,32(sp)
80010574:	01c12983          	lw	s3,28(sp)
80010578:	01812a03          	lw	s4,24(sp)
8001057c:	01412a83          	lw	s5,20(sp)
80010580:	00500513          	li	a0,5
80010584:	03010113          	addi	sp,sp,48
80010588:	5bc0006f          	j	80010b44 <HAL_Timebase_DelayMS>
8001058c:	73494503          	lbu	a0,1844(s2) # 80003734 <__clzsi2+0xfffec260>
80010590:	00140413          	addi	s0,s0,1
80010594:	d55ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
80010598:	fc1ff06f          	j	80010558 <HAL_OLED_DrawBitmap+0xa0>

8001059c <HAL_OLED_ClearScreen>:
8001059c:	800007b7          	lui	a5,0x80000
800105a0:	ff010113          	addi	sp,sp,-16
800105a4:	73078793          	addi	a5,a5,1840 # 80000730 <__clzsi2+0xfffe925c>
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
800105f4:	720788a3          	sb	zero,1841(a5) # 80003731 <__clzsi2+0xfffec25d>
800105f8:	800037b7          	lui	a5,0x80003
800105fc:	72078ca3          	sb	zero,1849(a5) # 80003739 <__clzsi2+0xfffec265>
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
8001062c:	00000593          	li	a1,0
80010630:	00000513          	li	a0,0
80010634:	cedff0ef          	jal	ra,80010320 <HAL_SPI_SetConfig>
80010638:	01500513          	li	a0,21
8001063c:	538000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010640:	01f00513          	li	a0,31
80010644:	524000ef          	jal	ra,80010b68 <HAL_GPIO_SetDirections>
80010648:	01400513          	li	a0,20
8001064c:	4f8000ef          	jal	ra,80010b44 <HAL_Timebase_DelayMS>
80010650:	01100513          	li	a0,17
80010654:	520000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010658:	00300513          	li	a0,3
8001065c:	4c8000ef          	jal	ra,80010b24 <HAL_Timebase_DelayUS>
80010660:	01500513          	li	a0,21
80010664:	510000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010668:	00300513          	li	a0,3
8001066c:	4b8000ef          	jal	ra,80010b24 <HAL_Timebase_DelayUS>
80010670:	01400513          	li	a0,20
80010674:	500000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
80010678:	800005b7          	lui	a1,0x80000
8001067c:	02c00613          	li	a2,44
80010680:	00058593          	mv	a1,a1
80010684:	00410513          	addi	a0,sp,4
80010688:	1c1010ef          	jal	ra,80012048 <memcpy>
8001068c:	00000413          	li	s0,0
80010690:	02c00493          	li	s1,44
80010694:	00410793          	addi	a5,sp,4
80010698:	008787b3          	add	a5,a5,s0
8001069c:	0007c503          	lbu	a0,0(a5)
800106a0:	00140413          	addi	s0,s0,1
800106a4:	c45ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
800106a8:	fe9416e3          	bne	s0,s1,80010694 <HAL_OLED_Init+0x8c>
800106ac:	01c00513          	li	a0,28
800106b0:	4c4000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
800106b4:	01900513          	li	a0,25
800106b8:	48c000ef          	jal	ra,80010b44 <HAL_Timebase_DelayMS>
800106bc:	0af00513          	li	a0,175
800106c0:	c29ff0ef          	jal	ra,800102e8 <HAL_SPI_WriteByte>
800106c4:	06400513          	li	a0,100
800106c8:	47c000ef          	jal	ra,80010b44 <HAL_Timebase_DelayMS>
800106cc:	01d00513          	li	a0,29
800106d0:	4a4000ef          	jal	ra,80010b74 <HAL_GPIO_SetOutputs>
800106d4:	800037b7          	lui	a5,0x80003
800106d8:	72078d23          	sb	zero,1850(a5) # 8000373a <__clzsi2+0xfffec266>
800106dc:	fff00713          	li	a4,-1
800106e0:	800037b7          	lui	a5,0x80003
800106e4:	74e79023          	sh	a4,1856(a5) # 80003740 <__clzsi2+0xfffec26c>
800106e8:	03812403          	lw	s0,56(sp)
800106ec:	800037b7          	lui	a5,0x80003
800106f0:	ca000713          	li	a4,-864
800106f4:	03c12083          	lw	ra,60(sp)
800106f8:	03412483          	lw	s1,52(sp)
800106fc:	72e79a23          	sh	a4,1844(a5) # 80003734 <__clzsi2+0xfffec260>
80010700:	800037b7          	lui	a5,0x80003
80010704:	72079f23          	sh	zero,1854(a5) # 8000373e <__clzsi2+0xfffec26a>
80010708:	04010113          	addi	sp,sp,64
8001070c:	e91ff06f          	j	8001059c <HAL_OLED_ClearScreen>

80010710 <HAL_OLED_SetPixel>:
80010710:	80000737          	lui	a4,0x80000
80010714:	0015f793          	andi	a5,a1,1
80010718:	0015d693          	srli	a3,a1,0x1
8001071c:	73070713          	addi	a4,a4,1840 # 80000730 <__clzsi2+0xfffe925c>
80010720:	02079263          	bnez	a5,80010744 <HAL_OLED_SetPixel+0x34>
80010724:	00169793          	slli	a5,a3,0x1
80010728:	00d787b3          	add	a5,a5,a3
8001072c:	00579793          	slli	a5,a5,0x5
80010730:	00a78533          	add	a0,a5,a0
80010734:	00151513          	slli	a0,a0,0x1
80010738:	00a70533          	add	a0,a4,a0
8001073c:	00c51023          	sh	a2,0(a0)
80010740:	00008067          	ret
80010744:	01f58593          	addi	a1,a1,31 # 8000001f <__clzsi2+0xfffe8b4b>
80010748:	40d585b3          	sub	a1,a1,a3
8001074c:	00159793          	slli	a5,a1,0x1
80010750:	00b785b3          	add	a1,a5,a1
80010754:	00559593          	slli	a1,a1,0x5
80010758:	00a585b3          	add	a1,a1,a0
8001075c:	00159593          	slli	a1,a1,0x1
80010760:	00b705b3          	add	a1,a4,a1
80010764:	00c59023          	sh	a2,0(a1)
80010768:	00008067          	ret

8001076c <HAL_OLED_PutChar>:
8001076c:	00a00713          	li	a4,10
80010770:	80003337          	lui	t1,0x80003
80010774:	800037b7          	lui	a5,0x80003
80010778:	00e50863          	beq	a0,a4,80010788 <HAL_OLED_PutChar+0x1c>
8001077c:	73134683          	lbu	a3,1841(t1) # 80003731 <__clzsi2+0xfffec25d>
80010780:	05f00713          	li	a4,95
80010784:	00d77a63          	bgeu	a4,a3,80010798 <HAL_OLED_PutChar+0x2c>
80010788:	7397c703          	lbu	a4,1849(a5) # 80003739 <__clzsi2+0xfffec265>
8001078c:	720308a3          	sb	zero,1841(t1)
80010790:	00870713          	addi	a4,a4,8
80010794:	72e78ca3          	sb	a4,1849(a5)
80010798:	7397c683          	lbu	a3,1849(a5)
8001079c:	03f00713          	li	a4,63
800107a0:	00d77463          	bgeu	a4,a3,800107a8 <HAL_OLED_PutChar+0x3c>
800107a4:	72078ca3          	sb	zero,1849(a5)
800107a8:	fe150713          	addi	a4,a0,-31
800107ac:	0ff77713          	andi	a4,a4,255
800107b0:	06000693          	li	a3,96
800107b4:	2ce6e663          	bltu	a3,a4,80010a80 <HAL_OLED_PutChar+0x314>
800107b8:	73134583          	lbu	a1,1841(t1)
800107bc:	7397ce83          	lbu	t4,1849(a5)
800107c0:	800037b7          	lui	a5,0x80003
800107c4:	7347d603          	lhu	a2,1844(a5) # 80003734 <__clzsi2+0xfffec260>
800107c8:	fd010113          	addi	sp,sp,-48
800107cc:	80000737          	lui	a4,0x80000
800107d0:	02812623          	sw	s0,44(sp)
800107d4:	02912423          	sw	s1,40(sp)
800107d8:	03212223          	sw	s2,36(sp)
800107dc:	03312023          	sw	s3,32(sp)
800107e0:	01412e23          	sw	s4,28(sp)
800107e4:	01512c23          	sw	s5,24(sp)
800107e8:	01612a23          	sw	s6,20(sp)
800107ec:	01712823          	sw	s7,16(sp)
800107f0:	01812623          	sw	s8,12(sp)
800107f4:	01912423          	sw	s9,8(sp)
800107f8:	00058893          	mv	a7,a1
800107fc:	00658393          	addi	t2,a1,6
80010800:	00058813          	mv	a6,a1
80010804:	008e8413          	addi	s0,t4,8
80010808:	73070713          	addi	a4,a4,1840 # 80000730 <__clzsi2+0xfffe925c>
8001080c:	000e8693          	mv	a3,t4
80010810:	0016f793          	andi	a5,a3,1
80010814:	4016de13          	srai	t3,a3,0x1
80010818:	00078663          	beqz	a5,80010824 <HAL_OLED_PutChar+0xb8>
8001081c:	01f68793          	addi	a5,a3,31
80010820:	41c78e33          	sub	t3,a5,t3
80010824:	001e1793          	slli	a5,t3,0x1
80010828:	01c787b3          	add	a5,a5,t3
8001082c:	00579793          	slli	a5,a5,0x5
80010830:	010787b3          	add	a5,a5,a6
80010834:	00179793          	slli	a5,a5,0x1
80010838:	00f707b3          	add	a5,a4,a5
8001083c:	00c79023          	sh	a2,0(a5)
80010840:	00168693          	addi	a3,a3,1
80010844:	fc8696e3          	bne	a3,s0,80010810 <HAL_OLED_PutChar+0xa4>
80010848:	00180813          	addi	a6,a6,1
8001084c:	fc7810e3          	bne	a6,t2,8001080c <HAL_OLED_PutChar+0xa0>
80010850:	800037b7          	lui	a5,0x80003
80010854:	7407d483          	lhu	s1,1856(a5) # 80003740 <__clzsi2+0xfffec26c>
80010858:	800037b7          	lui	a5,0x80003
8001085c:	73e7d803          	lhu	a6,1854(a5) # 8000373e <__clzsi2+0xfffec26a>
80010860:	00151793          	slli	a5,a0,0x1
80010864:	00a78533          	add	a0,a5,a0
80010868:	800006b7          	lui	a3,0x80000
8001086c:	00151513          	slli	a0,a0,0x1
80010870:	02c68793          	addi	a5,a3,44 # 8000002c <__clzsi2+0xfffe8b58>
80010874:	00a78533          	add	a0,a5,a0
80010878:	fff58593          	addi	a1,a1,-1
8001087c:	05d00913          	li	s2,93
80010880:	03e00993          	li	s3,62
80010884:	f4054f03          	lbu	t5,-192(a0)
80010888:	0ff8fe13          	andi	t3,a7,255
8001088c:	000e8693          	mv	a3,t4
80010890:	fffe0f93          	addi	t6,t3,-1
80010894:	001e0293          	addi	t0,t3,1
80010898:	001f7793          	andi	a5,t5,1
8001089c:	18078a63          	beqz	a5,80010a30 <HAL_OLED_PutChar+0x2c4>
800108a0:	0016fb13          	andi	s6,a3,1
800108a4:	0ff6fa93          	andi	s5,a3,255
800108a8:	4016da13          	srai	s4,a3,0x1
800108ac:	000b0663          	beqz	s6,800108b8 <HAL_OLED_PutChar+0x14c>
800108b0:	01f68793          	addi	a5,a3,31
800108b4:	41478a33          	sub	s4,a5,s4
800108b8:	001a1793          	slli	a5,s4,0x1
800108bc:	014787b3          	add	a5,a5,s4
800108c0:	00579793          	slli	a5,a5,0x5
800108c4:	011787b3          	add	a5,a5,a7
800108c8:	00179793          	slli	a5,a5,0x1
800108cc:	00f707b3          	add	a5,a4,a5
800108d0:	00979023          	sh	s1,0(a5)
800108d4:	14b96e63          	bltu	s2,a1,80010a30 <HAL_OLED_PutChar+0x2c4>
800108d8:	14068c63          	beqz	a3,80010a30 <HAL_OLED_PutChar+0x2c4>
800108dc:	14d9ca63          	blt	s3,a3,80010a30 <HAL_OLED_PutChar+0x2c4>
800108e0:	0ff6fa13          	andi	s4,a3,255
800108e4:	fffa0793          	addi	a5,s4,-1
800108e8:	4017dc13          	srai	s8,a5,0x1
800108ec:	0017f793          	andi	a5,a5,1
800108f0:	00078663          	beqz	a5,800108fc <HAL_OLED_PutChar+0x190>
800108f4:	01ea0793          	addi	a5,s4,30
800108f8:	41878c33          	sub	s8,a5,s8
800108fc:	001c1793          	slli	a5,s8,0x1
80010900:	01878bb3          	add	s7,a5,s8
80010904:	005b9b93          	slli	s7,s7,0x5
80010908:	01fb8bb3          	add	s7,s7,t6
8001090c:	001b9b93          	slli	s7,s7,0x1
80010910:	01770bb3          	add	s7,a4,s7
80010914:	000bdc83          	lhu	s9,0(s7)
80010918:	00cc9463          	bne	s9,a2,80010920 <HAL_OLED_PutChar+0x1b4>
8001091c:	010b9023          	sh	a6,0(s7)
80010920:	01878bb3          	add	s7,a5,s8
80010924:	005b9b93          	slli	s7,s7,0x5
80010928:	01cb8bb3          	add	s7,s7,t3
8001092c:	001b9b93          	slli	s7,s7,0x1
80010930:	01770bb3          	add	s7,a4,s7
80010934:	000bdc83          	lhu	s9,0(s7)
80010938:	00cc9463          	bne	s9,a2,80010940 <HAL_OLED_PutChar+0x1d4>
8001093c:	010b9023          	sh	a6,0(s7)
80010940:	018787b3          	add	a5,a5,s8
80010944:	00579793          	slli	a5,a5,0x5
80010948:	005787b3          	add	a5,a5,t0
8001094c:	00179793          	slli	a5,a5,0x1
80010950:	00f707b3          	add	a5,a4,a5
80010954:	0007db83          	lhu	s7,0(a5)
80010958:	00cb9463          	bne	s7,a2,80010960 <HAL_OLED_PutChar+0x1f4>
8001095c:	01079023          	sh	a6,0(a5)
80010960:	001ada93          	srli	s5,s5,0x1
80010964:	000b0663          	beqz	s6,80010970 <HAL_OLED_PutChar+0x204>
80010968:	01fa0793          	addi	a5,s4,31
8001096c:	41578ab3          	sub	s5,a5,s5
80010970:	001a9793          	slli	a5,s5,0x1
80010974:	01578b33          	add	s6,a5,s5
80010978:	005b1b13          	slli	s6,s6,0x5
8001097c:	01fb0b33          	add	s6,s6,t6
80010980:	001b1b13          	slli	s6,s6,0x1
80010984:	01670b33          	add	s6,a4,s6
80010988:	000b5b83          	lhu	s7,0(s6)
8001098c:	00cb9463          	bne	s7,a2,80010994 <HAL_OLED_PutChar+0x228>
80010990:	010b1023          	sh	a6,0(s6)
80010994:	015787b3          	add	a5,a5,s5
80010998:	00579793          	slli	a5,a5,0x5
8001099c:	005787b3          	add	a5,a5,t0
800109a0:	00179793          	slli	a5,a5,0x1
800109a4:	00f707b3          	add	a5,a4,a5
800109a8:	0007da83          	lhu	s5,0(a5)
800109ac:	00ca9463          	bne	s5,a2,800109b4 <HAL_OLED_PutChar+0x248>
800109b0:	01079023          	sh	a6,0(a5)
800109b4:	001a0793          	addi	a5,s4,1
800109b8:	4017da93          	srai	s5,a5,0x1
800109bc:	0017f793          	andi	a5,a5,1
800109c0:	00078663          	beqz	a5,800109cc <HAL_OLED_PutChar+0x260>
800109c4:	020a0a13          	addi	s4,s4,32
800109c8:	415a0ab3          	sub	s5,s4,s5
800109cc:	001a9793          	slli	a5,s5,0x1
800109d0:	01578a33          	add	s4,a5,s5
800109d4:	005a1a13          	slli	s4,s4,0x5
800109d8:	01fa0a33          	add	s4,s4,t6
800109dc:	001a1a13          	slli	s4,s4,0x1
800109e0:	01470a33          	add	s4,a4,s4
800109e4:	000a5b03          	lhu	s6,0(s4)
800109e8:	00cb1463          	bne	s6,a2,800109f0 <HAL_OLED_PutChar+0x284>
800109ec:	010a1023          	sh	a6,0(s4)
800109f0:	01578a33          	add	s4,a5,s5
800109f4:	005a1a13          	slli	s4,s4,0x5
800109f8:	01ca0a33          	add	s4,s4,t3
800109fc:	001a1a13          	slli	s4,s4,0x1
80010a00:	01470a33          	add	s4,a4,s4
80010a04:	000a5b03          	lhu	s6,0(s4)
80010a08:	00cb1463          	bne	s6,a2,80010a10 <HAL_OLED_PutChar+0x2a4>
80010a0c:	010a1023          	sh	a6,0(s4)
80010a10:	015787b3          	add	a5,a5,s5
80010a14:	00579793          	slli	a5,a5,0x5
80010a18:	005787b3          	add	a5,a5,t0
80010a1c:	00179793          	slli	a5,a5,0x1
80010a20:	00f707b3          	add	a5,a4,a5
80010a24:	0007da03          	lhu	s4,0(a5)
80010a28:	00ca1463          	bne	s4,a2,80010a30 <HAL_OLED_PutChar+0x2c4>
80010a2c:	01079023          	sh	a6,0(a5)
80010a30:	00168693          	addi	a3,a3,1
80010a34:	001f5f13          	srli	t5,t5,0x1
80010a38:	e68690e3          	bne	a3,s0,80010898 <HAL_OLED_PutChar+0x12c>
80010a3c:	00188893          	addi	a7,a7,1
80010a40:	00150513          	addi	a0,a0,1
80010a44:	00158593          	addi	a1,a1,1
80010a48:	e2789ee3          	bne	a7,t2,80010884 <HAL_OLED_PutChar+0x118>
80010a4c:	02c12403          	lw	s0,44(sp)
80010a50:	731308a3          	sb	a7,1841(t1)
80010a54:	02812483          	lw	s1,40(sp)
80010a58:	02412903          	lw	s2,36(sp)
80010a5c:	02012983          	lw	s3,32(sp)
80010a60:	01c12a03          	lw	s4,28(sp)
80010a64:	01812a83          	lw	s5,24(sp)
80010a68:	01412b03          	lw	s6,20(sp)
80010a6c:	01012b83          	lw	s7,16(sp)
80010a70:	00c12c03          	lw	s8,12(sp)
80010a74:	00812c83          	lw	s9,8(sp)
80010a78:	03010113          	addi	sp,sp,48
80010a7c:	00008067          	ret
80010a80:	00008067          	ret

80010a84 <HAL_UART_WriteBuffer>:
80010a84:	00000793          	li	a5,0
80010a88:	c00016b7          	lui	a3,0xc0001
80010a8c:	00b79463          	bne	a5,a1,80010a94 <HAL_UART_WriteBuffer+0x10>
80010a90:	00008067          	ret
80010a94:	0006c703          	lbu	a4,0(a3) # c0001000 <__clzsi2+0x3ffe9b2c>
80010a98:	00177713          	andi	a4,a4,1
80010a9c:	fe071ce3          	bnez	a4,80010a94 <HAL_UART_WriteBuffer+0x10>
80010aa0:	00f50733          	add	a4,a0,a5
80010aa4:	00074703          	lbu	a4,0(a4)
80010aa8:	00178793          	addi	a5,a5,1
80010aac:	00e680a3          	sb	a4,1(a3)
80010ab0:	fddff06f          	j	80010a8c <HAL_UART_WriteBuffer+0x8>

80010ab4 <HAL_UART_PutChar>:
80010ab4:	c0001737          	lui	a4,0xc0001
80010ab8:	00074783          	lbu	a5,0(a4) # c0001000 <__clzsi2+0x3ffe9b2c>
80010abc:	0017f793          	andi	a5,a5,1
80010ac0:	fe079ce3          	bnez	a5,80010ab8 <HAL_UART_PutChar+0x4>
80010ac4:	00a700a3          	sb	a0,1(a4)
80010ac8:	00008067          	ret

80010acc <HAL_UART_PutLine>:
80010acc:	ff010113          	addi	sp,sp,-16
80010ad0:	00812423          	sw	s0,8(sp)
80010ad4:	00112623          	sw	ra,12(sp)
80010ad8:	00050413          	mv	s0,a0
80010adc:	00044503          	lbu	a0,0(s0)
80010ae0:	00051a63          	bnez	a0,80010af4 <HAL_UART_PutLine+0x28>
80010ae4:	00c12083          	lw	ra,12(sp)
80010ae8:	00812403          	lw	s0,8(sp)
80010aec:	01010113          	addi	sp,sp,16
80010af0:	00008067          	ret
80010af4:	fc1ff0ef          	jal	ra,80010ab4 <HAL_UART_PutChar>
80010af8:	00140413          	addi	s0,s0,1
80010afc:	fe1ff06f          	j	80010adc <HAL_UART_PutLine+0x10>

80010b00 <HAL_Timebase_GetSeconds>:
80010b00:	c00007b7          	lui	a5,0xc0000
80010b04:	0047a503          	lw	a0,4(a5) # c0000004 <__clzsi2+0x3ffe8b30>
80010b08:	00008067          	ret

80010b0c <HAL_Timebase_GetNanos>:
80010b0c:	c00007b7          	lui	a5,0xc0000
80010b10:	0007a503          	lw	a0,0(a5) # c0000000 <__clzsi2+0x3ffe8b2c>
80010b14:	00008067          	ret

80010b18 <HAL_Timebase_DelayNS>:
80010b18:	c00007b7          	lui	a5,0xc0000
80010b1c:	00a7a423          	sw	a0,8(a5) # c0000008 <__clzsi2+0x3ffe8b34>
80010b20:	00008067          	ret

80010b24 <HAL_Timebase_DelayUS>:
80010b24:	00000793          	li	a5,0
80010b28:	c0000737          	lui	a4,0xc0000
80010b2c:	3e800693          	li	a3,1000
80010b30:	00a79463          	bne	a5,a0,80010b38 <HAL_Timebase_DelayUS+0x14>
80010b34:	00008067          	ret
80010b38:	00d72423          	sw	a3,8(a4) # c0000008 <__clzsi2+0x3ffe8b34>
80010b3c:	00178793          	addi	a5,a5,1
80010b40:	ff1ff06f          	j	80010b30 <HAL_Timebase_DelayUS+0xc>

80010b44 <HAL_Timebase_DelayMS>:
80010b44:	000f4737          	lui	a4,0xf4
80010b48:	00000793          	li	a5,0
80010b4c:	c00006b7          	lui	a3,0xc0000
80010b50:	24070713          	addi	a4,a4,576 # f4240 <font6x8-0x7ff0bdec>
80010b54:	00a79463          	bne	a5,a0,80010b5c <HAL_Timebase_DelayMS+0x18>
80010b58:	00008067          	ret
80010b5c:	00e6a423          	sw	a4,8(a3) # c0000008 <__clzsi2+0x3ffe8b34>
80010b60:	00178793          	addi	a5,a5,1
80010b64:	ff1ff06f          	j	80010b54 <HAL_Timebase_DelayMS+0x10>

80010b68 <HAL_GPIO_SetDirections>:
80010b68:	c00027b7          	lui	a5,0xc0002
80010b6c:	00a7a023          	sw	a0,0(a5) # c0002000 <__clzsi2+0x3ffeab2c>
80010b70:	00008067          	ret

80010b74 <HAL_GPIO_SetOutputs>:
80010b74:	c00027b7          	lui	a5,0xc0002
80010b78:	00a7a223          	sw	a0,4(a5) # c0002004 <__clzsi2+0x3ffeab30>
80010b7c:	00008067          	ret

80010b80 <HAL_GPIO_GetInputs>:
80010b80:	c00027b7          	lui	a5,0xc0002
80010b84:	0047a503          	lw	a0,4(a5) # c0002004 <__clzsi2+0x3ffeab30>
80010b88:	00008067          	ret

80010b8c <null_ptr_check>:
80010b8c:	00050793          	mv	a5,a0
80010b90:	02050463          	beqz	a0,80010bb8 <null_ptr_check+0x2c>
80010b94:	04c52703          	lw	a4,76(a0)
80010b98:	fff00513          	li	a0,-1
80010b9c:	02070063          	beqz	a4,80010bbc <null_ptr_check+0x30>
80010ba0:	0507a703          	lw	a4,80(a5)
80010ba4:	00070c63          	beqz	a4,80010bbc <null_ptr_check+0x30>
80010ba8:	0547a503          	lw	a0,84(a5)
80010bac:	00153513          	seqz	a0,a0
80010bb0:	40a00533          	neg	a0,a0
80010bb4:	00008067          	ret
80010bb8:	fff00513          	li	a0,-1
80010bbc:	00008067          	ret

80010bc0 <set_mem_page>:
80010bc0:	fe010113          	addi	sp,sp,-32
80010bc4:	01212823          	sw	s2,16(sp)
80010bc8:	00050913          	mv	s2,a0
80010bcc:	00058513          	mv	a0,a1
80010bd0:	00812c23          	sw	s0,24(sp)
80010bd4:	00912a23          	sw	s1,20(sp)
80010bd8:	00112e23          	sw	ra,28(sp)
80010bdc:	00058413          	mv	s0,a1
80010be0:	fadff0ef          	jal	ra,80010b8c <null_ptr_check>
80010be4:	00050493          	mv	s1,a0
80010be8:	08051063          	bnez	a0,80010c68 <set_mem_page+0xa8>
80010bec:	01891913          	slli	s2,s2,0x18
80010bf0:	41895913          	srai	s2,s2,0x18
80010bf4:	00000793          	li	a5,0
80010bf8:	00094463          	bltz	s2,80010c00 <set_mem_page+0x40>
80010bfc:	01000793          	li	a5,16
80010c00:	00844703          	lbu	a4,8(s0)
80010c04:	06f70263          	beq	a4,a5,80010c68 <set_mem_page+0xa8>
80010c08:	00f40423          	sb	a5,8(s0)
80010c0c:	00144503          	lbu	a0,1(s0)
80010c10:	04c42783          	lw	a5,76(s0)
80010c14:	00100693          	li	a3,1
80010c18:	00f10613          	addi	a2,sp,15
80010c1c:	0f300593          	li	a1,243
80010c20:	000780e7          	jalr	a5
80010c24:	04a40c23          	sb	a0,88(s0)
80010c28:	02051e63          	bnez	a0,80010c64 <set_mem_page+0xa4>
80010c2c:	00f14703          	lbu	a4,15(sp)
80010c30:	00844783          	lbu	a5,8(s0)
80010c34:	00144503          	lbu	a0,1(s0)
80010c38:	fef77713          	andi	a4,a4,-17
80010c3c:	0107f793          	andi	a5,a5,16
80010c40:	00e7e7b3          	or	a5,a5,a4
80010c44:	00f107a3          	sb	a5,15(sp)
80010c48:	05042783          	lw	a5,80(s0)
80010c4c:	00100693          	li	a3,1
80010c50:	00f10613          	addi	a2,sp,15
80010c54:	07300593          	li	a1,115
80010c58:	000780e7          	jalr	a5
80010c5c:	04a40c23          	sb	a0,88(s0)
80010c60:	00050463          	beqz	a0,80010c68 <set_mem_page+0xa8>
80010c64:	ffe00493          	li	s1,-2
80010c68:	01c12083          	lw	ra,28(sp)
80010c6c:	01812403          	lw	s0,24(sp)
80010c70:	01012903          	lw	s2,16(sp)
80010c74:	00048513          	mv	a0,s1
80010c78:	01412483          	lw	s1,20(sp)
80010c7c:	02010113          	addi	sp,sp,32
80010c80:	00008067          	ret

80010c84 <get_mem_page.part.0>:
80010c84:	fe010113          	addi	sp,sp,-32
80010c88:	00812c23          	sw	s0,24(sp)
80010c8c:	00112e23          	sw	ra,28(sp)
80010c90:	04c52783          	lw	a5,76(a0)
80010c94:	00050413          	mv	s0,a0
80010c98:	00154503          	lbu	a0,1(a0)
80010c9c:	00100693          	li	a3,1
80010ca0:	00f10613          	addi	a2,sp,15
80010ca4:	0f300593          	li	a1,243
80010ca8:	000780e7          	jalr	a5
80010cac:	04a40c23          	sb	a0,88(s0)
80010cb0:	02051063          	bnez	a0,80010cd0 <get_mem_page.part.0+0x4c>
80010cb4:	00f14783          	lbu	a5,15(sp)
80010cb8:	0107f793          	andi	a5,a5,16
80010cbc:	00f40423          	sb	a5,8(s0)
80010cc0:	01c12083          	lw	ra,28(sp)
80010cc4:	01812403          	lw	s0,24(sp)
80010cc8:	02010113          	addi	sp,sp,32
80010ccc:	00008067          	ret
80010cd0:	ffe00513          	li	a0,-2
80010cd4:	fedff06f          	j	80010cc0 <get_mem_page.part.0+0x3c>

80010cd8 <boundary_check.isra.0.constprop.0>:
80010cd8:	00054783          	lbu	a5,0(a0)
80010cdc:	00f5fa63          	bgeu	a1,a5,80010cf0 <boundary_check.isra.0.constprop.0+0x18>
80010ce0:	00b50023          	sb	a1,0(a0)
80010ce4:	00064783          	lbu	a5,0(a2)
80010ce8:	0027e793          	ori	a5,a5,2
80010cec:	00f60023          	sb	a5,0(a2)
80010cf0:	00000513          	li	a0,0
80010cf4:	00008067          	ret

80010cf8 <bme680_get_regs>:
80010cf8:	fe010113          	addi	sp,sp,-32
80010cfc:	01212823          	sw	s2,16(sp)
80010d00:	00050913          	mv	s2,a0
80010d04:	00068513          	mv	a0,a3
80010d08:	00812c23          	sw	s0,24(sp)
80010d0c:	00912a23          	sw	s1,20(sp)
80010d10:	01312623          	sw	s3,12(sp)
80010d14:	01412423          	sw	s4,8(sp)
80010d18:	00112e23          	sw	ra,28(sp)
80010d1c:	00058993          	mv	s3,a1
80010d20:	00060a13          	mv	s4,a2
80010d24:	00068493          	mv	s1,a3
80010d28:	e65ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010d2c:	00050413          	mv	s0,a0
80010d30:	04051463          	bnez	a0,80010d78 <bme680_get_regs+0x80>
80010d34:	0044a783          	lw	a5,4(s1)
80010d38:	00079e63          	bnez	a5,80010d54 <bme680_get_regs+0x5c>
80010d3c:	00048593          	mv	a1,s1
80010d40:	00090513          	mv	a0,s2
80010d44:	e7dff0ef          	jal	ra,80010bc0 <set_mem_page>
80010d48:	00050413          	mv	s0,a0
80010d4c:	00051463          	bnez	a0,80010d54 <bme680_get_regs+0x5c>
80010d50:	08096913          	ori	s2,s2,128
80010d54:	04c4a783          	lw	a5,76(s1)
80010d58:	0014c503          	lbu	a0,1(s1)
80010d5c:	000a0693          	mv	a3,s4
80010d60:	00098613          	mv	a2,s3
80010d64:	00090593          	mv	a1,s2
80010d68:	000780e7          	jalr	a5
80010d6c:	04a48c23          	sb	a0,88(s1)
80010d70:	00050463          	beqz	a0,80010d78 <bme680_get_regs+0x80>
80010d74:	ffe00413          	li	s0,-2
80010d78:	01c12083          	lw	ra,28(sp)
80010d7c:	00040513          	mv	a0,s0
80010d80:	01812403          	lw	s0,24(sp)
80010d84:	01412483          	lw	s1,20(sp)
80010d88:	01012903          	lw	s2,16(sp)
80010d8c:	00c12983          	lw	s3,12(sp)
80010d90:	00812a03          	lw	s4,8(sp)
80010d94:	02010113          	addi	sp,sp,32
80010d98:	00008067          	ret

80010d9c <bme680_set_regs>:
80010d9c:	fb010113          	addi	sp,sp,-80
80010da0:	04812423          	sw	s0,72(sp)
80010da4:	03412c23          	sw	s4,56(sp)
80010da8:	03512a23          	sw	s5,52(sp)
80010dac:	00050a13          	mv	s4,a0
80010db0:	00058a93          	mv	s5,a1
80010db4:	00060413          	mv	s0,a2
80010db8:	00000593          	li	a1,0
80010dbc:	02400613          	li	a2,36
80010dc0:	00c10513          	addi	a0,sp,12
80010dc4:	04912223          	sw	s1,68(sp)
80010dc8:	04112623          	sw	ra,76(sp)
80010dcc:	05212023          	sw	s2,64(sp)
80010dd0:	03312e23          	sw	s3,60(sp)
80010dd4:	03612823          	sw	s6,48(sp)
80010dd8:	00068493          	mv	s1,a3
80010ddc:	00012423          	sw	zero,8(sp)
80010de0:	24c010ef          	jal	ra,8001202c <memset>
80010de4:	00048513          	mv	a0,s1
80010de8:	da5ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010dec:	06051263          	bnez	a0,80010e50 <bme680_set_regs+0xb4>
80010df0:	fff40793          	addi	a5,s0,-1
80010df4:	0ff7f793          	andi	a5,a5,255
80010df8:	01200713          	li	a4,18
80010dfc:	0af76e63          	bltu	a4,a5,80010eb8 <bme680_set_regs+0x11c>
80010e00:	01041413          	slli	s0,s0,0x10
80010e04:	00810993          	addi	s3,sp,8
80010e08:	00000913          	li	s2,0
80010e0c:	01045413          	srli	s0,s0,0x10
80010e10:	01091793          	slli	a5,s2,0x10
80010e14:	0107d793          	srli	a5,a5,0x10
80010e18:	0687e063          	bltu	a5,s0,80010e78 <bme680_set_regs+0xdc>
80010e1c:	02051a63          	bnez	a0,80010e50 <bme680_set_regs+0xb4>
80010e20:	00141413          	slli	s0,s0,0x1
80010e24:	0504a783          	lw	a5,80(s1)
80010e28:	00814583          	lbu	a1,8(sp)
80010e2c:	0014c503          	lbu	a0,1(s1)
80010e30:	fff40413          	addi	s0,s0,-1
80010e34:	01041693          	slli	a3,s0,0x10
80010e38:	0106d693          	srli	a3,a3,0x10
80010e3c:	00910613          	addi	a2,sp,9
80010e40:	000780e7          	jalr	a5
80010e44:	04a48c23          	sb	a0,88(s1)
80010e48:	00050463          	beqz	a0,80010e50 <bme680_set_regs+0xb4>
80010e4c:	ffe00513          	li	a0,-2
80010e50:	04c12083          	lw	ra,76(sp)
80010e54:	04812403          	lw	s0,72(sp)
80010e58:	04412483          	lw	s1,68(sp)
80010e5c:	04012903          	lw	s2,64(sp)
80010e60:	03c12983          	lw	s3,60(sp)
80010e64:	03812a03          	lw	s4,56(sp)
80010e68:	03412a83          	lw	s5,52(sp)
80010e6c:	03012b03          	lw	s6,48(sp)
80010e70:	05010113          	addi	sp,sp,80
80010e74:	00008067          	ret
80010e78:	0044a703          	lw	a4,4(s1)
80010e7c:	012a0b33          	add	s6,s4,s2
80010e80:	000b4783          	lbu	a5,0(s6)
80010e84:	00071c63          	bnez	a4,80010e9c <bme680_set_regs+0x100>
80010e88:	00078513          	mv	a0,a5
80010e8c:	00048593          	mv	a1,s1
80010e90:	d31ff0ef          	jal	ra,80010bc0 <set_mem_page>
80010e94:	000b4783          	lbu	a5,0(s6)
80010e98:	07f7f793          	andi	a5,a5,127
80010e9c:	00f98023          	sb	a5,0(s3) # 3000 <font6x8-0x7fffd02c>
80010ea0:	012a87b3          	add	a5,s5,s2
80010ea4:	0007c783          	lbu	a5,0(a5)
80010ea8:	00190913          	addi	s2,s2,1
80010eac:	00298993          	addi	s3,s3,2
80010eb0:	fef98fa3          	sb	a5,-1(s3)
80010eb4:	f5dff06f          	j	80010e10 <bme680_set_regs+0x74>
80010eb8:	ffc00513          	li	a0,-4
80010ebc:	f95ff06f          	j	80010e50 <bme680_set_regs+0xb4>

80010ec0 <bme680_soft_reset>:
80010ec0:	fe010113          	addi	sp,sp,-32
80010ec4:	fe000793          	li	a5,-32
80010ec8:	00f10723          	sb	a5,14(sp)
80010ecc:	fb600793          	li	a5,-74
80010ed0:	00812c23          	sw	s0,24(sp)
80010ed4:	00912a23          	sw	s1,20(sp)
80010ed8:	00112e23          	sw	ra,28(sp)
80010edc:	00050493          	mv	s1,a0
80010ee0:	00f107a3          	sb	a5,15(sp)
80010ee4:	ca9ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010ee8:	00050413          	mv	s0,a0
80010eec:	02051a63          	bnez	a0,80010f20 <bme680_soft_reset+0x60>
80010ef0:	0044a783          	lw	a5,4(s1)
80010ef4:	04078263          	beqz	a5,80010f38 <bme680_soft_reset+0x78>
80010ef8:	00048693          	mv	a3,s1
80010efc:	00100613          	li	a2,1
80010f00:	00f10593          	addi	a1,sp,15
80010f04:	00e10513          	addi	a0,sp,14
80010f08:	e95ff0ef          	jal	ra,80010d9c <bme680_set_regs>
80010f0c:	0544a783          	lw	a5,84(s1)
80010f10:	00050413          	mv	s0,a0
80010f14:	00a00513          	li	a0,10
80010f18:	000780e7          	jalr	a5
80010f1c:	02040863          	beqz	s0,80010f4c <bme680_soft_reset+0x8c>
80010f20:	01c12083          	lw	ra,28(sp)
80010f24:	00040513          	mv	a0,s0
80010f28:	01812403          	lw	s0,24(sp)
80010f2c:	01412483          	lw	s1,20(sp)
80010f30:	02010113          	addi	sp,sp,32
80010f34:	00008067          	ret
80010f38:	00048513          	mv	a0,s1
80010f3c:	d49ff0ef          	jal	ra,80010c84 <get_mem_page.part.0>
80010f40:	00050413          	mv	s0,a0
80010f44:	fc051ee3          	bnez	a0,80010f20 <bme680_soft_reset+0x60>
80010f48:	fb1ff06f          	j	80010ef8 <bme680_soft_reset+0x38>
80010f4c:	0044a783          	lw	a5,4(s1)
80010f50:	fc0798e3          	bnez	a5,80010f20 <bme680_soft_reset+0x60>
80010f54:	00048513          	mv	a0,s1
80010f58:	c35ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010f5c:	00050413          	mv	s0,a0
80010f60:	fc0510e3          	bnez	a0,80010f20 <bme680_soft_reset+0x60>
80010f64:	00048513          	mv	a0,s1
80010f68:	d1dff0ef          	jal	ra,80010c84 <get_mem_page.part.0>
80010f6c:	00050413          	mv	s0,a0
80010f70:	fb1ff06f          	j	80010f20 <bme680_soft_reset+0x60>

80010f74 <bme680_init>:
80010f74:	fc010113          	addi	sp,sp,-64
80010f78:	02812c23          	sw	s0,56(sp)
80010f7c:	02112e23          	sw	ra,60(sp)
80010f80:	00050413          	mv	s0,a0
80010f84:	c09ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010f88:	00050793          	mv	a5,a0
80010f8c:	22051c63          	bnez	a0,800111c4 <bme680_init+0x250>
80010f90:	00040513          	mv	a0,s0
80010f94:	f2dff0ef          	jal	ra,80010ec0 <bme680_soft_reset>
80010f98:	00050793          	mv	a5,a0
80010f9c:	22051463          	bnez	a0,800111c4 <bme680_init+0x250>
80010fa0:	00040693          	mv	a3,s0
80010fa4:	00100613          	li	a2,1
80010fa8:	00040593          	mv	a1,s0
80010fac:	0d000513          	li	a0,208
80010fb0:	d49ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80010fb4:	00050793          	mv	a5,a0
80010fb8:	20051663          	bnez	a0,800111c4 <bme680_init+0x250>
80010fbc:	00044683          	lbu	a3,0(s0)
80010fc0:	06100713          	li	a4,97
80010fc4:	ffd00793          	li	a5,-3
80010fc8:	1ee69e63          	bne	a3,a4,800111c4 <bme680_init+0x250>
80010fcc:	02500613          	li	a2,37
80010fd0:	00000593          	li	a1,0
80010fd4:	00810513          	addi	a0,sp,8
80010fd8:	00012223          	sw	zero,4(sp)
80010fdc:	050010ef          	jal	ra,8001202c <memset>
80010fe0:	00040513          	mv	a0,s0
80010fe4:	000101a3          	sb	zero,3(sp)
80010fe8:	ba5ff0ef          	jal	ra,80010b8c <null_ptr_check>
80010fec:	00050793          	mv	a5,a0
80010ff0:	1c051a63          	bnez	a0,800111c4 <bme680_init+0x250>
80010ff4:	00040693          	mv	a3,s0
80010ff8:	01900613          	li	a2,25
80010ffc:	00410593          	addi	a1,sp,4
80011000:	08900513          	li	a0,137
80011004:	cf5ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011008:	00050793          	mv	a5,a0
8001100c:	00051e63          	bnez	a0,80011028 <bme680_init+0xb4>
80011010:	00040693          	mv	a3,s0
80011014:	01000613          	li	a2,16
80011018:	01d10593          	addi	a1,sp,29
8001101c:	0e100513          	li	a0,225
80011020:	cd9ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011024:	00050793          	mv	a5,a0
80011028:	02614703          	lbu	a4,38(sp)
8001102c:	02514683          	lbu	a3,37(sp)
80011030:	00871713          	slli	a4,a4,0x8
80011034:	00d76733          	or	a4,a4,a3
80011038:	00e41d23          	sh	a4,26(s0)
8001103c:	00614703          	lbu	a4,6(sp)
80011040:	00514683          	lbu	a3,5(sp)
80011044:	00871713          	slli	a4,a4,0x8
80011048:	00d76733          	or	a4,a4,a3
8001104c:	00e41e23          	sh	a4,28(s0)
80011050:	00714703          	lbu	a4,7(sp)
80011054:	00914683          	lbu	a3,9(sp)
80011058:	00e40f23          	sb	a4,30(s0)
8001105c:	00a14703          	lbu	a4,10(sp)
80011060:	00871713          	slli	a4,a4,0x8
80011064:	00d76733          	or	a4,a4,a3
80011068:	02e41023          	sh	a4,32(s0)
8001106c:	00c14703          	lbu	a4,12(sp)
80011070:	00b14683          	lbu	a3,11(sp)
80011074:	00871713          	slli	a4,a4,0x8
80011078:	00d76733          	or	a4,a4,a3
8001107c:	02e41123          	sh	a4,34(s0)
80011080:	00d14703          	lbu	a4,13(sp)
80011084:	00f14683          	lbu	a3,15(sp)
80011088:	02e40223          	sb	a4,36(s0)
8001108c:	01014703          	lbu	a4,16(sp)
80011090:	00871713          	slli	a4,a4,0x8
80011094:	00d76733          	or	a4,a4,a3
80011098:	02e41323          	sh	a4,38(s0)
8001109c:	01214703          	lbu	a4,18(sp)
800110a0:	01114683          	lbu	a3,17(sp)
800110a4:	00871713          	slli	a4,a4,0x8
800110a8:	00d76733          	or	a4,a4,a3
800110ac:	02e41423          	sh	a4,40(s0)
800110b0:	01414703          	lbu	a4,20(sp)
800110b4:	01714683          	lbu	a3,23(sp)
800110b8:	02e40523          	sb	a4,42(s0)
800110bc:	01314703          	lbu	a4,19(sp)
800110c0:	02e405a3          	sb	a4,43(s0)
800110c4:	01814703          	lbu	a4,24(sp)
800110c8:	00871713          	slli	a4,a4,0x8
800110cc:	00d76733          	or	a4,a4,a3
800110d0:	02e41623          	sh	a4,44(s0)
800110d4:	01a14703          	lbu	a4,26(sp)
800110d8:	01914683          	lbu	a3,25(sp)
800110dc:	00871713          	slli	a4,a4,0x8
800110e0:	00d76733          	or	a4,a4,a3
800110e4:	02e41723          	sh	a4,46(s0)
800110e8:	01b14703          	lbu	a4,27(sp)
800110ec:	01e14603          	lbu	a2,30(sp)
800110f0:	01f14683          	lbu	a3,31(sp)
800110f4:	02e40823          	sb	a4,48(s0)
800110f8:	00f67713          	andi	a4,a2,15
800110fc:	00469693          	slli	a3,a3,0x4
80011100:	00e6e6b3          	or	a3,a3,a4
80011104:	01d14703          	lbu	a4,29(sp)
80011108:	00465613          	srli	a2,a2,0x4
8001110c:	00d41623          	sh	a3,12(s0)
80011110:	00471713          	slli	a4,a4,0x4
80011114:	00c76733          	or	a4,a4,a2
80011118:	00e41723          	sh	a4,14(s0)
8001111c:	02012703          	lw	a4,32(sp)
80011120:	02714683          	lbu	a3,39(sp)
80011124:	00e42823          	sw	a4,16(s0)
80011128:	02414703          	lbu	a4,36(sp)
8001112c:	00e40a23          	sb	a4,20(s0)
80011130:	02914703          	lbu	a4,41(sp)
80011134:	00e40aa3          	sb	a4,21(s0)
80011138:	02814703          	lbu	a4,40(sp)
8001113c:	00871713          	slli	a4,a4,0x8
80011140:	00d76733          	or	a4,a4,a3
80011144:	00e41b23          	sh	a4,22(s0)
80011148:	02a14703          	lbu	a4,42(sp)
8001114c:	00e40c23          	sb	a4,24(s0)
80011150:	06079463          	bnez	a5,800111b8 <bme680_init+0x244>
80011154:	00040693          	mv	a3,s0
80011158:	00100613          	li	a2,1
8001115c:	00310593          	addi	a1,sp,3
80011160:	00200513          	li	a0,2
80011164:	b95ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011168:	00314703          	lbu	a4,3(sp)
8001116c:	00050793          	mv	a5,a0
80011170:	03077713          	andi	a4,a4,48
80011174:	40475713          	srai	a4,a4,0x4
80011178:	02e40c23          	sb	a4,56(s0)
8001117c:	02051e63          	bnez	a0,800111b8 <bme680_init+0x244>
80011180:	00040693          	mv	a3,s0
80011184:	00100613          	li	a2,1
80011188:	00310593          	addi	a1,sp,3
8001118c:	b6dff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011190:	00314703          	lbu	a4,3(sp)
80011194:	00050793          	mv	a5,a0
80011198:	02e40ca3          	sb	a4,57(s0)
8001119c:	00051e63          	bnez	a0,800111b8 <bme680_init+0x244>
800111a0:	00040693          	mv	a3,s0
800111a4:	00100613          	li	a2,1
800111a8:	00310593          	addi	a1,sp,3
800111ac:	00400513          	li	a0,4
800111b0:	b49ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
800111b4:	00050793          	mv	a5,a0
800111b8:	00310703          	lb	a4,3(sp)
800111bc:	40475713          	srai	a4,a4,0x4
800111c0:	02e40d23          	sb	a4,58(s0)
800111c4:	03c12083          	lw	ra,60(sp)
800111c8:	03812403          	lw	s0,56(sp)
800111cc:	00078513          	mv	a0,a5
800111d0:	04010113          	addi	sp,sp,64
800111d4:	00008067          	ret

800111d8 <bme680_get_sensor_settings>:
800111d8:	fe010113          	addi	sp,sp,-32
800111dc:	00912a23          	sw	s1,20(sp)
800111e0:	00050493          	mv	s1,a0
800111e4:	00058513          	mv	a0,a1
800111e8:	00812c23          	sw	s0,24(sp)
800111ec:	00112e23          	sw	ra,28(sp)
800111f0:	00058413          	mv	s0,a1
800111f4:	00012423          	sw	zero,8(sp)
800111f8:	00011623          	sh	zero,12(sp)
800111fc:	991ff0ef          	jal	ra,80010b8c <null_ptr_check>
80011200:	12051263          	bnez	a0,80011324 <bme680_get_sensor_settings+0x14c>
80011204:	00040693          	mv	a3,s0
80011208:	00600613          	li	a2,6
8001120c:	00810593          	addi	a1,sp,8
80011210:	07000513          	li	a0,112
80011214:	ae5ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011218:	0e051c63          	bnez	a0,80011310 <bme680_get_sensor_settings+0x138>
8001121c:	0084f793          	andi	a5,s1,8
80011220:	06078863          	beqz	a5,80011290 <bme680_get_sensor_settings+0xb8>
80011224:	00040513          	mv	a0,s0
80011228:	000103a3          	sb	zero,7(sp)
8001122c:	961ff0ef          	jal	ra,80010b8c <null_ptr_check>
80011230:	06051063          	bnez	a0,80011290 <bme680_get_sensor_settings+0xb8>
80011234:	00442783          	lw	a5,4(s0)
80011238:	04078463          	beqz	a5,80011280 <bme680_get_sensor_settings+0xa8>
8001123c:	00040693          	mv	a3,s0
80011240:	00100613          	li	a2,1
80011244:	00710593          	addi	a1,sp,7
80011248:	05a00513          	li	a0,90
8001124c:	aadff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011250:	04051063          	bnez	a0,80011290 <bme680_get_sensor_settings+0xb8>
80011254:	00714783          	lbu	a5,7(sp)
80011258:	00040693          	mv	a3,s0
8001125c:	00100613          	li	a2,1
80011260:	04f41223          	sh	a5,68(s0)
80011264:	00710593          	addi	a1,sp,7
80011268:	06400513          	li	a0,100
8001126c:	a8dff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011270:	02051063          	bnez	a0,80011290 <bme680_get_sensor_settings+0xb8>
80011274:	00714783          	lbu	a5,7(sp)
80011278:	04f41323          	sh	a5,70(s0)
8001127c:	0140006f          	j	80011290 <bme680_get_sensor_settings+0xb8>
80011280:	00040593          	mv	a1,s0
80011284:	05a00513          	li	a0,90
80011288:	939ff0ef          	jal	ra,80010bc0 <set_mem_page>
8001128c:	fa0508e3          	beqz	a0,8001123c <bme680_get_sensor_settings+0x64>
80011290:	0104f793          	andi	a5,s1,16
80011294:	00078a63          	beqz	a5,800112a8 <bme680_get_sensor_settings+0xd0>
80011298:	00d14783          	lbu	a5,13(sp)
8001129c:	4027d793          	srai	a5,a5,0x2
800112a0:	0077f793          	andi	a5,a5,7
800112a4:	02f40fa3          	sb	a5,63(s0)
800112a8:	0034f793          	andi	a5,s1,3
800112ac:	00078e63          	beqz	a5,800112c8 <bme680_get_sensor_settings+0xf0>
800112b0:	00c14783          	lbu	a5,12(sp)
800112b4:	0057d713          	srli	a4,a5,0x5
800112b8:	4027d793          	srai	a5,a5,0x2
800112bc:	0077f793          	andi	a5,a5,7
800112c0:	02e40ea3          	sb	a4,61(s0)
800112c4:	02f40f23          	sb	a5,62(s0)
800112c8:	0044f793          	andi	a5,s1,4
800112cc:	00078863          	beqz	a5,800112dc <bme680_get_sensor_settings+0x104>
800112d0:	00a14783          	lbu	a5,10(sp)
800112d4:	0077f793          	andi	a5,a5,7
800112d8:	02f40e23          	sb	a5,60(s0)
800112dc:	0204f793          	andi	a5,s1,32
800112e0:	00078863          	beqz	a5,800112f0 <bme680_get_sensor_settings+0x118>
800112e4:	00814783          	lbu	a5,8(sp)
800112e8:	0087f793          	andi	a5,a5,8
800112ec:	04f400a3          	sb	a5,65(s0)
800112f0:	0c04f493          	andi	s1,s1,192
800112f4:	00048e63          	beqz	s1,80011310 <bme680_get_sensor_settings+0x138>
800112f8:	00914783          	lbu	a5,9(sp)
800112fc:	00f7f713          	andi	a4,a5,15
80011300:	4047d793          	srai	a5,a5,0x4
80011304:	0017f793          	andi	a5,a5,1
80011308:	04e40023          	sb	a4,64(s0)
8001130c:	04f40123          	sb	a5,66(s0)
80011310:	01c12083          	lw	ra,28(sp)
80011314:	01812403          	lw	s0,24(sp)
80011318:	01412483          	lw	s1,20(sp)
8001131c:	02010113          	addi	sp,sp,32
80011320:	00008067          	ret
80011324:	fff00513          	li	a0,-1
80011328:	fe9ff06f          	j	80011310 <bme680_get_sensor_settings+0x138>

8001132c <bme680_set_sensor_mode>:
8001132c:	fe010113          	addi	sp,sp,-32
80011330:	00812c23          	sw	s0,24(sp)
80011334:	00112e23          	sw	ra,28(sp)
80011338:	00912a23          	sw	s1,20(sp)
8001133c:	00050413          	mv	s0,a0
80011340:	84dff0ef          	jal	ra,80010b8c <null_ptr_check>
80011344:	08051c63          	bnez	a0,800113dc <bme680_set_sensor_mode+0xb0>
80011348:	00000493          	li	s1,0
8001134c:	00040693          	mv	a3,s0
80011350:	00100613          	li	a2,1
80011354:	00f10593          	addi	a1,sp,15
80011358:	07400513          	li	a0,116
8001135c:	99dff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011360:	04051063          	bnez	a0,800113a0 <bme680_set_sensor_mode+0x74>
80011364:	00f14783          	lbu	a5,15(sp)
80011368:	0037f493          	andi	s1,a5,3
8001136c:	02048c63          	beqz	s1,800113a4 <bme680_set_sensor_mode+0x78>
80011370:	ffc7f793          	andi	a5,a5,-4
80011374:	00f107a3          	sb	a5,15(sp)
80011378:	05042783          	lw	a5,80(s0)
8001137c:	00100693          	li	a3,1
80011380:	00f10613          	addi	a2,sp,15
80011384:	07400593          	li	a1,116
80011388:	00100513          	li	a0,1
8001138c:	000780e7          	jalr	a5
80011390:	05442783          	lw	a5,84(s0)
80011394:	00a00513          	li	a0,10
80011398:	000780e7          	jalr	a5
8001139c:	fb1ff06f          	j	8001134c <bme680_set_sensor_mode+0x20>
800113a0:	fa0496e3          	bnez	s1,8001134c <bme680_set_sensor_mode+0x20>
800113a4:	04844703          	lbu	a4,72(s0)
800113a8:	02070a63          	beqz	a4,800113dc <bme680_set_sensor_mode+0xb0>
800113ac:	00f14783          	lbu	a5,15(sp)
800113b0:	00377713          	andi	a4,a4,3
800113b4:	ffc7f793          	andi	a5,a5,-4
800113b8:	00e7e7b3          	or	a5,a5,a4
800113bc:	00f107a3          	sb	a5,15(sp)
800113c0:	00051e63          	bnez	a0,800113dc <bme680_set_sensor_mode+0xb0>
800113c4:	05042783          	lw	a5,80(s0)
800113c8:	00100693          	li	a3,1
800113cc:	00f10613          	addi	a2,sp,15
800113d0:	07400593          	li	a1,116
800113d4:	00100513          	li	a0,1
800113d8:	000780e7          	jalr	a5
800113dc:	01c12083          	lw	ra,28(sp)
800113e0:	01812403          	lw	s0,24(sp)
800113e4:	01412483          	lw	s1,20(sp)
800113e8:	02010113          	addi	sp,sp,32
800113ec:	00008067          	ret

800113f0 <bme680_set_sensor_settings>:
800113f0:	fc010113          	addi	sp,sp,-64
800113f4:	03212823          	sw	s2,48(sp)
800113f8:	00050913          	mv	s2,a0
800113fc:	00058513          	mv	a0,a1
80011400:	02812c23          	sw	s0,56(sp)
80011404:	02912a23          	sw	s1,52(sp)
80011408:	02112e23          	sw	ra,60(sp)
8001140c:	03312623          	sw	s3,44(sp)
80011410:	00058493          	mv	s1,a1
80011414:	00010ba3          	sb	zero,23(sp)
80011418:	f74ff0ef          	jal	ra,80010b8c <null_ptr_check>
8001141c:	00050413          	mv	s0,a0
80011420:	2a051e63          	bnez	a0,800116dc <bme680_set_sensor_settings+0x2ec>
80011424:	00897793          	andi	a5,s2,8
80011428:	0484c983          	lbu	s3,72(s1)
8001142c:	00079c63          	bnez	a5,80011444 <bme680_set_sensor_settings+0x54>
80011430:	04048423          	sb	zero,72(s1)
80011434:	00048513          	mv	a0,s1
80011438:	ef5ff0ef          	jal	ra,8001132c <bme680_set_sensor_mode>
8001143c:	00050413          	mv	s0,a0
80011440:	0180006f          	j	80011458 <bme680_set_sensor_settings+0x68>
80011444:	00011e23          	sh	zero,28(sp)
80011448:	00100793          	li	a5,1
8001144c:	2af98863          	beq	s3,a5,800116fc <bme680_set_sensor_settings+0x30c>
80011450:	04048423          	sb	zero,72(s1)
80011454:	00100413          	li	s0,1
80011458:	01097793          	andi	a5,s2,16
8001145c:	06078463          	beqz	a5,800114c4 <bme680_set_sensor_settings+0xd4>
80011460:	04a48613          	addi	a2,s1,74
80011464:	00700593          	li	a1,7
80011468:	03f48513          	addi	a0,s1,63
8001146c:	86dff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
80011470:	00050413          	mv	s0,a0
80011474:	00051e63          	bnez	a0,80011490 <bme680_set_sensor_settings+0xa0>
80011478:	00048693          	mv	a3,s1
8001147c:	00100613          	li	a2,1
80011480:	01710593          	addi	a1,sp,23
80011484:	07500513          	li	a0,117
80011488:	871ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
8001148c:	00050413          	mv	s0,a0
80011490:	03f4c783          	lbu	a5,63(s1)
80011494:	01714703          	lbu	a4,23(sp)
80011498:	00100693          	li	a3,1
8001149c:	00279793          	slli	a5,a5,0x2
800114a0:	01c7f793          	andi	a5,a5,28
800114a4:	fe377713          	andi	a4,a4,-29
800114a8:	00e7e7b3          	or	a5,a5,a4
800114ac:	00f10ba3          	sb	a5,23(sp)
800114b0:	0504a783          	lw	a5,80(s1)
800114b4:	01710613          	addi	a2,sp,23
800114b8:	07500593          	li	a1,117
800114bc:	00100513          	li	a0,1
800114c0:	000780e7          	jalr	a5
800114c4:	02097793          	andi	a5,s2,32
800114c8:	06078263          	beqz	a5,8001152c <bme680_set_sensor_settings+0x13c>
800114cc:	04a48613          	addi	a2,s1,74
800114d0:	00800593          	li	a1,8
800114d4:	04148513          	addi	a0,s1,65
800114d8:	801ff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
800114dc:	00050413          	mv	s0,a0
800114e0:	00051e63          	bnez	a0,800114fc <bme680_set_sensor_settings+0x10c>
800114e4:	00048693          	mv	a3,s1
800114e8:	00100613          	li	a2,1
800114ec:	01710593          	addi	a1,sp,23
800114f0:	07000513          	li	a0,112
800114f4:	805ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
800114f8:	00050413          	mv	s0,a0
800114fc:	01714783          	lbu	a5,23(sp)
80011500:	0414c703          	lbu	a4,65(s1)
80011504:	00100693          	li	a3,1
80011508:	ff77f793          	andi	a5,a5,-9
8001150c:	00877713          	andi	a4,a4,8
80011510:	00e7e7b3          	or	a5,a5,a4
80011514:	00f10ba3          	sb	a5,23(sp)
80011518:	0504a783          	lw	a5,80(s1)
8001151c:	01710613          	addi	a2,sp,23
80011520:	07000593          	li	a1,112
80011524:	00100513          	li	a0,1
80011528:	000780e7          	jalr	a5
8001152c:	00397793          	andi	a5,s2,3
80011530:	08078863          	beqz	a5,800115c0 <bme680_set_sensor_settings+0x1d0>
80011534:	04a48613          	addi	a2,s1,74
80011538:	00500593          	li	a1,5
8001153c:	03d48513          	addi	a0,s1,61
80011540:	f98ff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
80011544:	00050413          	mv	s0,a0
80011548:	00051e63          	bnez	a0,80011564 <bme680_set_sensor_settings+0x174>
8001154c:	00048693          	mv	a3,s1
80011550:	00100613          	li	a2,1
80011554:	01710593          	addi	a1,sp,23
80011558:	07400513          	li	a0,116
8001155c:	f9cff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011560:	00050413          	mv	s0,a0
80011564:	00197793          	andi	a5,s2,1
80011568:	00078e63          	beqz	a5,80011584 <bme680_set_sensor_settings+0x194>
8001156c:	01714783          	lbu	a5,23(sp)
80011570:	03d4c703          	lbu	a4,61(s1)
80011574:	01f7f793          	andi	a5,a5,31
80011578:	00571713          	slli	a4,a4,0x5
8001157c:	00e7e7b3          	or	a5,a5,a4
80011580:	00f10ba3          	sb	a5,23(sp)
80011584:	00297793          	andi	a5,s2,2
80011588:	02078063          	beqz	a5,800115a8 <bme680_set_sensor_settings+0x1b8>
8001158c:	03e4c783          	lbu	a5,62(s1)
80011590:	01714703          	lbu	a4,23(sp)
80011594:	00279793          	slli	a5,a5,0x2
80011598:	01c7f793          	andi	a5,a5,28
8001159c:	fe377713          	andi	a4,a4,-29
800115a0:	00e7e7b3          	or	a5,a5,a4
800115a4:	00f10ba3          	sb	a5,23(sp)
800115a8:	0504a783          	lw	a5,80(s1)
800115ac:	00100693          	li	a3,1
800115b0:	01710613          	addi	a2,sp,23
800115b4:	07400593          	li	a1,116
800115b8:	00100513          	li	a0,1
800115bc:	000780e7          	jalr	a5
800115c0:	00497793          	andi	a5,s2,4
800115c4:	06078263          	beqz	a5,80011628 <bme680_set_sensor_settings+0x238>
800115c8:	04a48613          	addi	a2,s1,74
800115cc:	00500593          	li	a1,5
800115d0:	03c48513          	addi	a0,s1,60
800115d4:	f04ff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
800115d8:	00050413          	mv	s0,a0
800115dc:	00051e63          	bnez	a0,800115f8 <bme680_set_sensor_settings+0x208>
800115e0:	00048693          	mv	a3,s1
800115e4:	00100613          	li	a2,1
800115e8:	01710593          	addi	a1,sp,23
800115ec:	07200513          	li	a0,114
800115f0:	f08ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
800115f4:	00050413          	mv	s0,a0
800115f8:	01714783          	lbu	a5,23(sp)
800115fc:	03c4c703          	lbu	a4,60(s1)
80011600:	00100693          	li	a3,1
80011604:	ff87f793          	andi	a5,a5,-8
80011608:	00777713          	andi	a4,a4,7
8001160c:	00e7e7b3          	or	a5,a5,a4
80011610:	00f10ba3          	sb	a5,23(sp)
80011614:	0504a783          	lw	a5,80(s1)
80011618:	01710613          	addi	a2,sp,23
8001161c:	07200593          	li	a1,114
80011620:	00100513          	li	a0,1
80011624:	000780e7          	jalr	a5
80011628:	0c097793          	andi	a5,s2,192
8001162c:	0a078663          	beqz	a5,800116d8 <bme680_set_sensor_settings+0x2e8>
80011630:	04a48613          	addi	a2,s1,74
80011634:	00100593          	li	a1,1
80011638:	04248513          	addi	a0,s1,66
8001163c:	00c12623          	sw	a2,12(sp)
80011640:	e98ff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
80011644:	00c12603          	lw	a2,12(sp)
80011648:	00050413          	mv	s0,a0
8001164c:	02051863          	bnez	a0,8001167c <bme680_set_sensor_settings+0x28c>
80011650:	00a00593          	li	a1,10
80011654:	04048513          	addi	a0,s1,64
80011658:	e80ff0ef          	jal	ra,80010cd8 <boundary_check.isra.0.constprop.0>
8001165c:	00050413          	mv	s0,a0
80011660:	00051e63          	bnez	a0,8001167c <bme680_set_sensor_settings+0x28c>
80011664:	00048693          	mv	a3,s1
80011668:	00100613          	li	a2,1
8001166c:	01710593          	addi	a1,sp,23
80011670:	07100513          	li	a0,113
80011674:	e84ff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011678:	00050413          	mv	s0,a0
8001167c:	04097793          	andi	a5,s2,64
80011680:	02078063          	beqz	a5,800116a0 <bme680_set_sensor_settings+0x2b0>
80011684:	0424c783          	lbu	a5,66(s1)
80011688:	01714703          	lbu	a4,23(sp)
8001168c:	00479793          	slli	a5,a5,0x4
80011690:	0107f793          	andi	a5,a5,16
80011694:	fef77713          	andi	a4,a4,-17
80011698:	00e7e7b3          	or	a5,a5,a4
8001169c:	00f10ba3          	sb	a5,23(sp)
800116a0:	08097913          	andi	s2,s2,128
800116a4:	00090e63          	beqz	s2,800116c0 <bme680_set_sensor_settings+0x2d0>
800116a8:	01714783          	lbu	a5,23(sp)
800116ac:	0404c703          	lbu	a4,64(s1)
800116b0:	ff07f793          	andi	a5,a5,-16
800116b4:	00f77713          	andi	a4,a4,15
800116b8:	00e7e7b3          	or	a5,a5,a4
800116bc:	00f10ba3          	sb	a5,23(sp)
800116c0:	0504a783          	lw	a5,80(s1)
800116c4:	00100693          	li	a3,1
800116c8:	01710613          	addi	a2,sp,23
800116cc:	07100593          	li	a1,113
800116d0:	00100513          	li	a0,1
800116d4:	000780e7          	jalr	a5
800116d8:	05348423          	sb	s3,72(s1)
800116dc:	03c12083          	lw	ra,60(sp)
800116e0:	00040513          	mv	a0,s0
800116e4:	03812403          	lw	s0,56(sp)
800116e8:	03412483          	lw	s1,52(sp)
800116ec:	03012903          	lw	s2,48(sp)
800116f0:	02c12983          	lw	s3,44(sp)
800116f4:	04010113          	addi	sp,sp,64
800116f8:	00008067          	ret
800116fc:	0444d583          	lhu	a1,68(s1)
80011700:	01649503          	lh	a0,22(s1)
80011704:	000267b7          	lui	a5,0x26
80011708:	99978793          	addi	a5,a5,-1639 # 25999 <font6x8-0x7ffda693>
8001170c:	01059713          	slli	a4,a1,0x10
80011710:	00f50533          	add	a0,a0,a5
80011714:	01075713          	srli	a4,a4,0x10
80011718:	19000793          	li	a5,400
8001171c:	00e7f463          	bgeu	a5,a4,80011724 <bme680_set_sensor_settings+0x334>
80011720:	19000593          	li	a1,400
80011724:	01059593          	slli	a1,a1,0x10
80011728:	0105d593          	srli	a1,a1,0x10
8001172c:	441050ef          	jal	ra,8001736c <__mulsi3>
80011730:	01400593          	li	a1,20
80011734:	4ed050ef          	jal	ra,80017420 <__divsi3>
80011738:	003207b7          	lui	a5,0x320
8001173c:	00f50533          	add	a0,a0,a5
80011740:	00a00593          	li	a1,10
80011744:	4dd050ef          	jal	ra,80017420 <__divsi3>
80011748:	01548583          	lb	a1,21(s1)
8001174c:	31058593          	addi	a1,a1,784
80011750:	41d050ef          	jal	ra,8001736c <__mulsi3>
80011754:	01848583          	lb	a1,24(s1)
80011758:	40155413          	srai	s0,a0,0x1
8001175c:	00948503          	lb	a0,9(s1)
80011760:	40d050ef          	jal	ra,8001736c <__mulsi3>
80011764:	3e800593          	li	a1,1000
80011768:	4b9050ef          	jal	ra,80017420 <__divsi3>
8001176c:	0384c583          	lbu	a1,56(s1)
80011770:	00851513          	slli	a0,a0,0x8
80011774:	00a40533          	add	a0,s0,a0
80011778:	00458593          	addi	a1,a1,4
8001177c:	4a5050ef          	jal	ra,80017420 <__divsi3>
80011780:	03948583          	lb	a1,57(s1)
80011784:	00559793          	slli	a5,a1,0x5
80011788:	00b787b3          	add	a5,a5,a1
8001178c:	00279793          	slli	a5,a5,0x2
80011790:	40b787b3          	sub	a5,a5,a1
80011794:	000105b7          	lui	a1,0x10
80011798:	00b785b3          	add	a1,a5,a1
8001179c:	485050ef          	jal	ra,80017420 <__divsi3>
800117a0:	f0650793          	addi	a5,a0,-250
800117a4:	00479513          	slli	a0,a5,0x4
800117a8:	00f50533          	add	a0,a0,a5
800117ac:	00151513          	slli	a0,a0,0x1
800117b0:	06400593          	li	a1,100
800117b4:	03250513          	addi	a0,a0,50
800117b8:	469050ef          	jal	ra,80017420 <__divsi3>
800117bc:	000067b7          	lui	a5,0x6
800117c0:	0464d703          	lhu	a4,70(s1)
800117c4:	45a78793          	addi	a5,a5,1114 # 645a <font6x8-0x7fff9bd2>
800117c8:	000016b7          	lui	a3,0x1
800117cc:	00f11c23          	sh	a5,24(sp)
800117d0:	00a10e23          	sb	a0,28(sp)
800117d4:	fbf68693          	addi	a3,a3,-65 # fbf <font6x8-0x7ffff06d>
800117d8:	0ff00793          	li	a5,255
800117dc:	00e6ee63          	bltu	a3,a4,800117f8 <bme680_set_sensor_settings+0x408>
800117e0:	00000793          	li	a5,0
800117e4:	03f00693          	li	a3,63
800117e8:	02e6ee63          	bltu	a3,a4,80011824 <bme680_set_sensor_settings+0x434>
800117ec:	00679793          	slli	a5,a5,0x6
800117f0:	00e787b3          	add	a5,a5,a4
800117f4:	0ff7f793          	andi	a5,a5,255
800117f8:	04048023          	sb	zero,64(s1)
800117fc:	00048693          	mv	a3,s1
80011800:	00200613          	li	a2,2
80011804:	01c10593          	addi	a1,sp,28
80011808:	01810513          	addi	a0,sp,24
8001180c:	00f10ea3          	sb	a5,29(sp)
80011810:	d8cff0ef          	jal	ra,80010d9c <bme680_set_regs>
80011814:	04048423          	sb	zero,72(s1)
80011818:	00050413          	mv	s0,a0
8001181c:	c2051ee3          	bnez	a0,80011458 <bme680_set_sensor_settings+0x68>
80011820:	c15ff06f          	j	80011434 <bme680_set_sensor_settings+0x44>
80011824:	00178793          	addi	a5,a5,1
80011828:	00275713          	srli	a4,a4,0x2
8001182c:	0ff7f793          	andi	a5,a5,255
80011830:	fb9ff06f          	j	800117e8 <bme680_set_sensor_settings+0x3f8>

80011834 <bme680_get_sensor_mode>:
80011834:	fe010113          	addi	sp,sp,-32
80011838:	00812c23          	sw	s0,24(sp)
8001183c:	00112e23          	sw	ra,28(sp)
80011840:	00050413          	mv	s0,a0
80011844:	b48ff0ef          	jal	ra,80010b8c <null_ptr_check>
80011848:	02051263          	bnez	a0,8001186c <bme680_get_sensor_mode+0x38>
8001184c:	00040693          	mv	a3,s0
80011850:	00100613          	li	a2,1
80011854:	00f10593          	addi	a1,sp,15
80011858:	07400513          	li	a0,116
8001185c:	c9cff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011860:	00f14783          	lbu	a5,15(sp)
80011864:	0037f793          	andi	a5,a5,3
80011868:	04f40423          	sb	a5,72(s0)
8001186c:	01c12083          	lw	ra,28(sp)
80011870:	01812403          	lw	s0,24(sp)
80011874:	02010113          	addi	sp,sp,32
80011878:	00008067          	ret

8001187c <bme680_set_profile_dur>:
8001187c:	fe010113          	addi	sp,sp,-32
80011880:	040207b7          	lui	a5,0x4020
80011884:	01212823          	sw	s2,16(sp)
80011888:	10078793          	addi	a5,a5,256 # 4020100 <font6x8-0x7bfdff2c>
8001188c:	00001937          	lui	s2,0x1
80011890:	00112e23          	sw	ra,28(sp)
80011894:	00812c23          	sw	s0,24(sp)
80011898:	00912a23          	sw	s1,20(sp)
8001189c:	00f12423          	sw	a5,8(sp)
800118a0:	00890793          	addi	a5,s2,8 # 1008 <font6x8-0x7ffff024>
800118a4:	00f11623          	sh	a5,12(sp)
800118a8:	03d5c783          	lbu	a5,61(a1) # 1003d <font6x8-0x7ffeffef>
800118ac:	01010713          	addi	a4,sp,16
800118b0:	00050493          	mv	s1,a0
800118b4:	00f707b3          	add	a5,a4,a5
800118b8:	03e5c703          	lbu	a4,62(a1)
800118bc:	ff87c503          	lbu	a0,-8(a5)
800118c0:	01010793          	addi	a5,sp,16
800118c4:	00e78733          	add	a4,a5,a4
800118c8:	ff874783          	lbu	a5,-8(a4)
800118cc:	03c5c703          	lbu	a4,60(a1)
800118d0:	01010693          	addi	a3,sp,16
800118d4:	00a787b3          	add	a5,a5,a0
800118d8:	00e68733          	add	a4,a3,a4
800118dc:	ff874503          	lbu	a0,-8(a4)
800118e0:	00058413          	mv	s0,a1
800118e4:	7ab00593          	li	a1,1963
800118e8:	00f50533          	add	a0,a0,a5
800118ec:	281050ef          	jal	ra,8001736c <__mulsi3>
800118f0:	2b990913          	addi	s2,s2,697
800118f4:	01250533          	add	a0,a0,s2
800118f8:	3e800593          	li	a1,1000
800118fc:	32d050ef          	jal	ra,80017428 <__udivsi3>
80011900:	00150513          	addi	a0,a0,1
80011904:	40a484b3          	sub	s1,s1,a0
80011908:	04941323          	sh	s1,70(s0)
8001190c:	01c12083          	lw	ra,28(sp)
80011910:	01812403          	lw	s0,24(sp)
80011914:	01412483          	lw	s1,20(sp)
80011918:	01012903          	lw	s2,16(sp)
8001191c:	02010113          	addi	sp,sp,32
80011920:	00008067          	ret

80011924 <bme680_get_profile_dur>:
80011924:	fe010113          	addi	sp,sp,-32
80011928:	040207b7          	lui	a5,0x4020
8001192c:	01212823          	sw	s2,16(sp)
80011930:	10078793          	addi	a5,a5,256 # 4020100 <font6x8-0x7bfdff2c>
80011934:	00001937          	lui	s2,0x1
80011938:	00112e23          	sw	ra,28(sp)
8001193c:	00812c23          	sw	s0,24(sp)
80011940:	00912a23          	sw	s1,20(sp)
80011944:	00f12423          	sw	a5,8(sp)
80011948:	00890793          	addi	a5,s2,8 # 1008 <font6x8-0x7ffff024>
8001194c:	00f11623          	sh	a5,12(sp)
80011950:	03d5c783          	lbu	a5,61(a1)
80011954:	01010713          	addi	a4,sp,16
80011958:	00050493          	mv	s1,a0
8001195c:	00f707b3          	add	a5,a4,a5
80011960:	03e5c703          	lbu	a4,62(a1)
80011964:	ff87c503          	lbu	a0,-8(a5)
80011968:	01010793          	addi	a5,sp,16
8001196c:	00e78733          	add	a4,a5,a4
80011970:	ff874783          	lbu	a5,-8(a4)
80011974:	03c5c703          	lbu	a4,60(a1)
80011978:	01010693          	addi	a3,sp,16
8001197c:	00a787b3          	add	a5,a5,a0
80011980:	00e68733          	add	a4,a3,a4
80011984:	ff874503          	lbu	a0,-8(a4)
80011988:	00058413          	mv	s0,a1
8001198c:	7ab00593          	li	a1,1963
80011990:	00f50533          	add	a0,a0,a5
80011994:	1d9050ef          	jal	ra,8001736c <__mulsi3>
80011998:	2b990913          	addi	s2,s2,697
8001199c:	3e800593          	li	a1,1000
800119a0:	01250533          	add	a0,a0,s2
800119a4:	285050ef          	jal	ra,80017428 <__udivsi3>
800119a8:	00150793          	addi	a5,a0,1
800119ac:	01079793          	slli	a5,a5,0x10
800119b0:	0107d793          	srli	a5,a5,0x10
800119b4:	00f49023          	sh	a5,0(s1)
800119b8:	04244703          	lbu	a4,66(s0)
800119bc:	00070863          	beqz	a4,800119cc <bme680_get_profile_dur+0xa8>
800119c0:	04645503          	lhu	a0,70(s0)
800119c4:	00a787b3          	add	a5,a5,a0
800119c8:	00f49023          	sh	a5,0(s1)
800119cc:	01c12083          	lw	ra,28(sp)
800119d0:	01812403          	lw	s0,24(sp)
800119d4:	01412483          	lw	s1,20(sp)
800119d8:	01012903          	lw	s2,16(sp)
800119dc:	02010113          	addi	sp,sp,32
800119e0:	00008067          	ret

800119e4 <bme680_get_sensor_data>:
800119e4:	f2010113          	addi	sp,sp,-224
800119e8:	0d412423          	sw	s4,200(sp)
800119ec:	00050a13          	mv	s4,a0
800119f0:	00058513          	mv	a0,a1
800119f4:	0c812c23          	sw	s0,216(sp)
800119f8:	0d312623          	sw	s3,204(sp)
800119fc:	0c112e23          	sw	ra,220(sp)
80011a00:	0c912a23          	sw	s1,212(sp)
80011a04:	0d212823          	sw	s2,208(sp)
80011a08:	0d512223          	sw	s5,196(sp)
80011a0c:	0d612023          	sw	s6,192(sp)
80011a10:	0b712e23          	sw	s7,188(sp)
80011a14:	0b812c23          	sw	s8,184(sp)
80011a18:	0b912a23          	sw	s9,180(sp)
80011a1c:	0ba12823          	sw	s10,176(sp)
80011a20:	0bb12623          	sw	s11,172(sp)
80011a24:	00058413          	mv	s0,a1
80011a28:	964ff0ef          	jal	ra,80010b8c <null_ptr_check>
80011a2c:	00050993          	mv	s3,a0
80011a30:	4c051863          	bnez	a0,80011f00 <bme680_get_sensor_data+0x51c>
80011a34:	00040513          	mv	a0,s0
80011a38:	00012823          	sw	zero,16(sp)
80011a3c:	00012a23          	sw	zero,20(sp)
80011a40:	00012c23          	sw	zero,24(sp)
80011a44:	00011e23          	sh	zero,28(sp)
80011a48:	00010f23          	sb	zero,30(sp)
80011a4c:	940ff0ef          	jal	ra,80010b8c <null_ptr_check>
80011a50:	00050993          	mv	s3,a0
80011a54:	00a00c13          	li	s8,10
80011a58:	50099263          	bnez	s3,80011f5c <bme680_get_sensor_data+0x578>
80011a5c:	00040693          	mv	a3,s0
80011a60:	00f00613          	li	a2,15
80011a64:	01010593          	addi	a1,sp,16
80011a68:	01d00513          	li	a0,29
80011a6c:	a8cff0ef          	jal	ra,80010cf8 <bme680_get_regs>
80011a70:	01014783          	lbu	a5,16(sp)
80011a74:	01e14b03          	lbu	s6,30(sp)
80011a78:	01214d03          	lbu	s10,18(sp)
80011a7c:	00f7f713          	andi	a4,a5,15
80011a80:	020b7613          	andi	a2,s6,32
80011a84:	f807f793          	andi	a5,a5,-128
80011a88:	00c7e7b3          	or	a5,a5,a2
80011a8c:	010b7613          	andi	a2,s6,16
80011a90:	00ea00a3          	sb	a4,1(s4)
80011a94:	00c7e7b3          	or	a5,a5,a2
80011a98:	01114703          	lbu	a4,17(sp)
80011a9c:	01879793          	slli	a5,a5,0x18
80011aa0:	4187d793          	srai	a5,a5,0x18
80011aa4:	00ea0123          	sb	a4,2(s4)
80011aa8:	00fa0023          	sb	a5,0(s4)
80011aac:	01314c83          	lbu	s9,19(sp)
80011ab0:	01414d83          	lbu	s11,20(sp)
80011ab4:	01514703          	lbu	a4,21(sp)
80011ab8:	01614483          	lbu	s1,22(sp)
80011abc:	01714683          	lbu	a3,23(sp)
80011ac0:	01814a83          	lbu	s5,24(sp)
80011ac4:	01914b83          	lbu	s7,25(sp)
80011ac8:	01d14903          	lbu	s2,29(sp)
80011acc:	00050993          	mv	s3,a0
80011ad0:	4807d063          	bgez	a5,80011f50 <bme680_get_sensor_data+0x56c>
80011ad4:	0046d793          	srli	a5,a3,0x4
80011ad8:	00449493          	slli	s1,s1,0x4
80011adc:	00f4e4b3          	or	s1,s1,a5
80011ae0:	00c71793          	slli	a5,a4,0xc
80011ae4:	00f4e4b3          	or	s1,s1,a5
80011ae8:	01a45783          	lhu	a5,26(s0)
80011aec:	4034d493          	srai	s1,s1,0x3
80011af0:	004c9c93          	slli	s9,s9,0x4
80011af4:	00179793          	slli	a5,a5,0x1
80011af8:	40f484b3          	sub	s1,s1,a5
80011afc:	41f4d793          	srai	a5,s1,0x1f
80011b00:	01f79713          	slli	a4,a5,0x1f
80011b04:	0014d613          	srli	a2,s1,0x1
80011b08:	00c76633          	or	a2,a4,a2
80011b0c:	00078693          	mv	a3,a5
80011b10:	00078593          	mv	a1,a5
80011b14:	00060513          	mv	a0,a2
80011b18:	00f12623          	sw	a5,12(sp)
80011b1c:	075050ef          	jal	ra,80017390 <__muldi3>
80011b20:	01e40683          	lb	a3,30(s0)
80011b24:	01459713          	slli	a4,a1,0x14
80011b28:	00c55513          	srli	a0,a0,0xc
80011b2c:	00469613          	slli	a2,a3,0x4
80011b30:	00a76533          	or	a0,a4,a0
80011b34:	41f6d693          	srai	a3,a3,0x1f
80011b38:	40c5d593          	srai	a1,a1,0xc
80011b3c:	055050ef          	jal	ra,80017390 <__muldi3>
80011b40:	00c12783          	lw	a5,12(sp)
80011b44:	00050c13          	mv	s8,a0
80011b48:	01c41503          	lh	a0,28(s0)
80011b4c:	00048613          	mv	a2,s1
80011b50:	00078693          	mv	a3,a5
80011b54:	00b12423          	sw	a1,8(sp)
80011b58:	41f55593          	srai	a1,a0,0x1f
80011b5c:	035050ef          	jal	ra,80017390 <__muldi3>
80011b60:	00812703          	lw	a4,8(sp)
80011b64:	01559593          	slli	a1,a1,0x15
80011b68:	00b55793          	srli	a5,a0,0xb
80011b6c:	01271713          	slli	a4,a4,0x12
80011b70:	00ec5513          	srli	a0,s8,0xe
80011b74:	00a76533          	or	a0,a4,a0
80011b78:	00f5e7b3          	or	a5,a1,a5
80011b7c:	00a787b3          	add	a5,a5,a0
80011b80:	00279c13          	slli	s8,a5,0x2
80011b84:	ffff04b7          	lui	s1,0xffff0
80011b88:	02f42a23          	sw	a5,52(s0)
80011b8c:	00fc0c33          	add	s8,s8,a5
80011b90:	60048493          	addi	s1,s1,1536 # ffff0600 <__clzsi2+0x7ffd912c>
80011b94:	4017d793          	srai	a5,a5,0x1
80011b98:	009784b3          	add	s1,a5,s1
80011b9c:	080c0c13          	addi	s8,s8,128
80011ba0:	4024d593          	srai	a1,s1,0x2
80011ba4:	408c5c13          	srai	s8,s8,0x8
80011ba8:	00058513          	mv	a0,a1
80011bac:	018a1223          	sh	s8,4(s4)
80011bb0:	7bc050ef          	jal	ra,8001736c <__mulsi3>
80011bb4:	02a40583          	lb	a1,42(s0)
80011bb8:	00050693          	mv	a3,a0
80011bbc:	40b55513          	srai	a0,a0,0xb
80011bc0:	00d12623          	sw	a3,12(sp)
80011bc4:	7a8050ef          	jal	ra,8001736c <__mulsi3>
80011bc8:	40255713          	srai	a4,a0,0x2
80011bcc:	02841503          	lh	a0,40(s0)
80011bd0:	00048593          	mv	a1,s1
80011bd4:	00e12423          	sw	a4,8(sp)
80011bd8:	794050ef          	jal	ra,8001736c <__mulsi3>
80011bdc:	00812703          	lw	a4,8(sp)
80011be0:	00151793          	slli	a5,a0,0x1
80011be4:	02241503          	lh	a0,34(s0)
80011be8:	00e787b3          	add	a5,a5,a4
80011bec:	4027d713          	srai	a4,a5,0x2
80011bf0:	00048593          	mv	a1,s1
80011bf4:	00e12423          	sw	a4,8(sp)
80011bf8:	774050ef          	jal	ra,8001736c <__mulsi3>
80011bfc:	00c12683          	lw	a3,12(sp)
80011c00:	40155493          	srai	s1,a0,0x1
80011c04:	02440503          	lb	a0,36(s0)
80011c08:	40d6d593          	srai	a1,a3,0xd
80011c0c:	004ddd93          	srli	s11,s11,0x4
80011c10:	00551513          	slli	a0,a0,0x5
80011c14:	758050ef          	jal	ra,8001736c <__mulsi3>
80011c18:	40355513          	srai	a0,a0,0x3
80011c1c:	02045583          	lhu	a1,32(s0)
80011c20:	00950533          	add	a0,a0,s1
80011c24:	000087b7          	lui	a5,0x8
80011c28:	41255513          	srai	a0,a0,0x12
80011c2c:	00f50533          	add	a0,a0,a5
80011c30:	73c050ef          	jal	ra,8001736c <__mulsi3>
80011c34:	02641783          	lh	a5,38(s0)
80011c38:	00812703          	lw	a4,8(sp)
80011c3c:	01bcecb3          	or	s9,s9,s11
80011c40:	00cd1d13          	slli	s10,s10,0xc
80011c44:	01079793          	slli	a5,a5,0x10
80011c48:	00e787b3          	add	a5,a5,a4
80011c4c:	40f55493          	srai	s1,a0,0xf
80011c50:	01aced33          	or	s10,s9,s10
80011c54:	00100537          	lui	a0,0x100
80011c58:	40c7d793          	srai	a5,a5,0xc
80011c5c:	41a50533          	sub	a0,a0,s10
80011c60:	000015b7          	lui	a1,0x1
80011c64:	c3558593          	addi	a1,a1,-971 # c35 <font6x8-0x7ffff3f7>
80011c68:	40f50533          	sub	a0,a0,a5
80011c6c:	700050ef          	jal	ra,8001736c <__mulsi3>
80011c70:	40000737          	lui	a4,0x40000
80011c74:	00048593          	mv	a1,s1
80011c78:	2ce54463          	blt	a0,a4,80011f40 <bme680_get_sensor_data+0x55c>
80011c7c:	7a4050ef          	jal	ra,80017420 <__divsi3>
80011c80:	00151493          	slli	s1,a0,0x1
80011c84:	4034d593          	srai	a1,s1,0x3
80011c88:	00058513          	mv	a0,a1
80011c8c:	6e0050ef          	jal	ra,8001736c <__mulsi3>
80011c90:	02e41583          	lh	a1,46(s0)
80011c94:	40d55513          	srai	a0,a0,0xd
80011c98:	4084dd13          	srai	s10,s1,0x8
80011c9c:	6d0050ef          	jal	ra,8001736c <__mulsi3>
80011ca0:	02c41583          	lh	a1,44(s0)
80011ca4:	40c55c93          	srai	s9,a0,0xc
80011ca8:	4024d513          	srai	a0,s1,0x2
80011cac:	6c0050ef          	jal	ra,8001736c <__mulsi3>
80011cb0:	40d55513          	srai	a0,a0,0xd
80011cb4:	00ac8cb3          	add	s9,s9,a0
80011cb8:	000d0593          	mv	a1,s10
80011cbc:	000d0513          	mv	a0,s10
80011cc0:	6ac050ef          	jal	ra,8001736c <__mulsi3>
80011cc4:	000d0593          	mv	a1,s10
80011cc8:	6a4050ef          	jal	ra,8001736c <__mulsi3>
80011ccc:	03044583          	lbu	a1,48(s0)
80011cd0:	008a9a93          	slli	s5,s5,0x8
80011cd4:	017aebb3          	or	s7,s5,s7
80011cd8:	694050ef          	jal	ra,8001736c <__mulsi3>
80011cdc:	41155513          	srai	a0,a0,0x11
80011ce0:	00ac8533          	add	a0,s9,a0
80011ce4:	02b40c83          	lb	s9,43(s0)
80011ce8:	000c0593          	mv	a1,s8
80011cec:	007c9c93          	slli	s9,s9,0x7
80011cf0:	01950533          	add	a0,a0,s9
80011cf4:	40455513          	srai	a0,a0,0x4
80011cf8:	00a484b3          	add	s1,s1,a0
80011cfc:	009a2423          	sw	s1,8(s4)
80011d00:	01240503          	lb	a0,18(s0)
80011d04:	668050ef          	jal	ra,8001736c <__mulsi3>
80011d08:	06400593          	li	a1,100
80011d0c:	714050ef          	jal	ra,80017420 <__divsi3>
80011d10:	000c0593          	mv	a1,s8
80011d14:	658050ef          	jal	ra,8001736c <__mulsi3>
80011d18:	06400593          	li	a1,100
80011d1c:	40655513          	srai	a0,a0,0x6
80011d20:	700050ef          	jal	ra,80017420 <__divsi3>
80011d24:	00050493          	mv	s1,a0
80011d28:	01140503          	lb	a0,17(s0)
80011d2c:	000c0593          	mv	a1,s8
80011d30:	63c050ef          	jal	ra,8001736c <__mulsi3>
80011d34:	06400593          	li	a1,100
80011d38:	6e8050ef          	jal	ra,80017420 <__divsi3>
80011d3c:	00e45583          	lhu	a1,14(s0)
80011d40:	000047b7          	lui	a5,0x4
80011d44:	00a48533          	add	a0,s1,a0
80011d48:	00f50533          	add	a0,a0,a5
80011d4c:	620050ef          	jal	ra,8001736c <__mulsi3>
80011d50:	40a55493          	srai	s1,a0,0xa
80011d54:	01040503          	lb	a0,16(s0)
80011d58:	000c0593          	mv	a1,s8
80011d5c:	00c45a83          	lhu	s5,12(s0)
80011d60:	60c050ef          	jal	ra,8001736c <__mulsi3>
80011d64:	06400593          	li	a1,100
80011d68:	6b8050ef          	jal	ra,80017420 <__divsi3>
80011d6c:	004a9a93          	slli	s5,s5,0x4
80011d70:	415b8bb3          	sub	s7,s7,s5
80011d74:	40155593          	srai	a1,a0,0x1
80011d78:	40bb85b3          	sub	a1,s7,a1
80011d7c:	00048513          	mv	a0,s1
80011d80:	5ec050ef          	jal	ra,8001736c <__mulsi3>
80011d84:	00050493          	mv	s1,a0
80011d88:	01440503          	lb	a0,20(s0)
80011d8c:	000c0593          	mv	a1,s8
80011d90:	5dc050ef          	jal	ra,8001736c <__mulsi3>
80011d94:	06400593          	li	a1,100
80011d98:	688050ef          	jal	ra,80017420 <__divsi3>
80011d9c:	01344a83          	lbu	s5,19(s0)
80011da0:	40e4d593          	srai	a1,s1,0xe
80011da4:	007a9a93          	slli	s5,s5,0x7
80011da8:	01550ab3          	add	s5,a0,s5
80011dac:	00058513          	mv	a0,a1
80011db0:	5bc050ef          	jal	ra,8001736c <__mulsi3>
80011db4:	404ad593          	srai	a1,s5,0x4
80011db8:	40a55513          	srai	a0,a0,0xa
80011dbc:	5b0050ef          	jal	ra,8001736c <__mulsi3>
80011dc0:	40155793          	srai	a5,a0,0x1
80011dc4:	009787b3          	add	a5,a5,s1
80011dc8:	40a7d513          	srai	a0,a5,0xa
80011dcc:	00551793          	slli	a5,a0,0x5
80011dd0:	40a787b3          	sub	a5,a5,a0
80011dd4:	00279793          	slli	a5,a5,0x2
80011dd8:	00a787b3          	add	a5,a5,a0
80011ddc:	00379793          	slli	a5,a5,0x3
80011de0:	40c7d713          	srai	a4,a5,0xc
80011de4:	0007d463          	bgez	a5,80011dec <bme680_get_sensor_data+0x408>
80011de8:	00000713          	li	a4,0
80011dec:	00070793          	mv	a5,a4
80011df0:	00018737          	lui	a4,0x18
80011df4:	6a070713          	addi	a4,a4,1696 # 186a0 <font6x8-0x7ffe798c>
80011df8:	00f75463          	bge	a4,a5,80011e00 <bme680_get_sensor_data+0x41c>
80011dfc:	00070793          	mv	a5,a4
80011e00:	800005b7          	lui	a1,0x80000
80011e04:	00fa2623          	sw	a5,12(s4)
80011e08:	26c58a93          	addi	s5,a1,620 # 8000026c <__clzsi2+0xfffe8d98>
80011e0c:	04000613          	li	a2,64
80011e10:	26c58593          	addi	a1,a1,620
80011e14:	02010513          	addi	a0,sp,32
80011e18:	03a40483          	lb	s1,58(s0)
80011e1c:	22c000ef          	jal	ra,80012048 <memcpy>
80011e20:	040a8593          	addi	a1,s5,64
80011e24:	04000613          	li	a2,64
80011e28:	06010513          	addi	a0,sp,96
80011e2c:	21c000ef          	jal	ra,80012048 <memcpy>
80011e30:	00500613          	li	a2,5
80011e34:	00000693          	li	a3,0
80011e38:	00048513          	mv	a0,s1
80011e3c:	41f4d593          	srai	a1,s1,0x1f
80011e40:	550050ef          	jal	ra,80017390 <__muldi3>
80011e44:	00fb7a93          	andi	s5,s6,15
80011e48:	0a010713          	addi	a4,sp,160
80011e4c:	002a9a93          	slli	s5,s5,0x2
80011e50:	01570ab3          	add	s5,a4,s5
80011e54:	f80aa603          	lw	a2,-128(s5)
80011e58:	00050793          	mv	a5,a0
80011e5c:	53c50513          	addi	a0,a0,1340 # 10053c <font6x8-0x7feffaf0>
80011e60:	00f537b3          	sltu	a5,a0,a5
80011e64:	00000693          	li	a3,0
80011e68:	00b785b3          	add	a1,a5,a1
80011e6c:	524050ef          	jal	ra,80017390 <__muldi3>
80011e70:	01059793          	slli	a5,a1,0x10
80011e74:	01055613          	srli	a2,a0,0x10
80011e78:	00c7e633          	or	a2,a5,a2
80011e7c:	006b5b13          	srli	s6,s6,0x6
80011e80:	00291793          	slli	a5,s2,0x2
80011e84:	0167e7b3          	or	a5,a5,s6
80011e88:	00f79793          	slli	a5,a5,0xf
80011e8c:	ff0004b7          	lui	s1,0xff000
80011e90:	009784b3          	add	s1,a5,s1
80011e94:	00f4b7b3          	sltu	a5,s1,a5
80011e98:	fc0aa503          	lw	a0,-64(s5)
80011e9c:	4105d693          	srai	a3,a1,0x10
80011ea0:	00c48933          	add	s2,s1,a2
80011ea4:	fff78793          	addi	a5,a5,-1 # 3fff <font6x8-0x7fffc02d>
80011ea8:	00d787b3          	add	a5,a5,a3
80011eac:	009934b3          	sltu	s1,s2,s1
80011eb0:	00000593          	li	a1,0
80011eb4:	00f484b3          	add	s1,s1,a5
80011eb8:	4d8050ef          	jal	ra,80017390 <__muldi3>
80011ebc:	01759713          	slli	a4,a1,0x17
80011ec0:	00955793          	srli	a5,a0,0x9
80011ec4:	00f767b3          	or	a5,a4,a5
80011ec8:	00195513          	srli	a0,s2,0x1
80011ecc:	01f49713          	slli	a4,s1,0x1f
80011ed0:	00a76533          	or	a0,a4,a0
80011ed4:	00a78533          	add	a0,a5,a0
80011ed8:	4014d713          	srai	a4,s1,0x1
80011edc:	4095d593          	srai	a1,a1,0x9
80011ee0:	00f537b3          	sltu	a5,a0,a5
80011ee4:	00e585b3          	add	a1,a1,a4
80011ee8:	00090613          	mv	a2,s2
80011eec:	00048693          	mv	a3,s1
80011ef0:	00b785b3          	add	a1,a5,a1
80011ef4:	12c020ef          	jal	ra,80014020 <__divdi3>
80011ef8:	00aa2823          	sw	a0,16(s4)
80011efc:	06098a63          	beqz	s3,80011f70 <bme680_get_sensor_data+0x58c>
80011f00:	0dc12083          	lw	ra,220(sp)
80011f04:	0d812403          	lw	s0,216(sp)
80011f08:	0d412483          	lw	s1,212(sp)
80011f0c:	0d012903          	lw	s2,208(sp)
80011f10:	0c812a03          	lw	s4,200(sp)
80011f14:	0c412a83          	lw	s5,196(sp)
80011f18:	0c012b03          	lw	s6,192(sp)
80011f1c:	0bc12b83          	lw	s7,188(sp)
80011f20:	0b812c03          	lw	s8,184(sp)
80011f24:	0b412c83          	lw	s9,180(sp)
80011f28:	0b012d03          	lw	s10,176(sp)
80011f2c:	0ac12d83          	lw	s11,172(sp)
80011f30:	00098513          	mv	a0,s3
80011f34:	0cc12983          	lw	s3,204(sp)
80011f38:	0e010113          	addi	sp,sp,224
80011f3c:	00008067          	ret
80011f40:	00151513          	slli	a0,a0,0x1
80011f44:	4dc050ef          	jal	ra,80017420 <__divsi3>
80011f48:	00050493          	mv	s1,a0
80011f4c:	d39ff06f          	j	80011c84 <bme680_get_sensor_data+0x2a0>
80011f50:	05442783          	lw	a5,84(s0)
80011f54:	00a00513          	li	a0,10
80011f58:	000780e7          	jalr	a5
80011f5c:	fffc0c13          	addi	s8,s8,-1
80011f60:	0ffc7c13          	andi	s8,s8,255
80011f64:	ae0c1ae3          	bnez	s8,80011a58 <bme680_get_sensor_data+0x74>
80011f68:	00200993          	li	s3,2
80011f6c:	f95ff06f          	j	80011f00 <bme680_get_sensor_data+0x51c>
80011f70:	00100793          	li	a5,1
80011f74:	04f404a3          	sb	a5,73(s0)
80011f78:	f89ff06f          	j	80011f00 <bme680_get_sensor_data+0x51c>

80011f7c <user_delay_ms>:
80011f7c:	bc9fe06f          	j	80010b44 <HAL_Timebase_DelayMS>

80011f80 <_putchar>:
80011f80:	ff010113          	addi	sp,sp,-16
80011f84:	00812423          	sw	s0,8(sp)
80011f88:	00112623          	sw	ra,12(sp)
80011f8c:	00050413          	mv	s0,a0
80011f90:	b25fe0ef          	jal	ra,80010ab4 <HAL_UART_PutChar>
80011f94:	00040513          	mv	a0,s0
80011f98:	00812403          	lw	s0,8(sp)
80011f9c:	00c12083          	lw	ra,12(sp)
80011fa0:	01010113          	addi	sp,sp,16
80011fa4:	fc8fe06f          	j	8001076c <HAL_OLED_PutChar>

80011fa8 <printf>:
80011fa8:	ec010113          	addi	sp,sp,-320
80011fac:	12b12223          	sw	a1,292(sp)
80011fb0:	12c12423          	sw	a2,296(sp)
80011fb4:	12d12623          	sw	a3,300(sp)
80011fb8:	00050613          	mv	a2,a0
80011fbc:	12410693          	addi	a3,sp,292
80011fc0:	0ff00593          	li	a1,255
80011fc4:	01010513          	addi	a0,sp,16
80011fc8:	10812c23          	sw	s0,280(sp)
80011fcc:	10112e23          	sw	ra,284(sp)
80011fd0:	12e12823          	sw	a4,304(sp)
80011fd4:	12f12a23          	sw	a5,308(sp)
80011fd8:	13012c23          	sw	a6,312(sp)
80011fdc:	13112e23          	sw	a7,316(sp)
80011fe0:	00d12623          	sw	a3,12(sp)
80011fe4:	00000413          	li	s0,0
80011fe8:	7cd010ef          	jal	ra,80013fb4 <vsnprintf_>
80011fec:	11010793          	addi	a5,sp,272
80011ff0:	008787b3          	add	a5,a5,s0
80011ff4:	f007c503          	lbu	a0,-256(a5)
80011ff8:	00051e63          	bnez	a0,80012014 <printf+0x6c>
80011ffc:	be8fe0ef          	jal	ra,800103e4 <HAL_OLED_DrawGFXBuffer>
80012000:	11c12083          	lw	ra,284(sp)
80012004:	11812403          	lw	s0,280(sp)
80012008:	00000513          	li	a0,0
8001200c:	14010113          	addi	sp,sp,320
80012010:	00008067          	ret
80012014:	00140413          	addi	s0,s0,1
80012018:	f69ff0ef          	jal	ra,80011f80 <_putchar>
8001201c:	0ff47413          	andi	s0,s0,255
80012020:	fcdff06f          	j	80011fec <printf+0x44>

80012024 <_external_interrupt>:
80012024:	00008067          	ret

80012028 <_misaligned_instruction>:
80012028:	00008067          	ret

8001202c <memset>:
8001202c:	00000793          	li	a5,0
80012030:	00c79463          	bne	a5,a2,80012038 <memset+0xc>
80012034:	00008067          	ret
80012038:	00f50733          	add	a4,a0,a5
8001203c:	00b70023          	sb	a1,0(a4)
80012040:	00178793          	addi	a5,a5,1
80012044:	fedff06f          	j	80012030 <memset+0x4>

80012048 <memcpy>:
80012048:	00000793          	li	a5,0
8001204c:	00c79463          	bne	a5,a2,80012054 <memcpy+0xc>
80012050:	00008067          	ret
80012054:	0005c703          	lbu	a4,0(a1)
80012058:	00178793          	addi	a5,a5,1
8001205c:	00e50023          	sb	a4,0(a0)
80012060:	fedff06f          	j	8001204c <memcpy+0x4>

80012064 <HAL_OLED_PutLine>:
80012064:	ff010113          	addi	sp,sp,-16
80012068:	00812423          	sw	s0,8(sp)
8001206c:	00112623          	sw	ra,12(sp)
80012070:	00050413          	mv	s0,a0
80012074:	00044503          	lbu	a0,0(s0)
80012078:	00051a63          	bnez	a0,8001208c <HAL_OLED_PutLine+0x28>
8001207c:	00c12083          	lw	ra,12(sp)
80012080:	00812403          	lw	s0,8(sp)
80012084:	01010113          	addi	sp,sp,16
80012088:	00008067          	ret
8001208c:	ee0fe0ef          	jal	ra,8001076c <HAL_OLED_PutChar>
80012090:	00140413          	addi	s0,s0,1
80012094:	fe1ff06f          	j	80012074 <HAL_OLED_PutLine+0x10>

80012098 <HAL_OLED_printf>:
80012098:	ec010113          	addi	sp,sp,-320
8001209c:	12b12223          	sw	a1,292(sp)
800120a0:	12c12423          	sw	a2,296(sp)
800120a4:	12d12623          	sw	a3,300(sp)
800120a8:	00050613          	mv	a2,a0
800120ac:	12410693          	addi	a3,sp,292
800120b0:	0ff00593          	li	a1,255
800120b4:	01010513          	addi	a0,sp,16
800120b8:	10112e23          	sw	ra,284(sp)
800120bc:	12e12823          	sw	a4,304(sp)
800120c0:	12f12a23          	sw	a5,308(sp)
800120c4:	13012c23          	sw	a6,312(sp)
800120c8:	13112e23          	sw	a7,316(sp)
800120cc:	00d12623          	sw	a3,12(sp)
800120d0:	6e5010ef          	jal	ra,80013fb4 <vsnprintf_>
800120d4:	01010513          	addi	a0,sp,16
800120d8:	f8dff0ef          	jal	ra,80012064 <HAL_OLED_PutLine>
800120dc:	11c12083          	lw	ra,284(sp)
800120e0:	14010113          	addi	sp,sp,320
800120e4:	00008067          	ret

800120e8 <HAL_I2C_StartCondition>:
800120e8:	ff010113          	addi	sp,sp,-16
800120ec:	00300513          	li	a0,3
800120f0:	00112623          	sw	ra,12(sp)
800120f4:	9d8fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
800120f8:	00500513          	li	a0,5
800120fc:	a29fe0ef          	jal	ra,80010b24 <HAL_Timebase_DelayUS>
80012100:	00100513          	li	a0,1
80012104:	9c8fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80012108:	00c12083          	lw	ra,12(sp)
8001210c:	00500513          	li	a0,5
80012110:	01010113          	addi	sp,sp,16
80012114:	a11fe06f          	j	80010b24 <HAL_Timebase_DelayUS>

80012118 <HAL_I2C_StopCondition>:
80012118:	ff010113          	addi	sp,sp,-16
8001211c:	00100513          	li	a0,1
80012120:	00112623          	sw	ra,12(sp)
80012124:	9a8fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80012128:	00500513          	li	a0,5
8001212c:	9f9fe0ef          	jal	ra,80010b24 <HAL_Timebase_DelayUS>
80012130:	00300513          	li	a0,3
80012134:	998fe0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
80012138:	00c12083          	lw	ra,12(sp)
8001213c:	00500513          	li	a0,5
80012140:	01010113          	addi	sp,sp,16
80012144:	9e1fe06f          	j	80010b24 <HAL_Timebase_DelayUS>

80012148 <BME680_ReadRegister>:
80012148:	ff010113          	addi	sp,sp,-16
8001214c:	00112623          	sw	ra,12(sp)
80012150:	00812423          	sw	s0,8(sp)
80012154:	00912223          	sw	s1,4(sp)
80012158:	00050493          	mv	s1,a0
8001215c:	f8dff0ef          	jal	ra,800120e8 <HAL_I2C_StartCondition>
80012160:	0ec00513          	li	a0,236
80012164:	920fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80012168:	944fe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
8001216c:	00100413          	li	s0,1
80012170:	fff00793          	li	a5,-1
80012174:	04850e63          	beq	a0,s0,800121d0 <BME680_ReadRegister+0x88>
80012178:	00048513          	mv	a0,s1
8001217c:	908fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
80012180:	92cfe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
80012184:	ffe00793          	li	a5,-2
80012188:	04850463          	beq	a0,s0,800121d0 <BME680_ReadRegister+0x88>
8001218c:	00000513          	li	a0,0
80012190:	92cfe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
80012194:	f55ff0ef          	jal	ra,800120e8 <HAL_I2C_StartCondition>
80012198:	0ed00513          	li	a0,237
8001219c:	8e8fe0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800121a0:	90cfe0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800121a4:	ffd00793          	li	a5,-3
800121a8:	02850463          	beq	a0,s0,800121d0 <BME680_ReadRegister+0x88>
800121ac:	8e4fe0ef          	jal	ra,80010290 <HAL_I2C_ReadByte>
800121b0:	00050413          	mv	s0,a0
800121b4:	00000513          	li	a0,0
800121b8:	904fe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
800121bc:	00100513          	li	a0,1
800121c0:	8fcfe0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
800121c4:	f55ff0ef          	jal	ra,80012118 <HAL_I2C_StopCondition>
800121c8:	01041793          	slli	a5,s0,0x10
800121cc:	4107d793          	srai	a5,a5,0x10
800121d0:	00c12083          	lw	ra,12(sp)
800121d4:	00812403          	lw	s0,8(sp)
800121d8:	00412483          	lw	s1,4(sp)
800121dc:	00078513          	mv	a0,a5
800121e0:	01010113          	addi	sp,sp,16
800121e4:	00008067          	ret

800121e8 <user_i2c_read>:
800121e8:	fe010113          	addi	sp,sp,-32
800121ec:	00912a23          	sw	s1,20(sp)
800121f0:	01212823          	sw	s2,16(sp)
800121f4:	01412423          	sw	s4,8(sp)
800121f8:	00112e23          	sw	ra,28(sp)
800121fc:	00812c23          	sw	s0,24(sp)
80012200:	01312623          	sw	s3,12(sp)
80012204:	00068493          	mv	s1,a3
80012208:	00060913          	mv	s2,a2
8001220c:	40c58a33          	sub	s4,a1,a2
80012210:	014909b3          	add	s3,s2,s4
80012214:	0ff9f993          	andi	s3,s3,255
80012218:	00049663          	bnez	s1,80012224 <user_i2c_read+0x3c>
8001221c:	00000513          	li	a0,0
80012220:	0440006f          	j	80012264 <user_i2c_read+0x7c>
80012224:	00098513          	mv	a0,s3
80012228:	f21ff0ef          	jal	ra,80012148 <BME680_ReadRegister>
8001222c:	00050413          	mv	s0,a0
80012230:	04055a63          	bgez	a0,80012284 <user_i2c_read+0x9c>
80012234:	80000537          	lui	a0,0x80000
80012238:	00048613          	mv	a2,s1
8001223c:	00098593          	mv	a1,s3
80012240:	2ec50513          	addi	a0,a0,748 # 800002ec <__clzsi2+0xfffe8e18>
80012244:	d65ff0ef          	jal	ra,80011fa8 <printf>
80012248:	80000537          	lui	a0,0x80000
8001224c:	00040613          	mv	a2,s0
80012250:	00098593          	mv	a1,s3
80012254:	31050513          	addi	a0,a0,784 # 80000310 <__clzsi2+0xfffe8e3c>
80012258:	d51ff0ef          	jal	ra,80011fa8 <printf>
8001225c:	01841513          	slli	a0,s0,0x18
80012260:	41855513          	srai	a0,a0,0x18
80012264:	01c12083          	lw	ra,28(sp)
80012268:	01812403          	lw	s0,24(sp)
8001226c:	01412483          	lw	s1,20(sp)
80012270:	01012903          	lw	s2,16(sp)
80012274:	00c12983          	lw	s3,12(sp)
80012278:	00812a03          	lw	s4,8(sp)
8001227c:	02010113          	addi	sp,sp,32
80012280:	00008067          	ret
80012284:	fff48493          	addi	s1,s1,-1 # feffffff <__clzsi2+0x7efe8b2b>
80012288:	01049493          	slli	s1,s1,0x10
8001228c:	00a90023          	sb	a0,0(s2)
80012290:	0104d493          	srli	s1,s1,0x10
80012294:	00190913          	addi	s2,s2,1
80012298:	f79ff06f          	j	80012210 <user_i2c_read+0x28>

8001229c <BME680_WriteRegister>:
8001229c:	ff010113          	addi	sp,sp,-16
800122a0:	00112623          	sw	ra,12(sp)
800122a4:	00812423          	sw	s0,8(sp)
800122a8:	00912223          	sw	s1,4(sp)
800122ac:	01212023          	sw	s2,0(sp)
800122b0:	00058493          	mv	s1,a1
800122b4:	00050913          	mv	s2,a0
800122b8:	e31ff0ef          	jal	ra,800120e8 <HAL_I2C_StartCondition>
800122bc:	0ec00513          	li	a0,236
800122c0:	fc5fd0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800122c4:	fe9fd0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800122c8:	00100413          	li	s0,1
800122cc:	fff00793          	li	a5,-1
800122d0:	02850e63          	beq	a0,s0,8001230c <BME680_WriteRegister+0x70>
800122d4:	00090513          	mv	a0,s2
800122d8:	fadfd0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800122dc:	fd1fd0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800122e0:	ffe00793          	li	a5,-2
800122e4:	02850463          	beq	a0,s0,8001230c <BME680_WriteRegister+0x70>
800122e8:	00048513          	mv	a0,s1
800122ec:	f99fd0ef          	jal	ra,80010284 <HAL_I2C_WriteByte>
800122f0:	fbdfd0ef          	jal	ra,800102ac <HAL_I2C_ReadACK>
800122f4:	ffd00793          	li	a5,-3
800122f8:	00850a63          	beq	a0,s0,8001230c <BME680_WriteRegister+0x70>
800122fc:	00000513          	li	a0,0
80012300:	fbdfd0ef          	jal	ra,800102bc <HAL_I2C_WriteACK>
80012304:	e15ff0ef          	jal	ra,80012118 <HAL_I2C_StopCondition>
80012308:	00000793          	li	a5,0
8001230c:	00c12083          	lw	ra,12(sp)
80012310:	00812403          	lw	s0,8(sp)
80012314:	00412483          	lw	s1,4(sp)
80012318:	00012903          	lw	s2,0(sp)
8001231c:	00078513          	mv	a0,a5
80012320:	01010113          	addi	sp,sp,16
80012324:	00008067          	ret

80012328 <user_i2c_write>:
80012328:	fe010113          	addi	sp,sp,-32
8001232c:	00812c23          	sw	s0,24(sp)
80012330:	01212823          	sw	s2,16(sp)
80012334:	01312623          	sw	s3,12(sp)
80012338:	00112e23          	sw	ra,28(sp)
8001233c:	00912a23          	sw	s1,20(sp)
80012340:	00058993          	mv	s3,a1
80012344:	00060913          	mv	s2,a2
80012348:	00068413          	mv	s0,a3
8001234c:	04040263          	beqz	s0,80012390 <user_i2c_write+0x68>
80012350:	00094583          	lbu	a1,0(s2)
80012354:	00098513          	mv	a0,s3
80012358:	f45ff0ef          	jal	ra,8001229c <BME680_WriteRegister>
8001235c:	00050493          	mv	s1,a0
80012360:	04055863          	bgez	a0,800123b0 <user_i2c_write+0x88>
80012364:	80000537          	lui	a0,0x80000
80012368:	00040613          	mv	a2,s0
8001236c:	00098593          	mv	a1,s3
80012370:	33c50513          	addi	a0,a0,828 # 8000033c <__clzsi2+0xfffe8e68>
80012374:	c35ff0ef          	jal	ra,80011fa8 <printf>
80012378:	00094603          	lbu	a2,0(s2)
8001237c:	80000537          	lui	a0,0x80000
80012380:	00048693          	mv	a3,s1
80012384:	00098593          	mv	a1,s3
80012388:	36050513          	addi	a0,a0,864 # 80000360 <__clzsi2+0xfffe8e8c>
8001238c:	c1dff0ef          	jal	ra,80011fa8 <printf>
80012390:	01c12083          	lw	ra,28(sp)
80012394:	01812403          	lw	s0,24(sp)
80012398:	01012903          	lw	s2,16(sp)
8001239c:	00c12983          	lw	s3,12(sp)
800123a0:	00048513          	mv	a0,s1
800123a4:	01412483          	lw	s1,20(sp)
800123a8:	02010113          	addi	sp,sp,32
800123ac:	00008067          	ret
800123b0:	fff40413          	addi	s0,s0,-1
800123b4:	01041413          	slli	s0,s0,0x10
800123b8:	00190913          	addi	s2,s2,1
800123bc:	01045413          	srli	s0,s0,0x10
800123c0:	f8dff06f          	j	8001234c <user_i2c_write+0x24>

800123c4 <BME680_Init>:
800123c4:	ff010113          	addi	sp,sp,-16
800123c8:	0ff00513          	li	a0,255
800123cc:	00112623          	sw	ra,12(sp)
800123d0:	ed1fd0ef          	jal	ra,800102a0 <HAL_I2C_SetDivider>
800123d4:	00300513          	li	a0,3
800123d8:	ef5fd0ef          	jal	ra,800102cc <HAL_I2C_SetPins>
800123dc:	00c12083          	lw	ra,12(sp)
800123e0:	00000513          	li	a0,0
800123e4:	01010113          	addi	sp,sp,16
800123e8:	00008067          	ret

800123ec <user_spi_read>:
800123ec:	00000513          	li	a0,0
800123f0:	00008067          	ret

800123f4 <user_spi_write>:
800123f4:	00000513          	li	a0,0
800123f8:	00008067          	ret

800123fc <main>:
800123fc:	f6010113          	addi	sp,sp,-160
80012400:	08112e23          	sw	ra,156(sp)
80012404:	08812c23          	sw	s0,152(sp)
80012408:	08912a23          	sw	s1,148(sp)
8001240c:	09212823          	sw	s2,144(sp)
80012410:	09312623          	sw	s3,140(sp)
80012414:	09412423          	sw	s4,136(sp)
80012418:	9f0fe0ef          	jal	ra,80010608 <HAL_OLED_Init>
8001241c:	80000537          	lui	a0,0x80000
80012420:	39850513          	addi	a0,a0,920 # 80000398 <__clzsi2+0xfffe8ec4>
80012424:	b85ff0ef          	jal	ra,80011fa8 <printf>
80012428:	f9dff0ef          	jal	ra,800123c4 <BME680_Init>
8001242c:	12051663          	bnez	a0,80012558 <main+0x15c>
80012430:	07600793          	li	a5,118
80012434:	02f102a3          	sb	a5,37(sp)
80012438:	800127b7          	lui	a5,0x80012
8001243c:	1e878793          	addi	a5,a5,488 # 800121e8 <__clzsi2+0xffffad14>
80012440:	06f12823          	sw	a5,112(sp)
80012444:	800127b7          	lui	a5,0x80012
80012448:	32878793          	addi	a5,a5,808 # 80012328 <__clzsi2+0xffffae54>
8001244c:	06f12a23          	sw	a5,116(sp)
80012450:	800127b7          	lui	a5,0x80012
80012454:	f7c78793          	addi	a5,a5,-132 # 80011f7c <__clzsi2+0xffffaaa8>
80012458:	00100413          	li	s0,1
8001245c:	06f12c23          	sw	a5,120(sp)
80012460:	02410513          	addi	a0,sp,36
80012464:	01900793          	li	a5,25
80012468:	02812423          	sw	s0,40(sp)
8001246c:	02f106a3          	sb	a5,45(sp)
80012470:	b05fe0ef          	jal	ra,80010f74 <bme680_init>
80012474:	020507b7          	lui	a5,0x2050
80012478:	50578793          	addi	a5,a5,1285 # 2050505 <font6x8-0x7dfafb27>
8001247c:	06f12023          	sw	a5,96(sp)
80012480:	009607b7          	lui	a5,0x960
80012484:	14078793          	addi	a5,a5,320 # 960140 <font6x8-0x7f69feec>
80012488:	02410593          	addi	a1,sp,36
8001248c:	0df00513          	li	a0,223
80012490:	06f12423          	sw	a5,104(sp)
80012494:	06810323          	sb	s0,102(sp)
80012498:	06810623          	sb	s0,108(sp)
8001249c:	f55fe0ef          	jal	ra,800113f0 <bme680_set_sensor_settings>
800124a0:	02410513          	addi	a0,sp,36
800124a4:	e89fe0ef          	jal	ra,8001132c <bme680_set_sensor_mode>
800124a8:	02410593          	addi	a1,sp,36
800124ac:	00e10513          	addi	a0,sp,14
800124b0:	c74ff0ef          	jal	ra,80011924 <bme680_get_profile_dur>
800124b4:	80000437          	lui	s0,0x80000
800124b8:	800004b7          	lui	s1,0x80000
800124bc:	80000937          	lui	s2,0x80000
800124c0:	80000a37          	lui	s4,0x80000
800124c4:	00100993          	li	s3,1
800124c8:	00e15503          	lhu	a0,14(sp)
800124cc:	e78fe0ef          	jal	ra,80010b44 <HAL_Timebase_DelayMS>
800124d0:	02410593          	addi	a1,sp,36
800124d4:	01010513          	addi	a0,sp,16
800124d8:	d0cff0ef          	jal	ra,800119e4 <bme680_get_sensor_data>
800124dc:	8c0fe0ef          	jal	ra,8001059c <HAL_OLED_ClearScreen>
800124e0:	01411503          	lh	a0,20(sp)
800124e4:	06400593          	li	a1,100
800124e8:	739040ef          	jal	ra,80017420 <__divsi3>
800124ec:	01051593          	slli	a1,a0,0x10
800124f0:	4105d593          	srai	a1,a1,0x10
800124f4:	3b440513          	addi	a0,s0,948 # 800003b4 <__clzsi2+0xfffe8ee0>
800124f8:	ab1ff0ef          	jal	ra,80011fa8 <printf>
800124fc:	01c12503          	lw	a0,28(sp)
80012500:	3e800593          	li	a1,1000
80012504:	725040ef          	jal	ra,80017428 <__udivsi3>
80012508:	00050593          	mv	a1,a0
8001250c:	3c848513          	addi	a0,s1,968 # 800003c8 <__clzsi2+0xfffe8ef4>
80012510:	a99ff0ef          	jal	ra,80011fa8 <printf>
80012514:	01812503          	lw	a0,24(sp)
80012518:	06400593          	li	a1,100
8001251c:	70d040ef          	jal	ra,80017428 <__udivsi3>
80012520:	00050593          	mv	a1,a0
80012524:	3dc90513          	addi	a0,s2,988 # 800003dc <__clzsi2+0xfffe8f08>
80012528:	a81ff0ef          	jal	ra,80011fa8 <printf>
8001252c:	01014783          	lbu	a5,16(sp)
80012530:	0207f793          	andi	a5,a5,32
80012534:	00078863          	beqz	a5,80012544 <main+0x148>
80012538:	02012583          	lw	a1,32(sp)
8001253c:	3f0a0513          	addi	a0,s4,1008 # 800003f0 <__clzsi2+0xfffe8f1c>
80012540:	a69ff0ef          	jal	ra,80011fa8 <printf>
80012544:	06c14783          	lbu	a5,108(sp)
80012548:	f93790e3          	bne	a5,s3,800124c8 <main+0xcc>
8001254c:	02410513          	addi	a0,sp,36
80012550:	dddfe0ef          	jal	ra,8001132c <bme680_set_sensor_mode>
80012554:	f75ff06f          	j	800124c8 <main+0xcc>
80012558:	80000537          	lui	a0,0x80000
8001255c:	40c50513          	addi	a0,a0,1036 # 8000040c <__clzsi2+0xfffe8f38>
80012560:	a49ff0ef          	jal	ra,80011fa8 <printf>
80012564:	09c12083          	lw	ra,156(sp)
80012568:	09812403          	lw	s0,152(sp)
8001256c:	09412483          	lw	s1,148(sp)
80012570:	09012903          	lw	s2,144(sp)
80012574:	08c12983          	lw	s3,140(sp)
80012578:	08812a03          	lw	s4,136(sp)
8001257c:	0a010113          	addi	sp,sp,160
80012580:	00008067          	ret

80012584 <_out_buffer>:
80012584:	00d67663          	bgeu	a2,a3,80012590 <_out_buffer+0xc>
80012588:	00c585b3          	add	a1,a1,a2
8001258c:	00a58023          	sb	a0,0(a1)
80012590:	00008067          	ret

80012594 <_out_null>:
80012594:	00008067          	ret

80012598 <_out_rev>:
80012598:	fd010113          	addi	sp,sp,-48
8001259c:	02812423          	sw	s0,40(sp)
800125a0:	02912223          	sw	s1,36(sp)
800125a4:	03212023          	sw	s2,32(sp)
800125a8:	01412c23          	sw	s4,24(sp)
800125ac:	01512a23          	sw	s5,20(sp)
800125b0:	01612823          	sw	s6,16(sp)
800125b4:	01712623          	sw	s7,12(sp)
800125b8:	01912223          	sw	s9,4(sp)
800125bc:	01a12023          	sw	s10,0(sp)
800125c0:	00078913          	mv	s2,a5
800125c4:	02112623          	sw	ra,44(sp)
800125c8:	01312e23          	sw	s3,28(sp)
800125cc:	01812423          	sw	s8,8(sp)
800125d0:	0038f793          	andi	a5,a7,3
800125d4:	00050a93          	mv	s5,a0
800125d8:	00058b13          	mv	s6,a1
800125dc:	00060413          	mv	s0,a2
800125e0:	00068b93          	mv	s7,a3
800125e4:	00070d13          	mv	s10,a4
800125e8:	00080493          	mv	s1,a6
800125ec:	00088a13          	mv	s4,a7
800125f0:	00060c93          	mv	s9,a2
800125f4:	02079e63          	bnez	a5,80012630 <_out_rev+0x98>
800125f8:	00090993          	mv	s3,s2
800125fc:	41260c33          	sub	s8,a2,s2
80012600:	0180006f          	j	80012618 <_out_rev+0x80>
80012604:	000b8693          	mv	a3,s7
80012608:	000b0593          	mv	a1,s6
8001260c:	02000513          	li	a0,32
80012610:	000a80e7          	jalr	s5
80012614:	00198993          	addi	s3,s3,1
80012618:	013c0633          	add	a2,s8,s3
8001261c:	fe99e4e3          	bltu	s3,s1,80012604 <_out_rev+0x6c>
80012620:	00000c93          	li	s9,0
80012624:	0124e463          	bltu	s1,s2,8001262c <_out_rev+0x94>
80012628:	41248cb3          	sub	s9,s1,s2
8001262c:	008c8cb3          	add	s9,s9,s0
80012630:	00090c13          	mv	s8,s2
80012634:	012c89b3          	add	s3,s9,s2
80012638:	41898633          	sub	a2,s3,s8
8001263c:	060c1663          	bnez	s8,800126a8 <_out_rev+0x110>
80012640:	002a7a13          	andi	s4,s4,2
80012644:	020a0463          	beqz	s4,8001266c <_out_rev+0xd4>
80012648:	40898a33          	sub	s4,s3,s0
8001264c:	000a0913          	mv	s2,s4
80012650:	01240633          	add	a2,s0,s2
80012654:	06996863          	bltu	s2,s1,800126c4 <_out_rev+0x12c>
80012658:	00000613          	li	a2,0
8001265c:	0144e663          	bltu	s1,s4,80012668 <_out_rev+0xd0>
80012660:	00940433          	add	s0,s0,s1
80012664:	41340633          	sub	a2,s0,s3
80012668:	00c989b3          	add	s3,s3,a2
8001266c:	02c12083          	lw	ra,44(sp)
80012670:	02812403          	lw	s0,40(sp)
80012674:	02412483          	lw	s1,36(sp)
80012678:	02012903          	lw	s2,32(sp)
8001267c:	01812a03          	lw	s4,24(sp)
80012680:	01412a83          	lw	s5,20(sp)
80012684:	01012b03          	lw	s6,16(sp)
80012688:	00c12b83          	lw	s7,12(sp)
8001268c:	00812c03          	lw	s8,8(sp)
80012690:	00412c83          	lw	s9,4(sp)
80012694:	00012d03          	lw	s10,0(sp)
80012698:	00098513          	mv	a0,s3
8001269c:	01c12983          	lw	s3,28(sp)
800126a0:	03010113          	addi	sp,sp,48
800126a4:	00008067          	ret
800126a8:	fffc0c13          	addi	s8,s8,-1
800126ac:	018d07b3          	add	a5,s10,s8
800126b0:	0007c503          	lbu	a0,0(a5)
800126b4:	000b8693          	mv	a3,s7
800126b8:	000b0593          	mv	a1,s6
800126bc:	000a80e7          	jalr	s5
800126c0:	f75ff06f          	j	80012634 <_out_rev+0x9c>
800126c4:	000b8693          	mv	a3,s7
800126c8:	000b0593          	mv	a1,s6
800126cc:	02000513          	li	a0,32
800126d0:	000a80e7          	jalr	s5
800126d4:	00190913          	addi	s2,s2,1
800126d8:	f79ff06f          	j	80012650 <_out_rev+0xb8>

800126dc <_ntoa_format>:
800126dc:	00088313          	mv	t1,a7
800126e0:	00812883          	lw	a7,8(sp)
800126e4:	00080e13          	mv	t3,a6
800126e8:	00012e83          	lw	t4,0(sp)
800126ec:	0028ff13          	andi	t5,a7,2
800126f0:	00412803          	lw	a6,4(sp)
800126f4:	040f1a63          	bnez	t5,80012748 <_ntoa_format+0x6c>
800126f8:	0018ff13          	andi	t5,a7,1
800126fc:	00080c63          	beqz	a6,80012714 <_ntoa_format+0x38>
80012700:	000f0a63          	beqz	t5,80012714 <_ntoa_format+0x38>
80012704:	000e1663          	bnez	t3,80012710 <_ntoa_format+0x34>
80012708:	00c8ff93          	andi	t6,a7,12
8001270c:	000f8463          	beqz	t6,80012714 <_ntoa_format+0x38>
80012710:	fff80813          	addi	a6,a6,-1
80012714:	02000f93          	li	t6,32
80012718:	03000293          	li	t0,48
8001271c:	0100006f          	j	8001272c <_ntoa_format+0x50>
80012720:	00f703b3          	add	t2,a4,a5
80012724:	00538023          	sb	t0,0(t2)
80012728:	00178793          	addi	a5,a5,1
8001272c:	01d7f463          	bgeu	a5,t4,80012734 <_ntoa_format+0x58>
80012730:	fff798e3          	bne	a5,t6,80012720 <_ntoa_format+0x44>
80012734:	01f00f93          	li	t6,31
80012738:	03000293          	li	t0,48
8001273c:	000f0663          	beqz	t5,80012748 <_ntoa_format+0x6c>
80012740:	0107f463          	bgeu	a5,a6,80012748 <_ntoa_format+0x6c>
80012744:	04fffa63          	bgeu	t6,a5,80012798 <_ntoa_format+0xbc>
80012748:	0108ff13          	andi	t5,a7,16
8001274c:	0a0f0063          	beqz	t5,800127ec <_ntoa_format+0x110>
80012750:	4008ff13          	andi	t5,a7,1024
80012754:	040f1c63          	bnez	t5,800127ac <_ntoa_format+0xd0>
80012758:	04078a63          	beqz	a5,800127ac <_ntoa_format+0xd0>
8001275c:	01d78463          	beq	a5,t4,80012764 <_ntoa_format+0x88>
80012760:	05079663          	bne	a5,a6,800127ac <_ntoa_format+0xd0>
80012764:	fff78e93          	addi	t4,a5,-1
80012768:	040e8063          	beqz	t4,800127a8 <_ntoa_format+0xcc>
8001276c:	01000f13          	li	t5,16
80012770:	ffe78793          	addi	a5,a5,-2
80012774:	05e30063          	beq	t1,t5,800127b4 <_ntoa_format+0xd8>
80012778:	000e8793          	mv	a5,t4
8001277c:	00200e93          	li	t4,2
80012780:	05d31a63          	bne	t1,t4,800127d4 <_ntoa_format+0xf8>
80012784:	01f00313          	li	t1,31
80012788:	08f36063          	bltu	t1,a5,80012808 <_ntoa_format+0x12c>
8001278c:	00f70333          	add	t1,a4,a5
80012790:	06200e93          	li	t4,98
80012794:	0380006f          	j	800127cc <_ntoa_format+0xf0>
80012798:	00f703b3          	add	t2,a4,a5
8001279c:	00538023          	sb	t0,0(t2)
800127a0:	00178793          	addi	a5,a5,1
800127a4:	f99ff06f          	j	8001273c <_ntoa_format+0x60>
800127a8:	00000793          	li	a5,0
800127ac:	01000e93          	li	t4,16
800127b0:	fdd316e3          	bne	t1,t4,8001277c <_ntoa_format+0xa0>
800127b4:	0208f313          	andi	t1,a7,32
800127b8:	04031a63          	bnez	t1,8001280c <_ntoa_format+0x130>
800127bc:	01f00313          	li	t1,31
800127c0:	04f36463          	bltu	t1,a5,80012808 <_ntoa_format+0x12c>
800127c4:	00f70333          	add	t1,a4,a5
800127c8:	07800e93          	li	t4,120
800127cc:	01d30023          	sb	t4,0(t1)
800127d0:	00178793          	addi	a5,a5,1
800127d4:	01f00313          	li	t1,31
800127d8:	02f36863          	bltu	t1,a5,80012808 <_ntoa_format+0x12c>
800127dc:	00f70333          	add	t1,a4,a5
800127e0:	03000e93          	li	t4,48
800127e4:	01d30023          	sb	t4,0(t1)
800127e8:	00178793          	addi	a5,a5,1
800127ec:	01f00313          	li	t1,31
800127f0:	00f36c63          	bltu	t1,a5,80012808 <_ntoa_format+0x12c>
800127f4:	020e0663          	beqz	t3,80012820 <_ntoa_format+0x144>
800127f8:	00f70333          	add	t1,a4,a5
800127fc:	02d00e13          	li	t3,45
80012800:	01c30023          	sb	t3,0(t1)
80012804:	00178793          	addi	a5,a5,1
80012808:	d91ff06f          	j	80012598 <_out_rev>
8001280c:	01f00313          	li	t1,31
80012810:	fef36ce3          	bltu	t1,a5,80012808 <_ntoa_format+0x12c>
80012814:	00f70333          	add	t1,a4,a5
80012818:	05800e93          	li	t4,88
8001281c:	fb1ff06f          	j	800127cc <_ntoa_format+0xf0>
80012820:	0048f313          	andi	t1,a7,4
80012824:	00030863          	beqz	t1,80012834 <_ntoa_format+0x158>
80012828:	00f70333          	add	t1,a4,a5
8001282c:	02b00e13          	li	t3,43
80012830:	fd1ff06f          	j	80012800 <_ntoa_format+0x124>
80012834:	0088f313          	andi	t1,a7,8
80012838:	fc0308e3          	beqz	t1,80012808 <_ntoa_format+0x12c>
8001283c:	00f70333          	add	t1,a4,a5
80012840:	02000e13          	li	t3,32
80012844:	fbdff06f          	j	80012800 <_ntoa_format+0x124>

80012848 <_ntoa_long>:
80012848:	f8010113          	addi	sp,sp,-128
8001284c:	06812c23          	sw	s0,120(sp)
80012850:	07412423          	sw	s4,104(sp)
80012854:	07512223          	sw	s5,100(sp)
80012858:	07612023          	sw	s6,96(sp)
8001285c:	05912a23          	sw	s9,84(sp)
80012860:	05a12823          	sw	s10,80(sp)
80012864:	05b12623          	sw	s11,76(sp)
80012868:	06112e23          	sw	ra,124(sp)
8001286c:	06912a23          	sw	s1,116(sp)
80012870:	07212823          	sw	s2,112(sp)
80012874:	07312623          	sw	s3,108(sp)
80012878:	05712e23          	sw	s7,92(sp)
8001287c:	05812c23          	sw	s8,88(sp)
80012880:	00a12c23          	sw	a0,24(sp)
80012884:	00b12e23          	sw	a1,28(sp)
80012888:	08412d83          	lw	s11,132(sp)
8001288c:	00060a13          	mv	s4,a2
80012890:	00068c93          	mv	s9,a3
80012894:	00070413          	mv	s0,a4
80012898:	00078a93          	mv	s5,a5
8001289c:	00080d13          	mv	s10,a6
800128a0:	00088b13          	mv	s6,a7
800128a4:	00071463          	bnez	a4,800128ac <_ntoa_long+0x64>
800128a8:	fefdfd93          	andi	s11,s11,-17
800128ac:	400df793          	andi	a5,s11,1024
800128b0:	00078463          	beqz	a5,800128b8 <_ntoa_long+0x70>
800128b4:	06040463          	beqz	s0,8001291c <_ntoa_long+0xd4>
800128b8:	020df793          	andi	a5,s11,32
800128bc:	06100493          	li	s1,97
800128c0:	00078463          	beqz	a5,800128c8 <_ntoa_long+0x80>
800128c4:	04100493          	li	s1,65
800128c8:	00040993          	mv	s3,s0
800128cc:	02010913          	addi	s2,sp,32
800128d0:	00000413          	li	s0,0
800128d4:	00900c13          	li	s8,9
800128d8:	ff648493          	addi	s1,s1,-10
800128dc:	02000b93          	li	s7,32
800128e0:	000d0593          	mv	a1,s10
800128e4:	00098513          	mv	a0,s3
800128e8:	389040ef          	jal	ra,80017470 <__umodsi3>
800128ec:	0ff57713          	andi	a4,a0,255
800128f0:	0aac6263          	bltu	s8,a0,80012994 <_ntoa_long+0x14c>
800128f4:	03070713          	addi	a4,a4,48
800128f8:	0ff77713          	andi	a4,a4,255
800128fc:	000d0593          	mv	a1,s10
80012900:	00098513          	mv	a0,s3
80012904:	00140413          	addi	s0,s0,1
80012908:	00e90023          	sb	a4,0(s2)
8001290c:	31d040ef          	jal	ra,80017428 <__udivsi3>
80012910:	01a9e663          	bltu	s3,s10,8001291c <_ntoa_long+0xd4>
80012914:	00190913          	addi	s2,s2,1
80012918:	07741a63          	bne	s0,s7,8001298c <_ntoa_long+0x144>
8001291c:	08012783          	lw	a5,128(sp)
80012920:	01c12583          	lw	a1,28(sp)
80012924:	01812503          	lw	a0,24(sp)
80012928:	01b12423          	sw	s11,8(sp)
8001292c:	00f12223          	sw	a5,4(sp)
80012930:	01612023          	sw	s6,0(sp)
80012934:	000d0893          	mv	a7,s10
80012938:	000a8813          	mv	a6,s5
8001293c:	00040793          	mv	a5,s0
80012940:	02010713          	addi	a4,sp,32
80012944:	000c8693          	mv	a3,s9
80012948:	000a0613          	mv	a2,s4
8001294c:	d91ff0ef          	jal	ra,800126dc <_ntoa_format>
80012950:	07c12083          	lw	ra,124(sp)
80012954:	07812403          	lw	s0,120(sp)
80012958:	07412483          	lw	s1,116(sp)
8001295c:	07012903          	lw	s2,112(sp)
80012960:	06c12983          	lw	s3,108(sp)
80012964:	06812a03          	lw	s4,104(sp)
80012968:	06412a83          	lw	s5,100(sp)
8001296c:	06012b03          	lw	s6,96(sp)
80012970:	05c12b83          	lw	s7,92(sp)
80012974:	05812c03          	lw	s8,88(sp)
80012978:	05412c83          	lw	s9,84(sp)
8001297c:	05012d03          	lw	s10,80(sp)
80012980:	04c12d83          	lw	s11,76(sp)
80012984:	08010113          	addi	sp,sp,128
80012988:	00008067          	ret
8001298c:	00050993          	mv	s3,a0
80012990:	f51ff06f          	j	800128e0 <_ntoa_long+0x98>
80012994:	00970733          	add	a4,a4,s1
80012998:	f61ff06f          	j	800128f8 <_ntoa_long+0xb0>

8001299c <_ntoa_long_long>:
8001299c:	f7010113          	addi	sp,sp,-144
800129a0:	06912a23          	sw	s1,116(sp)
800129a4:	07312623          	sw	s3,108(sp)
800129a8:	07412423          	sw	s4,104(sp)
800129ac:	05712e23          	sw	s7,92(sp)
800129b0:	05812c23          	sw	s8,88(sp)
800129b4:	05912a23          	sw	s9,84(sp)
800129b8:	05a12823          	sw	s10,80(sp)
800129bc:	00060993          	mv	s3,a2
800129c0:	06112e23          	sw	ra,124(sp)
800129c4:	06812c23          	sw	s0,120(sp)
800129c8:	07212823          	sw	s2,112(sp)
800129cc:	07512223          	sw	s5,100(sp)
800129d0:	07612023          	sw	s6,96(sp)
800129d4:	05b12623          	sw	s11,76(sp)
800129d8:	00a12a23          	sw	a0,20(sp)
800129dc:	00b12c23          	sw	a1,24(sp)
800129e0:	09112623          	sw	a7,140(sp)
800129e4:	00f76633          	or	a2,a4,a5
800129e8:	00068a13          	mv	s4,a3
800129ec:	09c12483          	lw	s1,156(sp)
800129f0:	09012683          	lw	a3,144(sp)
800129f4:	00070c93          	mv	s9,a4
800129f8:	00078c13          	mv	s8,a5
800129fc:	00080b93          	mv	s7,a6
80012a00:	00088d13          	mv	s10,a7
80012a04:	00061463          	bnez	a2,80012a0c <_ntoa_long_long+0x70>
80012a08:	fef4f493          	andi	s1,s1,-17
80012a0c:	4004f713          	andi	a4,s1,1024
80012a10:	00070663          	beqz	a4,80012a1c <_ntoa_long_long+0x80>
80012a14:	00000d93          	li	s11,0
80012a18:	08060263          	beqz	a2,80012a9c <_ntoa_long_long+0x100>
80012a1c:	0204f713          	andi	a4,s1,32
80012a20:	06100413          	li	s0,97
80012a24:	00070463          	beqz	a4,80012a2c <_ntoa_long_long+0x90>
80012a28:	04100413          	li	s0,65
80012a2c:	02010913          	addi	s2,sp,32
80012a30:	00000d93          	li	s11,0
80012a34:	00900b13          	li	s6,9
80012a38:	ff640413          	addi	s0,s0,-10
80012a3c:	02000a93          	li	s5,32
80012a40:	000d0613          	mv	a2,s10
80012a44:	000c8513          	mv	a0,s9
80012a48:	000c0593          	mv	a1,s8
80012a4c:	00d12e23          	sw	a3,28(sp)
80012a50:	1d8020ef          	jal	ra,80014c28 <__umoddi3>
80012a54:	0ff57313          	andi	t1,a0,255
80012a58:	01c12683          	lw	a3,28(sp)
80012a5c:	0c6b6063          	bltu	s6,t1,80012b1c <_ntoa_long_long+0x180>
80012a60:	03030313          	addi	t1,t1,48
80012a64:	0ff37313          	andi	t1,t1,255
80012a68:	000d0613          	mv	a2,s10
80012a6c:	000c8513          	mv	a0,s9
80012a70:	000c0593          	mv	a1,s8
80012a74:	00d12e23          	sw	a3,28(sp)
80012a78:	00690023          	sb	t1,0(s2)
80012a7c:	3d5010ef          	jal	ra,80014650 <__udivdi3>
80012a80:	01c12683          	lw	a3,28(sp)
80012a84:	001d8d93          	addi	s11,s11,1
80012a88:	00dc6a63          	bltu	s8,a3,80012a9c <_ntoa_long_long+0x100>
80012a8c:	01869463          	bne	a3,s8,80012a94 <_ntoa_long_long+0xf8>
80012a90:	01ace663          	bltu	s9,s10,80012a9c <_ntoa_long_long+0x100>
80012a94:	00190913          	addi	s2,s2,1
80012a98:	075d9c63          	bne	s11,s5,80012b10 <_ntoa_long_long+0x174>
80012a9c:	09812783          	lw	a5,152(sp)
80012aa0:	01812583          	lw	a1,24(sp)
80012aa4:	01412503          	lw	a0,20(sp)
80012aa8:	00f12223          	sw	a5,4(sp)
80012aac:	09412783          	lw	a5,148(sp)
80012ab0:	00912423          	sw	s1,8(sp)
80012ab4:	000d0893          	mv	a7,s10
80012ab8:	00f12023          	sw	a5,0(sp)
80012abc:	000b8813          	mv	a6,s7
80012ac0:	000d8793          	mv	a5,s11
80012ac4:	02010713          	addi	a4,sp,32
80012ac8:	000a0693          	mv	a3,s4
80012acc:	00098613          	mv	a2,s3
80012ad0:	c0dff0ef          	jal	ra,800126dc <_ntoa_format>
80012ad4:	07c12083          	lw	ra,124(sp)
80012ad8:	07812403          	lw	s0,120(sp)
80012adc:	07412483          	lw	s1,116(sp)
80012ae0:	07012903          	lw	s2,112(sp)
80012ae4:	06c12983          	lw	s3,108(sp)
80012ae8:	06812a03          	lw	s4,104(sp)
80012aec:	06412a83          	lw	s5,100(sp)
80012af0:	06012b03          	lw	s6,96(sp)
80012af4:	05c12b83          	lw	s7,92(sp)
80012af8:	05812c03          	lw	s8,88(sp)
80012afc:	05412c83          	lw	s9,84(sp)
80012b00:	05012d03          	lw	s10,80(sp)
80012b04:	04c12d83          	lw	s11,76(sp)
80012b08:	09010113          	addi	sp,sp,144
80012b0c:	00008067          	ret
80012b10:	00050c93          	mv	s9,a0
80012b14:	00058c13          	mv	s8,a1
80012b18:	f29ff06f          	j	80012a40 <_ntoa_long_long+0xa4>
80012b1c:	00830333          	add	t1,t1,s0
80012b20:	f45ff06f          	j	80012a64 <_ntoa_long_long+0xc8>

80012b24 <_out_char>:
80012b24:	00050463          	beqz	a0,80012b2c <_out_char+0x8>
80012b28:	c58ff06f          	j	80011f80 <_putchar>
80012b2c:	00008067          	ret

80012b30 <_out_fct>:
80012b30:	00050863          	beqz	a0,80012b40 <_out_fct+0x10>
80012b34:	0005a303          	lw	t1,0(a1)
80012b38:	0045a583          	lw	a1,4(a1)
80012b3c:	00030067          	jr	t1
80012b40:	00008067          	ret

80012b44 <_ftoa>:
80012b44:	f7010113          	addi	sp,sp,-144
80012b48:	07812423          	sw	s8,104(sp)
80012b4c:	07912223          	sw	s9,100(sp)
80012b50:	07a12023          	sw	s10,96(sp)
80012b54:	05b12e23          	sw	s11,92(sp)
80012b58:	00050c13          	mv	s8,a0
80012b5c:	00058c93          	mv	s9,a1
80012b60:	00060d13          	mv	s10,a2
80012b64:	00068d93          	mv	s11,a3
80012b68:	00070613          	mv	a2,a4
80012b6c:	00078693          	mv	a3,a5
80012b70:	00070513          	mv	a0,a4
80012b74:	00078593          	mv	a1,a5
80012b78:	08812423          	sw	s0,136(sp)
80012b7c:	08912223          	sw	s1,132(sp)
80012b80:	07312e23          	sw	s3,124(sp)
80012b84:	07412c23          	sw	s4,120(sp)
80012b88:	07512a23          	sw	s5,116(sp)
80012b8c:	08112623          	sw	ra,140(sp)
80012b90:	09212023          	sw	s2,128(sp)
80012b94:	07612823          	sw	s6,112(sp)
80012b98:	07712623          	sw	s7,108(sp)
80012b9c:	09012a83          	lw	s5,144(sp)
80012ba0:	00070493          	mv	s1,a4
80012ba4:	00078413          	mv	s0,a5
80012ba8:	00080993          	mv	s3,a6
80012bac:	00088a13          	mv	s4,a7
80012bb0:	4fc030ef          	jal	ra,800160ac <__eqdf2>
80012bb4:	02050863          	beqz	a0,80012be4 <_ftoa+0xa0>
80012bb8:	80000737          	lui	a4,0x80000
80012bbc:	000a8893          	mv	a7,s5
80012bc0:	000a0813          	mv	a6,s4
80012bc4:	00300793          	li	a5,3
80012bc8:	43c70713          	addi	a4,a4,1084 # 8000043c <__clzsi2+0xfffe8f68>
80012bcc:	000d8693          	mv	a3,s11
80012bd0:	000d0613          	mv	a2,s10
80012bd4:	000c8593          	mv	a1,s9
80012bd8:	000c0513          	mv	a0,s8
80012bdc:	9bdff0ef          	jal	ra,80012598 <_out_rev>
80012be0:	0e40006f          	j	80012cc4 <_ftoa+0x180>
80012be4:	800007b7          	lui	a5,0x80000
80012be8:	6987a603          	lw	a2,1688(a5) # 80000698 <__clzsi2+0xfffe91c4>
80012bec:	69c7a683          	lw	a3,1692(a5)
80012bf0:	00048513          	mv	a0,s1
80012bf4:	00040593          	mv	a1,s0
80012bf8:	624030ef          	jal	ra,8001621c <__ledf2>
80012bfc:	00055e63          	bgez	a0,80012c18 <_ftoa+0xd4>
80012c00:	80000737          	lui	a4,0x80000
80012c04:	000a8893          	mv	a7,s5
80012c08:	000a0813          	mv	a6,s4
80012c0c:	00400793          	li	a5,4
80012c10:	44070713          	addi	a4,a4,1088 # 80000440 <__clzsi2+0xfffe8f6c>
80012c14:	fb9ff06f          	j	80012bcc <_ftoa+0x88>
80012c18:	800007b7          	lui	a5,0x80000
80012c1c:	6a07a603          	lw	a2,1696(a5) # 800006a0 <__clzsi2+0xfffe91cc>
80012c20:	6a47a683          	lw	a3,1700(a5)
80012c24:	00048513          	mv	a0,s1
80012c28:	00040593          	mv	a1,s0
80012c2c:	50c030ef          	jal	ra,80016138 <__gedf2>
80012c30:	02a05a63          	blez	a0,80012c64 <_ftoa+0x120>
80012c34:	004af793          	andi	a5,s5,4
80012c38:	00078e63          	beqz	a5,80012c54 <_ftoa+0x110>
80012c3c:	80000737          	lui	a4,0x80000
80012c40:	43470713          	addi	a4,a4,1076 # 80000434 <__clzsi2+0xfffe8f60>
80012c44:	00400793          	li	a5,4
80012c48:	000a8893          	mv	a7,s5
80012c4c:	000a0813          	mv	a6,s4
80012c50:	f7dff06f          	j	80012bcc <_ftoa+0x88>
80012c54:	80000737          	lui	a4,0x80000
80012c58:	43070713          	addi	a4,a4,1072 # 80000430 <__clzsi2+0xfffe8f5c>
80012c5c:	00300793          	li	a5,3
80012c60:	fe9ff06f          	j	80012c48 <_ftoa+0x104>
80012c64:	800007b7          	lui	a5,0x80000
80012c68:	6a87a603          	lw	a2,1704(a5) # 800006a8 <__clzsi2+0xfffe91d4>
80012c6c:	6ac7a683          	lw	a3,1708(a5)
80012c70:	00048513          	mv	a0,s1
80012c74:	00040593          	mv	a1,s0
80012c78:	4c0030ef          	jal	ra,80016138 <__gedf2>
80012c7c:	02a04063          	bgtz	a0,80012c9c <_ftoa+0x158>
80012c80:	800007b7          	lui	a5,0x80000
80012c84:	6b07a603          	lw	a2,1712(a5) # 800006b0 <__clzsi2+0xfffe91dc>
80012c88:	6b47a683          	lw	a3,1716(a5)
80012c8c:	00048513          	mv	a0,s1
80012c90:	00040593          	mv	a1,s0
80012c94:	588030ef          	jal	ra,8001621c <__ledf2>
80012c98:	06055463          	bgez	a0,80012d00 <_ftoa+0x1bc>
80012c9c:	01512023          	sw	s5,0(sp)
80012ca0:	000a0893          	mv	a7,s4
80012ca4:	00098813          	mv	a6,s3
80012ca8:	00048713          	mv	a4,s1
80012cac:	00040793          	mv	a5,s0
80012cb0:	000d8693          	mv	a3,s11
80012cb4:	000d0613          	mv	a2,s10
80012cb8:	000c8593          	mv	a1,s9
80012cbc:	000c0513          	mv	a0,s8
80012cc0:	3f0000ef          	jal	ra,800130b0 <_etoa>
80012cc4:	08c12083          	lw	ra,140(sp)
80012cc8:	08812403          	lw	s0,136(sp)
80012ccc:	08412483          	lw	s1,132(sp)
80012cd0:	08012903          	lw	s2,128(sp)
80012cd4:	07c12983          	lw	s3,124(sp)
80012cd8:	07812a03          	lw	s4,120(sp)
80012cdc:	07412a83          	lw	s5,116(sp)
80012ce0:	07012b03          	lw	s6,112(sp)
80012ce4:	06c12b83          	lw	s7,108(sp)
80012ce8:	06812c03          	lw	s8,104(sp)
80012cec:	06412c83          	lw	s9,100(sp)
80012cf0:	06012d03          	lw	s10,96(sp)
80012cf4:	05c12d83          	lw	s11,92(sp)
80012cf8:	09010113          	addi	sp,sp,144
80012cfc:	00008067          	ret
80012d00:	00000613          	li	a2,0
80012d04:	00000693          	li	a3,0
80012d08:	00048513          	mv	a0,s1
80012d0c:	00040593          	mv	a1,s0
80012d10:	50c030ef          	jal	ra,8001621c <__ledf2>
80012d14:	18055663          	bgez	a0,80012ea0 <_ftoa+0x35c>
80012d18:	00048613          	mv	a2,s1
80012d1c:	00040693          	mv	a3,s0
80012d20:	00000513          	li	a0,0
80012d24:	00000593          	li	a1,0
80012d28:	459030ef          	jal	ra,80016980 <__subdf3>
80012d2c:	00100793          	li	a5,1
80012d30:	00050493          	mv	s1,a0
80012d34:	00058413          	mv	s0,a1
80012d38:	00f12c23          	sw	a5,24(sp)
80012d3c:	400af793          	andi	a5,s5,1024
80012d40:	16078463          	beqz	a5,80012ea8 <_ftoa+0x364>
80012d44:	00000b93          	li	s7,0
80012d48:	00900793          	li	a5,9
80012d4c:	03000713          	li	a4,48
80012d50:	02000693          	li	a3,32
80012d54:	0137fe63          	bgeu	a5,s3,80012d70 <_ftoa+0x22c>
80012d58:	03010613          	addi	a2,sp,48
80012d5c:	01760633          	add	a2,a2,s7
80012d60:	00e60023          	sb	a4,0(a2)
80012d64:	001b8b93          	addi	s7,s7,1
80012d68:	fff98993          	addi	s3,s3,-1
80012d6c:	fedb94e3          	bne	s7,a3,80012d54 <_ftoa+0x210>
80012d70:	00040593          	mv	a1,s0
80012d74:	00048513          	mv	a0,s1
80012d78:	3d0040ef          	jal	ra,80017148 <__fixdfsi>
80012d7c:	80000737          	lui	a4,0x80000
80012d80:	4d070713          	addi	a4,a4,1232 # 800004d0 <__clzsi2+0xfffe8ffc>
80012d84:	00399793          	slli	a5,s3,0x3
80012d88:	00f707b3          	add	a5,a4,a5
80012d8c:	0047a803          	lw	a6,4(a5)
80012d90:	0007a783          	lw	a5,0(a5)
80012d94:	00050913          	mv	s2,a0
80012d98:	01012a23          	sw	a6,20(sp)
80012d9c:	00f12823          	sw	a5,16(sp)
80012da0:	4a4040ef          	jal	ra,80017244 <__floatsidf>
80012da4:	00050613          	mv	a2,a0
80012da8:	00058693          	mv	a3,a1
80012dac:	00048513          	mv	a0,s1
80012db0:	00040593          	mv	a1,s0
80012db4:	3cd030ef          	jal	ra,80016980 <__subdf3>
80012db8:	01012603          	lw	a2,16(sp)
80012dbc:	01412683          	lw	a3,20(sp)
80012dc0:	540030ef          	jal	ra,80016300 <__muldf3>
80012dc4:	00b12e23          	sw	a1,28(sp)
80012dc8:	02a12023          	sw	a0,32(sp)
80012dcc:	3fc040ef          	jal	ra,800171c8 <__fixunsdfsi>
80012dd0:	00050b13          	mv	s6,a0
80012dd4:	518040ef          	jal	ra,800172ec <__floatunsidf>
80012dd8:	02012703          	lw	a4,32(sp)
80012ddc:	01c12783          	lw	a5,28(sp)
80012de0:	00050613          	mv	a2,a0
80012de4:	00058693          	mv	a3,a1
80012de8:	00070513          	mv	a0,a4
80012dec:	00078593          	mv	a1,a5
80012df0:	391030ef          	jal	ra,80016980 <__subdf3>
80012df4:	80000eb7          	lui	t4,0x80000
80012df8:	6b8ea703          	lw	a4,1720(t4) # 800006b8 <__clzsi2+0xfffe91e4>
80012dfc:	6bcea783          	lw	a5,1724(t4)
80012e00:	02a12623          	sw	a0,44(sp)
80012e04:	00070613          	mv	a2,a4
80012e08:	00078693          	mv	a3,a5
80012e0c:	02e12023          	sw	a4,32(sp)
80012e10:	02f12223          	sw	a5,36(sp)
80012e14:	02b12423          	sw	a1,40(sp)
80012e18:	320030ef          	jal	ra,80016138 <__gedf2>
80012e1c:	80000eb7          	lui	t4,0x80000
80012e20:	01d12e23          	sw	t4,28(sp)
80012e24:	02012703          	lw	a4,32(sp)
80012e28:	02412783          	lw	a5,36(sp)
80012e2c:	02812883          	lw	a7,40(sp)
80012e30:	02c12e03          	lw	t3,44(sp)
80012e34:	06a05e63          	blez	a0,80012eb0 <_ftoa+0x36c>
80012e38:	001b0b13          	addi	s6,s6,1
80012e3c:	000b0513          	mv	a0,s6
80012e40:	4ac040ef          	jal	ra,800172ec <__floatunsidf>
80012e44:	00050613          	mv	a2,a0
80012e48:	00058693          	mv	a3,a1
80012e4c:	01012503          	lw	a0,16(sp)
80012e50:	01412583          	lw	a1,20(sp)
80012e54:	3c8030ef          	jal	ra,8001621c <__ledf2>
80012e58:	00a04663          	bgtz	a0,80012e64 <_ftoa+0x320>
80012e5c:	00190913          	addi	s2,s2,1
80012e60:	00000b13          	li	s6,0
80012e64:	06098c63          	beqz	s3,80012edc <_ftoa+0x398>
80012e68:	02000493          	li	s1,32
80012e6c:	0e9b9863          	bne	s7,s1,80012f5c <_ftoa+0x418>
80012e70:	003af713          	andi	a4,s5,3
80012e74:	00100793          	li	a5,1
80012e78:	1ef71063          	bne	a4,a5,80013058 <_ftoa+0x514>
80012e7c:	1c0a0e63          	beqz	s4,80013058 <_ftoa+0x514>
80012e80:	01812783          	lw	a5,24(sp)
80012e84:	00079663          	bnez	a5,80012e90 <_ftoa+0x34c>
80012e88:	00caf793          	andi	a5,s5,12
80012e8c:	00078463          	beqz	a5,80012e94 <_ftoa+0x350>
80012e90:	fffa0a13          	addi	s4,s4,-1
80012e94:	01f00793          	li	a5,31
80012e98:	03000713          	li	a4,48
80012e9c:	1a00006f          	j	8001303c <_ftoa+0x4f8>
80012ea0:	00012c23          	sw	zero,24(sp)
80012ea4:	e99ff06f          	j	80012d3c <_ftoa+0x1f8>
80012ea8:	00600993          	li	s3,6
80012eac:	e99ff06f          	j	80012d44 <_ftoa+0x200>
80012eb0:	00070613          	mv	a2,a4
80012eb4:	00078693          	mv	a3,a5
80012eb8:	000e0513          	mv	a0,t3
80012ebc:	00088593          	mv	a1,a7
80012ec0:	35c030ef          	jal	ra,8001621c <__ledf2>
80012ec4:	fa0540e3          	bltz	a0,80012e64 <_ftoa+0x320>
80012ec8:	000b0663          	beqz	s6,80012ed4 <_ftoa+0x390>
80012ecc:	001b7793          	andi	a5,s6,1
80012ed0:	f8078ae3          	beqz	a5,80012e64 <_ftoa+0x320>
80012ed4:	001b0b13          	addi	s6,s6,1
80012ed8:	f8dff06f          	j	80012e64 <_ftoa+0x320>
80012edc:	00090513          	mv	a0,s2
80012ee0:	364040ef          	jal	ra,80017244 <__floatsidf>
80012ee4:	00050613          	mv	a2,a0
80012ee8:	00058693          	mv	a3,a1
80012eec:	00048513          	mv	a0,s1
80012ef0:	00040593          	mv	a1,s0
80012ef4:	28d030ef          	jal	ra,80016980 <__subdf3>
80012ef8:	01c12783          	lw	a5,28(sp)
80012efc:	00050493          	mv	s1,a0
80012f00:	00058413          	mv	s0,a1
80012f04:	6b87a703          	lw	a4,1720(a5)
80012f08:	6bc7a783          	lw	a5,1724(a5)
80012f0c:	00070613          	mv	a2,a4
80012f10:	00078693          	mv	a3,a5
80012f14:	00e12823          	sw	a4,16(sp)
80012f18:	00f12a23          	sw	a5,20(sp)
80012f1c:	300030ef          	jal	ra,8001621c <__ledf2>
80012f20:	02055263          	bgez	a0,80012f44 <_ftoa+0x400>
80012f24:	01012703          	lw	a4,16(sp)
80012f28:	01412783          	lw	a5,20(sp)
80012f2c:	00048513          	mv	a0,s1
80012f30:	00070613          	mv	a2,a4
80012f34:	00078693          	mv	a3,a5
80012f38:	00040593          	mv	a1,s0
80012f3c:	1fc030ef          	jal	ra,80016138 <__gedf2>
80012f40:	00a05863          	blez	a0,80012f50 <_ftoa+0x40c>
80012f44:	00197793          	andi	a5,s2,1
80012f48:	00078463          	beqz	a5,80012f50 <_ftoa+0x40c>
80012f4c:	00190913          	addi	s2,s2,1
80012f50:	000b8793          	mv	a5,s7
80012f54:	02000493          	li	s1,32
80012f58:	0c80006f          	j	80013020 <_ftoa+0x4dc>
80012f5c:	03010793          	addi	a5,sp,48
80012f60:	00a00593          	li	a1,10
80012f64:	000b0513          	mv	a0,s6
80012f68:	001b8413          	addi	s0,s7,1
80012f6c:	01778bb3          	add	s7,a5,s7
80012f70:	500040ef          	jal	ra,80017470 <__umodsi3>
80012f74:	03050513          	addi	a0,a0,48
80012f78:	00ab8023          	sb	a0,0(s7)
80012f7c:	00a00593          	li	a1,10
80012f80:	000b0513          	mv	a0,s6
80012f84:	4a4040ef          	jal	ra,80017428 <__udivsi3>
80012f88:	00900793          	li	a5,9
80012f8c:	fff98993          	addi	s3,s3,-1
80012f90:	0367ec63          	bltu	a5,s6,80012fc8 <_ftoa+0x484>
80012f94:	008989b3          	add	s3,s3,s0
80012f98:	00040b93          	mv	s7,s0
80012f9c:	02000693          	li	a3,32
80012fa0:	03000613          	li	a2,48
80012fa4:	ecdb86e3          	beq	s7,a3,80012e70 <_ftoa+0x32c>
80012fa8:	001b8713          	addi	a4,s7,1
80012fac:	033b9463          	bne	s7,s3,80012fd4 <_ftoa+0x490>
80012fb0:	05010793          	addi	a5,sp,80
80012fb4:	01778333          	add	t1,a5,s7
80012fb8:	02e00793          	li	a5,46
80012fbc:	fef30023          	sb	a5,-32(t1)
80012fc0:	00070b93          	mv	s7,a4
80012fc4:	f8dff06f          	j	80012f50 <_ftoa+0x40c>
80012fc8:	00040b93          	mv	s7,s0
80012fcc:	00050b13          	mv	s6,a0
80012fd0:	e9dff06f          	j	80012e6c <_ftoa+0x328>
80012fd4:	03010793          	addi	a5,sp,48
80012fd8:	01778333          	add	t1,a5,s7
80012fdc:	00c30023          	sb	a2,0(t1)
80012fe0:	00070b93          	mv	s7,a4
80012fe4:	fc1ff06f          	j	80012fa4 <_ftoa+0x460>
80012fe8:	03010713          	addi	a4,sp,48
80012fec:	00a00593          	li	a1,10
80012ff0:	00090513          	mv	a0,s2
80012ff4:	00f70433          	add	s0,a4,a5
80012ff8:	4ac040ef          	jal	ra,800174a4 <__modsi3>
80012ffc:	03050513          	addi	a0,a0,48
80013000:	00a40023          	sb	a0,0(s0)
80013004:	00a00593          	li	a1,10
80013008:	00090513          	mv	a0,s2
8001300c:	414040ef          	jal	ra,80017420 <__divsi3>
80013010:	001b8b93          	addi	s7,s7,1
80013014:	00050913          	mv	s2,a0
80013018:	e4050ce3          	beqz	a0,80012e70 <_ftoa+0x32c>
8001301c:	000b8793          	mv	a5,s7
80013020:	fc9b94e3          	bne	s7,s1,80012fe8 <_ftoa+0x4a4>
80013024:	02000b93          	li	s7,32
80013028:	e49ff06f          	j	80012e70 <_ftoa+0x32c>
8001302c:	03010693          	addi	a3,sp,48
80013030:	017686b3          	add	a3,a3,s7
80013034:	00e68023          	sb	a4,0(a3)
80013038:	001b8b93          	addi	s7,s7,1
8001303c:	014bfe63          	bgeu	s7,s4,80013058 <_ftoa+0x514>
80013040:	ff77f6e3          	bgeu	a5,s7,8001302c <_ftoa+0x4e8>
80013044:	000a8893          	mv	a7,s5
80013048:	000a0813          	mv	a6,s4
8001304c:	000b8793          	mv	a5,s7
80013050:	03010713          	addi	a4,sp,48
80013054:	b79ff06f          	j	80012bcc <_ftoa+0x88>
80013058:	01f00793          	li	a5,31
8001305c:	ff77e4e3          	bltu	a5,s7,80013044 <_ftoa+0x500>
80013060:	01812783          	lw	a5,24(sp)
80013064:	00078e63          	beqz	a5,80013080 <_ftoa+0x53c>
80013068:	05010793          	addi	a5,sp,80
8001306c:	017787b3          	add	a5,a5,s7
80013070:	02d00713          	li	a4,45
80013074:	fee78023          	sb	a4,-32(a5)
80013078:	001b8b93          	addi	s7,s7,1
8001307c:	fc9ff06f          	j	80013044 <_ftoa+0x500>
80013080:	004af793          	andi	a5,s5,4
80013084:	00078a63          	beqz	a5,80013098 <_ftoa+0x554>
80013088:	05010793          	addi	a5,sp,80
8001308c:	017787b3          	add	a5,a5,s7
80013090:	02b00713          	li	a4,43
80013094:	fe1ff06f          	j	80013074 <_ftoa+0x530>
80013098:	008af793          	andi	a5,s5,8
8001309c:	fa0784e3          	beqz	a5,80013044 <_ftoa+0x500>
800130a0:	05010793          	addi	a5,sp,80
800130a4:	017787b3          	add	a5,a5,s7
800130a8:	02000713          	li	a4,32
800130ac:	fc9ff06f          	j	80013074 <_ftoa+0x530>

800130b0 <_etoa>:
800130b0:	f9010113          	addi	sp,sp,-112
800130b4:	05712623          	sw	s7,76(sp)
800130b8:	05812423          	sw	s8,72(sp)
800130bc:	05912223          	sw	s9,68(sp)
800130c0:	05a12023          	sw	s10,64(sp)
800130c4:	00050c13          	mv	s8,a0
800130c8:	00058c93          	mv	s9,a1
800130cc:	00060b93          	mv	s7,a2
800130d0:	00068d13          	mv	s10,a3
800130d4:	00070613          	mv	a2,a4
800130d8:	00078693          	mv	a3,a5
800130dc:	00070513          	mv	a0,a4
800130e0:	00078593          	mv	a1,a5
800130e4:	06912223          	sw	s1,100(sp)
800130e8:	05312e23          	sw	s3,92(sp)
800130ec:	05412c23          	sw	s4,88(sp)
800130f0:	05512a23          	sw	s5,84(sp)
800130f4:	05612823          	sw	s6,80(sp)
800130f8:	06112623          	sw	ra,108(sp)
800130fc:	06812423          	sw	s0,104(sp)
80013100:	07212023          	sw	s2,96(sp)
80013104:	03b12e23          	sw	s11,60(sp)
80013108:	07012b03          	lw	s6,112(sp)
8001310c:	00070493          	mv	s1,a4
80013110:	00078a13          	mv	s4,a5
80013114:	00080993          	mv	s3,a6
80013118:	00088a93          	mv	s5,a7
8001311c:	791020ef          	jal	ra,800160ac <__eqdf2>
80013120:	02051e63          	bnez	a0,8001315c <_etoa+0xac>
80013124:	800007b7          	lui	a5,0x80000
80013128:	6a07a603          	lw	a2,1696(a5) # 800006a0 <__clzsi2+0xfffe91cc>
8001312c:	6a47a683          	lw	a3,1700(a5)
80013130:	00048513          	mv	a0,s1
80013134:	000a0593          	mv	a1,s4
80013138:	000030ef          	jal	ra,80016138 <__gedf2>
8001313c:	02a04063          	bgtz	a0,8001315c <_etoa+0xac>
80013140:	800007b7          	lui	a5,0x80000
80013144:	6987a603          	lw	a2,1688(a5) # 80000698 <__clzsi2+0xfffe91c4>
80013148:	69c7a683          	lw	a3,1692(a5)
8001314c:	00048513          	mv	a0,s1
80013150:	000a0593          	mv	a1,s4
80013154:	0c8030ef          	jal	ra,8001621c <__ledf2>
80013158:	06055263          	bgez	a0,800131bc <_etoa+0x10c>
8001315c:	06812403          	lw	s0,104(sp)
80013160:	07612823          	sw	s6,112(sp)
80013164:	06c12083          	lw	ra,108(sp)
80013168:	06012903          	lw	s2,96(sp)
8001316c:	05012b03          	lw	s6,80(sp)
80013170:	03c12d83          	lw	s11,60(sp)
80013174:	000a8893          	mv	a7,s5
80013178:	00098813          	mv	a6,s3
8001317c:	05412a83          	lw	s5,84(sp)
80013180:	05c12983          	lw	s3,92(sp)
80013184:	00048713          	mv	a4,s1
80013188:	000a0793          	mv	a5,s4
8001318c:	06412483          	lw	s1,100(sp)
80013190:	05812a03          	lw	s4,88(sp)
80013194:	000d0693          	mv	a3,s10
80013198:	000b8613          	mv	a2,s7
8001319c:	04012d03          	lw	s10,64(sp)
800131a0:	04c12b83          	lw	s7,76(sp)
800131a4:	000c8593          	mv	a1,s9
800131a8:	000c0513          	mv	a0,s8
800131ac:	04412c83          	lw	s9,68(sp)
800131b0:	04812c03          	lw	s8,72(sp)
800131b4:	07010113          	addi	sp,sp,112
800131b8:	98dff06f          	j	80012b44 <_ftoa>
800131bc:	00000613          	li	a2,0
800131c0:	00000693          	li	a3,0
800131c4:	00048513          	mv	a0,s1
800131c8:	000a0593          	mv	a1,s4
800131cc:	050030ef          	jal	ra,8001621c <__ledf2>
800131d0:	00912c23          	sw	s1,24(sp)
800131d4:	000a0413          	mv	s0,s4
800131d8:	00055663          	bgez	a0,800131e4 <_etoa+0x134>
800131dc:	80000437          	lui	s0,0x80000
800131e0:	01444433          	xor	s0,s0,s4
800131e4:	400b7793          	andi	a5,s6,1024
800131e8:	00f12823          	sw	a5,16(sp)
800131ec:	00079463          	bnez	a5,800131f4 <_etoa+0x144>
800131f0:	00600993          	li	s3,6
800131f4:	01445513          	srli	a0,s0,0x14
800131f8:	7ff57513          	andi	a0,a0,2047
800131fc:	c0150513          	addi	a0,a0,-1023
80013200:	044040ef          	jal	ra,80017244 <__floatsidf>
80013204:	800007b7          	lui	a5,0x80000
80013208:	6c07a603          	lw	a2,1728(a5) # 800006c0 <__clzsi2+0xfffe91ec>
8001320c:	6c47a683          	lw	a3,1732(a5)
80013210:	0f0030ef          	jal	ra,80016300 <__muldf3>
80013214:	800007b7          	lui	a5,0x80000
80013218:	6c87a603          	lw	a2,1736(a5) # 800006c8 <__clzsi2+0xfffe91f4>
8001321c:	6cc7a683          	lw	a3,1740(a5)
80013220:	6f9010ef          	jal	ra,80015118 <__adddf3>
80013224:	800007b7          	lui	a5,0x80000
80013228:	00c41713          	slli	a4,s0,0xc
8001322c:	00c75713          	srli	a4,a4,0xc
80013230:	6d07a603          	lw	a2,1744(a5) # 800006d0 <__clzsi2+0xfffe91fc>
80013234:	6d47a683          	lw	a3,1748(a5)
80013238:	3ff007b7          	lui	a5,0x3ff00
8001323c:	00e7e7b3          	or	a5,a5,a4
80013240:	00050d93          	mv	s11,a0
80013244:	00058913          	mv	s2,a1
80013248:	00048513          	mv	a0,s1
8001324c:	00078593          	mv	a1,a5
80013250:	730030ef          	jal	ra,80016980 <__subdf3>
80013254:	800007b7          	lui	a5,0x80000
80013258:	6d87a603          	lw	a2,1752(a5) # 800006d8 <__clzsi2+0xfffe9204>
8001325c:	6dc7a683          	lw	a3,1756(a5)
80013260:	0a0030ef          	jal	ra,80016300 <__muldf3>
80013264:	00050613          	mv	a2,a0
80013268:	00058693          	mv	a3,a1
8001326c:	000d8513          	mv	a0,s11
80013270:	00090593          	mv	a1,s2
80013274:	6a5010ef          	jal	ra,80015118 <__adddf3>
80013278:	6d1030ef          	jal	ra,80017148 <__fixdfsi>
8001327c:	00050913          	mv	s2,a0
80013280:	7c5030ef          	jal	ra,80017244 <__floatsidf>
80013284:	80000737          	lui	a4,0x80000
80013288:	6e072603          	lw	a2,1760(a4) # 800006e0 <__clzsi2+0xfffe920c>
8001328c:	6e472683          	lw	a3,1764(a4)
80013290:	00058d93          	mv	s11,a1
80013294:	00a12823          	sw	a0,16(sp)
80013298:	068030ef          	jal	ra,80016300 <__muldf3>
8001329c:	80000737          	lui	a4,0x80000
800132a0:	6b872603          	lw	a2,1720(a4) # 800006b8 <__clzsi2+0xfffe91e4>
800132a4:	6bc72683          	lw	a3,1724(a4)
800132a8:	671010ef          	jal	ra,80015118 <__adddf3>
800132ac:	69d030ef          	jal	ra,80017148 <__fixdfsi>
800132b0:	01012783          	lw	a5,16(sp)
800132b4:	80000737          	lui	a4,0x80000
800132b8:	6e872603          	lw	a2,1768(a4) # 800006e8 <__clzsi2+0xfffe9214>
800132bc:	6ec72683          	lw	a3,1772(a4)
800132c0:	00a12e23          	sw	a0,28(sp)
800132c4:	000d8593          	mv	a1,s11
800132c8:	00078513          	mv	a0,a5
800132cc:	034030ef          	jal	ra,80016300 <__muldf3>
800132d0:	00a12823          	sw	a0,16(sp)
800132d4:	01c12503          	lw	a0,28(sp)
800132d8:	00058d93          	mv	s11,a1
800132dc:	769030ef          	jal	ra,80017244 <__floatsidf>
800132e0:	80000737          	lui	a4,0x80000
800132e4:	6f072603          	lw	a2,1776(a4) # 800006f0 <__clzsi2+0xfffe921c>
800132e8:	6f472683          	lw	a3,1780(a4)
800132ec:	014030ef          	jal	ra,80016300 <__muldf3>
800132f0:	01012783          	lw	a5,16(sp)
800132f4:	00050613          	mv	a2,a0
800132f8:	00058693          	mv	a3,a1
800132fc:	00078513          	mv	a0,a5
80013300:	000d8593          	mv	a1,s11
80013304:	67c030ef          	jal	ra,80016980 <__subdf3>
80013308:	00050613          	mv	a2,a0
8001330c:	00058693          	mv	a3,a1
80013310:	02a12223          	sw	a0,36(sp)
80013314:	02b12023          	sw	a1,32(sp)
80013318:	7e9020ef          	jal	ra,80016300 <__muldf3>
8001331c:	02412703          	lw	a4,36(sp)
80013320:	02012783          	lw	a5,32(sp)
80013324:	00050d93          	mv	s11,a0
80013328:	00070613          	mv	a2,a4
8001332c:	00078693          	mv	a3,a5
80013330:	00070513          	mv	a0,a4
80013334:	00b12823          	sw	a1,16(sp)
80013338:	00078593          	mv	a1,a5
8001333c:	02e12623          	sw	a4,44(sp)
80013340:	02f12423          	sw	a5,40(sp)
80013344:	5d5010ef          	jal	ra,80015118 <__adddf3>
80013348:	800006b7          	lui	a3,0x80000
8001334c:	6f86a603          	lw	a2,1784(a3) # 800006f8 <__clzsi2+0xfffe9224>
80013350:	02b12023          	sw	a1,32(sp)
80013354:	6fc6a683          	lw	a3,1788(a3)
80013358:	01012583          	lw	a1,16(sp)
8001335c:	02a12223          	sw	a0,36(sp)
80013360:	000d8513          	mv	a0,s11
80013364:	570020ef          	jal	ra,800158d4 <__divdf3>
80013368:	800008b7          	lui	a7,0x80000
8001336c:	7008a603          	lw	a2,1792(a7) # 80000700 <__clzsi2+0xfffe922c>
80013370:	7048a683          	lw	a3,1796(a7)
80013374:	5a5010ef          	jal	ra,80015118 <__adddf3>
80013378:	00058693          	mv	a3,a1
8001337c:	01012583          	lw	a1,16(sp)
80013380:	00050613          	mv	a2,a0
80013384:	000d8513          	mv	a0,s11
80013388:	54c020ef          	jal	ra,800158d4 <__divdf3>
8001338c:	800006b7          	lui	a3,0x80000
80013390:	7086a603          	lw	a2,1800(a3) # 80000708 <__clzsi2+0xfffe9234>
80013394:	70c6a683          	lw	a3,1804(a3)
80013398:	581010ef          	jal	ra,80015118 <__adddf3>
8001339c:	00058693          	mv	a3,a1
800133a0:	01012583          	lw	a1,16(sp)
800133a4:	00050613          	mv	a2,a0
800133a8:	000d8513          	mv	a0,s11
800133ac:	528020ef          	jal	ra,800158d4 <__divdf3>
800133b0:	02812783          	lw	a5,40(sp)
800133b4:	02c12703          	lw	a4,44(sp)
800133b8:	00058d93          	mv	s11,a1
800133bc:	00078693          	mv	a3,a5
800133c0:	800007b7          	lui	a5,0x80000
800133c4:	7147a583          	lw	a1,1812(a5) # 80000714 <__clzsi2+0xfffe9240>
800133c8:	00a12823          	sw	a0,16(sp)
800133cc:	7107a503          	lw	a0,1808(a5)
800133d0:	00070613          	mv	a2,a4
800133d4:	5ac030ef          	jal	ra,80016980 <__subdf3>
800133d8:	01012e03          	lw	t3,16(sp)
800133dc:	00050613          	mv	a2,a0
800133e0:	00058693          	mv	a3,a1
800133e4:	000e0513          	mv	a0,t3
800133e8:	000d8593          	mv	a1,s11
800133ec:	52d010ef          	jal	ra,80015118 <__adddf3>
800133f0:	02412303          	lw	t1,36(sp)
800133f4:	02012803          	lw	a6,32(sp)
800133f8:	00050613          	mv	a2,a0
800133fc:	00058693          	mv	a3,a1
80013400:	00030513          	mv	a0,t1
80013404:	00080593          	mv	a1,a6
80013408:	4cc020ef          	jal	ra,800158d4 <__divdf3>
8001340c:	800007b7          	lui	a5,0x80000
80013410:	7187a603          	lw	a2,1816(a5) # 80000718 <__clzsi2+0xfffe9244>
80013414:	71c7a683          	lw	a3,1820(a5)
80013418:	501010ef          	jal	ra,80015118 <__adddf3>
8001341c:	01c12783          	lw	a5,28(sp)
80013420:	00000813          	li	a6,0
80013424:	00080613          	mv	a2,a6
80013428:	3ff78793          	addi	a5,a5,1023
8001342c:	01479713          	slli	a4,a5,0x14
80013430:	00070693          	mv	a3,a4
80013434:	6cd020ef          	jal	ra,80016300 <__muldf3>
80013438:	00050613          	mv	a2,a0
8001343c:	00a12823          	sw	a0,16(sp)
80013440:	00058693          	mv	a3,a1
80013444:	00058d93          	mv	s11,a1
80013448:	00048513          	mv	a0,s1
8001344c:	00040593          	mv	a1,s0
80013450:	5cd020ef          	jal	ra,8001621c <__ledf2>
80013454:	01012803          	lw	a6,16(sp)
80013458:	800008b7          	lui	a7,0x80000
8001345c:	20054463          	bltz	a0,80013664 <_etoa+0x5b4>
80013460:	00080713          	mv	a4,a6
80013464:	000d8793          	mv	a5,s11
80013468:	0c600693          	li	a3,198
8001346c:	06390d93          	addi	s11,s2,99
80013470:	01b6bdb3          	sltu	s11,a3,s11
80013474:	014b1693          	slli	a3,s6,0x14
80013478:	004d8d93          	addi	s11,s11,4
8001347c:	0606d663          	bgez	a3,800134e8 <_etoa+0x438>
80013480:	800006b7          	lui	a3,0x80000
80013484:	7206a603          	lw	a2,1824(a3) # 80000720 <__clzsi2+0xfffe924c>
80013488:	7246a683          	lw	a3,1828(a3)
8001348c:	00048513          	mv	a0,s1
80013490:	00040593          	mv	a1,s0
80013494:	00e12823          	sw	a4,16(sp)
80013498:	00f12a23          	sw	a5,20(sp)
8001349c:	49d020ef          	jal	ra,80016138 <__gedf2>
800134a0:	01012703          	lw	a4,16(sp)
800134a4:	01412783          	lw	a5,20(sp)
800134a8:	1e054463          	bltz	a0,80013690 <_etoa+0x5e0>
800134ac:	800006b7          	lui	a3,0x80000
800134b0:	7286a603          	lw	a2,1832(a3) # 80000728 <__clzsi2+0xfffe9254>
800134b4:	72c6a683          	lw	a3,1836(a3)
800134b8:	00048513          	mv	a0,s1
800134bc:	00040593          	mv	a1,s0
800134c0:	55d020ef          	jal	ra,8001621c <__ledf2>
800134c4:	01012703          	lw	a4,16(sp)
800134c8:	01412783          	lw	a5,20(sp)
800134cc:	1c055263          	bgez	a0,80013690 <_etoa+0x5e0>
800134d0:	1b395c63          	bge	s2,s3,80013688 <_etoa+0x5d8>
800134d4:	412989b3          	sub	s3,s3,s2
800134d8:	fff98993          	addi	s3,s3,-1
800134dc:	400b6b13          	ori	s6,s6,1024
800134e0:	00000d93          	li	s11,0
800134e4:	00000913          	li	s2,0
800134e8:	00000893          	li	a7,0
800134ec:	015df463          	bgeu	s11,s5,800134f4 <_etoa+0x444>
800134f0:	41ba88b3          	sub	a7,s5,s11
800134f4:	002b7693          	andi	a3,s6,2
800134f8:	00d12823          	sw	a3,16(sp)
800134fc:	00068663          	beqz	a3,80013508 <_etoa+0x458>
80013500:	000d8463          	beqz	s11,80013508 <_etoa+0x458>
80013504:	00000893          	li	a7,0
80013508:	02090463          	beqz	s2,80013530 <_etoa+0x480>
8001350c:	00040593          	mv	a1,s0
80013510:	00070613          	mv	a2,a4
80013514:	00078693          	mv	a3,a5
80013518:	00048513          	mv	a0,s1
8001351c:	01112e23          	sw	a7,28(sp)
80013520:	3b4020ef          	jal	ra,800158d4 <__divdf3>
80013524:	01c12883          	lw	a7,28(sp)
80013528:	00a12c23          	sw	a0,24(sp)
8001352c:	00058413          	mv	s0,a1
80013530:	00000613          	li	a2,0
80013534:	00000693          	li	a3,0
80013538:	00048513          	mv	a0,s1
8001353c:	000a0593          	mv	a1,s4
80013540:	01112e23          	sw	a7,28(sp)
80013544:	4d9020ef          	jal	ra,8001621c <__ledf2>
80013548:	01c12883          	lw	a7,28(sp)
8001354c:	00055663          	bgez	a0,80013558 <_etoa+0x4a8>
80013550:	800007b7          	lui	a5,0x80000
80013554:	0087c433          	xor	s0,a5,s0
80013558:	01812603          	lw	a2,24(sp)
8001355c:	fffff7b7          	lui	a5,0xfffff
80013560:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__clzsi2+0x7ffe832b>
80013564:	00fb77b3          	and	a5,s6,a5
80013568:	00f12023          	sw	a5,0(sp)
8001356c:	00060713          	mv	a4,a2
80013570:	00040793          	mv	a5,s0
80013574:	00098813          	mv	a6,s3
80013578:	000d0693          	mv	a3,s10
8001357c:	000b8613          	mv	a2,s7
80013580:	000c8593          	mv	a1,s9
80013584:	000c0513          	mv	a0,s8
80013588:	dbcff0ef          	jal	ra,80012b44 <_ftoa>
8001358c:	00050413          	mv	s0,a0
80013590:	080d8a63          	beqz	s11,80013624 <_etoa+0x574>
80013594:	020b7b13          	andi	s6,s6,32
80013598:	04500513          	li	a0,69
8001359c:	000b1463          	bnez	s6,800135a4 <_etoa+0x4f4>
800135a0:	06500513          	li	a0,101
800135a4:	00040613          	mv	a2,s0
800135a8:	000d0693          	mv	a3,s10
800135ac:	000c8593          	mv	a1,s9
800135b0:	000c00e7          	jalr	s8
800135b4:	41f95713          	srai	a4,s2,0x1f
800135b8:	00140493          	addi	s1,s0,1 # 80000001 <__clzsi2+0xfffe8b2d>
800135bc:	012746b3          	xor	a3,a4,s2
800135c0:	00500793          	li	a5,5
800135c4:	fffd8d93          	addi	s11,s11,-1
800135c8:	00f12223          	sw	a5,4(sp)
800135cc:	40e68733          	sub	a4,a3,a4
800135d0:	01f95793          	srli	a5,s2,0x1f
800135d4:	01b12023          	sw	s11,0(sp)
800135d8:	00000893          	li	a7,0
800135dc:	00a00813          	li	a6,10
800135e0:	000d0693          	mv	a3,s10
800135e4:	00048613          	mv	a2,s1
800135e8:	000c8593          	mv	a1,s9
800135ec:	000c0513          	mv	a0,s8
800135f0:	a58ff0ef          	jal	ra,80012848 <_ntoa_long>
800135f4:	01012783          	lw	a5,16(sp)
800135f8:	00050413          	mv	s0,a0
800135fc:	02078463          	beqz	a5,80013624 <_etoa+0x574>
80013600:	41750933          	sub	s2,a0,s7
80013604:	00090493          	mv	s1,s2
80013608:	009b8633          	add	a2,s7,s1
8001360c:	0954ec63          	bltu	s1,s5,800136a4 <_etoa+0x5f4>
80013610:	00000613          	li	a2,0
80013614:	012ae663          	bltu	s5,s2,80013620 <_etoa+0x570>
80013618:	017a8ab3          	add	s5,s5,s7
8001361c:	408a8633          	sub	a2,s5,s0
80013620:	00c40433          	add	s0,s0,a2
80013624:	06c12083          	lw	ra,108(sp)
80013628:	00040513          	mv	a0,s0
8001362c:	06812403          	lw	s0,104(sp)
80013630:	06412483          	lw	s1,100(sp)
80013634:	06012903          	lw	s2,96(sp)
80013638:	05c12983          	lw	s3,92(sp)
8001363c:	05812a03          	lw	s4,88(sp)
80013640:	05412a83          	lw	s5,84(sp)
80013644:	05012b03          	lw	s6,80(sp)
80013648:	04c12b83          	lw	s7,76(sp)
8001364c:	04812c03          	lw	s8,72(sp)
80013650:	04412c83          	lw	s9,68(sp)
80013654:	04012d03          	lw	s10,64(sp)
80013658:	03c12d83          	lw	s11,60(sp)
8001365c:	07010113          	addi	sp,sp,112
80013660:	00008067          	ret
80013664:	7008a603          	lw	a2,1792(a7) # 80000700 <__clzsi2+0xfffe922c>
80013668:	7048a683          	lw	a3,1796(a7)
8001366c:	00080513          	mv	a0,a6
80013670:	000d8593          	mv	a1,s11
80013674:	260020ef          	jal	ra,800158d4 <__divdf3>
80013678:	fff90913          	addi	s2,s2,-1
8001367c:	00050713          	mv	a4,a0
80013680:	00058793          	mv	a5,a1
80013684:	de5ff06f          	j	80013468 <_etoa+0x3b8>
80013688:	00000993          	li	s3,0
8001368c:	e51ff06f          	j	800134dc <_etoa+0x42c>
80013690:	e4098ce3          	beqz	s3,800134e8 <_etoa+0x438>
80013694:	400b7693          	andi	a3,s6,1024
80013698:	e40688e3          	beqz	a3,800134e8 <_etoa+0x438>
8001369c:	fff98993          	addi	s3,s3,-1
800136a0:	e49ff06f          	j	800134e8 <_etoa+0x438>
800136a4:	000d0693          	mv	a3,s10
800136a8:	000c8593          	mv	a1,s9
800136ac:	02000513          	li	a0,32
800136b0:	000c00e7          	jalr	s8
800136b4:	00148493          	addi	s1,s1,1
800136b8:	f51ff06f          	j	80013608 <_etoa+0x558>

800136bc <_vsnprintf>:
800136bc:	f9010113          	addi	sp,sp,-112
800136c0:	06912223          	sw	s1,100(sp)
800136c4:	07212023          	sw	s2,96(sp)
800136c8:	05312e23          	sw	s3,92(sp)
800136cc:	05412c23          	sw	s4,88(sp)
800136d0:	05812423          	sw	s8,72(sp)
800136d4:	06112623          	sw	ra,108(sp)
800136d8:	06812423          	sw	s0,104(sp)
800136dc:	05512a23          	sw	s5,84(sp)
800136e0:	05612823          	sw	s6,80(sp)
800136e4:	05712623          	sw	s7,76(sp)
800136e8:	05912223          	sw	s9,68(sp)
800136ec:	05a12023          	sw	s10,64(sp)
800136f0:	03b12e23          	sw	s11,60(sp)
800136f4:	00058a13          	mv	s4,a1
800136f8:	00060993          	mv	s3,a2
800136fc:	00068493          	mv	s1,a3
80013700:	00070c13          	mv	s8,a4
80013704:	00050913          	mv	s2,a0
80013708:	00059663          	bnez	a1,80013714 <_vsnprintf+0x58>
8001370c:	80012937          	lui	s2,0x80012
80013710:	59490913          	addi	s2,s2,1428 # 80012594 <__clzsi2+0xffffb0c0>
80013714:	00001ab7          	lui	s5,0x1
80013718:	800a8793          	addi	a5,s5,-2048 # 800 <font6x8-0x7ffff82c>
8001371c:	80000b37          	lui	s6,0x80000
80013720:	02f12023          	sw	a5,32(sp)
80013724:	00010bb7          	lui	s7,0x10
80013728:	448b0793          	addi	a5,s6,1096 # 80000448 <__clzsi2+0xfffe8f74>
8001372c:	00000d93          	li	s11,0
80013730:	02f12223          	sw	a5,36(sp)
80013734:	fffb8b93          	addi	s7,s7,-1 # ffff <font6x8-0x7fff002d>
80013738:	3a40006f          	j	80013adc <_vsnprintf+0x420>
8001373c:	02500793          	li	a5,37
80013740:	00148493          	addi	s1,s1,1
80013744:	00f50c63          	beq	a0,a5,8001375c <_vsnprintf+0xa0>
80013748:	001d8413          	addi	s0,s11,1
8001374c:	00098693          	mv	a3,s3
80013750:	000d8613          	mv	a2,s11
80013754:	000a0593          	mv	a1,s4
80013758:	1a40006f          	j	800138fc <_vsnprintf+0x240>
8001375c:	00000313          	li	t1,0
80013760:	02b00713          	li	a4,43
80013764:	03000613          	li	a2,48
80013768:	02000593          	li	a1,32
8001376c:	02300513          	li	a0,35
80013770:	0180006f          	j	80013788 <_vsnprintf+0xcc>
80013774:	02d00813          	li	a6,45
80013778:	05078263          	beq	a5,a6,800137bc <_vsnprintf+0x100>
8001377c:	02c79263          	bne	a5,a2,800137a0 <_vsnprintf+0xe4>
80013780:	00136313          	ori	t1,t1,1
80013784:	00068493          	mv	s1,a3
80013788:	0004c783          	lbu	a5,0(s1)
8001378c:	00148693          	addi	a3,s1,1
80013790:	02e78a63          	beq	a5,a4,800137c4 <_vsnprintf+0x108>
80013794:	fef760e3          	bltu	a4,a5,80013774 <_vsnprintf+0xb8>
80013798:	02b78a63          	beq	a5,a1,800137cc <_vsnprintf+0x110>
8001379c:	02a78c63          	beq	a5,a0,800137d4 <_vsnprintf+0x118>
800137a0:	fd078713          	addi	a4,a5,-48
800137a4:	0ff77713          	andi	a4,a4,255
800137a8:	00900613          	li	a2,9
800137ac:	08e66863          	bltu	a2,a4,8001383c <_vsnprintf+0x180>
800137b0:	00000c93          	li	s9,0
800137b4:	00900693          	li	a3,9
800137b8:	03c0006f          	j	800137f4 <_vsnprintf+0x138>
800137bc:	00236313          	ori	t1,t1,2
800137c0:	fc5ff06f          	j	80013784 <_vsnprintf+0xc8>
800137c4:	00436313          	ori	t1,t1,4
800137c8:	fbdff06f          	j	80013784 <_vsnprintf+0xc8>
800137cc:	00836313          	ori	t1,t1,8
800137d0:	fb5ff06f          	j	80013784 <_vsnprintf+0xc8>
800137d4:	01036313          	ori	t1,t1,16
800137d8:	fadff06f          	j	80013784 <_vsnprintf+0xc8>
800137dc:	002c9793          	slli	a5,s9,0x2
800137e0:	019788b3          	add	a7,a5,s9
800137e4:	00189893          	slli	a7,a7,0x1
800137e8:	fd088893          	addi	a7,a7,-48
800137ec:	01170cb3          	add	s9,a4,a7
800137f0:	00060493          	mv	s1,a2
800137f4:	0004c703          	lbu	a4,0(s1)
800137f8:	00148613          	addi	a2,s1,1
800137fc:	fd070793          	addi	a5,a4,-48
80013800:	0ff7f793          	andi	a5,a5,255
80013804:	fcf6fce3          	bgeu	a3,a5,800137dc <_vsnprintf+0x120>
80013808:	0004c703          	lbu	a4,0(s1)
8001380c:	02e00793          	li	a5,46
80013810:	12f71063          	bne	a4,a5,80013930 <_vsnprintf+0x274>
80013814:	0014c683          	lbu	a3,1(s1)
80013818:	00900613          	li	a2,9
8001381c:	00148793          	addi	a5,s1,1
80013820:	fd068713          	addi	a4,a3,-48
80013824:	0ff77713          	andi	a4,a4,255
80013828:	40036313          	ori	t1,t1,1024
8001382c:	0ce66e63          	bltu	a2,a4,80013908 <_vsnprintf+0x24c>
80013830:	00000d13          	li	s10,0
80013834:	00900613          	li	a2,9
80013838:	0480006f          	j	80013880 <_vsnprintf+0x1c4>
8001383c:	02a00713          	li	a4,42
80013840:	00000c93          	li	s9,0
80013844:	fce792e3          	bne	a5,a4,80013808 <_vsnprintf+0x14c>
80013848:	000c2c83          	lw	s9,0(s8)
8001384c:	004c0793          	addi	a5,s8,4
80013850:	000cd663          	bgez	s9,8001385c <_vsnprintf+0x1a0>
80013854:	00236313          	ori	t1,t1,2
80013858:	41900cb3          	neg	s9,s9
8001385c:	00078c13          	mv	s8,a5
80013860:	00068493          	mv	s1,a3
80013864:	fa5ff06f          	j	80013808 <_vsnprintf+0x14c>
80013868:	002d1813          	slli	a6,s10,0x2
8001386c:	01a80e33          	add	t3,a6,s10
80013870:	001e1e13          	slli	t3,t3,0x1
80013874:	fd0e0e13          	addi	t3,t3,-48
80013878:	01c68d33          	add	s10,a3,t3
8001387c:	00058793          	mv	a5,a1
80013880:	0007c683          	lbu	a3,0(a5)
80013884:	00178593          	addi	a1,a5,1
80013888:	fd068713          	addi	a4,a3,-48
8001388c:	0ff77713          	andi	a4,a4,255
80013890:	fce67ce3          	bgeu	a2,a4,80013868 <_vsnprintf+0x1ac>
80013894:	0007c703          	lbu	a4,0(a5)
80013898:	06c00693          	li	a3,108
8001389c:	00178493          	addi	s1,a5,1
800138a0:	0ad70a63          	beq	a4,a3,80013954 <_vsnprintf+0x298>
800138a4:	08e6ec63          	bltu	a3,a4,8001393c <_vsnprintf+0x280>
800138a8:	06800693          	li	a3,104
800138ac:	0ad70e63          	beq	a4,a3,80013968 <_vsnprintf+0x2ac>
800138b0:	06a00693          	li	a3,106
800138b4:	0cd70663          	beq	a4,a3,80013980 <_vsnprintf+0x2c4>
800138b8:	00078493          	mv	s1,a5
800138bc:	0004c503          	lbu	a0,0(s1)
800138c0:	07800793          	li	a5,120
800138c4:	00148493          	addi	s1,s1,1
800138c8:	e8a7e0e3          	bltu	a5,a0,80013748 <_vsnprintf+0x8c>
800138cc:	05700793          	li	a5,87
800138d0:	0aa7ec63          	bltu	a5,a0,80013988 <_vsnprintf+0x2cc>
800138d4:	04500793          	li	a5,69
800138d8:	0ef50263          	beq	a0,a5,800139bc <_vsnprintf+0x300>
800138dc:	0ca7e863          	bltu	a5,a0,800139ac <_vsnprintf+0x2f0>
800138e0:	02500793          	li	a5,37
800138e4:	e6f512e3          	bne	a0,a5,80013748 <_vsnprintf+0x8c>
800138e8:	001d8413          	addi	s0,s11,1
800138ec:	00098693          	mv	a3,s3
800138f0:	000d8613          	mv	a2,s11
800138f4:	000a0593          	mv	a1,s4
800138f8:	02500513          	li	a0,37
800138fc:	000900e7          	jalr	s2
80013900:	00040d93          	mv	s11,s0
80013904:	1d80006f          	j	80013adc <_vsnprintf+0x420>
80013908:	02a00713          	li	a4,42
8001390c:	00000d13          	li	s10,0
80013910:	f8e692e3          	bne	a3,a4,80013894 <_vsnprintf+0x1d8>
80013914:	000c2d03          	lw	s10,0(s8)
80013918:	004c0713          	addi	a4,s8,4
8001391c:	000d5463          	bgez	s10,80013924 <_vsnprintf+0x268>
80013920:	00000d13          	li	s10,0
80013924:	00248793          	addi	a5,s1,2
80013928:	00070c13          	mv	s8,a4
8001392c:	f69ff06f          	j	80013894 <_vsnprintf+0x1d8>
80013930:	00048793          	mv	a5,s1
80013934:	00000d13          	li	s10,0
80013938:	f5dff06f          	j	80013894 <_vsnprintf+0x1d8>
8001393c:	07400693          	li	a3,116
80013940:	00d70663          	beq	a4,a3,8001394c <_vsnprintf+0x290>
80013944:	07a00693          	li	a3,122
80013948:	f6d718e3          	bne	a4,a3,800138b8 <_vsnprintf+0x1fc>
8001394c:	10036313          	ori	t1,t1,256
80013950:	f6dff06f          	j	800138bc <_vsnprintf+0x200>
80013954:	0017c683          	lbu	a3,1(a5)
80013958:	fee69ae3          	bne	a3,a4,8001394c <_vsnprintf+0x290>
8001395c:	30036313          	ori	t1,t1,768
80013960:	00278493          	addi	s1,a5,2
80013964:	f59ff06f          	j	800138bc <_vsnprintf+0x200>
80013968:	0017c683          	lbu	a3,1(a5)
8001396c:	00e68663          	beq	a3,a4,80013978 <_vsnprintf+0x2bc>
80013970:	08036313          	ori	t1,t1,128
80013974:	f49ff06f          	j	800138bc <_vsnprintf+0x200>
80013978:	0c036313          	ori	t1,t1,192
8001397c:	fe5ff06f          	j	80013960 <_vsnprintf+0x2a4>
80013980:	20036313          	ori	t1,t1,512
80013984:	f39ff06f          	j	800138bc <_vsnprintf+0x200>
80013988:	fa850793          	addi	a5,a0,-88
8001398c:	0ff7f793          	andi	a5,a5,255
80013990:	02000713          	li	a4,32
80013994:	daf76ae3          	bltu	a4,a5,80013748 <_vsnprintf+0x8c>
80013998:	02412703          	lw	a4,36(sp)
8001399c:	00279793          	slli	a5,a5,0x2
800139a0:	00e787b3          	add	a5,a5,a4
800139a4:	0007a783          	lw	a5,0(a5)
800139a8:	00078067          	jr	a5
800139ac:	04600793          	li	a5,70
800139b0:	26f50c63          	beq	a0,a5,80013c28 <_vsnprintf+0x56c>
800139b4:	04700793          	li	a5,71
800139b8:	d8f518e3          	bne	a0,a5,80013748 <_vsnprintf+0x8c>
800139bc:	0df57793          	andi	a5,a0,223
800139c0:	04700713          	li	a4,71
800139c4:	00e79863          	bne	a5,a4,800139d4 <_vsnprintf+0x318>
800139c8:	02012783          	lw	a5,32(sp)
800139cc:	0fd57513          	andi	a0,a0,253
800139d0:	00f36333          	or	t1,t1,a5
800139d4:	04500793          	li	a5,69
800139d8:	00f51463          	bne	a0,a5,800139e0 <_vsnprintf+0x324>
800139dc:	02036313          	ori	t1,t1,32
800139e0:	007c0713          	addi	a4,s8,7
800139e4:	ff877713          	andi	a4,a4,-8
800139e8:	00472783          	lw	a5,4(a4)
800139ec:	00870c13          	addi	s8,a4,8
800139f0:	00072703          	lw	a4,0(a4)
800139f4:	000c8893          	mv	a7,s9
800139f8:	00612023          	sw	t1,0(sp)
800139fc:	000d0813          	mv	a6,s10
80013a00:	00098693          	mv	a3,s3
80013a04:	000d8613          	mv	a2,s11
80013a08:	000a0593          	mv	a1,s4
80013a0c:	00090513          	mv	a0,s2
80013a10:	ea0ff0ef          	jal	ra,800130b0 <_etoa>
80013a14:	24c0006f          	j	80013c60 <_vsnprintf+0x5a4>
80013a18:	07800793          	li	a5,120
80013a1c:	46f50663          	beq	a0,a5,80013e88 <_vsnprintf+0x7cc>
80013a20:	05800793          	li	a5,88
80013a24:	46f50063          	beq	a0,a5,80013e84 <_vsnprintf+0x7c8>
80013a28:	06f00793          	li	a5,111
80013a2c:	46f50263          	beq	a0,a5,80013e90 <_vsnprintf+0x7d4>
80013a30:	06200793          	li	a5,98
80013a34:	46f50263          	beq	a0,a5,80013e98 <_vsnprintf+0x7dc>
80013a38:	06900793          	li	a5,105
80013a3c:	fef37313          	andi	t1,t1,-17
80013a40:	00a00813          	li	a6,10
80013a44:	00f50863          	beq	a0,a5,80013a54 <_vsnprintf+0x398>
80013a48:	06400793          	li	a5,100
80013a4c:	00f50463          	beq	a0,a5,80013a54 <_vsnprintf+0x398>
80013a50:	ff337313          	andi	t1,t1,-13
80013a54:	40037793          	andi	a5,t1,1024
80013a58:	00078463          	beqz	a5,80013a60 <_vsnprintf+0x3a4>
80013a5c:	ffe37313          	andi	t1,t1,-2
80013a60:	06900713          	li	a4,105
80013a64:	20037793          	andi	a5,t1,512
80013a68:	00e50663          	beq	a0,a4,80013a74 <_vsnprintf+0x3b8>
80013a6c:	06400713          	li	a4,100
80013a70:	12e51e63          	bne	a0,a4,80013bac <_vsnprintf+0x4f0>
80013a74:	0c078663          	beqz	a5,80013b40 <_vsnprintf+0x484>
80013a78:	007c0c13          	addi	s8,s8,7
80013a7c:	ff8c7c13          	andi	s8,s8,-8
80013a80:	004c2583          	lw	a1,4(s8)
80013a84:	000c2783          	lw	a5,0(s8)
80013a88:	00080893          	mv	a7,a6
80013a8c:	41f5d693          	srai	a3,a1,0x1f
80013a90:	00f6c7b3          	xor	a5,a3,a5
80013a94:	40d78733          	sub	a4,a5,a3
80013a98:	00b6c633          	xor	a2,a3,a1
80013a9c:	00e7b7b3          	sltu	a5,a5,a4
80013aa0:	40d606b3          	sub	a3,a2,a3
80013aa4:	008c0413          	addi	s0,s8,8
80013aa8:	00612623          	sw	t1,12(sp)
80013aac:	01912423          	sw	s9,8(sp)
80013ab0:	01a12223          	sw	s10,4(sp)
80013ab4:	00012023          	sw	zero,0(sp)
80013ab8:	01f5d813          	srli	a6,a1,0x1f
80013abc:	40f687b3          	sub	a5,a3,a5
80013ac0:	00098693          	mv	a3,s3
80013ac4:	000d8613          	mv	a2,s11
80013ac8:	000a0593          	mv	a1,s4
80013acc:	00090513          	mv	a0,s2
80013ad0:	ecdfe0ef          	jal	ra,8001299c <_ntoa_long_long>
80013ad4:	00050d93          	mv	s11,a0
80013ad8:	00040c13          	mv	s8,s0
80013adc:	0004c503          	lbu	a0,0(s1)
80013ae0:	c4051ee3          	bnez	a0,8001373c <_vsnprintf+0x80>
80013ae4:	000d8613          	mv	a2,s11
80013ae8:	013de463          	bltu	s11,s3,80013af0 <_vsnprintf+0x434>
80013aec:	fff98613          	addi	a2,s3,-1
80013af0:	00098693          	mv	a3,s3
80013af4:	000a0593          	mv	a1,s4
80013af8:	00000513          	li	a0,0
80013afc:	000900e7          	jalr	s2
80013b00:	06c12083          	lw	ra,108(sp)
80013b04:	06812403          	lw	s0,104(sp)
80013b08:	06412483          	lw	s1,100(sp)
80013b0c:	06012903          	lw	s2,96(sp)
80013b10:	05c12983          	lw	s3,92(sp)
80013b14:	05812a03          	lw	s4,88(sp)
80013b18:	05412a83          	lw	s5,84(sp)
80013b1c:	05012b03          	lw	s6,80(sp)
80013b20:	04c12b83          	lw	s7,76(sp)
80013b24:	04812c03          	lw	s8,72(sp)
80013b28:	04412c83          	lw	s9,68(sp)
80013b2c:	04012d03          	lw	s10,64(sp)
80013b30:	000d8513          	mv	a0,s11
80013b34:	03c12d83          	lw	s11,60(sp)
80013b38:	07010113          	addi	sp,sp,112
80013b3c:	00008067          	ret
80013b40:	10037793          	andi	a5,t1,256
80013b44:	004c0413          	addi	s0,s8,4
80013b48:	02078e63          	beqz	a5,80013b84 <_vsnprintf+0x4c8>
80013b4c:	000c2783          	lw	a5,0(s8)
80013b50:	41f7d713          	srai	a4,a5,0x1f
80013b54:	00f746b3          	xor	a3,a4,a5
80013b58:	00612223          	sw	t1,4(sp)
80013b5c:	01912023          	sw	s9,0(sp)
80013b60:	000d0893          	mv	a7,s10
80013b64:	01f7d793          	srli	a5,a5,0x1f
80013b68:	40e68733          	sub	a4,a3,a4
80013b6c:	00098693          	mv	a3,s3
80013b70:	000d8613          	mv	a2,s11
80013b74:	000a0593          	mv	a1,s4
80013b78:	00090513          	mv	a0,s2
80013b7c:	ccdfe0ef          	jal	ra,80012848 <_ntoa_long>
80013b80:	f55ff06f          	j	80013ad4 <_vsnprintf+0x418>
80013b84:	04037713          	andi	a4,t1,64
80013b88:	000c2783          	lw	a5,0(s8)
80013b8c:	00070663          	beqz	a4,80013b98 <_vsnprintf+0x4dc>
80013b90:	0ff7f793          	andi	a5,a5,255
80013b94:	fbdff06f          	j	80013b50 <_vsnprintf+0x494>
80013b98:	08037713          	andi	a4,t1,128
80013b9c:	fa070ae3          	beqz	a4,80013b50 <_vsnprintf+0x494>
80013ba0:	01079793          	slli	a5,a5,0x10
80013ba4:	4107d793          	srai	a5,a5,0x10
80013ba8:	fa9ff06f          	j	80013b50 <_vsnprintf+0x494>
80013bac:	02078a63          	beqz	a5,80013be0 <_vsnprintf+0x524>
80013bb0:	007c0c13          	addi	s8,s8,7
80013bb4:	ff8c7c13          	andi	s8,s8,-8
80013bb8:	000c2703          	lw	a4,0(s8)
80013bbc:	004c2783          	lw	a5,4(s8)
80013bc0:	00080893          	mv	a7,a6
80013bc4:	008c0413          	addi	s0,s8,8
80013bc8:	00612623          	sw	t1,12(sp)
80013bcc:	01912423          	sw	s9,8(sp)
80013bd0:	01a12223          	sw	s10,4(sp)
80013bd4:	00012023          	sw	zero,0(sp)
80013bd8:	00000813          	li	a6,0
80013bdc:	ee5ff06f          	j	80013ac0 <_vsnprintf+0x404>
80013be0:	10037793          	andi	a5,t1,256
80013be4:	004c0413          	addi	s0,s8,4
80013be8:	00078e63          	beqz	a5,80013c04 <_vsnprintf+0x548>
80013bec:	000c2703          	lw	a4,0(s8)
80013bf0:	00612223          	sw	t1,4(sp)
80013bf4:	01912023          	sw	s9,0(sp)
80013bf8:	000d0893          	mv	a7,s10
80013bfc:	00000793          	li	a5,0
80013c00:	f6dff06f          	j	80013b6c <_vsnprintf+0x4b0>
80013c04:	04037793          	andi	a5,t1,64
80013c08:	000c2703          	lw	a4,0(s8)
80013c0c:	00078663          	beqz	a5,80013c18 <_vsnprintf+0x55c>
80013c10:	0ff77713          	andi	a4,a4,255
80013c14:	fddff06f          	j	80013bf0 <_vsnprintf+0x534>
80013c18:	08037793          	andi	a5,t1,128
80013c1c:	fc078ae3          	beqz	a5,80013bf0 <_vsnprintf+0x534>
80013c20:	01777733          	and	a4,a4,s7
80013c24:	fcdff06f          	j	80013bf0 <_vsnprintf+0x534>
80013c28:	02036313          	ori	t1,t1,32
80013c2c:	007c0713          	addi	a4,s8,7
80013c30:	ff877713          	andi	a4,a4,-8
80013c34:	00472783          	lw	a5,4(a4)
80013c38:	00870c13          	addi	s8,a4,8
80013c3c:	00072703          	lw	a4,0(a4)
80013c40:	000c8893          	mv	a7,s9
80013c44:	00612023          	sw	t1,0(sp)
80013c48:	000d0813          	mv	a6,s10
80013c4c:	00098693          	mv	a3,s3
80013c50:	000d8613          	mv	a2,s11
80013c54:	000a0593          	mv	a1,s4
80013c58:	00090513          	mv	a0,s2
80013c5c:	ee9fe0ef          	jal	ra,80012b44 <_ftoa>
80013c60:	00050d93          	mv	s11,a0
80013c64:	e79ff06f          	j	80013adc <_vsnprintf+0x420>
80013c68:	00237413          	andi	s0,t1,2
80013c6c:	00100b13          	li	s6,1
80013c70:	04041463          	bnez	s0,80013cb8 <_vsnprintf+0x5fc>
80013c74:	00000d13          	li	s10,0
80013c78:	0140006f          	j	80013c8c <_vsnprintf+0x5d0>
80013c7c:	00098693          	mv	a3,s3
80013c80:	000a0593          	mv	a1,s4
80013c84:	02000513          	li	a0,32
80013c88:	000900e7          	jalr	s2
80013c8c:	01bd0633          	add	a2,s10,s11
80013c90:	001d0d13          	addi	s10,s10,1
80013c94:	ff9d64e3          	bltu	s10,s9,80013c7c <_vsnprintf+0x5c0>
80013c98:	00000793          	li	a5,0
80013c9c:	000c8463          	beqz	s9,80013ca4 <_vsnprintf+0x5e8>
80013ca0:	fffc8793          	addi	a5,s9,-1
80013ca4:	00fd8db3          	add	s11,s11,a5
80013ca8:	00200793          	li	a5,2
80013cac:	000c8463          	beqz	s9,80013cb4 <_vsnprintf+0x5f8>
80013cb0:	001c8793          	addi	a5,s9,1
80013cb4:	00078b13          	mv	s6,a5
80013cb8:	000c4503          	lbu	a0,0(s8)
80013cbc:	00098693          	mv	a3,s3
80013cc0:	000d8613          	mv	a2,s11
80013cc4:	000a0593          	mv	a1,s4
80013cc8:	004c0d13          	addi	s10,s8,4
80013ccc:	001d8a93          	addi	s5,s11,1
80013cd0:	000900e7          	jalr	s2
80013cd4:	04040063          	beqz	s0,80013d14 <_vsnprintf+0x658>
80013cd8:	000b0413          	mv	s0,s6
80013cdc:	000a8613          	mv	a2,s5
80013ce0:	0200006f          	j	80013d00 <_vsnprintf+0x644>
80013ce4:	00098693          	mv	a3,s3
80013ce8:	000a0593          	mv	a1,s4
80013cec:	02000513          	li	a0,32
80013cf0:	00160c13          	addi	s8,a2,1
80013cf4:	000900e7          	jalr	s2
80013cf8:	00140413          	addi	s0,s0,1
80013cfc:	000c0613          	mv	a2,s8
80013d00:	ff9462e3          	bltu	s0,s9,80013ce4 <_vsnprintf+0x628>
80013d04:	00000693          	li	a3,0
80013d08:	016ce463          	bltu	s9,s6,80013d10 <_vsnprintf+0x654>
80013d0c:	416c86b3          	sub	a3,s9,s6
80013d10:	00da8ab3          	add	s5,s5,a3
80013d14:	000d0c13          	mv	s8,s10
80013d18:	000a8d93          	mv	s11,s5
80013d1c:	dc1ff06f          	j	80013adc <_vsnprintf+0x420>
80013d20:	004c0793          	addi	a5,s8,4
80013d24:	00f12e23          	sw	a5,28(sp)
80013d28:	000c2b03          	lw	s6,0(s8)
80013d2c:	000d0793          	mv	a5,s10
80013d30:	000d1463          	bnez	s10,80013d38 <_vsnprintf+0x67c>
80013d34:	fff00793          	li	a5,-1
80013d38:	00fb0733          	add	a4,s6,a5
80013d3c:	000b0793          	mv	a5,s6
80013d40:	0007c683          	lbu	a3,0(a5)
80013d44:	00068463          	beqz	a3,80013d4c <_vsnprintf+0x690>
80013d48:	02e79663          	bne	a5,a4,80013d74 <_vsnprintf+0x6b8>
80013d4c:	40037c13          	andi	s8,t1,1024
80013d50:	41678ab3          	sub	s5,a5,s6
80013d54:	000c0663          	beqz	s8,80013d60 <_vsnprintf+0x6a4>
80013d58:	015d7463          	bgeu	s10,s5,80013d60 <_vsnprintf+0x6a4>
80013d5c:	000d0a93          	mv	s5,s10
80013d60:	00237413          	andi	s0,t1,2
80013d64:	06041063          	bnez	s0,80013dc4 <_vsnprintf+0x708>
80013d68:	000d8613          	mv	a2,s11
80013d6c:	41ba8333          	sub	t1,s5,s11
80013d70:	0340006f          	j	80013da4 <_vsnprintf+0x6e8>
80013d74:	00178793          	addi	a5,a5,1
80013d78:	fc9ff06f          	j	80013d40 <_vsnprintf+0x684>
80013d7c:	00160713          	addi	a4,a2,1
80013d80:	02612623          	sw	t1,44(sp)
80013d84:	02e12423          	sw	a4,40(sp)
80013d88:	00098693          	mv	a3,s3
80013d8c:	000a0593          	mv	a1,s4
80013d90:	02000513          	li	a0,32
80013d94:	000900e7          	jalr	s2
80013d98:	02812703          	lw	a4,40(sp)
80013d9c:	02c12303          	lw	t1,44(sp)
80013da0:	00070613          	mv	a2,a4
80013da4:	00c30733          	add	a4,t1,a2
80013da8:	fd976ae3          	bltu	a4,s9,80013d7c <_vsnprintf+0x6c0>
80013dac:	00000713          	li	a4,0
80013db0:	015ce463          	bltu	s9,s5,80013db8 <_vsnprintf+0x6fc>
80013db4:	415c8733          	sub	a4,s9,s5
80013db8:	001a8793          	addi	a5,s5,1
80013dbc:	00ed8db3          	add	s11,s11,a4
80013dc0:	00f70ab3          	add	s5,a4,a5
80013dc4:	000d8713          	mv	a4,s11
80013dc8:	0280006f          	j	80013df0 <_vsnprintf+0x734>
80013dcc:	00068d13          	mv	s10,a3
80013dd0:	00170313          	addi	t1,a4,1
80013dd4:	02612423          	sw	t1,40(sp)
80013dd8:	00070613          	mv	a2,a4
80013ddc:	00098693          	mv	a3,s3
80013de0:	000a0593          	mv	a1,s4
80013de4:	000900e7          	jalr	s2
80013de8:	02812303          	lw	t1,40(sp)
80013dec:	00030713          	mv	a4,t1
80013df0:	41b706b3          	sub	a3,a4,s11
80013df4:	00db06b3          	add	a3,s6,a3
80013df8:	0006c503          	lbu	a0,0(a3)
80013dfc:	00050863          	beqz	a0,80013e0c <_vsnprintf+0x750>
80013e00:	fc0c08e3          	beqz	s8,80013dd0 <_vsnprintf+0x714>
80013e04:	fffd0693          	addi	a3,s10,-1
80013e08:	fc0d12e3          	bnez	s10,80013dcc <_vsnprintf+0x710>
80013e0c:	04040463          	beqz	s0,80013e54 <_vsnprintf+0x798>
80013e10:	00070613          	mv	a2,a4
80013e14:	40ea8433          	sub	s0,s5,a4
80013e18:	0240006f          	j	80013e3c <_vsnprintf+0x780>
80013e1c:	02e12423          	sw	a4,40(sp)
80013e20:	00098693          	mv	a3,s3
80013e24:	000a0593          	mv	a1,s4
80013e28:	02000513          	li	a0,32
80013e2c:	00160c13          	addi	s8,a2,1
80013e30:	000900e7          	jalr	s2
80013e34:	02812703          	lw	a4,40(sp)
80013e38:	000c0613          	mv	a2,s8
80013e3c:	008606b3          	add	a3,a2,s0
80013e40:	fd96eee3          	bltu	a3,s9,80013e1c <_vsnprintf+0x760>
80013e44:	00000693          	li	a3,0
80013e48:	015ce463          	bltu	s9,s5,80013e50 <_vsnprintf+0x794>
80013e4c:	415c86b3          	sub	a3,s9,s5
80013e50:	00d70733          	add	a4,a4,a3
80013e54:	01c12c03          	lw	s8,28(sp)
80013e58:	00070d93          	mv	s11,a4
80013e5c:	c81ff06f          	j	80013adc <_vsnprintf+0x420>
80013e60:	02136313          	ori	t1,t1,33
80013e64:	00800793          	li	a5,8
80013e68:	000c2703          	lw	a4,0(s8)
80013e6c:	004c0413          	addi	s0,s8,4
80013e70:	00612223          	sw	t1,4(sp)
80013e74:	00f12023          	sw	a5,0(sp)
80013e78:	000d0893          	mv	a7,s10
80013e7c:	01000813          	li	a6,16
80013e80:	d7dff06f          	j	80013bfc <_vsnprintf+0x540>
80013e84:	02036313          	ori	t1,t1,32
80013e88:	01000813          	li	a6,16
80013e8c:	bc5ff06f          	j	80013a50 <_vsnprintf+0x394>
80013e90:	00800813          	li	a6,8
80013e94:	bb5ff06f          	j	80013a48 <_vsnprintf+0x38c>
80013e98:	00200813          	li	a6,2
80013e9c:	badff06f          	j	80013a48 <_vsnprintf+0x38c>

80013ea0 <printf_>:
80013ea0:	fc010113          	addi	sp,sp,-64
80013ea4:	02d12623          	sw	a3,44(sp)
80013ea8:	00050693          	mv	a3,a0
80013eac:	80013537          	lui	a0,0x80013
80013eb0:	02b12223          	sw	a1,36(sp)
80013eb4:	02c12423          	sw	a2,40(sp)
80013eb8:	02e12823          	sw	a4,48(sp)
80013ebc:	00810593          	addi	a1,sp,8
80013ec0:	02410713          	addi	a4,sp,36
80013ec4:	fff00613          	li	a2,-1
80013ec8:	b2450513          	addi	a0,a0,-1244 # 80012b24 <__clzsi2+0xffffb650>
80013ecc:	00112e23          	sw	ra,28(sp)
80013ed0:	02f12a23          	sw	a5,52(sp)
80013ed4:	03012c23          	sw	a6,56(sp)
80013ed8:	03112e23          	sw	a7,60(sp)
80013edc:	00e12623          	sw	a4,12(sp)
80013ee0:	fdcff0ef          	jal	ra,800136bc <_vsnprintf>
80013ee4:	01c12083          	lw	ra,28(sp)
80013ee8:	04010113          	addi	sp,sp,64
80013eec:	00008067          	ret

80013ef0 <sprintf_>:
80013ef0:	fc010113          	addi	sp,sp,-64
80013ef4:	02d12623          	sw	a3,44(sp)
80013ef8:	00058693          	mv	a3,a1
80013efc:	00050593          	mv	a1,a0
80013f00:	80012537          	lui	a0,0x80012
80013f04:	02c12423          	sw	a2,40(sp)
80013f08:	02e12823          	sw	a4,48(sp)
80013f0c:	fff00613          	li	a2,-1
80013f10:	02810713          	addi	a4,sp,40
80013f14:	58450513          	addi	a0,a0,1412 # 80012584 <__clzsi2+0xffffb0b0>
80013f18:	00112e23          	sw	ra,28(sp)
80013f1c:	02f12a23          	sw	a5,52(sp)
80013f20:	03012c23          	sw	a6,56(sp)
80013f24:	03112e23          	sw	a7,60(sp)
80013f28:	00e12623          	sw	a4,12(sp)
80013f2c:	f90ff0ef          	jal	ra,800136bc <_vsnprintf>
80013f30:	01c12083          	lw	ra,28(sp)
80013f34:	04010113          	addi	sp,sp,64
80013f38:	00008067          	ret

80013f3c <snprintf_>:
80013f3c:	fc010113          	addi	sp,sp,-64
80013f40:	02d12623          	sw	a3,44(sp)
80013f44:	00060693          	mv	a3,a2
80013f48:	00058613          	mv	a2,a1
80013f4c:	00050593          	mv	a1,a0
80013f50:	80012537          	lui	a0,0x80012
80013f54:	02e12823          	sw	a4,48(sp)
80013f58:	58450513          	addi	a0,a0,1412 # 80012584 <__clzsi2+0xffffb0b0>
80013f5c:	02c10713          	addi	a4,sp,44
80013f60:	00112e23          	sw	ra,28(sp)
80013f64:	02f12a23          	sw	a5,52(sp)
80013f68:	03012c23          	sw	a6,56(sp)
80013f6c:	03112e23          	sw	a7,60(sp)
80013f70:	00e12623          	sw	a4,12(sp)
80013f74:	f48ff0ef          	jal	ra,800136bc <_vsnprintf>
80013f78:	01c12083          	lw	ra,28(sp)
80013f7c:	04010113          	addi	sp,sp,64
80013f80:	00008067          	ret

80013f84 <vprintf_>:
80013f84:	fe010113          	addi	sp,sp,-32
80013f88:	00050693          	mv	a3,a0
80013f8c:	80013537          	lui	a0,0x80013
80013f90:	00058713          	mv	a4,a1
80013f94:	fff00613          	li	a2,-1
80013f98:	00c10593          	addi	a1,sp,12
80013f9c:	b2450513          	addi	a0,a0,-1244 # 80012b24 <__clzsi2+0xffffb650>
80013fa0:	00112e23          	sw	ra,28(sp)
80013fa4:	f18ff0ef          	jal	ra,800136bc <_vsnprintf>
80013fa8:	01c12083          	lw	ra,28(sp)
80013fac:	02010113          	addi	sp,sp,32
80013fb0:	00008067          	ret

80013fb4 <vsnprintf_>:
80013fb4:	00068713          	mv	a4,a3
80013fb8:	00060693          	mv	a3,a2
80013fbc:	00058613          	mv	a2,a1
80013fc0:	00050593          	mv	a1,a0
80013fc4:	80012537          	lui	a0,0x80012
80013fc8:	58450513          	addi	a0,a0,1412 # 80012584 <__clzsi2+0xffffb0b0>
80013fcc:	ef0ff06f          	j	800136bc <_vsnprintf>

80013fd0 <fctprintf>:
80013fd0:	fc010113          	addi	sp,sp,-64
80013fd4:	00a12423          	sw	a0,8(sp)
80013fd8:	80013537          	lui	a0,0x80013
80013fdc:	02d12623          	sw	a3,44(sp)
80013fe0:	02e12823          	sw	a4,48(sp)
80013fe4:	00b12623          	sw	a1,12(sp)
80013fe8:	02c10713          	addi	a4,sp,44
80013fec:	00060693          	mv	a3,a2
80013ff0:	00810593          	addi	a1,sp,8
80013ff4:	fff00613          	li	a2,-1
80013ff8:	b3050513          	addi	a0,a0,-1232 # 80012b30 <__clzsi2+0xffffb65c>
80013ffc:	00112e23          	sw	ra,28(sp)
80014000:	02f12a23          	sw	a5,52(sp)
80014004:	03012c23          	sw	a6,56(sp)
80014008:	03112e23          	sw	a7,60(sp)
8001400c:	00e12223          	sw	a4,4(sp)
80014010:	eacff0ef          	jal	ra,800136bc <_vsnprintf>
80014014:	01c12083          	lw	ra,28(sp)
80014018:	04010113          	addi	sp,sp,64
8001401c:	00008067          	ret

80014020 <__divdi3>:
80014020:	fc010113          	addi	sp,sp,-64
80014024:	02812c23          	sw	s0,56(sp)
80014028:	03212823          	sw	s2,48(sp)
8001402c:	01712e23          	sw	s7,28(sp)
80014030:	02112e23          	sw	ra,60(sp)
80014034:	02912a23          	sw	s1,52(sp)
80014038:	03312623          	sw	s3,44(sp)
8001403c:	03412423          	sw	s4,40(sp)
80014040:	03512223          	sw	s5,36(sp)
80014044:	03612023          	sw	s6,32(sp)
80014048:	01812c23          	sw	s8,24(sp)
8001404c:	01912a23          	sw	s9,20(sp)
80014050:	01a12823          	sw	s10,16(sp)
80014054:	01b12623          	sw	s11,12(sp)
80014058:	00050b93          	mv	s7,a0
8001405c:	00058413          	mv	s0,a1
80014060:	00000913          	li	s2,0
80014064:	0005dc63          	bgez	a1,8001407c <__divdi3+0x5c>
80014068:	00a037b3          	snez	a5,a0
8001406c:	40b00433          	neg	s0,a1
80014070:	40f40433          	sub	s0,s0,a5
80014074:	40a00bb3          	neg	s7,a0
80014078:	fff00913          	li	s2,-1
8001407c:	0006dc63          	bgez	a3,80014094 <__divdi3+0x74>
80014080:	00c037b3          	snez	a5,a2
80014084:	40d00733          	neg	a4,a3
80014088:	fff94913          	not	s2,s2
8001408c:	40f706b3          	sub	a3,a4,a5
80014090:	40c00633          	neg	a2,a2
80014094:	00060993          	mv	s3,a2
80014098:	00068a93          	mv	s5,a3
8001409c:	000b8a13          	mv	s4,s7
800140a0:	00040c13          	mv	s8,s0
800140a4:	3a069263          	bnez	a3,80014448 <__divdi3+0x428>
800140a8:	800004b7          	lui	s1,0x80000
800140ac:	59848493          	addi	s1,s1,1432 # 80000598 <__clzsi2+0xfffe90c4>
800140b0:	12c47663          	bgeu	s0,a2,800141dc <__divdi3+0x1bc>
800140b4:	000107b7          	lui	a5,0x10
800140b8:	10f67863          	bgeu	a2,a5,800141c8 <__divdi3+0x1a8>
800140bc:	0ff00793          	li	a5,255
800140c0:	00c7b7b3          	sltu	a5,a5,a2
800140c4:	00379793          	slli	a5,a5,0x3
800140c8:	00f65733          	srl	a4,a2,a5
800140cc:	00e484b3          	add	s1,s1,a4
800140d0:	0004c703          	lbu	a4,0(s1)
800140d4:	02000693          	li	a3,32
800140d8:	00f707b3          	add	a5,a4,a5
800140dc:	40f68733          	sub	a4,a3,a5
800140e0:	00f68c63          	beq	a3,a5,800140f8 <__divdi3+0xd8>
800140e4:	00e41433          	sll	s0,s0,a4
800140e8:	00fbd7b3          	srl	a5,s7,a5
800140ec:	00e619b3          	sll	s3,a2,a4
800140f0:	0087ec33          	or	s8,a5,s0
800140f4:	00eb9a33          	sll	s4,s7,a4
800140f8:	0109da93          	srli	s5,s3,0x10
800140fc:	000a8593          	mv	a1,s5
80014100:	000c0513          	mv	a0,s8
80014104:	36c030ef          	jal	ra,80017470 <__umodsi3>
80014108:	00050493          	mv	s1,a0
8001410c:	000a8593          	mv	a1,s5
80014110:	01099b13          	slli	s6,s3,0x10
80014114:	000c0513          	mv	a0,s8
80014118:	310030ef          	jal	ra,80017428 <__udivsi3>
8001411c:	010b5b13          	srli	s6,s6,0x10
80014120:	00050413          	mv	s0,a0
80014124:	00050593          	mv	a1,a0
80014128:	000b0513          	mv	a0,s6
8001412c:	240030ef          	jal	ra,8001736c <__mulsi3>
80014130:	01049493          	slli	s1,s1,0x10
80014134:	010a5713          	srli	a4,s4,0x10
80014138:	00e4e733          	or	a4,s1,a4
8001413c:	00040b93          	mv	s7,s0
80014140:	00a77e63          	bgeu	a4,a0,8001415c <__divdi3+0x13c>
80014144:	01370733          	add	a4,a4,s3
80014148:	fff40b93          	addi	s7,s0,-1
8001414c:	01376863          	bltu	a4,s3,8001415c <__divdi3+0x13c>
80014150:	00a77663          	bgeu	a4,a0,8001415c <__divdi3+0x13c>
80014154:	ffe40b93          	addi	s7,s0,-2
80014158:	01370733          	add	a4,a4,s3
8001415c:	40a70433          	sub	s0,a4,a0
80014160:	000a8593          	mv	a1,s5
80014164:	00040513          	mv	a0,s0
80014168:	308030ef          	jal	ra,80017470 <__umodsi3>
8001416c:	00050493          	mv	s1,a0
80014170:	000a8593          	mv	a1,s5
80014174:	00040513          	mv	a0,s0
80014178:	2b0030ef          	jal	ra,80017428 <__udivsi3>
8001417c:	010a1a13          	slli	s4,s4,0x10
80014180:	00050413          	mv	s0,a0
80014184:	00050593          	mv	a1,a0
80014188:	01049493          	slli	s1,s1,0x10
8001418c:	000b0513          	mv	a0,s6
80014190:	010a5a13          	srli	s4,s4,0x10
80014194:	1d8030ef          	jal	ra,8001736c <__mulsi3>
80014198:	0144ea33          	or	s4,s1,s4
8001419c:	00040613          	mv	a2,s0
800141a0:	00aa7c63          	bgeu	s4,a0,800141b8 <__divdi3+0x198>
800141a4:	01498a33          	add	s4,s3,s4
800141a8:	fff40613          	addi	a2,s0,-1
800141ac:	013a6663          	bltu	s4,s3,800141b8 <__divdi3+0x198>
800141b0:	00aa7463          	bgeu	s4,a0,800141b8 <__divdi3+0x198>
800141b4:	ffe40613          	addi	a2,s0,-2
800141b8:	010b9793          	slli	a5,s7,0x10
800141bc:	00c7e7b3          	or	a5,a5,a2
800141c0:	00000a93          	li	s5,0
800141c4:	12c0006f          	j	800142f0 <__divdi3+0x2d0>
800141c8:	01000737          	lui	a4,0x1000
800141cc:	01000793          	li	a5,16
800141d0:	eee66ce3          	bltu	a2,a4,800140c8 <__divdi3+0xa8>
800141d4:	01800793          	li	a5,24
800141d8:	ef1ff06f          	j	800140c8 <__divdi3+0xa8>
800141dc:	00061a63          	bnez	a2,800141f0 <__divdi3+0x1d0>
800141e0:	00000593          	li	a1,0
800141e4:	00100513          	li	a0,1
800141e8:	240030ef          	jal	ra,80017428 <__udivsi3>
800141ec:	00050993          	mv	s3,a0
800141f0:	000107b7          	lui	a5,0x10
800141f4:	14f9fa63          	bgeu	s3,a5,80014348 <__divdi3+0x328>
800141f8:	0ff00793          	li	a5,255
800141fc:	0137f463          	bgeu	a5,s3,80014204 <__divdi3+0x1e4>
80014200:	00800a93          	li	s5,8
80014204:	0159d7b3          	srl	a5,s3,s5
80014208:	00f484b3          	add	s1,s1,a5
8001420c:	0004cb03          	lbu	s6,0(s1)
80014210:	02000713          	li	a4,32
80014214:	015b0b33          	add	s6,s6,s5
80014218:	416707b3          	sub	a5,a4,s6
8001421c:	15671063          	bne	a4,s6,8001435c <__divdi3+0x33c>
80014220:	41340433          	sub	s0,s0,s3
80014224:	00100a93          	li	s5,1
80014228:	0109db13          	srli	s6,s3,0x10
8001422c:	000b0593          	mv	a1,s6
80014230:	00040513          	mv	a0,s0
80014234:	23c030ef          	jal	ra,80017470 <__umodsi3>
80014238:	00050493          	mv	s1,a0
8001423c:	000b0593          	mv	a1,s6
80014240:	00040513          	mv	a0,s0
80014244:	01099b93          	slli	s7,s3,0x10
80014248:	1e0030ef          	jal	ra,80017428 <__udivsi3>
8001424c:	010bdb93          	srli	s7,s7,0x10
80014250:	00050413          	mv	s0,a0
80014254:	00050593          	mv	a1,a0
80014258:	000b8513          	mv	a0,s7
8001425c:	110030ef          	jal	ra,8001736c <__mulsi3>
80014260:	01049493          	slli	s1,s1,0x10
80014264:	010a5713          	srli	a4,s4,0x10
80014268:	00e4e733          	or	a4,s1,a4
8001426c:	00040c13          	mv	s8,s0
80014270:	00a77e63          	bgeu	a4,a0,8001428c <__divdi3+0x26c>
80014274:	01370733          	add	a4,a4,s3
80014278:	fff40c13          	addi	s8,s0,-1
8001427c:	01376863          	bltu	a4,s3,8001428c <__divdi3+0x26c>
80014280:	00a77663          	bgeu	a4,a0,8001428c <__divdi3+0x26c>
80014284:	ffe40c13          	addi	s8,s0,-2
80014288:	01370733          	add	a4,a4,s3
8001428c:	40a70433          	sub	s0,a4,a0
80014290:	000b0593          	mv	a1,s6
80014294:	00040513          	mv	a0,s0
80014298:	1d8030ef          	jal	ra,80017470 <__umodsi3>
8001429c:	00050493          	mv	s1,a0
800142a0:	000b0593          	mv	a1,s6
800142a4:	00040513          	mv	a0,s0
800142a8:	180030ef          	jal	ra,80017428 <__udivsi3>
800142ac:	010a1a13          	slli	s4,s4,0x10
800142b0:	00050413          	mv	s0,a0
800142b4:	00050593          	mv	a1,a0
800142b8:	01049493          	slli	s1,s1,0x10
800142bc:	000b8513          	mv	a0,s7
800142c0:	010a5a13          	srli	s4,s4,0x10
800142c4:	0a8030ef          	jal	ra,8001736c <__mulsi3>
800142c8:	0144ea33          	or	s4,s1,s4
800142cc:	00040613          	mv	a2,s0
800142d0:	00aa7c63          	bgeu	s4,a0,800142e8 <__divdi3+0x2c8>
800142d4:	01498a33          	add	s4,s3,s4
800142d8:	fff40613          	addi	a2,s0,-1
800142dc:	013a6663          	bltu	s4,s3,800142e8 <__divdi3+0x2c8>
800142e0:	00aa7463          	bgeu	s4,a0,800142e8 <__divdi3+0x2c8>
800142e4:	ffe40613          	addi	a2,s0,-2
800142e8:	010c1793          	slli	a5,s8,0x10
800142ec:	00c7e7b3          	or	a5,a5,a2
800142f0:	00078513          	mv	a0,a5
800142f4:	000a8593          	mv	a1,s5
800142f8:	00090a63          	beqz	s2,8001430c <__divdi3+0x2ec>
800142fc:	00f037b3          	snez	a5,a5
80014300:	41500733          	neg	a4,s5
80014304:	40f705b3          	sub	a1,a4,a5
80014308:	40a00533          	neg	a0,a0
8001430c:	03c12083          	lw	ra,60(sp)
80014310:	03812403          	lw	s0,56(sp)
80014314:	03412483          	lw	s1,52(sp)
80014318:	03012903          	lw	s2,48(sp)
8001431c:	02c12983          	lw	s3,44(sp)
80014320:	02812a03          	lw	s4,40(sp)
80014324:	02412a83          	lw	s5,36(sp)
80014328:	02012b03          	lw	s6,32(sp)
8001432c:	01c12b83          	lw	s7,28(sp)
80014330:	01812c03          	lw	s8,24(sp)
80014334:	01412c83          	lw	s9,20(sp)
80014338:	01012d03          	lw	s10,16(sp)
8001433c:	00c12d83          	lw	s11,12(sp)
80014340:	04010113          	addi	sp,sp,64
80014344:	00008067          	ret
80014348:	010007b7          	lui	a5,0x1000
8001434c:	01000a93          	li	s5,16
80014350:	eaf9eae3          	bltu	s3,a5,80014204 <__divdi3+0x1e4>
80014354:	01800a93          	li	s5,24
80014358:	eadff06f          	j	80014204 <__divdi3+0x1e4>
8001435c:	00f999b3          	sll	s3,s3,a5
80014360:	01645ab3          	srl	s5,s0,s6
80014364:	00f41433          	sll	s0,s0,a5
80014368:	016bdb33          	srl	s6,s7,s6
8001436c:	008b6b33          	or	s6,s6,s0
80014370:	0109d413          	srli	s0,s3,0x10
80014374:	00040593          	mv	a1,s0
80014378:	000a8513          	mv	a0,s5
8001437c:	00fb9a33          	sll	s4,s7,a5
80014380:	0f0030ef          	jal	ra,80017470 <__umodsi3>
80014384:	00050493          	mv	s1,a0
80014388:	00040593          	mv	a1,s0
8001438c:	000a8513          	mv	a0,s5
80014390:	01099b93          	slli	s7,s3,0x10
80014394:	094030ef          	jal	ra,80017428 <__udivsi3>
80014398:	010bdb93          	srli	s7,s7,0x10
8001439c:	00050a93          	mv	s5,a0
800143a0:	00050593          	mv	a1,a0
800143a4:	000b8513          	mv	a0,s7
800143a8:	7c5020ef          	jal	ra,8001736c <__mulsi3>
800143ac:	01049493          	slli	s1,s1,0x10
800143b0:	010b5793          	srli	a5,s6,0x10
800143b4:	00f4e7b3          	or	a5,s1,a5
800143b8:	000a8c13          	mv	s8,s5
800143bc:	00a7fe63          	bgeu	a5,a0,800143d8 <__divdi3+0x3b8>
800143c0:	013787b3          	add	a5,a5,s3
800143c4:	fffa8c13          	addi	s8,s5,-1
800143c8:	0137e863          	bltu	a5,s3,800143d8 <__divdi3+0x3b8>
800143cc:	00a7f663          	bgeu	a5,a0,800143d8 <__divdi3+0x3b8>
800143d0:	ffea8c13          	addi	s8,s5,-2
800143d4:	013787b3          	add	a5,a5,s3
800143d8:	40a78ab3          	sub	s5,a5,a0
800143dc:	00040593          	mv	a1,s0
800143e0:	000a8513          	mv	a0,s5
800143e4:	08c030ef          	jal	ra,80017470 <__umodsi3>
800143e8:	00040593          	mv	a1,s0
800143ec:	00050493          	mv	s1,a0
800143f0:	000a8513          	mv	a0,s5
800143f4:	034030ef          	jal	ra,80017428 <__udivsi3>
800143f8:	010b1413          	slli	s0,s6,0x10
800143fc:	00050c93          	mv	s9,a0
80014400:	00050593          	mv	a1,a0
80014404:	01049493          	slli	s1,s1,0x10
80014408:	000b8513          	mv	a0,s7
8001440c:	01045413          	srli	s0,s0,0x10
80014410:	75d020ef          	jal	ra,8001736c <__mulsi3>
80014414:	0084e433          	or	s0,s1,s0
80014418:	000c8a93          	mv	s5,s9
8001441c:	00a47e63          	bgeu	s0,a0,80014438 <__divdi3+0x418>
80014420:	01340433          	add	s0,s0,s3
80014424:	fffc8a93          	addi	s5,s9,-1
80014428:	01346863          	bltu	s0,s3,80014438 <__divdi3+0x418>
8001442c:	00a47663          	bgeu	s0,a0,80014438 <__divdi3+0x418>
80014430:	ffec8a93          	addi	s5,s9,-2
80014434:	01340433          	add	s0,s0,s3
80014438:	010c1593          	slli	a1,s8,0x10
8001443c:	40a40433          	sub	s0,s0,a0
80014440:	0155eab3          	or	s5,a1,s5
80014444:	de5ff06f          	j	80014228 <__divdi3+0x208>
80014448:	1ed46e63          	bltu	s0,a3,80014644 <__divdi3+0x624>
8001444c:	000107b7          	lui	a5,0x10
80014450:	04f6f463          	bgeu	a3,a5,80014498 <__divdi3+0x478>
80014454:	0ff00b13          	li	s6,255
80014458:	00db37b3          	sltu	a5,s6,a3
8001445c:	00379793          	slli	a5,a5,0x3
80014460:	80000737          	lui	a4,0x80000
80014464:	00f6d5b3          	srl	a1,a3,a5
80014468:	59870713          	addi	a4,a4,1432 # 80000598 <__clzsi2+0xfffe90c4>
8001446c:	00b70733          	add	a4,a4,a1
80014470:	00074b03          	lbu	s6,0(a4)
80014474:	00fb0b33          	add	s6,s6,a5
80014478:	02000793          	li	a5,32
8001447c:	41678ab3          	sub	s5,a5,s6
80014480:	03679663          	bne	a5,s6,800144ac <__divdi3+0x48c>
80014484:	00100793          	li	a5,1
80014488:	e686e4e3          	bltu	a3,s0,800142f0 <__divdi3+0x2d0>
8001448c:	00cbb7b3          	sltu	a5,s7,a2
80014490:	0017c793          	xori	a5,a5,1
80014494:	e5dff06f          	j	800142f0 <__divdi3+0x2d0>
80014498:	01000737          	lui	a4,0x1000
8001449c:	01000793          	li	a5,16
800144a0:	fce6e0e3          	bltu	a3,a4,80014460 <__divdi3+0x440>
800144a4:	01800793          	li	a5,24
800144a8:	fb9ff06f          	j	80014460 <__divdi3+0x440>
800144ac:	01665d33          	srl	s10,a2,s6
800144b0:	015696b3          	sll	a3,a3,s5
800144b4:	00dd6d33          	or	s10,s10,a3
800144b8:	016454b3          	srl	s1,s0,s6
800144bc:	010d5c13          	srli	s8,s10,0x10
800144c0:	000c0593          	mv	a1,s8
800144c4:	00048513          	mv	a0,s1
800144c8:	01561a33          	sll	s4,a2,s5
800144cc:	7a5020ef          	jal	ra,80017470 <__umodsi3>
800144d0:	00050993          	mv	s3,a0
800144d4:	000c0593          	mv	a1,s8
800144d8:	010d1c93          	slli	s9,s10,0x10
800144dc:	00048513          	mv	a0,s1
800144e0:	749020ef          	jal	ra,80017428 <__udivsi3>
800144e4:	01541433          	sll	s0,s0,s5
800144e8:	016bdb33          	srl	s6,s7,s6
800144ec:	010cdc93          	srli	s9,s9,0x10
800144f0:	008b6b33          	or	s6,s6,s0
800144f4:	00050593          	mv	a1,a0
800144f8:	00050413          	mv	s0,a0
800144fc:	000c8513          	mv	a0,s9
80014500:	66d020ef          	jal	ra,8001736c <__mulsi3>
80014504:	01099993          	slli	s3,s3,0x10
80014508:	010b5713          	srli	a4,s6,0x10
8001450c:	00e9e733          	or	a4,s3,a4
80014510:	00040d93          	mv	s11,s0
80014514:	00a77e63          	bgeu	a4,a0,80014530 <__divdi3+0x510>
80014518:	01a70733          	add	a4,a4,s10
8001451c:	fff40d93          	addi	s11,s0,-1
80014520:	01a76863          	bltu	a4,s10,80014530 <__divdi3+0x510>
80014524:	00a77663          	bgeu	a4,a0,80014530 <__divdi3+0x510>
80014528:	ffe40d93          	addi	s11,s0,-2
8001452c:	01a70733          	add	a4,a4,s10
80014530:	40a704b3          	sub	s1,a4,a0
80014534:	000c0593          	mv	a1,s8
80014538:	00048513          	mv	a0,s1
8001453c:	735020ef          	jal	ra,80017470 <__umodsi3>
80014540:	00050993          	mv	s3,a0
80014544:	000c0593          	mv	a1,s8
80014548:	00048513          	mv	a0,s1
8001454c:	6dd020ef          	jal	ra,80017428 <__udivsi3>
80014550:	010b1413          	slli	s0,s6,0x10
80014554:	00050493          	mv	s1,a0
80014558:	00050593          	mv	a1,a0
8001455c:	01099993          	slli	s3,s3,0x10
80014560:	000c8513          	mv	a0,s9
80014564:	01045413          	srli	s0,s0,0x10
80014568:	605020ef          	jal	ra,8001736c <__mulsi3>
8001456c:	0089e433          	or	s0,s3,s0
80014570:	00048613          	mv	a2,s1
80014574:	00a47e63          	bgeu	s0,a0,80014590 <__divdi3+0x570>
80014578:	01a40433          	add	s0,s0,s10
8001457c:	fff48613          	addi	a2,s1,-1
80014580:	01a46863          	bltu	s0,s10,80014590 <__divdi3+0x570>
80014584:	00a47663          	bgeu	s0,a0,80014590 <__divdi3+0x570>
80014588:	ffe48613          	addi	a2,s1,-2
8001458c:	01a40433          	add	s0,s0,s10
80014590:	010d9793          	slli	a5,s11,0x10
80014594:	00010e37          	lui	t3,0x10
80014598:	00c7e7b3          	or	a5,a5,a2
8001459c:	fffe0313          	addi	t1,t3,-1 # ffff <font6x8-0x7fff002d>
800145a0:	0067f8b3          	and	a7,a5,t1
800145a4:	006a7333          	and	t1,s4,t1
800145a8:	40a40433          	sub	s0,s0,a0
800145ac:	0107de93          	srli	t4,a5,0x10
800145b0:	010a5a13          	srli	s4,s4,0x10
800145b4:	00088513          	mv	a0,a7
800145b8:	00030593          	mv	a1,t1
800145bc:	5b1020ef          	jal	ra,8001736c <__mulsi3>
800145c0:	00050813          	mv	a6,a0
800145c4:	000a0593          	mv	a1,s4
800145c8:	00088513          	mv	a0,a7
800145cc:	5a1020ef          	jal	ra,8001736c <__mulsi3>
800145d0:	00050893          	mv	a7,a0
800145d4:	00030593          	mv	a1,t1
800145d8:	000e8513          	mv	a0,t4
800145dc:	591020ef          	jal	ra,8001736c <__mulsi3>
800145e0:	00050313          	mv	t1,a0
800145e4:	000a0593          	mv	a1,s4
800145e8:	000e8513          	mv	a0,t4
800145ec:	581020ef          	jal	ra,8001736c <__mulsi3>
800145f0:	01085713          	srli	a4,a6,0x10
800145f4:	006888b3          	add	a7,a7,t1
800145f8:	01170733          	add	a4,a4,a7
800145fc:	00050693          	mv	a3,a0
80014600:	00677463          	bgeu	a4,t1,80014608 <__divdi3+0x5e8>
80014604:	01c506b3          	add	a3,a0,t3
80014608:	01075513          	srli	a0,a4,0x10
8001460c:	00d506b3          	add	a3,a0,a3
80014610:	02d46663          	bltu	s0,a3,8001463c <__divdi3+0x61c>
80014614:	bad416e3          	bne	s0,a3,800141c0 <__divdi3+0x1a0>
80014618:	00010537          	lui	a0,0x10
8001461c:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80014620:	00a77733          	and	a4,a4,a0
80014624:	01071713          	slli	a4,a4,0x10
80014628:	00a87833          	and	a6,a6,a0
8001462c:	015b9bb3          	sll	s7,s7,s5
80014630:	01070733          	add	a4,a4,a6
80014634:	00000a93          	li	s5,0
80014638:	caebfce3          	bgeu	s7,a4,800142f0 <__divdi3+0x2d0>
8001463c:	fff78793          	addi	a5,a5,-1 # ffff <font6x8-0x7fff002d>
80014640:	b81ff06f          	j	800141c0 <__divdi3+0x1a0>
80014644:	00000a93          	li	s5,0
80014648:	00000793          	li	a5,0
8001464c:	ca5ff06f          	j	800142f0 <__divdi3+0x2d0>

80014650 <__udivdi3>:
80014650:	fd010113          	addi	sp,sp,-48
80014654:	02812423          	sw	s0,40(sp)
80014658:	01712623          	sw	s7,12(sp)
8001465c:	02112623          	sw	ra,44(sp)
80014660:	02912223          	sw	s1,36(sp)
80014664:	03212023          	sw	s2,32(sp)
80014668:	01312e23          	sw	s3,28(sp)
8001466c:	01412c23          	sw	s4,24(sp)
80014670:	01512a23          	sw	s5,20(sp)
80014674:	01612823          	sw	s6,16(sp)
80014678:	01812423          	sw	s8,8(sp)
8001467c:	01912223          	sw	s9,4(sp)
80014680:	00050b93          	mv	s7,a0
80014684:	00058413          	mv	s0,a1
80014688:	38069c63          	bnez	a3,80014a20 <__udivdi3+0x3d0>
8001468c:	800004b7          	lui	s1,0x80000
80014690:	00060913          	mv	s2,a2
80014694:	00050a13          	mv	s4,a0
80014698:	59848493          	addi	s1,s1,1432 # 80000598 <__clzsi2+0xfffe90c4>
8001469c:	12c5f863          	bgeu	a1,a2,800147cc <__udivdi3+0x17c>
800146a0:	000107b7          	lui	a5,0x10
800146a4:	00058c13          	mv	s8,a1
800146a8:	10f67863          	bgeu	a2,a5,800147b8 <__udivdi3+0x168>
800146ac:	0ff00713          	li	a4,255
800146b0:	00c73733          	sltu	a4,a4,a2
800146b4:	00371713          	slli	a4,a4,0x3
800146b8:	00e657b3          	srl	a5,a2,a4
800146bc:	00f484b3          	add	s1,s1,a5
800146c0:	0004c683          	lbu	a3,0(s1)
800146c4:	00e68733          	add	a4,a3,a4
800146c8:	02000693          	li	a3,32
800146cc:	40e687b3          	sub	a5,a3,a4
800146d0:	00e68c63          	beq	a3,a4,800146e8 <__udivdi3+0x98>
800146d4:	00f41433          	sll	s0,s0,a5
800146d8:	00ebd733          	srl	a4,s7,a4
800146dc:	00f61933          	sll	s2,a2,a5
800146e0:	00876c33          	or	s8,a4,s0
800146e4:	00fb9a33          	sll	s4,s7,a5
800146e8:	01095b13          	srli	s6,s2,0x10
800146ec:	000b0593          	mv	a1,s6
800146f0:	000c0513          	mv	a0,s8
800146f4:	57d020ef          	jal	ra,80017470 <__umodsi3>
800146f8:	00050493          	mv	s1,a0
800146fc:	000b0593          	mv	a1,s6
80014700:	01091a93          	slli	s5,s2,0x10
80014704:	000c0513          	mv	a0,s8
80014708:	521020ef          	jal	ra,80017428 <__udivsi3>
8001470c:	010ada93          	srli	s5,s5,0x10
80014710:	00050413          	mv	s0,a0
80014714:	00050593          	mv	a1,a0
80014718:	000a8513          	mv	a0,s5
8001471c:	451020ef          	jal	ra,8001736c <__mulsi3>
80014720:	01049493          	slli	s1,s1,0x10
80014724:	010a5713          	srli	a4,s4,0x10
80014728:	00e4e733          	or	a4,s1,a4
8001472c:	00040993          	mv	s3,s0
80014730:	00a77e63          	bgeu	a4,a0,8001474c <__udivdi3+0xfc>
80014734:	01270733          	add	a4,a4,s2
80014738:	fff40993          	addi	s3,s0,-1
8001473c:	01276863          	bltu	a4,s2,8001474c <__udivdi3+0xfc>
80014740:	00a77663          	bgeu	a4,a0,8001474c <__udivdi3+0xfc>
80014744:	ffe40993          	addi	s3,s0,-2
80014748:	01270733          	add	a4,a4,s2
8001474c:	40a70433          	sub	s0,a4,a0
80014750:	000b0593          	mv	a1,s6
80014754:	00040513          	mv	a0,s0
80014758:	519020ef          	jal	ra,80017470 <__umodsi3>
8001475c:	00050493          	mv	s1,a0
80014760:	000b0593          	mv	a1,s6
80014764:	00040513          	mv	a0,s0
80014768:	4c1020ef          	jal	ra,80017428 <__udivsi3>
8001476c:	010a1a13          	slli	s4,s4,0x10
80014770:	00050413          	mv	s0,a0
80014774:	00050593          	mv	a1,a0
80014778:	01049493          	slli	s1,s1,0x10
8001477c:	000a8513          	mv	a0,s5
80014780:	010a5a13          	srli	s4,s4,0x10
80014784:	3e9020ef          	jal	ra,8001736c <__mulsi3>
80014788:	0144ea33          	or	s4,s1,s4
8001478c:	00040613          	mv	a2,s0
80014790:	00aa7c63          	bgeu	s4,a0,800147a8 <__udivdi3+0x158>
80014794:	01490a33          	add	s4,s2,s4
80014798:	fff40613          	addi	a2,s0,-1
8001479c:	012a6663          	bltu	s4,s2,800147a8 <__udivdi3+0x158>
800147a0:	00aa7463          	bgeu	s4,a0,800147a8 <__udivdi3+0x158>
800147a4:	ffe40613          	addi	a2,s0,-2
800147a8:	01099793          	slli	a5,s3,0x10
800147ac:	00c7e7b3          	or	a5,a5,a2
800147b0:	00000493          	li	s1,0
800147b4:	1300006f          	j	800148e4 <__udivdi3+0x294>
800147b8:	010007b7          	lui	a5,0x1000
800147bc:	01000713          	li	a4,16
800147c0:	eef66ce3          	bltu	a2,a5,800146b8 <__udivdi3+0x68>
800147c4:	01800713          	li	a4,24
800147c8:	ef1ff06f          	j	800146b8 <__udivdi3+0x68>
800147cc:	00068993          	mv	s3,a3
800147d0:	00061a63          	bnez	a2,800147e4 <__udivdi3+0x194>
800147d4:	00000593          	li	a1,0
800147d8:	00100513          	li	a0,1
800147dc:	44d020ef          	jal	ra,80017428 <__udivsi3>
800147e0:	00050913          	mv	s2,a0
800147e4:	000107b7          	lui	a5,0x10
800147e8:	12f97c63          	bgeu	s2,a5,80014920 <__udivdi3+0x2d0>
800147ec:	0ff00793          	li	a5,255
800147f0:	0127f463          	bgeu	a5,s2,800147f8 <__udivdi3+0x1a8>
800147f4:	00800993          	li	s3,8
800147f8:	013957b3          	srl	a5,s2,s3
800147fc:	00f484b3          	add	s1,s1,a5
80014800:	0004c783          	lbu	a5,0(s1)
80014804:	02000693          	li	a3,32
80014808:	013787b3          	add	a5,a5,s3
8001480c:	40f68733          	sub	a4,a3,a5
80014810:	12f69263          	bne	a3,a5,80014934 <__udivdi3+0x2e4>
80014814:	41240433          	sub	s0,s0,s2
80014818:	00100493          	li	s1,1
8001481c:	01095a93          	srli	s5,s2,0x10
80014820:	000a8593          	mv	a1,s5
80014824:	00040513          	mv	a0,s0
80014828:	449020ef          	jal	ra,80017470 <__umodsi3>
8001482c:	00050993          	mv	s3,a0
80014830:	000a8593          	mv	a1,s5
80014834:	00040513          	mv	a0,s0
80014838:	01091b13          	slli	s6,s2,0x10
8001483c:	3ed020ef          	jal	ra,80017428 <__udivsi3>
80014840:	010b5b13          	srli	s6,s6,0x10
80014844:	00050413          	mv	s0,a0
80014848:	00050593          	mv	a1,a0
8001484c:	000b0513          	mv	a0,s6
80014850:	31d020ef          	jal	ra,8001736c <__mulsi3>
80014854:	01099993          	slli	s3,s3,0x10
80014858:	010a5713          	srli	a4,s4,0x10
8001485c:	00e9e733          	or	a4,s3,a4
80014860:	00040b93          	mv	s7,s0
80014864:	00a77e63          	bgeu	a4,a0,80014880 <__udivdi3+0x230>
80014868:	01270733          	add	a4,a4,s2
8001486c:	fff40b93          	addi	s7,s0,-1
80014870:	01276863          	bltu	a4,s2,80014880 <__udivdi3+0x230>
80014874:	00a77663          	bgeu	a4,a0,80014880 <__udivdi3+0x230>
80014878:	ffe40b93          	addi	s7,s0,-2
8001487c:	01270733          	add	a4,a4,s2
80014880:	40a70433          	sub	s0,a4,a0
80014884:	000a8593          	mv	a1,s5
80014888:	00040513          	mv	a0,s0
8001488c:	3e5020ef          	jal	ra,80017470 <__umodsi3>
80014890:	00050993          	mv	s3,a0
80014894:	000a8593          	mv	a1,s5
80014898:	00040513          	mv	a0,s0
8001489c:	38d020ef          	jal	ra,80017428 <__udivsi3>
800148a0:	010a1a13          	slli	s4,s4,0x10
800148a4:	00050413          	mv	s0,a0
800148a8:	00050593          	mv	a1,a0
800148ac:	01099993          	slli	s3,s3,0x10
800148b0:	000b0513          	mv	a0,s6
800148b4:	010a5a13          	srli	s4,s4,0x10
800148b8:	2b5020ef          	jal	ra,8001736c <__mulsi3>
800148bc:	0149ea33          	or	s4,s3,s4
800148c0:	00040613          	mv	a2,s0
800148c4:	00aa7c63          	bgeu	s4,a0,800148dc <__udivdi3+0x28c>
800148c8:	01490a33          	add	s4,s2,s4
800148cc:	fff40613          	addi	a2,s0,-1
800148d0:	012a6663          	bltu	s4,s2,800148dc <__udivdi3+0x28c>
800148d4:	00aa7463          	bgeu	s4,a0,800148dc <__udivdi3+0x28c>
800148d8:	ffe40613          	addi	a2,s0,-2
800148dc:	010b9793          	slli	a5,s7,0x10
800148e0:	00c7e7b3          	or	a5,a5,a2
800148e4:	00078513          	mv	a0,a5
800148e8:	00048593          	mv	a1,s1
800148ec:	02c12083          	lw	ra,44(sp)
800148f0:	02812403          	lw	s0,40(sp)
800148f4:	02412483          	lw	s1,36(sp)
800148f8:	02012903          	lw	s2,32(sp)
800148fc:	01c12983          	lw	s3,28(sp)
80014900:	01812a03          	lw	s4,24(sp)
80014904:	01412a83          	lw	s5,20(sp)
80014908:	01012b03          	lw	s6,16(sp)
8001490c:	00c12b83          	lw	s7,12(sp)
80014910:	00812c03          	lw	s8,8(sp)
80014914:	00412c83          	lw	s9,4(sp)
80014918:	03010113          	addi	sp,sp,48
8001491c:	00008067          	ret
80014920:	010007b7          	lui	a5,0x1000
80014924:	01000993          	li	s3,16
80014928:	ecf968e3          	bltu	s2,a5,800147f8 <__udivdi3+0x1a8>
8001492c:	01800993          	li	s3,24
80014930:	ec9ff06f          	j	800147f8 <__udivdi3+0x1a8>
80014934:	00e91933          	sll	s2,s2,a4
80014938:	00f459b3          	srl	s3,s0,a5
8001493c:	00fbd7b3          	srl	a5,s7,a5
80014940:	00e41433          	sll	s0,s0,a4
80014944:	0087eab3          	or	s5,a5,s0
80014948:	01095413          	srli	s0,s2,0x10
8001494c:	00040593          	mv	a1,s0
80014950:	00098513          	mv	a0,s3
80014954:	00eb9a33          	sll	s4,s7,a4
80014958:	319020ef          	jal	ra,80017470 <__umodsi3>
8001495c:	00050493          	mv	s1,a0
80014960:	00040593          	mv	a1,s0
80014964:	00098513          	mv	a0,s3
80014968:	01091b13          	slli	s6,s2,0x10
8001496c:	2bd020ef          	jal	ra,80017428 <__udivsi3>
80014970:	010b5b13          	srli	s6,s6,0x10
80014974:	00050993          	mv	s3,a0
80014978:	00050593          	mv	a1,a0
8001497c:	000b0513          	mv	a0,s6
80014980:	1ed020ef          	jal	ra,8001736c <__mulsi3>
80014984:	01049493          	slli	s1,s1,0x10
80014988:	010ad793          	srli	a5,s5,0x10
8001498c:	00f4e7b3          	or	a5,s1,a5
80014990:	00098b93          	mv	s7,s3
80014994:	00a7fe63          	bgeu	a5,a0,800149b0 <__udivdi3+0x360>
80014998:	012787b3          	add	a5,a5,s2
8001499c:	fff98b93          	addi	s7,s3,-1
800149a0:	0127e863          	bltu	a5,s2,800149b0 <__udivdi3+0x360>
800149a4:	00a7f663          	bgeu	a5,a0,800149b0 <__udivdi3+0x360>
800149a8:	ffe98b93          	addi	s7,s3,-2
800149ac:	012787b3          	add	a5,a5,s2
800149b0:	40a789b3          	sub	s3,a5,a0
800149b4:	00040593          	mv	a1,s0
800149b8:	00098513          	mv	a0,s3
800149bc:	2b5020ef          	jal	ra,80017470 <__umodsi3>
800149c0:	00040593          	mv	a1,s0
800149c4:	00050493          	mv	s1,a0
800149c8:	00098513          	mv	a0,s3
800149cc:	25d020ef          	jal	ra,80017428 <__udivsi3>
800149d0:	010a9413          	slli	s0,s5,0x10
800149d4:	00050993          	mv	s3,a0
800149d8:	00050593          	mv	a1,a0
800149dc:	01049493          	slli	s1,s1,0x10
800149e0:	000b0513          	mv	a0,s6
800149e4:	01045413          	srli	s0,s0,0x10
800149e8:	185020ef          	jal	ra,8001736c <__mulsi3>
800149ec:	0084e433          	or	s0,s1,s0
800149f0:	00098793          	mv	a5,s3
800149f4:	00a47e63          	bgeu	s0,a0,80014a10 <__udivdi3+0x3c0>
800149f8:	01240433          	add	s0,s0,s2
800149fc:	fff98793          	addi	a5,s3,-1
80014a00:	01246863          	bltu	s0,s2,80014a10 <__udivdi3+0x3c0>
80014a04:	00a47663          	bgeu	s0,a0,80014a10 <__udivdi3+0x3c0>
80014a08:	ffe98793          	addi	a5,s3,-2
80014a0c:	01240433          	add	s0,s0,s2
80014a10:	010b9493          	slli	s1,s7,0x10
80014a14:	40a40433          	sub	s0,s0,a0
80014a18:	00f4e4b3          	or	s1,s1,a5
80014a1c:	e01ff06f          	j	8001481c <__udivdi3+0x1cc>
80014a20:	1ed5ee63          	bltu	a1,a3,80014c1c <__udivdi3+0x5cc>
80014a24:	000107b7          	lui	a5,0x10
80014a28:	04f6f463          	bgeu	a3,a5,80014a70 <__udivdi3+0x420>
80014a2c:	0ff00a93          	li	s5,255
80014a30:	00dab733          	sltu	a4,s5,a3
80014a34:	00371713          	slli	a4,a4,0x3
80014a38:	800007b7          	lui	a5,0x80000
80014a3c:	00e6d5b3          	srl	a1,a3,a4
80014a40:	59878793          	addi	a5,a5,1432 # 80000598 <__clzsi2+0xfffe90c4>
80014a44:	00b787b3          	add	a5,a5,a1
80014a48:	0007ca83          	lbu	s5,0(a5)
80014a4c:	02000793          	li	a5,32
80014a50:	00ea8ab3          	add	s5,s5,a4
80014a54:	415784b3          	sub	s1,a5,s5
80014a58:	03579663          	bne	a5,s5,80014a84 <__udivdi3+0x434>
80014a5c:	00100793          	li	a5,1
80014a60:	e886e2e3          	bltu	a3,s0,800148e4 <__udivdi3+0x294>
80014a64:	00cbb7b3          	sltu	a5,s7,a2
80014a68:	0017c793          	xori	a5,a5,1
80014a6c:	e79ff06f          	j	800148e4 <__udivdi3+0x294>
80014a70:	010007b7          	lui	a5,0x1000
80014a74:	01000713          	li	a4,16
80014a78:	fcf6e0e3          	bltu	a3,a5,80014a38 <__udivdi3+0x3e8>
80014a7c:	01800713          	li	a4,24
80014a80:	fb9ff06f          	j	80014a38 <__udivdi3+0x3e8>
80014a84:	01565cb3          	srl	s9,a2,s5
80014a88:	009696b3          	sll	a3,a3,s1
80014a8c:	00dcecb3          	or	s9,s9,a3
80014a90:	015459b3          	srl	s3,s0,s5
80014a94:	00941433          	sll	s0,s0,s1
80014a98:	015bdab3          	srl	s5,s7,s5
80014a9c:	008aeab3          	or	s5,s5,s0
80014aa0:	010cd413          	srli	s0,s9,0x10
80014aa4:	00040593          	mv	a1,s0
80014aa8:	00098513          	mv	a0,s3
80014aac:	00961933          	sll	s2,a2,s1
80014ab0:	1c1020ef          	jal	ra,80017470 <__umodsi3>
80014ab4:	00050a13          	mv	s4,a0
80014ab8:	00040593          	mv	a1,s0
80014abc:	00098513          	mv	a0,s3
80014ac0:	010c9b13          	slli	s6,s9,0x10
80014ac4:	165020ef          	jal	ra,80017428 <__udivsi3>
80014ac8:	010b5b13          	srli	s6,s6,0x10
80014acc:	00050993          	mv	s3,a0
80014ad0:	00050593          	mv	a1,a0
80014ad4:	000b0513          	mv	a0,s6
80014ad8:	095020ef          	jal	ra,8001736c <__mulsi3>
80014adc:	010a1a13          	slli	s4,s4,0x10
80014ae0:	010ad713          	srli	a4,s5,0x10
80014ae4:	00ea6733          	or	a4,s4,a4
80014ae8:	00098c13          	mv	s8,s3
80014aec:	00a77e63          	bgeu	a4,a0,80014b08 <__udivdi3+0x4b8>
80014af0:	01970733          	add	a4,a4,s9
80014af4:	fff98c13          	addi	s8,s3,-1
80014af8:	01976863          	bltu	a4,s9,80014b08 <__udivdi3+0x4b8>
80014afc:	00a77663          	bgeu	a4,a0,80014b08 <__udivdi3+0x4b8>
80014b00:	ffe98c13          	addi	s8,s3,-2
80014b04:	01970733          	add	a4,a4,s9
80014b08:	40a709b3          	sub	s3,a4,a0
80014b0c:	00040593          	mv	a1,s0
80014b10:	00098513          	mv	a0,s3
80014b14:	15d020ef          	jal	ra,80017470 <__umodsi3>
80014b18:	00040593          	mv	a1,s0
80014b1c:	00050a13          	mv	s4,a0
80014b20:	00098513          	mv	a0,s3
80014b24:	105020ef          	jal	ra,80017428 <__udivsi3>
80014b28:	010a9413          	slli	s0,s5,0x10
80014b2c:	00050993          	mv	s3,a0
80014b30:	00050593          	mv	a1,a0
80014b34:	010a1a13          	slli	s4,s4,0x10
80014b38:	000b0513          	mv	a0,s6
80014b3c:	01045413          	srli	s0,s0,0x10
80014b40:	02d020ef          	jal	ra,8001736c <__mulsi3>
80014b44:	008a6433          	or	s0,s4,s0
80014b48:	00098613          	mv	a2,s3
80014b4c:	00a47e63          	bgeu	s0,a0,80014b68 <__udivdi3+0x518>
80014b50:	01940433          	add	s0,s0,s9
80014b54:	fff98613          	addi	a2,s3,-1
80014b58:	01946863          	bltu	s0,s9,80014b68 <__udivdi3+0x518>
80014b5c:	00a47663          	bgeu	s0,a0,80014b68 <__udivdi3+0x518>
80014b60:	ffe98613          	addi	a2,s3,-2
80014b64:	01940433          	add	s0,s0,s9
80014b68:	010c1793          	slli	a5,s8,0x10
80014b6c:	00010e37          	lui	t3,0x10
80014b70:	00c7e7b3          	or	a5,a5,a2
80014b74:	fffe0313          	addi	t1,t3,-1 # ffff <font6x8-0x7fff002d>
80014b78:	0067f8b3          	and	a7,a5,t1
80014b7c:	00697333          	and	t1,s2,t1
80014b80:	40a40433          	sub	s0,s0,a0
80014b84:	0107de93          	srli	t4,a5,0x10
80014b88:	01095913          	srli	s2,s2,0x10
80014b8c:	00088513          	mv	a0,a7
80014b90:	00030593          	mv	a1,t1
80014b94:	7d8020ef          	jal	ra,8001736c <__mulsi3>
80014b98:	00050813          	mv	a6,a0
80014b9c:	00090593          	mv	a1,s2
80014ba0:	00088513          	mv	a0,a7
80014ba4:	7c8020ef          	jal	ra,8001736c <__mulsi3>
80014ba8:	00050893          	mv	a7,a0
80014bac:	00030593          	mv	a1,t1
80014bb0:	000e8513          	mv	a0,t4
80014bb4:	7b8020ef          	jal	ra,8001736c <__mulsi3>
80014bb8:	00050313          	mv	t1,a0
80014bbc:	00090593          	mv	a1,s2
80014bc0:	000e8513          	mv	a0,t4
80014bc4:	7a8020ef          	jal	ra,8001736c <__mulsi3>
80014bc8:	01085713          	srli	a4,a6,0x10
80014bcc:	006888b3          	add	a7,a7,t1
80014bd0:	01170733          	add	a4,a4,a7
80014bd4:	00050693          	mv	a3,a0
80014bd8:	00677463          	bgeu	a4,t1,80014be0 <__udivdi3+0x590>
80014bdc:	01c506b3          	add	a3,a0,t3
80014be0:	01075513          	srli	a0,a4,0x10
80014be4:	00d506b3          	add	a3,a0,a3
80014be8:	02d46663          	bltu	s0,a3,80014c14 <__udivdi3+0x5c4>
80014bec:	bcd412e3          	bne	s0,a3,800147b0 <__udivdi3+0x160>
80014bf0:	00010537          	lui	a0,0x10
80014bf4:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80014bf8:	00a77733          	and	a4,a4,a0
80014bfc:	01071713          	slli	a4,a4,0x10
80014c00:	00a87833          	and	a6,a6,a0
80014c04:	009b9bb3          	sll	s7,s7,s1
80014c08:	01070733          	add	a4,a4,a6
80014c0c:	00000493          	li	s1,0
80014c10:	ccebfae3          	bgeu	s7,a4,800148e4 <__udivdi3+0x294>
80014c14:	fff78793          	addi	a5,a5,-1 # ffffff <font6x8-0x7f00002d>
80014c18:	b99ff06f          	j	800147b0 <__udivdi3+0x160>
80014c1c:	00000493          	li	s1,0
80014c20:	00000793          	li	a5,0
80014c24:	cc1ff06f          	j	800148e4 <__udivdi3+0x294>

80014c28 <__umoddi3>:
80014c28:	fd010113          	addi	sp,sp,-48
80014c2c:	02812423          	sw	s0,40(sp)
80014c30:	02912223          	sw	s1,36(sp)
80014c34:	03212023          	sw	s2,32(sp)
80014c38:	01612823          	sw	s6,16(sp)
80014c3c:	02112623          	sw	ra,44(sp)
80014c40:	01312e23          	sw	s3,28(sp)
80014c44:	01412c23          	sw	s4,24(sp)
80014c48:	01512a23          	sw	s5,20(sp)
80014c4c:	01712623          	sw	s7,12(sp)
80014c50:	01812423          	sw	s8,8(sp)
80014c54:	01912223          	sw	s9,4(sp)
80014c58:	01a12023          	sw	s10,0(sp)
80014c5c:	00050913          	mv	s2,a0
80014c60:	00058b13          	mv	s6,a1
80014c64:	00050413          	mv	s0,a0
80014c68:	00058493          	mv	s1,a1
80014c6c:	26069c63          	bnez	a3,80014ee4 <__umoddi3+0x2bc>
80014c70:	80000ab7          	lui	s5,0x80000
80014c74:	00060a13          	mv	s4,a2
80014c78:	00068993          	mv	s3,a3
80014c7c:	598a8a93          	addi	s5,s5,1432 # 80000598 <__clzsi2+0xfffe90c4>
80014c80:	14c5f263          	bgeu	a1,a2,80014dc4 <__umoddi3+0x19c>
80014c84:	000107b7          	lui	a5,0x10
80014c88:	12f67463          	bgeu	a2,a5,80014db0 <__umoddi3+0x188>
80014c8c:	0ff00793          	li	a5,255
80014c90:	00c7f463          	bgeu	a5,a2,80014c98 <__umoddi3+0x70>
80014c94:	00800993          	li	s3,8
80014c98:	013657b3          	srl	a5,a2,s3
80014c9c:	00fa8ab3          	add	s5,s5,a5
80014ca0:	000ac783          	lbu	a5,0(s5)
80014ca4:	02000713          	li	a4,32
80014ca8:	013787b3          	add	a5,a5,s3
80014cac:	40f709b3          	sub	s3,a4,a5
80014cb0:	00f70c63          	beq	a4,a5,80014cc8 <__umoddi3+0xa0>
80014cb4:	013b15b3          	sll	a1,s6,s3
80014cb8:	00f957b3          	srl	a5,s2,a5
80014cbc:	01361a33          	sll	s4,a2,s3
80014cc0:	00b7e4b3          	or	s1,a5,a1
80014cc4:	01391433          	sll	s0,s2,s3
80014cc8:	010a5a93          	srli	s5,s4,0x10
80014ccc:	000a8593          	mv	a1,s5
80014cd0:	00048513          	mv	a0,s1
80014cd4:	79c020ef          	jal	ra,80017470 <__umodsi3>
80014cd8:	00050913          	mv	s2,a0
80014cdc:	000a8593          	mv	a1,s5
80014ce0:	010a1b13          	slli	s6,s4,0x10
80014ce4:	00048513          	mv	a0,s1
80014ce8:	740020ef          	jal	ra,80017428 <__udivsi3>
80014cec:	010b5b13          	srli	s6,s6,0x10
80014cf0:	00050593          	mv	a1,a0
80014cf4:	000b0513          	mv	a0,s6
80014cf8:	674020ef          	jal	ra,8001736c <__mulsi3>
80014cfc:	01091913          	slli	s2,s2,0x10
80014d00:	01045793          	srli	a5,s0,0x10
80014d04:	00f967b3          	or	a5,s2,a5
80014d08:	00a7fa63          	bgeu	a5,a0,80014d1c <__umoddi3+0xf4>
80014d0c:	014787b3          	add	a5,a5,s4
80014d10:	0147e663          	bltu	a5,s4,80014d1c <__umoddi3+0xf4>
80014d14:	00a7f463          	bgeu	a5,a0,80014d1c <__umoddi3+0xf4>
80014d18:	014787b3          	add	a5,a5,s4
80014d1c:	40a784b3          	sub	s1,a5,a0
80014d20:	000a8593          	mv	a1,s5
80014d24:	00048513          	mv	a0,s1
80014d28:	748020ef          	jal	ra,80017470 <__umodsi3>
80014d2c:	00050913          	mv	s2,a0
80014d30:	000a8593          	mv	a1,s5
80014d34:	00048513          	mv	a0,s1
80014d38:	6f0020ef          	jal	ra,80017428 <__udivsi3>
80014d3c:	01041413          	slli	s0,s0,0x10
80014d40:	00050593          	mv	a1,a0
80014d44:	01091913          	slli	s2,s2,0x10
80014d48:	000b0513          	mv	a0,s6
80014d4c:	01045413          	srli	s0,s0,0x10
80014d50:	61c020ef          	jal	ra,8001736c <__mulsi3>
80014d54:	00896433          	or	s0,s2,s0
80014d58:	00a47a63          	bgeu	s0,a0,80014d6c <__umoddi3+0x144>
80014d5c:	01440433          	add	s0,s0,s4
80014d60:	01446663          	bltu	s0,s4,80014d6c <__umoddi3+0x144>
80014d64:	00a47463          	bgeu	s0,a0,80014d6c <__umoddi3+0x144>
80014d68:	01440433          	add	s0,s0,s4
80014d6c:	40a40433          	sub	s0,s0,a0
80014d70:	01345533          	srl	a0,s0,s3
80014d74:	00000593          	li	a1,0
80014d78:	02c12083          	lw	ra,44(sp)
80014d7c:	02812403          	lw	s0,40(sp)
80014d80:	02412483          	lw	s1,36(sp)
80014d84:	02012903          	lw	s2,32(sp)
80014d88:	01c12983          	lw	s3,28(sp)
80014d8c:	01812a03          	lw	s4,24(sp)
80014d90:	01412a83          	lw	s5,20(sp)
80014d94:	01012b03          	lw	s6,16(sp)
80014d98:	00c12b83          	lw	s7,12(sp)
80014d9c:	00812c03          	lw	s8,8(sp)
80014da0:	00412c83          	lw	s9,4(sp)
80014da4:	00012d03          	lw	s10,0(sp)
80014da8:	03010113          	addi	sp,sp,48
80014dac:	00008067          	ret
80014db0:	010007b7          	lui	a5,0x1000
80014db4:	01000993          	li	s3,16
80014db8:	eef660e3          	bltu	a2,a5,80014c98 <__umoddi3+0x70>
80014dbc:	01800993          	li	s3,24
80014dc0:	ed9ff06f          	j	80014c98 <__umoddi3+0x70>
80014dc4:	00061a63          	bnez	a2,80014dd8 <__umoddi3+0x1b0>
80014dc8:	00000593          	li	a1,0
80014dcc:	00100513          	li	a0,1
80014dd0:	658020ef          	jal	ra,80017428 <__udivsi3>
80014dd4:	00050a13          	mv	s4,a0
80014dd8:	000107b7          	lui	a5,0x10
80014ddc:	0efa7a63          	bgeu	s4,a5,80014ed0 <__umoddi3+0x2a8>
80014de0:	0ff00793          	li	a5,255
80014de4:	0147f463          	bgeu	a5,s4,80014dec <__umoddi3+0x1c4>
80014de8:	00800993          	li	s3,8
80014dec:	013a57b3          	srl	a5,s4,s3
80014df0:	00fa8ab3          	add	s5,s5,a5
80014df4:	000ac783          	lbu	a5,0(s5)
80014df8:	02000713          	li	a4,32
80014dfc:	414b04b3          	sub	s1,s6,s4
80014e00:	013787b3          	add	a5,a5,s3
80014e04:	40f709b3          	sub	s3,a4,a5
80014e08:	ecf700e3          	beq	a4,a5,80014cc8 <__umoddi3+0xa0>
80014e0c:	013a1a33          	sll	s4,s4,s3
80014e10:	00fb5ab3          	srl	s5,s6,a5
80014e14:	013b15b3          	sll	a1,s6,s3
80014e18:	00f957b3          	srl	a5,s2,a5
80014e1c:	010a5493          	srli	s1,s4,0x10
80014e20:	00b7eb33          	or	s6,a5,a1
80014e24:	000a8513          	mv	a0,s5
80014e28:	00048593          	mv	a1,s1
80014e2c:	644020ef          	jal	ra,80017470 <__umodsi3>
80014e30:	00048593          	mv	a1,s1
80014e34:	01391433          	sll	s0,s2,s3
80014e38:	010a1b93          	slli	s7,s4,0x10
80014e3c:	00050913          	mv	s2,a0
80014e40:	000a8513          	mv	a0,s5
80014e44:	5e4020ef          	jal	ra,80017428 <__udivsi3>
80014e48:	010bdb93          	srli	s7,s7,0x10
80014e4c:	00050593          	mv	a1,a0
80014e50:	000b8513          	mv	a0,s7
80014e54:	518020ef          	jal	ra,8001736c <__mulsi3>
80014e58:	01091913          	slli	s2,s2,0x10
80014e5c:	010b5793          	srli	a5,s6,0x10
80014e60:	00f967b3          	or	a5,s2,a5
80014e64:	00a7fa63          	bgeu	a5,a0,80014e78 <__umoddi3+0x250>
80014e68:	014787b3          	add	a5,a5,s4
80014e6c:	0147e663          	bltu	a5,s4,80014e78 <__umoddi3+0x250>
80014e70:	00a7f463          	bgeu	a5,a0,80014e78 <__umoddi3+0x250>
80014e74:	014787b3          	add	a5,a5,s4
80014e78:	40a78ab3          	sub	s5,a5,a0
80014e7c:	00048593          	mv	a1,s1
80014e80:	000a8513          	mv	a0,s5
80014e84:	5ec020ef          	jal	ra,80017470 <__umodsi3>
80014e88:	00050913          	mv	s2,a0
80014e8c:	00048593          	mv	a1,s1
80014e90:	000a8513          	mv	a0,s5
80014e94:	594020ef          	jal	ra,80017428 <__udivsi3>
80014e98:	00050593          	mv	a1,a0
80014e9c:	000b8513          	mv	a0,s7
80014ea0:	4cc020ef          	jal	ra,8001736c <__mulsi3>
80014ea4:	010b1593          	slli	a1,s6,0x10
80014ea8:	01091913          	slli	s2,s2,0x10
80014eac:	0105d593          	srli	a1,a1,0x10
80014eb0:	00b965b3          	or	a1,s2,a1
80014eb4:	00a5fa63          	bgeu	a1,a0,80014ec8 <__umoddi3+0x2a0>
80014eb8:	014585b3          	add	a1,a1,s4
80014ebc:	0145e663          	bltu	a1,s4,80014ec8 <__umoddi3+0x2a0>
80014ec0:	00a5f463          	bgeu	a1,a0,80014ec8 <__umoddi3+0x2a0>
80014ec4:	014585b3          	add	a1,a1,s4
80014ec8:	40a584b3          	sub	s1,a1,a0
80014ecc:	dfdff06f          	j	80014cc8 <__umoddi3+0xa0>
80014ed0:	010007b7          	lui	a5,0x1000
80014ed4:	01000993          	li	s3,16
80014ed8:	f0fa6ae3          	bltu	s4,a5,80014dec <__umoddi3+0x1c4>
80014edc:	01800993          	li	s3,24
80014ee0:	f0dff06f          	j	80014dec <__umoddi3+0x1c4>
80014ee4:	e8d5eae3          	bltu	a1,a3,80014d78 <__umoddi3+0x150>
80014ee8:	000107b7          	lui	a5,0x10
80014eec:	04f6fc63          	bgeu	a3,a5,80014f44 <__umoddi3+0x31c>
80014ef0:	0ff00a93          	li	s5,255
80014ef4:	00dab533          	sltu	a0,s5,a3
80014ef8:	00351513          	slli	a0,a0,0x3
80014efc:	800007b7          	lui	a5,0x80000
80014f00:	00a6d733          	srl	a4,a3,a0
80014f04:	59878793          	addi	a5,a5,1432 # 80000598 <__clzsi2+0xfffe90c4>
80014f08:	00e787b3          	add	a5,a5,a4
80014f0c:	0007ca83          	lbu	s5,0(a5)
80014f10:	02000793          	li	a5,32
80014f14:	00aa8ab3          	add	s5,s5,a0
80014f18:	41578a33          	sub	s4,a5,s5
80014f1c:	03579e63          	bne	a5,s5,80014f58 <__umoddi3+0x330>
80014f20:	0166e463          	bltu	a3,s6,80014f28 <__umoddi3+0x300>
80014f24:	00c96a63          	bltu	s2,a2,80014f38 <__umoddi3+0x310>
80014f28:	40c90433          	sub	s0,s2,a2
80014f2c:	40db05b3          	sub	a1,s6,a3
80014f30:	008934b3          	sltu	s1,s2,s0
80014f34:	409584b3          	sub	s1,a1,s1
80014f38:	00040513          	mv	a0,s0
80014f3c:	00048593          	mv	a1,s1
80014f40:	e39ff06f          	j	80014d78 <__umoddi3+0x150>
80014f44:	010007b7          	lui	a5,0x1000
80014f48:	01000513          	li	a0,16
80014f4c:	faf6e8e3          	bltu	a3,a5,80014efc <__umoddi3+0x2d4>
80014f50:	01800513          	li	a0,24
80014f54:	fa9ff06f          	j	80014efc <__umoddi3+0x2d4>
80014f58:	014696b3          	sll	a3,a3,s4
80014f5c:	015657b3          	srl	a5,a2,s5
80014f60:	00d7ecb3          	or	s9,a5,a3
80014f64:	015b5433          	srl	s0,s6,s5
80014f68:	014b15b3          	sll	a1,s6,s4
80014f6c:	010cdb93          	srli	s7,s9,0x10
80014f70:	01595b33          	srl	s6,s2,s5
80014f74:	00bb6b33          	or	s6,s6,a1
80014f78:	00040513          	mv	a0,s0
80014f7c:	000b8593          	mv	a1,s7
80014f80:	01461d33          	sll	s10,a2,s4
80014f84:	4ec020ef          	jal	ra,80017470 <__umodsi3>
80014f88:	00050993          	mv	s3,a0
80014f8c:	000b8593          	mv	a1,s7
80014f90:	00040513          	mv	a0,s0
80014f94:	010c9c13          	slli	s8,s9,0x10
80014f98:	490020ef          	jal	ra,80017428 <__udivsi3>
80014f9c:	010c5c13          	srli	s8,s8,0x10
80014fa0:	00050593          	mv	a1,a0
80014fa4:	014914b3          	sll	s1,s2,s4
80014fa8:	00050913          	mv	s2,a0
80014fac:	000c0513          	mv	a0,s8
80014fb0:	3bc020ef          	jal	ra,8001736c <__mulsi3>
80014fb4:	01099993          	slli	s3,s3,0x10
80014fb8:	010b5713          	srli	a4,s6,0x10
80014fbc:	00e9e733          	or	a4,s3,a4
80014fc0:	00090413          	mv	s0,s2
80014fc4:	00a77e63          	bgeu	a4,a0,80014fe0 <__umoddi3+0x3b8>
80014fc8:	01970733          	add	a4,a4,s9
80014fcc:	fff90413          	addi	s0,s2,-1
80014fd0:	01976863          	bltu	a4,s9,80014fe0 <__umoddi3+0x3b8>
80014fd4:	00a77663          	bgeu	a4,a0,80014fe0 <__umoddi3+0x3b8>
80014fd8:	ffe90413          	addi	s0,s2,-2
80014fdc:	01970733          	add	a4,a4,s9
80014fe0:	40a70933          	sub	s2,a4,a0
80014fe4:	000b8593          	mv	a1,s7
80014fe8:	00090513          	mv	a0,s2
80014fec:	484020ef          	jal	ra,80017470 <__umodsi3>
80014ff0:	00050993          	mv	s3,a0
80014ff4:	000b8593          	mv	a1,s7
80014ff8:	00090513          	mv	a0,s2
80014ffc:	42c020ef          	jal	ra,80017428 <__udivsi3>
80015000:	00050913          	mv	s2,a0
80015004:	00050593          	mv	a1,a0
80015008:	000c0513          	mv	a0,s8
8001500c:	360020ef          	jal	ra,8001736c <__mulsi3>
80015010:	010b1713          	slli	a4,s6,0x10
80015014:	01099993          	slli	s3,s3,0x10
80015018:	01075713          	srli	a4,a4,0x10
8001501c:	00e9e733          	or	a4,s3,a4
80015020:	00090793          	mv	a5,s2
80015024:	00a77e63          	bgeu	a4,a0,80015040 <__umoddi3+0x418>
80015028:	01970733          	add	a4,a4,s9
8001502c:	fff90793          	addi	a5,s2,-1
80015030:	01976863          	bltu	a4,s9,80015040 <__umoddi3+0x418>
80015034:	00a77663          	bgeu	a4,a0,80015040 <__umoddi3+0x418>
80015038:	ffe90793          	addi	a5,s2,-2
8001503c:	01970733          	add	a4,a4,s9
80015040:	00010eb7          	lui	t4,0x10
80015044:	01041413          	slli	s0,s0,0x10
80015048:	40a70833          	sub	a6,a4,a0
8001504c:	00f46433          	or	s0,s0,a5
80015050:	fffe8713          	addi	a4,t4,-1 # ffff <font6x8-0x7fff002d>
80015054:	00e478b3          	and	a7,s0,a4
80015058:	00ed7733          	and	a4,s10,a4
8001505c:	01045413          	srli	s0,s0,0x10
80015060:	010d5e13          	srli	t3,s10,0x10
80015064:	00088513          	mv	a0,a7
80015068:	00070593          	mv	a1,a4
8001506c:	300020ef          	jal	ra,8001736c <__mulsi3>
80015070:	00050793          	mv	a5,a0
80015074:	000e0593          	mv	a1,t3
80015078:	00088513          	mv	a0,a7
8001507c:	2f0020ef          	jal	ra,8001736c <__mulsi3>
80015080:	00050893          	mv	a7,a0
80015084:	00070593          	mv	a1,a4
80015088:	00040513          	mv	a0,s0
8001508c:	2e0020ef          	jal	ra,8001736c <__mulsi3>
80015090:	00050313          	mv	t1,a0
80015094:	000e0593          	mv	a1,t3
80015098:	00040513          	mv	a0,s0
8001509c:	2d0020ef          	jal	ra,8001736c <__mulsi3>
800150a0:	0107d713          	srli	a4,a5,0x10
800150a4:	006888b3          	add	a7,a7,t1
800150a8:	01170733          	add	a4,a4,a7
800150ac:	00677463          	bgeu	a4,t1,800150b4 <__umoddi3+0x48c>
800150b0:	01d50533          	add	a0,a0,t4
800150b4:	01075593          	srli	a1,a4,0x10
800150b8:	00a585b3          	add	a1,a1,a0
800150bc:	00010537          	lui	a0,0x10
800150c0:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
800150c4:	00a77733          	and	a4,a4,a0
800150c8:	01071713          	slli	a4,a4,0x10
800150cc:	00a7f7b3          	and	a5,a5,a0
800150d0:	00f707b3          	add	a5,a4,a5
800150d4:	00b86663          	bltu	a6,a1,800150e0 <__umoddi3+0x4b8>
800150d8:	00b81e63          	bne	a6,a1,800150f4 <__umoddi3+0x4cc>
800150dc:	00f4fc63          	bgeu	s1,a5,800150f4 <__umoddi3+0x4cc>
800150e0:	41a78633          	sub	a2,a5,s10
800150e4:	00c7b7b3          	sltu	a5,a5,a2
800150e8:	019787b3          	add	a5,a5,s9
800150ec:	40f585b3          	sub	a1,a1,a5
800150f0:	00060793          	mv	a5,a2
800150f4:	40f487b3          	sub	a5,s1,a5
800150f8:	00f4b4b3          	sltu	s1,s1,a5
800150fc:	40b805b3          	sub	a1,a6,a1
80015100:	409585b3          	sub	a1,a1,s1
80015104:	01559433          	sll	s0,a1,s5
80015108:	0147d7b3          	srl	a5,a5,s4
8001510c:	00f46533          	or	a0,s0,a5
80015110:	0145d5b3          	srl	a1,a1,s4
80015114:	c65ff06f          	j	80014d78 <__umoddi3+0x150>

80015118 <__adddf3>:
80015118:	00100837          	lui	a6,0x100
8001511c:	fff80813          	addi	a6,a6,-1 # fffff <font6x8-0x7ff0002d>
80015120:	fe010113          	addi	sp,sp,-32
80015124:	00b877b3          	and	a5,a6,a1
80015128:	0145d713          	srli	a4,a1,0x14
8001512c:	00d87833          	and	a6,a6,a3
80015130:	0146d893          	srli	a7,a3,0x14
80015134:	00812c23          	sw	s0,24(sp)
80015138:	00379793          	slli	a5,a5,0x3
8001513c:	7ff77413          	andi	s0,a4,2047
80015140:	01d55713          	srli	a4,a0,0x1d
80015144:	00912a23          	sw	s1,20(sp)
80015148:	00f767b3          	or	a5,a4,a5
8001514c:	01f5d493          	srli	s1,a1,0x1f
80015150:	01d65713          	srli	a4,a2,0x1d
80015154:	7ff8f893          	andi	a7,a7,2047
80015158:	01f6d593          	srli	a1,a3,0x1f
8001515c:	00381813          	slli	a6,a6,0x3
80015160:	00112e23          	sw	ra,28(sp)
80015164:	01212823          	sw	s2,16(sp)
80015168:	01312623          	sw	s3,12(sp)
8001516c:	00351513          	slli	a0,a0,0x3
80015170:	01076733          	or	a4,a4,a6
80015174:	00361613          	slli	a2,a2,0x3
80015178:	411406b3          	sub	a3,s0,a7
8001517c:	2cb49463          	bne	s1,a1,80015444 <__adddf3+0x32c>
80015180:	10d05e63          	blez	a3,8001529c <__adddf3+0x184>
80015184:	04089063          	bnez	a7,800151c4 <__adddf3+0xac>
80015188:	00c765b3          	or	a1,a4,a2
8001518c:	2a058863          	beqz	a1,8001543c <__adddf3+0x324>
80015190:	fff68593          	addi	a1,a3,-1
80015194:	02059063          	bnez	a1,800151b4 <__adddf3+0x9c>
80015198:	00c50633          	add	a2,a0,a2
8001519c:	00a63533          	sltu	a0,a2,a0
800151a0:	00e787b3          	add	a5,a5,a4
800151a4:	00a787b3          	add	a5,a5,a0
800151a8:	00060513          	mv	a0,a2
800151ac:	00100413          	li	s0,1
800151b0:	0700006f          	j	80015220 <__adddf3+0x108>
800151b4:	7ff00813          	li	a6,2047
800151b8:	03069063          	bne	a3,a6,800151d8 <__adddf3+0xc0>
800151bc:	7ff00413          	li	s0,2047
800151c0:	20c0006f          	j	800153cc <__adddf3+0x2b4>
800151c4:	7ff00593          	li	a1,2047
800151c8:	20b40263          	beq	s0,a1,800153cc <__adddf3+0x2b4>
800151cc:	008005b7          	lui	a1,0x800
800151d0:	00b76733          	or	a4,a4,a1
800151d4:	00068593          	mv	a1,a3
800151d8:	03800693          	li	a3,56
800151dc:	0ab6ca63          	blt	a3,a1,80015290 <__adddf3+0x178>
800151e0:	01f00693          	li	a3,31
800151e4:	06b6cc63          	blt	a3,a1,8001525c <__adddf3+0x144>
800151e8:	02000813          	li	a6,32
800151ec:	40b80833          	sub	a6,a6,a1
800151f0:	010716b3          	sll	a3,a4,a6
800151f4:	00b658b3          	srl	a7,a2,a1
800151f8:	01061633          	sll	a2,a2,a6
800151fc:	0116e6b3          	or	a3,a3,a7
80015200:	00c03633          	snez	a2,a2
80015204:	00c6e633          	or	a2,a3,a2
80015208:	00b75733          	srl	a4,a4,a1
8001520c:	00a60633          	add	a2,a2,a0
80015210:	00f70733          	add	a4,a4,a5
80015214:	00a637b3          	sltu	a5,a2,a0
80015218:	00f707b3          	add	a5,a4,a5
8001521c:	00060513          	mv	a0,a2
80015220:	00879713          	slli	a4,a5,0x8
80015224:	1a075463          	bgez	a4,800153cc <__adddf3+0x2b4>
80015228:	00140413          	addi	s0,s0,1
8001522c:	7ff00713          	li	a4,2047
80015230:	5ce40463          	beq	s0,a4,800157f8 <__adddf3+0x6e0>
80015234:	ff8006b7          	lui	a3,0xff800
80015238:	fff68693          	addi	a3,a3,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
8001523c:	00d7f6b3          	and	a3,a5,a3
80015240:	00155593          	srli	a1,a0,0x1
80015244:	00157513          	andi	a0,a0,1
80015248:	01f69793          	slli	a5,a3,0x1f
8001524c:	00a5e533          	or	a0,a1,a0
80015250:	00a7e533          	or	a0,a5,a0
80015254:	0016d793          	srli	a5,a3,0x1
80015258:	1740006f          	j	800153cc <__adddf3+0x2b4>
8001525c:	fe058693          	addi	a3,a1,-32 # 7fffe0 <font6x8-0x7f80004c>
80015260:	02000893          	li	a7,32
80015264:	00d756b3          	srl	a3,a4,a3
80015268:	00000813          	li	a6,0
8001526c:	01158863          	beq	a1,a7,8001527c <__adddf3+0x164>
80015270:	04000813          	li	a6,64
80015274:	40b805b3          	sub	a1,a6,a1
80015278:	00b71833          	sll	a6,a4,a1
8001527c:	00c86633          	or	a2,a6,a2
80015280:	00c03633          	snez	a2,a2
80015284:	00c6e633          	or	a2,a3,a2
80015288:	00000713          	li	a4,0
8001528c:	f81ff06f          	j	8001520c <__adddf3+0xf4>
80015290:	00c76633          	or	a2,a4,a2
80015294:	00c03633          	snez	a2,a2
80015298:	ff1ff06f          	j	80015288 <__adddf3+0x170>
8001529c:	0e068263          	beqz	a3,80015380 <__adddf3+0x268>
800152a0:	408885b3          	sub	a1,a7,s0
800152a4:	02041e63          	bnez	s0,800152e0 <__adddf3+0x1c8>
800152a8:	00a7e6b3          	or	a3,a5,a0
800152ac:	52068663          	beqz	a3,800157d8 <__adddf3+0x6c0>
800152b0:	fff58693          	addi	a3,a1,-1
800152b4:	00069c63          	bnez	a3,800152cc <__adddf3+0x1b4>
800152b8:	00c50533          	add	a0,a0,a2
800152bc:	00e787b3          	add	a5,a5,a4
800152c0:	00c53633          	sltu	a2,a0,a2
800152c4:	00c787b3          	add	a5,a5,a2
800152c8:	ee5ff06f          	j	800151ac <__adddf3+0x94>
800152cc:	7ff00813          	li	a6,2047
800152d0:	03059263          	bne	a1,a6,800152f4 <__adddf3+0x1dc>
800152d4:	00070793          	mv	a5,a4
800152d8:	00060513          	mv	a0,a2
800152dc:	ee1ff06f          	j	800151bc <__adddf3+0xa4>
800152e0:	7ff00693          	li	a3,2047
800152e4:	fed888e3          	beq	a7,a3,800152d4 <__adddf3+0x1bc>
800152e8:	008006b7          	lui	a3,0x800
800152ec:	00d7e7b3          	or	a5,a5,a3
800152f0:	00058693          	mv	a3,a1
800152f4:	03800593          	li	a1,56
800152f8:	06d5ce63          	blt	a1,a3,80015374 <__adddf3+0x25c>
800152fc:	01f00593          	li	a1,31
80015300:	04d5c063          	blt	a1,a3,80015340 <__adddf3+0x228>
80015304:	02000813          	li	a6,32
80015308:	40d80833          	sub	a6,a6,a3
8001530c:	00d55333          	srl	t1,a0,a3
80015310:	010795b3          	sll	a1,a5,a6
80015314:	01051533          	sll	a0,a0,a6
80015318:	0065e5b3          	or	a1,a1,t1
8001531c:	00a03533          	snez	a0,a0
80015320:	00a5e533          	or	a0,a1,a0
80015324:	00d7d6b3          	srl	a3,a5,a3
80015328:	00c50533          	add	a0,a0,a2
8001532c:	00e687b3          	add	a5,a3,a4
80015330:	00c53633          	sltu	a2,a0,a2
80015334:	00c787b3          	add	a5,a5,a2
80015338:	00088413          	mv	s0,a7
8001533c:	ee5ff06f          	j	80015220 <__adddf3+0x108>
80015340:	fe068593          	addi	a1,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80015344:	02000313          	li	t1,32
80015348:	00b7d5b3          	srl	a1,a5,a1
8001534c:	00000813          	li	a6,0
80015350:	00668863          	beq	a3,t1,80015360 <__adddf3+0x248>
80015354:	04000813          	li	a6,64
80015358:	40d806b3          	sub	a3,a6,a3
8001535c:	00d79833          	sll	a6,a5,a3
80015360:	00a86533          	or	a0,a6,a0
80015364:	00a03533          	snez	a0,a0
80015368:	00a5e533          	or	a0,a1,a0
8001536c:	00000693          	li	a3,0
80015370:	fb9ff06f          	j	80015328 <__adddf3+0x210>
80015374:	00a7e533          	or	a0,a5,a0
80015378:	00a03533          	snez	a0,a0
8001537c:	ff1ff06f          	j	8001536c <__adddf3+0x254>
80015380:	00140693          	addi	a3,s0,1
80015384:	7fe6f593          	andi	a1,a3,2046
80015388:	08059663          	bnez	a1,80015414 <__adddf3+0x2fc>
8001538c:	00a7e6b3          	or	a3,a5,a0
80015390:	06041263          	bnez	s0,800153f4 <__adddf3+0x2dc>
80015394:	44068a63          	beqz	a3,800157e8 <__adddf3+0x6d0>
80015398:	00c766b3          	or	a3,a4,a2
8001539c:	02068863          	beqz	a3,800153cc <__adddf3+0x2b4>
800153a0:	00c50633          	add	a2,a0,a2
800153a4:	00e787b3          	add	a5,a5,a4
800153a8:	00a63533          	sltu	a0,a2,a0
800153ac:	00a787b3          	add	a5,a5,a0
800153b0:	00879713          	slli	a4,a5,0x8
800153b4:	00060513          	mv	a0,a2
800153b8:	00075a63          	bgez	a4,800153cc <__adddf3+0x2b4>
800153bc:	ff800737          	lui	a4,0xff800
800153c0:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
800153c4:	00e7f7b3          	and	a5,a5,a4
800153c8:	00100413          	li	s0,1
800153cc:	00757713          	andi	a4,a0,7
800153d0:	42070863          	beqz	a4,80015800 <__adddf3+0x6e8>
800153d4:	00f57713          	andi	a4,a0,15
800153d8:	00400693          	li	a3,4
800153dc:	42d70263          	beq	a4,a3,80015800 <__adddf3+0x6e8>
800153e0:	00450693          	addi	a3,a0,4
800153e4:	00a6b533          	sltu	a0,a3,a0
800153e8:	00a787b3          	add	a5,a5,a0
800153ec:	00068513          	mv	a0,a3
800153f0:	4100006f          	j	80015800 <__adddf3+0x6e8>
800153f4:	ee0680e3          	beqz	a3,800152d4 <__adddf3+0x1bc>
800153f8:	00c76633          	or	a2,a4,a2
800153fc:	dc0600e3          	beqz	a2,800151bc <__adddf3+0xa4>
80015400:	00000493          	li	s1,0
80015404:	004007b7          	lui	a5,0x400
80015408:	00000513          	li	a0,0
8001540c:	7ff00413          	li	s0,2047
80015410:	3f00006f          	j	80015800 <__adddf3+0x6e8>
80015414:	7ff00593          	li	a1,2047
80015418:	3cb68e63          	beq	a3,a1,800157f4 <__adddf3+0x6dc>
8001541c:	00c50633          	add	a2,a0,a2
80015420:	00e78733          	add	a4,a5,a4
80015424:	00a637b3          	sltu	a5,a2,a0
80015428:	00f70733          	add	a4,a4,a5
8001542c:	01f71513          	slli	a0,a4,0x1f
80015430:	00165613          	srli	a2,a2,0x1
80015434:	00c56533          	or	a0,a0,a2
80015438:	00175793          	srli	a5,a4,0x1
8001543c:	00068413          	mv	s0,a3
80015440:	f8dff06f          	j	800153cc <__adddf3+0x2b4>
80015444:	0ed05c63          	blez	a3,8001553c <__adddf3+0x424>
80015448:	08089e63          	bnez	a7,800154e4 <__adddf3+0x3cc>
8001544c:	00c765b3          	or	a1,a4,a2
80015450:	fe0586e3          	beqz	a1,8001543c <__adddf3+0x324>
80015454:	fff68593          	addi	a1,a3,-1
80015458:	02059063          	bnez	a1,80015478 <__adddf3+0x360>
8001545c:	40c50633          	sub	a2,a0,a2
80015460:	00c53533          	sltu	a0,a0,a2
80015464:	40e787b3          	sub	a5,a5,a4
80015468:	40a787b3          	sub	a5,a5,a0
8001546c:	00060513          	mv	a0,a2
80015470:	00100413          	li	s0,1
80015474:	0540006f          	j	800154c8 <__adddf3+0x3b0>
80015478:	7ff00813          	li	a6,2047
8001547c:	d50680e3          	beq	a3,a6,800151bc <__adddf3+0xa4>
80015480:	03800693          	li	a3,56
80015484:	0ab6c663          	blt	a3,a1,80015530 <__adddf3+0x418>
80015488:	01f00693          	li	a3,31
8001548c:	06b6c863          	blt	a3,a1,800154fc <__adddf3+0x3e4>
80015490:	02000813          	li	a6,32
80015494:	40b80833          	sub	a6,a6,a1
80015498:	010716b3          	sll	a3,a4,a6
8001549c:	00b658b3          	srl	a7,a2,a1
800154a0:	01061633          	sll	a2,a2,a6
800154a4:	0116e6b3          	or	a3,a3,a7
800154a8:	00c03633          	snez	a2,a2
800154ac:	00c6e633          	or	a2,a3,a2
800154b0:	00b75733          	srl	a4,a4,a1
800154b4:	40c50633          	sub	a2,a0,a2
800154b8:	40e78733          	sub	a4,a5,a4
800154bc:	00c537b3          	sltu	a5,a0,a2
800154c0:	40f707b3          	sub	a5,a4,a5
800154c4:	00060513          	mv	a0,a2
800154c8:	00879713          	slli	a4,a5,0x8
800154cc:	f00750e3          	bgez	a4,800153cc <__adddf3+0x2b4>
800154d0:	00800937          	lui	s2,0x800
800154d4:	fff90913          	addi	s2,s2,-1 # 7fffff <font6x8-0x7f80002d>
800154d8:	0127f933          	and	s2,a5,s2
800154dc:	00050993          	mv	s3,a0
800154e0:	20c0006f          	j	800156ec <__adddf3+0x5d4>
800154e4:	7ff00593          	li	a1,2047
800154e8:	eeb402e3          	beq	s0,a1,800153cc <__adddf3+0x2b4>
800154ec:	008005b7          	lui	a1,0x800
800154f0:	00b76733          	or	a4,a4,a1
800154f4:	00068593          	mv	a1,a3
800154f8:	f89ff06f          	j	80015480 <__adddf3+0x368>
800154fc:	fe058693          	addi	a3,a1,-32 # 7fffe0 <font6x8-0x7f80004c>
80015500:	02000893          	li	a7,32
80015504:	00d756b3          	srl	a3,a4,a3
80015508:	00000813          	li	a6,0
8001550c:	01158863          	beq	a1,a7,8001551c <__adddf3+0x404>
80015510:	04000813          	li	a6,64
80015514:	40b805b3          	sub	a1,a6,a1
80015518:	00b71833          	sll	a6,a4,a1
8001551c:	00c86633          	or	a2,a6,a2
80015520:	00c03633          	snez	a2,a2
80015524:	00c6e633          	or	a2,a3,a2
80015528:	00000713          	li	a4,0
8001552c:	f89ff06f          	j	800154b4 <__adddf3+0x39c>
80015530:	00c76633          	or	a2,a4,a2
80015534:	00c03633          	snez	a2,a2
80015538:	ff1ff06f          	j	80015528 <__adddf3+0x410>
8001553c:	0e068863          	beqz	a3,8001562c <__adddf3+0x514>
80015540:	40888833          	sub	a6,a7,s0
80015544:	04041263          	bnez	s0,80015588 <__adddf3+0x470>
80015548:	00a7e6b3          	or	a3,a5,a0
8001554c:	34068263          	beqz	a3,80015890 <__adddf3+0x778>
80015550:	fff80693          	addi	a3,a6,-1
80015554:	00069e63          	bnez	a3,80015570 <__adddf3+0x458>
80015558:	40a60533          	sub	a0,a2,a0
8001555c:	40f707b3          	sub	a5,a4,a5
80015560:	00a63633          	sltu	a2,a2,a0
80015564:	40c787b3          	sub	a5,a5,a2
80015568:	00058493          	mv	s1,a1
8001556c:	f05ff06f          	j	80015470 <__adddf3+0x358>
80015570:	7ff00313          	li	t1,2047
80015574:	02681463          	bne	a6,t1,8001559c <__adddf3+0x484>
80015578:	00070793          	mv	a5,a4
8001557c:	00060513          	mv	a0,a2
80015580:	7ff00413          	li	s0,2047
80015584:	0d00006f          	j	80015654 <__adddf3+0x53c>
80015588:	7ff00693          	li	a3,2047
8001558c:	fed886e3          	beq	a7,a3,80015578 <__adddf3+0x460>
80015590:	008006b7          	lui	a3,0x800
80015594:	00d7e7b3          	or	a5,a5,a3
80015598:	00080693          	mv	a3,a6
8001559c:	03800813          	li	a6,56
800155a0:	08d84063          	blt	a6,a3,80015620 <__adddf3+0x508>
800155a4:	01f00813          	li	a6,31
800155a8:	04d84263          	blt	a6,a3,800155ec <__adddf3+0x4d4>
800155ac:	02000313          	li	t1,32
800155b0:	40d30333          	sub	t1,t1,a3
800155b4:	00d55e33          	srl	t3,a0,a3
800155b8:	00679833          	sll	a6,a5,t1
800155bc:	00651533          	sll	a0,a0,t1
800155c0:	01c86833          	or	a6,a6,t3
800155c4:	00a03533          	snez	a0,a0
800155c8:	00a86533          	or	a0,a6,a0
800155cc:	00d7d6b3          	srl	a3,a5,a3
800155d0:	40a60533          	sub	a0,a2,a0
800155d4:	40d707b3          	sub	a5,a4,a3
800155d8:	00a63633          	sltu	a2,a2,a0
800155dc:	40c787b3          	sub	a5,a5,a2
800155e0:	00088413          	mv	s0,a7
800155e4:	00058493          	mv	s1,a1
800155e8:	ee1ff06f          	j	800154c8 <__adddf3+0x3b0>
800155ec:	fe068813          	addi	a6,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
800155f0:	02000e13          	li	t3,32
800155f4:	0107d833          	srl	a6,a5,a6
800155f8:	00000313          	li	t1,0
800155fc:	01c68863          	beq	a3,t3,8001560c <__adddf3+0x4f4>
80015600:	04000313          	li	t1,64
80015604:	40d306b3          	sub	a3,t1,a3
80015608:	00d79333          	sll	t1,a5,a3
8001560c:	00a36533          	or	a0,t1,a0
80015610:	00a03533          	snez	a0,a0
80015614:	00a86533          	or	a0,a6,a0
80015618:	00000693          	li	a3,0
8001561c:	fb5ff06f          	j	800155d0 <__adddf3+0x4b8>
80015620:	00a7e533          	or	a0,a5,a0
80015624:	00a03533          	snez	a0,a0
80015628:	ff1ff06f          	j	80015618 <__adddf3+0x500>
8001562c:	00140693          	addi	a3,s0,1
80015630:	7fe6f693          	andi	a3,a3,2046
80015634:	08069663          	bnez	a3,800156c0 <__adddf3+0x5a8>
80015638:	00a7e833          	or	a6,a5,a0
8001563c:	00c766b3          	or	a3,a4,a2
80015640:	06041063          	bnez	s0,800156a0 <__adddf3+0x588>
80015644:	00081c63          	bnez	a6,8001565c <__adddf3+0x544>
80015648:	24068c63          	beqz	a3,800158a0 <__adddf3+0x788>
8001564c:	00070793          	mv	a5,a4
80015650:	00060513          	mv	a0,a2
80015654:	00058493          	mv	s1,a1
80015658:	d75ff06f          	j	800153cc <__adddf3+0x2b4>
8001565c:	d60688e3          	beqz	a3,800153cc <__adddf3+0x2b4>
80015660:	40c50833          	sub	a6,a0,a2
80015664:	010538b3          	sltu	a7,a0,a6
80015668:	40e786b3          	sub	a3,a5,a4
8001566c:	411686b3          	sub	a3,a3,a7
80015670:	00869893          	slli	a7,a3,0x8
80015674:	0008dc63          	bgez	a7,8001568c <__adddf3+0x574>
80015678:	40a60533          	sub	a0,a2,a0
8001567c:	40f707b3          	sub	a5,a4,a5
80015680:	00a63633          	sltu	a2,a2,a0
80015684:	40c787b3          	sub	a5,a5,a2
80015688:	fcdff06f          	j	80015654 <__adddf3+0x53c>
8001568c:	00d86533          	or	a0,a6,a3
80015690:	22050063          	beqz	a0,800158b0 <__adddf3+0x798>
80015694:	00068793          	mv	a5,a3
80015698:	00080513          	mv	a0,a6
8001569c:	d31ff06f          	j	800153cc <__adddf3+0x2b4>
800156a0:	00081c63          	bnez	a6,800156b8 <__adddf3+0x5a0>
800156a4:	20068a63          	beqz	a3,800158b8 <__adddf3+0x7a0>
800156a8:	00070793          	mv	a5,a4
800156ac:	00060513          	mv	a0,a2
800156b0:	00058493          	mv	s1,a1
800156b4:	b09ff06f          	j	800151bc <__adddf3+0xa4>
800156b8:	b00682e3          	beqz	a3,800151bc <__adddf3+0xa4>
800156bc:	d45ff06f          	j	80015400 <__adddf3+0x2e8>
800156c0:	40c509b3          	sub	s3,a0,a2
800156c4:	013536b3          	sltu	a3,a0,s3
800156c8:	40e78933          	sub	s2,a5,a4
800156cc:	40d90933          	sub	s2,s2,a3
800156d0:	00891693          	slli	a3,s2,0x8
800156d4:	0806d463          	bgez	a3,8001575c <__adddf3+0x644>
800156d8:	40a609b3          	sub	s3,a2,a0
800156dc:	40f707b3          	sub	a5,a4,a5
800156e0:	01363633          	sltu	a2,a2,s3
800156e4:	40c78933          	sub	s2,a5,a2
800156e8:	00058493          	mv	s1,a1
800156ec:	08090263          	beqz	s2,80015770 <__adddf3+0x658>
800156f0:	00090513          	mv	a0,s2
800156f4:	5e1010ef          	jal	ra,800174d4 <__clzsi2>
800156f8:	ff850713          	addi	a4,a0,-8
800156fc:	01f00793          	li	a5,31
80015700:	08e7c063          	blt	a5,a4,80015780 <__adddf3+0x668>
80015704:	02000693          	li	a3,32
80015708:	40e686b3          	sub	a3,a3,a4
8001570c:	00e917b3          	sll	a5,s2,a4
80015710:	00d9d6b3          	srl	a3,s3,a3
80015714:	00f6e6b3          	or	a3,a3,a5
80015718:	00e99533          	sll	a0,s3,a4
8001571c:	0a874463          	blt	a4,s0,800157c4 <__adddf3+0x6ac>
80015720:	40870733          	sub	a4,a4,s0
80015724:	00170793          	addi	a5,a4,1
80015728:	01f00613          	li	a2,31
8001572c:	06f64263          	blt	a2,a5,80015790 <__adddf3+0x678>
80015730:	02000713          	li	a4,32
80015734:	40f70733          	sub	a4,a4,a5
80015738:	00f555b3          	srl	a1,a0,a5
8001573c:	00e69633          	sll	a2,a3,a4
80015740:	00e51533          	sll	a0,a0,a4
80015744:	00b66633          	or	a2,a2,a1
80015748:	00a03533          	snez	a0,a0
8001574c:	00a66533          	or	a0,a2,a0
80015750:	00f6d7b3          	srl	a5,a3,a5
80015754:	00000413          	li	s0,0
80015758:	c75ff06f          	j	800153cc <__adddf3+0x2b4>
8001575c:	0129e533          	or	a0,s3,s2
80015760:	f80516e3          	bnez	a0,800156ec <__adddf3+0x5d4>
80015764:	00000793          	li	a5,0
80015768:	00000413          	li	s0,0
8001576c:	13c0006f          	j	800158a8 <__adddf3+0x790>
80015770:	00098513          	mv	a0,s3
80015774:	561010ef          	jal	ra,800174d4 <__clzsi2>
80015778:	02050513          	addi	a0,a0,32
8001577c:	f7dff06f          	j	800156f8 <__adddf3+0x5e0>
80015780:	fd850513          	addi	a0,a0,-40
80015784:	00a996b3          	sll	a3,s3,a0
80015788:	00000513          	li	a0,0
8001578c:	f91ff06f          	j	8001571c <__adddf3+0x604>
80015790:	fe170713          	addi	a4,a4,-31
80015794:	02000593          	li	a1,32
80015798:	00e6d733          	srl	a4,a3,a4
8001579c:	00000613          	li	a2,0
800157a0:	00b78863          	beq	a5,a1,800157b0 <__adddf3+0x698>
800157a4:	04000613          	li	a2,64
800157a8:	40f60633          	sub	a2,a2,a5
800157ac:	00c69633          	sll	a2,a3,a2
800157b0:	00c56533          	or	a0,a0,a2
800157b4:	00a03533          	snez	a0,a0
800157b8:	00a76533          	or	a0,a4,a0
800157bc:	00000793          	li	a5,0
800157c0:	f95ff06f          	j	80015754 <__adddf3+0x63c>
800157c4:	ff8007b7          	lui	a5,0xff800
800157c8:	fff78793          	addi	a5,a5,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
800157cc:	40e40433          	sub	s0,s0,a4
800157d0:	00f6f7b3          	and	a5,a3,a5
800157d4:	bf9ff06f          	j	800153cc <__adddf3+0x2b4>
800157d8:	00070793          	mv	a5,a4
800157dc:	00060513          	mv	a0,a2
800157e0:	00058413          	mv	s0,a1
800157e4:	be9ff06f          	j	800153cc <__adddf3+0x2b4>
800157e8:	00070793          	mv	a5,a4
800157ec:	00060513          	mv	a0,a2
800157f0:	bddff06f          	j	800153cc <__adddf3+0x2b4>
800157f4:	7ff00413          	li	s0,2047
800157f8:	00000793          	li	a5,0
800157fc:	00000513          	li	a0,0
80015800:	00879713          	slli	a4,a5,0x8
80015804:	00075e63          	bgez	a4,80015820 <__adddf3+0x708>
80015808:	00140413          	addi	s0,s0,1
8001580c:	7ff00713          	li	a4,2047
80015810:	0ae40c63          	beq	s0,a4,800158c8 <__adddf3+0x7b0>
80015814:	ff800737          	lui	a4,0xff800
80015818:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
8001581c:	00e7f7b3          	and	a5,a5,a4
80015820:	01d79713          	slli	a4,a5,0x1d
80015824:	00355513          	srli	a0,a0,0x3
80015828:	00a76533          	or	a0,a4,a0
8001582c:	7ff00713          	li	a4,2047
80015830:	0037d793          	srli	a5,a5,0x3
80015834:	00e41e63          	bne	s0,a4,80015850 <__adddf3+0x738>
80015838:	00f56533          	or	a0,a0,a5
8001583c:	00000793          	li	a5,0
80015840:	00050863          	beqz	a0,80015850 <__adddf3+0x738>
80015844:	000807b7          	lui	a5,0x80
80015848:	00000513          	li	a0,0
8001584c:	00000493          	li	s1,0
80015850:	01441713          	slli	a4,s0,0x14
80015854:	7ff006b7          	lui	a3,0x7ff00
80015858:	00c79793          	slli	a5,a5,0xc
8001585c:	01c12083          	lw	ra,28(sp)
80015860:	01812403          	lw	s0,24(sp)
80015864:	00d77733          	and	a4,a4,a3
80015868:	00c7d793          	srli	a5,a5,0xc
8001586c:	01f49493          	slli	s1,s1,0x1f
80015870:	00f767b3          	or	a5,a4,a5
80015874:	0097e733          	or	a4,a5,s1
80015878:	01012903          	lw	s2,16(sp)
8001587c:	01412483          	lw	s1,20(sp)
80015880:	00c12983          	lw	s3,12(sp)
80015884:	00070593          	mv	a1,a4
80015888:	02010113          	addi	sp,sp,32
8001588c:	00008067          	ret
80015890:	00070793          	mv	a5,a4
80015894:	00060513          	mv	a0,a2
80015898:	00080413          	mv	s0,a6
8001589c:	db9ff06f          	j	80015654 <__adddf3+0x53c>
800158a0:	00000793          	li	a5,0
800158a4:	00000513          	li	a0,0
800158a8:	00000493          	li	s1,0
800158ac:	f55ff06f          	j	80015800 <__adddf3+0x6e8>
800158b0:	00000793          	li	a5,0
800158b4:	ff5ff06f          	j	800158a8 <__adddf3+0x790>
800158b8:	00000513          	li	a0,0
800158bc:	00000493          	li	s1,0
800158c0:	004007b7          	lui	a5,0x400
800158c4:	b49ff06f          	j	8001540c <__adddf3+0x2f4>
800158c8:	00000793          	li	a5,0
800158cc:	00000513          	li	a0,0
800158d0:	f51ff06f          	j	80015820 <__adddf3+0x708>

800158d4 <__divdf3>:
800158d4:	fb010113          	addi	sp,sp,-80
800158d8:	0145d793          	srli	a5,a1,0x14
800158dc:	04912223          	sw	s1,68(sp)
800158e0:	03312e23          	sw	s3,60(sp)
800158e4:	03412c23          	sw	s4,56(sp)
800158e8:	03512a23          	sw	s5,52(sp)
800158ec:	03612823          	sw	s6,48(sp)
800158f0:	00c59493          	slli	s1,a1,0xc
800158f4:	04112623          	sw	ra,76(sp)
800158f8:	04812423          	sw	s0,72(sp)
800158fc:	05212023          	sw	s2,64(sp)
80015900:	03712623          	sw	s7,44(sp)
80015904:	03812423          	sw	s8,40(sp)
80015908:	03912223          	sw	s9,36(sp)
8001590c:	03a12023          	sw	s10,32(sp)
80015910:	01b12e23          	sw	s11,28(sp)
80015914:	01579713          	slli	a4,a5,0x15
80015918:	00050993          	mv	s3,a0
8001591c:	00060a13          	mv	s4,a2
80015920:	00068b13          	mv	s6,a3
80015924:	00c4d493          	srli	s1,s1,0xc
80015928:	01f5da93          	srli	s5,a1,0x1f
8001592c:	0a070463          	beqz	a4,800159d4 <__divdf3+0x100>
80015930:	7ff7f913          	andi	s2,a5,2047
80015934:	7ff00793          	li	a5,2047
80015938:	10f90063          	beq	s2,a5,80015a38 <__divdf3+0x164>
8001593c:	01d55c93          	srli	s9,a0,0x1d
80015940:	00349493          	slli	s1,s1,0x3
80015944:	009ce4b3          	or	s1,s9,s1
80015948:	00800cb7          	lui	s9,0x800
8001594c:	0194ecb3          	or	s9,s1,s9
80015950:	00351413          	slli	s0,a0,0x3
80015954:	c0190913          	addi	s2,s2,-1023
80015958:	00000c13          	li	s8,0
8001595c:	014b5793          	srli	a5,s6,0x14
80015960:	00cb1593          	slli	a1,s6,0xc
80015964:	01579713          	slli	a4,a5,0x15
80015968:	00c5d993          	srli	s3,a1,0xc
8001596c:	7ff7f513          	andi	a0,a5,2047
80015970:	01fb5b13          	srli	s6,s6,0x1f
80015974:	10070063          	beqz	a4,80015a74 <__divdf3+0x1a0>
80015978:	7ff00793          	li	a5,2047
8001597c:	16f50063          	beq	a0,a5,80015adc <__divdf3+0x208>
80015980:	00399593          	slli	a1,s3,0x3
80015984:	01da5793          	srli	a5,s4,0x1d
80015988:	00b7e5b3          	or	a1,a5,a1
8001598c:	008009b7          	lui	s3,0x800
80015990:	0135e9b3          	or	s3,a1,s3
80015994:	003a1813          	slli	a6,s4,0x3
80015998:	c0150513          	addi	a0,a0,-1023
8001599c:	00000693          	li	a3,0
800159a0:	002c1793          	slli	a5,s8,0x2
800159a4:	00d7e7b3          	or	a5,a5,a3
800159a8:	fff78793          	addi	a5,a5,-1 # 3fffff <font6x8-0x7fc0002d>
800159ac:	00e00713          	li	a4,14
800159b0:	016ac4b3          	xor	s1,s5,s6
800159b4:	40a90933          	sub	s2,s2,a0
800159b8:	14f76e63          	bltu	a4,a5,80015b14 <__divdf3+0x240>
800159bc:	80000737          	lui	a4,0x80000
800159c0:	00279793          	slli	a5,a5,0x2
800159c4:	52070713          	addi	a4,a4,1312 # 80000520 <__clzsi2+0xfffe904c>
800159c8:	00e787b3          	add	a5,a5,a4
800159cc:	0007a783          	lw	a5,0(a5)
800159d0:	00078067          	jr	a5
800159d4:	00a4ecb3          	or	s9,s1,a0
800159d8:	060c8e63          	beqz	s9,80015a54 <__divdf3+0x180>
800159dc:	04048063          	beqz	s1,80015a1c <__divdf3+0x148>
800159e0:	00048513          	mv	a0,s1
800159e4:	2f1010ef          	jal	ra,800174d4 <__clzsi2>
800159e8:	ff550793          	addi	a5,a0,-11
800159ec:	01c00713          	li	a4,28
800159f0:	02f74c63          	blt	a4,a5,80015a28 <__divdf3+0x154>
800159f4:	01d00c93          	li	s9,29
800159f8:	ff850413          	addi	s0,a0,-8
800159fc:	40fc8cb3          	sub	s9,s9,a5
80015a00:	008494b3          	sll	s1,s1,s0
80015a04:	0199dcb3          	srl	s9,s3,s9
80015a08:	009cecb3          	or	s9,s9,s1
80015a0c:	00899433          	sll	s0,s3,s0
80015a10:	c0d00913          	li	s2,-1011
80015a14:	40a90933          	sub	s2,s2,a0
80015a18:	f41ff06f          	j	80015958 <__divdf3+0x84>
80015a1c:	2b9010ef          	jal	ra,800174d4 <__clzsi2>
80015a20:	02050513          	addi	a0,a0,32
80015a24:	fc5ff06f          	j	800159e8 <__divdf3+0x114>
80015a28:	fd850493          	addi	s1,a0,-40
80015a2c:	00999cb3          	sll	s9,s3,s1
80015a30:	00000413          	li	s0,0
80015a34:	fddff06f          	j	80015a10 <__divdf3+0x13c>
80015a38:	00a4ecb3          	or	s9,s1,a0
80015a3c:	020c8463          	beqz	s9,80015a64 <__divdf3+0x190>
80015a40:	00050413          	mv	s0,a0
80015a44:	00048c93          	mv	s9,s1
80015a48:	7ff00913          	li	s2,2047
80015a4c:	00300c13          	li	s8,3
80015a50:	f0dff06f          	j	8001595c <__divdf3+0x88>
80015a54:	00000413          	li	s0,0
80015a58:	00000913          	li	s2,0
80015a5c:	00100c13          	li	s8,1
80015a60:	efdff06f          	j	8001595c <__divdf3+0x88>
80015a64:	00000413          	li	s0,0
80015a68:	7ff00913          	li	s2,2047
80015a6c:	00200c13          	li	s8,2
80015a70:	eedff06f          	j	8001595c <__divdf3+0x88>
80015a74:	0149e833          	or	a6,s3,s4
80015a78:	06080e63          	beqz	a6,80015af4 <__divdf3+0x220>
80015a7c:	04098063          	beqz	s3,80015abc <__divdf3+0x1e8>
80015a80:	00098513          	mv	a0,s3
80015a84:	251010ef          	jal	ra,800174d4 <__clzsi2>
80015a88:	ff550793          	addi	a5,a0,-11
80015a8c:	01c00713          	li	a4,28
80015a90:	02f74e63          	blt	a4,a5,80015acc <__divdf3+0x1f8>
80015a94:	01d00693          	li	a3,29
80015a98:	ff850813          	addi	a6,a0,-8
80015a9c:	40f686b3          	sub	a3,a3,a5
80015aa0:	010995b3          	sll	a1,s3,a6
80015aa4:	00da56b3          	srl	a3,s4,a3
80015aa8:	00b6e9b3          	or	s3,a3,a1
80015aac:	010a1833          	sll	a6,s4,a6
80015ab0:	c0d00713          	li	a4,-1011
80015ab4:	40a70533          	sub	a0,a4,a0
80015ab8:	ee5ff06f          	j	8001599c <__divdf3+0xc8>
80015abc:	000a0513          	mv	a0,s4
80015ac0:	215010ef          	jal	ra,800174d4 <__clzsi2>
80015ac4:	02050513          	addi	a0,a0,32
80015ac8:	fc1ff06f          	j	80015a88 <__divdf3+0x1b4>
80015acc:	fd850593          	addi	a1,a0,-40
80015ad0:	00ba19b3          	sll	s3,s4,a1
80015ad4:	00000813          	li	a6,0
80015ad8:	fd9ff06f          	j	80015ab0 <__divdf3+0x1dc>
80015adc:	0149e833          	or	a6,s3,s4
80015ae0:	02080263          	beqz	a6,80015b04 <__divdf3+0x230>
80015ae4:	000a0813          	mv	a6,s4
80015ae8:	7ff00513          	li	a0,2047
80015aec:	00300693          	li	a3,3
80015af0:	eb1ff06f          	j	800159a0 <__divdf3+0xcc>
80015af4:	00000993          	li	s3,0
80015af8:	00000513          	li	a0,0
80015afc:	00100693          	li	a3,1
80015b00:	ea1ff06f          	j	800159a0 <__divdf3+0xcc>
80015b04:	00000993          	li	s3,0
80015b08:	7ff00513          	li	a0,2047
80015b0c:	00200693          	li	a3,2
80015b10:	e91ff06f          	j	800159a0 <__divdf3+0xcc>
80015b14:	0199e663          	bltu	s3,s9,80015b20 <__divdf3+0x24c>
80015b18:	453c9463          	bne	s9,s3,80015f60 <__divdf3+0x68c>
80015b1c:	45046263          	bltu	s0,a6,80015f60 <__divdf3+0x68c>
80015b20:	01fc9713          	slli	a4,s9,0x1f
80015b24:	00145793          	srli	a5,s0,0x1
80015b28:	01f41d93          	slli	s11,s0,0x1f
80015b2c:	001cdc93          	srli	s9,s9,0x1
80015b30:	00f76433          	or	s0,a4,a5
80015b34:	00899593          	slli	a1,s3,0x8
80015b38:	01885a93          	srli	s5,a6,0x18
80015b3c:	00baeab3          	or	s5,s5,a1
80015b40:	0105db93          	srli	s7,a1,0x10
80015b44:	000b8593          	mv	a1,s7
80015b48:	010a9c13          	slli	s8,s5,0x10
80015b4c:	000c8513          	mv	a0,s9
80015b50:	00881b13          	slli	s6,a6,0x8
80015b54:	010c5c13          	srli	s8,s8,0x10
80015b58:	0d1010ef          	jal	ra,80017428 <__udivsi3>
80015b5c:	00050593          	mv	a1,a0
80015b60:	00050d13          	mv	s10,a0
80015b64:	000c0513          	mv	a0,s8
80015b68:	005010ef          	jal	ra,8001736c <__mulsi3>
80015b6c:	00050993          	mv	s3,a0
80015b70:	000b8593          	mv	a1,s7
80015b74:	000c8513          	mv	a0,s9
80015b78:	0f9010ef          	jal	ra,80017470 <__umodsi3>
80015b7c:	01051513          	slli	a0,a0,0x10
80015b80:	01045713          	srli	a4,s0,0x10
80015b84:	00a76733          	or	a4,a4,a0
80015b88:	000d0a13          	mv	s4,s10
80015b8c:	01377e63          	bgeu	a4,s3,80015ba8 <__divdf3+0x2d4>
80015b90:	01570733          	add	a4,a4,s5
80015b94:	fffd0a13          	addi	s4,s10,-1
80015b98:	01576863          	bltu	a4,s5,80015ba8 <__divdf3+0x2d4>
80015b9c:	01377663          	bgeu	a4,s3,80015ba8 <__divdf3+0x2d4>
80015ba0:	ffed0a13          	addi	s4,s10,-2
80015ba4:	01570733          	add	a4,a4,s5
80015ba8:	413709b3          	sub	s3,a4,s3
80015bac:	000b8593          	mv	a1,s7
80015bb0:	00098513          	mv	a0,s3
80015bb4:	075010ef          	jal	ra,80017428 <__udivsi3>
80015bb8:	00050593          	mv	a1,a0
80015bbc:	00050d13          	mv	s10,a0
80015bc0:	000c0513          	mv	a0,s8
80015bc4:	7a8010ef          	jal	ra,8001736c <__mulsi3>
80015bc8:	00050c93          	mv	s9,a0
80015bcc:	000b8593          	mv	a1,s7
80015bd0:	00098513          	mv	a0,s3
80015bd4:	09d010ef          	jal	ra,80017470 <__umodsi3>
80015bd8:	01041413          	slli	s0,s0,0x10
80015bdc:	01051513          	slli	a0,a0,0x10
80015be0:	01045413          	srli	s0,s0,0x10
80015be4:	00a46433          	or	s0,s0,a0
80015be8:	000d0793          	mv	a5,s10
80015bec:	01947e63          	bgeu	s0,s9,80015c08 <__divdf3+0x334>
80015bf0:	01540433          	add	s0,s0,s5
80015bf4:	fffd0793          	addi	a5,s10,-1
80015bf8:	01546863          	bltu	s0,s5,80015c08 <__divdf3+0x334>
80015bfc:	01947663          	bgeu	s0,s9,80015c08 <__divdf3+0x334>
80015c00:	ffed0793          	addi	a5,s10,-2
80015c04:	01540433          	add	s0,s0,s5
80015c08:	010a1813          	slli	a6,s4,0x10
80015c0c:	00010337          	lui	t1,0x10
80015c10:	00f86833          	or	a6,a6,a5
80015c14:	41940433          	sub	s0,s0,s9
80015c18:	fff30c93          	addi	s9,t1,-1 # ffff <font6x8-0x7fff002d>
80015c1c:	019878b3          	and	a7,a6,s9
80015c20:	019b7cb3          	and	s9,s6,s9
80015c24:	01085713          	srli	a4,a6,0x10
80015c28:	010b5d13          	srli	s10,s6,0x10
80015c2c:	00088513          	mv	a0,a7
80015c30:	000c8593          	mv	a1,s9
80015c34:	738010ef          	jal	ra,8001736c <__mulsi3>
80015c38:	00050793          	mv	a5,a0
80015c3c:	000d0593          	mv	a1,s10
80015c40:	00088513          	mv	a0,a7
80015c44:	728010ef          	jal	ra,8001736c <__mulsi3>
80015c48:	00050a13          	mv	s4,a0
80015c4c:	000c8593          	mv	a1,s9
80015c50:	00070513          	mv	a0,a4
80015c54:	718010ef          	jal	ra,8001736c <__mulsi3>
80015c58:	00050893          	mv	a7,a0
80015c5c:	000d0593          	mv	a1,s10
80015c60:	00070513          	mv	a0,a4
80015c64:	708010ef          	jal	ra,8001736c <__mulsi3>
80015c68:	0107d713          	srli	a4,a5,0x10
80015c6c:	011a0a33          	add	s4,s4,a7
80015c70:	01470733          	add	a4,a4,s4
80015c74:	01177463          	bgeu	a4,a7,80015c7c <__divdf3+0x3a8>
80015c78:	00650533          	add	a0,a0,t1
80015c7c:	01075693          	srli	a3,a4,0x10
80015c80:	00a686b3          	add	a3,a3,a0
80015c84:	00010537          	lui	a0,0x10
80015c88:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80015c8c:	00a77a33          	and	s4,a4,a0
80015c90:	010a1a13          	slli	s4,s4,0x10
80015c94:	00a7f7b3          	and	a5,a5,a0
80015c98:	00fa0a33          	add	s4,s4,a5
80015c9c:	00d46863          	bltu	s0,a3,80015cac <__divdf3+0x3d8>
80015ca0:	00080993          	mv	s3,a6
80015ca4:	04d41463          	bne	s0,a3,80015cec <__divdf3+0x418>
80015ca8:	054df263          	bgeu	s11,s4,80015cec <__divdf3+0x418>
80015cac:	016d8db3          	add	s11,s11,s6
80015cb0:	016db7b3          	sltu	a5,s11,s6
80015cb4:	015787b3          	add	a5,a5,s5
80015cb8:	00f40433          	add	s0,s0,a5
80015cbc:	fff80993          	addi	s3,a6,-1
80015cc0:	008ae663          	bltu	s5,s0,80015ccc <__divdf3+0x3f8>
80015cc4:	028a9463          	bne	s5,s0,80015cec <__divdf3+0x418>
80015cc8:	036de263          	bltu	s11,s6,80015cec <__divdf3+0x418>
80015ccc:	00d46663          	bltu	s0,a3,80015cd8 <__divdf3+0x404>
80015cd0:	00869e63          	bne	a3,s0,80015cec <__divdf3+0x418>
80015cd4:	014dfc63          	bgeu	s11,s4,80015cec <__divdf3+0x418>
80015cd8:	016d8db3          	add	s11,s11,s6
80015cdc:	016db7b3          	sltu	a5,s11,s6
80015ce0:	015787b3          	add	a5,a5,s5
80015ce4:	ffe80993          	addi	s3,a6,-2
80015ce8:	00f40433          	add	s0,s0,a5
80015cec:	414d8a33          	sub	s4,s11,s4
80015cf0:	40d40433          	sub	s0,s0,a3
80015cf4:	014db7b3          	sltu	a5,s11,s4
80015cf8:	40f40433          	sub	s0,s0,a5
80015cfc:	fff00813          	li	a6,-1
80015d00:	1a8a8063          	beq	s5,s0,80015ea0 <__divdf3+0x5cc>
80015d04:	000b8593          	mv	a1,s7
80015d08:	00040513          	mv	a0,s0
80015d0c:	71c010ef          	jal	ra,80017428 <__udivsi3>
80015d10:	00050593          	mv	a1,a0
80015d14:	00a12623          	sw	a0,12(sp)
80015d18:	000c0513          	mv	a0,s8
80015d1c:	650010ef          	jal	ra,8001736c <__mulsi3>
80015d20:	00a12423          	sw	a0,8(sp)
80015d24:	000b8593          	mv	a1,s7
80015d28:	00040513          	mv	a0,s0
80015d2c:	744010ef          	jal	ra,80017470 <__umodsi3>
80015d30:	00c12683          	lw	a3,12(sp)
80015d34:	00812703          	lw	a4,8(sp)
80015d38:	01051513          	slli	a0,a0,0x10
80015d3c:	010a5793          	srli	a5,s4,0x10
80015d40:	00a7e7b3          	or	a5,a5,a0
80015d44:	00068d93          	mv	s11,a3
80015d48:	00e7fe63          	bgeu	a5,a4,80015d64 <__divdf3+0x490>
80015d4c:	015787b3          	add	a5,a5,s5
80015d50:	fff68d93          	addi	s11,a3,-1 # 7fefffff <font6x8-0x10002d>
80015d54:	0157e863          	bltu	a5,s5,80015d64 <__divdf3+0x490>
80015d58:	00e7f663          	bgeu	a5,a4,80015d64 <__divdf3+0x490>
80015d5c:	ffe68d93          	addi	s11,a3,-2
80015d60:	015787b3          	add	a5,a5,s5
80015d64:	40e78433          	sub	s0,a5,a4
80015d68:	000b8593          	mv	a1,s7
80015d6c:	00040513          	mv	a0,s0
80015d70:	6b8010ef          	jal	ra,80017428 <__udivsi3>
80015d74:	00050593          	mv	a1,a0
80015d78:	00a12423          	sw	a0,8(sp)
80015d7c:	000c0513          	mv	a0,s8
80015d80:	5ec010ef          	jal	ra,8001736c <__mulsi3>
80015d84:	00050c13          	mv	s8,a0
80015d88:	000b8593          	mv	a1,s7
80015d8c:	00040513          	mv	a0,s0
80015d90:	6e0010ef          	jal	ra,80017470 <__umodsi3>
80015d94:	00812703          	lw	a4,8(sp)
80015d98:	010a1a13          	slli	s4,s4,0x10
80015d9c:	01051793          	slli	a5,a0,0x10
80015da0:	010a5a13          	srli	s4,s4,0x10
80015da4:	00fa67b3          	or	a5,s4,a5
80015da8:	00070693          	mv	a3,a4
80015dac:	0187fe63          	bgeu	a5,s8,80015dc8 <__divdf3+0x4f4>
80015db0:	015787b3          	add	a5,a5,s5
80015db4:	fff70693          	addi	a3,a4,-1
80015db8:	0157e863          	bltu	a5,s5,80015dc8 <__divdf3+0x4f4>
80015dbc:	0187f663          	bgeu	a5,s8,80015dc8 <__divdf3+0x4f4>
80015dc0:	ffe70693          	addi	a3,a4,-2
80015dc4:	015787b3          	add	a5,a5,s5
80015dc8:	010d9893          	slli	a7,s11,0x10
80015dcc:	00d8e8b3          	or	a7,a7,a3
80015dd0:	01089313          	slli	t1,a7,0x10
80015dd4:	01035313          	srli	t1,t1,0x10
80015dd8:	418787b3          	sub	a5,a5,s8
80015ddc:	0108d713          	srli	a4,a7,0x10
80015de0:	00030513          	mv	a0,t1
80015de4:	000c8593          	mv	a1,s9
80015de8:	584010ef          	jal	ra,8001736c <__mulsi3>
80015dec:	00050813          	mv	a6,a0
80015df0:	000d0593          	mv	a1,s10
80015df4:	00030513          	mv	a0,t1
80015df8:	574010ef          	jal	ra,8001736c <__mulsi3>
80015dfc:	00050313          	mv	t1,a0
80015e00:	000c8593          	mv	a1,s9
80015e04:	00070513          	mv	a0,a4
80015e08:	564010ef          	jal	ra,8001736c <__mulsi3>
80015e0c:	00050e13          	mv	t3,a0
80015e10:	000d0593          	mv	a1,s10
80015e14:	00070513          	mv	a0,a4
80015e18:	554010ef          	jal	ra,8001736c <__mulsi3>
80015e1c:	01085713          	srli	a4,a6,0x10
80015e20:	01c30333          	add	t1,t1,t3
80015e24:	00670733          	add	a4,a4,t1
80015e28:	01c77663          	bgeu	a4,t3,80015e34 <__divdf3+0x560>
80015e2c:	000106b7          	lui	a3,0x10
80015e30:	00d50533          	add	a0,a0,a3
80015e34:	01075593          	srli	a1,a4,0x10
80015e38:	00a585b3          	add	a1,a1,a0
80015e3c:	00010537          	lui	a0,0x10
80015e40:	fff50513          	addi	a0,a0,-1 # ffff <font6x8-0x7fff002d>
80015e44:	00a776b3          	and	a3,a4,a0
80015e48:	01069693          	slli	a3,a3,0x10
80015e4c:	00a87833          	and	a6,a6,a0
80015e50:	010686b3          	add	a3,a3,a6
80015e54:	00b7e863          	bltu	a5,a1,80015e64 <__divdf3+0x590>
80015e58:	24b79663          	bne	a5,a1,800160a4 <__divdf3+0x7d0>
80015e5c:	00088813          	mv	a6,a7
80015e60:	04068063          	beqz	a3,80015ea0 <__divdf3+0x5cc>
80015e64:	00fa8633          	add	a2,s5,a5
80015e68:	fff88813          	addi	a6,a7,-1
80015e6c:	03566463          	bltu	a2,s5,80015e94 <__divdf3+0x5c0>
80015e70:	00b66663          	bltu	a2,a1,80015e7c <__divdf3+0x5a8>
80015e74:	22b61663          	bne	a2,a1,800160a0 <__divdf3+0x7cc>
80015e78:	02db7063          	bgeu	s6,a3,80015e98 <__divdf3+0x5c4>
80015e7c:	001b1793          	slli	a5,s6,0x1
80015e80:	0167bb33          	sltu	s6,a5,s6
80015e84:	015b0ab3          	add	s5,s6,s5
80015e88:	ffe88813          	addi	a6,a7,-2
80015e8c:	01560633          	add	a2,a2,s5
80015e90:	00078b13          	mv	s6,a5
80015e94:	00b61463          	bne	a2,a1,80015e9c <__divdf3+0x5c8>
80015e98:	00db0463          	beq	s6,a3,80015ea0 <__divdf3+0x5cc>
80015e9c:	00186813          	ori	a6,a6,1
80015ea0:	3ff90793          	addi	a5,s2,1023
80015ea4:	10f05e63          	blez	a5,80015fc0 <__divdf3+0x6ec>
80015ea8:	00787713          	andi	a4,a6,7
80015eac:	02070063          	beqz	a4,80015ecc <__divdf3+0x5f8>
80015eb0:	00f87713          	andi	a4,a6,15
80015eb4:	00400693          	li	a3,4
80015eb8:	00d70a63          	beq	a4,a3,80015ecc <__divdf3+0x5f8>
80015ebc:	00480693          	addi	a3,a6,4
80015ec0:	0106b833          	sltu	a6,a3,a6
80015ec4:	010989b3          	add	s3,s3,a6
80015ec8:	00068813          	mv	a6,a3
80015ecc:	00799713          	slli	a4,s3,0x7
80015ed0:	00075a63          	bgez	a4,80015ee4 <__divdf3+0x610>
80015ed4:	ff0007b7          	lui	a5,0xff000
80015ed8:	fff78793          	addi	a5,a5,-1 # feffffff <__clzsi2+0x7efe8b2b>
80015edc:	00f9f9b3          	and	s3,s3,a5
80015ee0:	40090793          	addi	a5,s2,1024
80015ee4:	7fe00713          	li	a4,2046
80015ee8:	0af74663          	blt	a4,a5,80015f94 <__divdf3+0x6c0>
80015eec:	00385813          	srli	a6,a6,0x3
80015ef0:	01d99713          	slli	a4,s3,0x1d
80015ef4:	01076733          	or	a4,a4,a6
80015ef8:	0039d593          	srli	a1,s3,0x3
80015efc:	01479793          	slli	a5,a5,0x14
80015f00:	7ff006b7          	lui	a3,0x7ff00
80015f04:	00c59593          	slli	a1,a1,0xc
80015f08:	04c12083          	lw	ra,76(sp)
80015f0c:	04812403          	lw	s0,72(sp)
80015f10:	00d7f7b3          	and	a5,a5,a3
80015f14:	00c5d593          	srli	a1,a1,0xc
80015f18:	00b7e5b3          	or	a1,a5,a1
80015f1c:	01f49493          	slli	s1,s1,0x1f
80015f20:	0095e7b3          	or	a5,a1,s1
80015f24:	04012903          	lw	s2,64(sp)
80015f28:	04412483          	lw	s1,68(sp)
80015f2c:	03c12983          	lw	s3,60(sp)
80015f30:	03812a03          	lw	s4,56(sp)
80015f34:	03412a83          	lw	s5,52(sp)
80015f38:	03012b03          	lw	s6,48(sp)
80015f3c:	02c12b83          	lw	s7,44(sp)
80015f40:	02812c03          	lw	s8,40(sp)
80015f44:	02412c83          	lw	s9,36(sp)
80015f48:	02012d03          	lw	s10,32(sp)
80015f4c:	01c12d83          	lw	s11,28(sp)
80015f50:	00070513          	mv	a0,a4
80015f54:	00078593          	mv	a1,a5
80015f58:	05010113          	addi	sp,sp,80
80015f5c:	00008067          	ret
80015f60:	fff90913          	addi	s2,s2,-1
80015f64:	00000d93          	li	s11,0
80015f68:	bcdff06f          	j	80015b34 <__divdf3+0x260>
80015f6c:	000a8493          	mv	s1,s5
80015f70:	000c8993          	mv	s3,s9
80015f74:	00040813          	mv	a6,s0
80015f78:	000c0693          	mv	a3,s8
80015f7c:	00300793          	li	a5,3
80015f80:	0ef68863          	beq	a3,a5,80016070 <__divdf3+0x79c>
80015f84:	00100793          	li	a5,1
80015f88:	0ef68e63          	beq	a3,a5,80016084 <__divdf3+0x7b0>
80015f8c:	00200793          	li	a5,2
80015f90:	f0f698e3          	bne	a3,a5,80015ea0 <__divdf3+0x5cc>
80015f94:	00000593          	li	a1,0
80015f98:	00000713          	li	a4,0
80015f9c:	7ff00793          	li	a5,2047
80015fa0:	f5dff06f          	j	80015efc <__divdf3+0x628>
80015fa4:	000b0493          	mv	s1,s6
80015fa8:	fd5ff06f          	j	80015f7c <__divdf3+0x6a8>
80015fac:	000809b7          	lui	s3,0x80
80015fb0:	00000813          	li	a6,0
80015fb4:	00000493          	li	s1,0
80015fb8:	00300693          	li	a3,3
80015fbc:	fc1ff06f          	j	80015f7c <__divdf3+0x6a8>
80015fc0:	00100593          	li	a1,1
80015fc4:	40f585b3          	sub	a1,a1,a5
80015fc8:	03800713          	li	a4,56
80015fcc:	0ab74c63          	blt	a4,a1,80016084 <__divdf3+0x7b0>
80015fd0:	01f00713          	li	a4,31
80015fd4:	06b74463          	blt	a4,a1,8001603c <__divdf3+0x768>
80015fd8:	41e90913          	addi	s2,s2,1054
80015fdc:	012997b3          	sll	a5,s3,s2
80015fe0:	00b85733          	srl	a4,a6,a1
80015fe4:	01281933          	sll	s2,a6,s2
80015fe8:	00e7e7b3          	or	a5,a5,a4
80015fec:	01203933          	snez	s2,s2
80015ff0:	0127e7b3          	or	a5,a5,s2
80015ff4:	00b9d5b3          	srl	a1,s3,a1
80015ff8:	0077f713          	andi	a4,a5,7
80015ffc:	02070063          	beqz	a4,8001601c <__divdf3+0x748>
80016000:	00f7f713          	andi	a4,a5,15
80016004:	00400693          	li	a3,4
80016008:	00d70a63          	beq	a4,a3,8001601c <__divdf3+0x748>
8001600c:	00478713          	addi	a4,a5,4
80016010:	00f737b3          	sltu	a5,a4,a5
80016014:	00f585b3          	add	a1,a1,a5
80016018:	00070793          	mv	a5,a4
8001601c:	00859713          	slli	a4,a1,0x8
80016020:	06074863          	bltz	a4,80016090 <__divdf3+0x7bc>
80016024:	01d59713          	slli	a4,a1,0x1d
80016028:	0037d793          	srli	a5,a5,0x3
8001602c:	00f76733          	or	a4,a4,a5
80016030:	0035d593          	srli	a1,a1,0x3
80016034:	00000793          	li	a5,0
80016038:	ec5ff06f          	j	80015efc <__divdf3+0x628>
8001603c:	fe100713          	li	a4,-31
80016040:	40f707b3          	sub	a5,a4,a5
80016044:	02000693          	li	a3,32
80016048:	00f9d7b3          	srl	a5,s3,a5
8001604c:	00000713          	li	a4,0
80016050:	00d58663          	beq	a1,a3,8001605c <__divdf3+0x788>
80016054:	43e90913          	addi	s2,s2,1086
80016058:	01299733          	sll	a4,s3,s2
8001605c:	01076733          	or	a4,a4,a6
80016060:	00e03733          	snez	a4,a4
80016064:	00e7e7b3          	or	a5,a5,a4
80016068:	00000593          	li	a1,0
8001606c:	f8dff06f          	j	80015ff8 <__divdf3+0x724>
80016070:	000805b7          	lui	a1,0x80
80016074:	00000713          	li	a4,0
80016078:	7ff00793          	li	a5,2047
8001607c:	00000493          	li	s1,0
80016080:	e7dff06f          	j	80015efc <__divdf3+0x628>
80016084:	00000593          	li	a1,0
80016088:	00000713          	li	a4,0
8001608c:	fa9ff06f          	j	80016034 <__divdf3+0x760>
80016090:	00000593          	li	a1,0
80016094:	00000713          	li	a4,0
80016098:	00100793          	li	a5,1
8001609c:	e61ff06f          	j	80015efc <__divdf3+0x628>
800160a0:	00080893          	mv	a7,a6
800160a4:	00088813          	mv	a6,a7
800160a8:	df5ff06f          	j	80015e9c <__divdf3+0x5c8>

800160ac <__eqdf2>:
800160ac:	0145d713          	srli	a4,a1,0x14
800160b0:	001007b7          	lui	a5,0x100
800160b4:	fff78793          	addi	a5,a5,-1 # fffff <font6x8-0x7ff0002d>
800160b8:	0146d813          	srli	a6,a3,0x14
800160bc:	00050313          	mv	t1,a0
800160c0:	00050e93          	mv	t4,a0
800160c4:	7ff77713          	andi	a4,a4,2047
800160c8:	7ff00513          	li	a0,2047
800160cc:	00b7f8b3          	and	a7,a5,a1
800160d0:	00060f13          	mv	t5,a2
800160d4:	00d7f7b3          	and	a5,a5,a3
800160d8:	01f5d593          	srli	a1,a1,0x1f
800160dc:	7ff87813          	andi	a6,a6,2047
800160e0:	01f6d693          	srli	a3,a3,0x1f
800160e4:	00a71c63          	bne	a4,a0,800160fc <__eqdf2+0x50>
800160e8:	0068ee33          	or	t3,a7,t1
800160ec:	00100513          	li	a0,1
800160f0:	000e1463          	bnez	t3,800160f8 <__eqdf2+0x4c>
800160f4:	00e80663          	beq	a6,a4,80016100 <__eqdf2+0x54>
800160f8:	00008067          	ret
800160fc:	00a81863          	bne	a6,a0,8001610c <__eqdf2+0x60>
80016100:	00c7e633          	or	a2,a5,a2
80016104:	00100513          	li	a0,1
80016108:	fe0618e3          	bnez	a2,800160f8 <__eqdf2+0x4c>
8001610c:	00100513          	li	a0,1
80016110:	ff0714e3          	bne	a4,a6,800160f8 <__eqdf2+0x4c>
80016114:	fef892e3          	bne	a7,a5,800160f8 <__eqdf2+0x4c>
80016118:	ffee90e3          	bne	t4,t5,800160f8 <__eqdf2+0x4c>
8001611c:	00d58a63          	beq	a1,a3,80016130 <__eqdf2+0x84>
80016120:	fc071ce3          	bnez	a4,800160f8 <__eqdf2+0x4c>
80016124:	0068e533          	or	a0,a7,t1
80016128:	00a03533          	snez	a0,a0
8001612c:	00008067          	ret
80016130:	00000513          	li	a0,0
80016134:	00008067          	ret

80016138 <__gedf2>:
80016138:	00100737          	lui	a4,0x100
8001613c:	fff70713          	addi	a4,a4,-1 # fffff <font6x8-0x7ff0002d>
80016140:	0145d813          	srli	a6,a1,0x14
80016144:	00b778b3          	and	a7,a4,a1
80016148:	00050793          	mv	a5,a0
8001614c:	00050313          	mv	t1,a0
80016150:	7ff87813          	andi	a6,a6,2047
80016154:	01f5d513          	srli	a0,a1,0x1f
80016158:	7ff00e93          	li	t4,2047
8001615c:	0146d593          	srli	a1,a3,0x14
80016160:	00d77733          	and	a4,a4,a3
80016164:	00060e13          	mv	t3,a2
80016168:	7ff5f593          	andi	a1,a1,2047
8001616c:	01f6d693          	srli	a3,a3,0x1f
80016170:	01d81a63          	bne	a6,t4,80016184 <__gedf2+0x4c>
80016174:	00f8eeb3          	or	t4,a7,a5
80016178:	080e8a63          	beqz	t4,8001620c <__gedf2+0xd4>
8001617c:	ffe00513          	li	a0,-2
80016180:	00008067          	ret
80016184:	01d59663          	bne	a1,t4,80016190 <__gedf2+0x58>
80016188:	00c76eb3          	or	t4,a4,a2
8001618c:	fe0e98e3          	bnez	t4,8001617c <__gedf2+0x44>
80016190:	08081063          	bnez	a6,80016210 <__gedf2+0xd8>
80016194:	00f8e7b3          	or	a5,a7,a5
80016198:	0017b793          	seqz	a5,a5
8001619c:	00059663          	bnez	a1,800161a8 <__gedf2+0x70>
800161a0:	00c76633          	or	a2,a4,a2
800161a4:	04060c63          	beqz	a2,800161fc <__gedf2+0xc4>
800161a8:	00079c63          	bnez	a5,800161c0 <__gedf2+0x88>
800161ac:	00d51463          	bne	a0,a3,800161b4 <__gedf2+0x7c>
800161b0:	0305d063          	bge	a1,a6,800161d0 <__gedf2+0x98>
800161b4:	04050063          	beqz	a0,800161f4 <__gedf2+0xbc>
800161b8:	fff00513          	li	a0,-1
800161bc:	00008067          	ret
800161c0:	fff00513          	li	a0,-1
800161c4:	00068a63          	beqz	a3,800161d8 <__gedf2+0xa0>
800161c8:	00068513          	mv	a0,a3
800161cc:	00008067          	ret
800161d0:	00b85663          	bge	a6,a1,800161dc <__gedf2+0xa4>
800161d4:	fe0502e3          	beqz	a0,800161b8 <__gedf2+0x80>
800161d8:	00008067          	ret
800161dc:	fd176ce3          	bltu	a4,a7,800161b4 <__gedf2+0x7c>
800161e0:	02e89263          	bne	a7,a4,80016204 <__gedf2+0xcc>
800161e4:	fc6e68e3          	bltu	t3,t1,800161b4 <__gedf2+0x7c>
800161e8:	ffc366e3          	bltu	t1,t3,800161d4 <__gedf2+0x9c>
800161ec:	00000513          	li	a0,0
800161f0:	00008067          	ret
800161f4:	00100513          	li	a0,1
800161f8:	00008067          	ret
800161fc:	fe0798e3          	bnez	a5,800161ec <__gedf2+0xb4>
80016200:	fb5ff06f          	j	800161b4 <__gedf2+0x7c>
80016204:	fce8e8e3          	bltu	a7,a4,800161d4 <__gedf2+0x9c>
80016208:	fe5ff06f          	j	800161ec <__gedf2+0xb4>
8001620c:	f7058ee3          	beq	a1,a6,80016188 <__gedf2+0x50>
80016210:	f8059ee3          	bnez	a1,800161ac <__gedf2+0x74>
80016214:	00000793          	li	a5,0
80016218:	f89ff06f          	j	800161a0 <__gedf2+0x68>

8001621c <__ledf2>:
8001621c:	00100737          	lui	a4,0x100
80016220:	fff70713          	addi	a4,a4,-1 # fffff <font6x8-0x7ff0002d>
80016224:	0145d813          	srli	a6,a1,0x14
80016228:	00b778b3          	and	a7,a4,a1
8001622c:	00050793          	mv	a5,a0
80016230:	00050313          	mv	t1,a0
80016234:	7ff87813          	andi	a6,a6,2047
80016238:	01f5d513          	srli	a0,a1,0x1f
8001623c:	7ff00e93          	li	t4,2047
80016240:	0146d593          	srli	a1,a3,0x14
80016244:	00d77733          	and	a4,a4,a3
80016248:	00060e13          	mv	t3,a2
8001624c:	7ff5f593          	andi	a1,a1,2047
80016250:	01f6d693          	srli	a3,a3,0x1f
80016254:	01d81a63          	bne	a6,t4,80016268 <__ledf2+0x4c>
80016258:	00f8eeb3          	or	t4,a7,a5
8001625c:	080e8a63          	beqz	t4,800162f0 <__ledf2+0xd4>
80016260:	00200513          	li	a0,2
80016264:	00008067          	ret
80016268:	01d59663          	bne	a1,t4,80016274 <__ledf2+0x58>
8001626c:	00c76eb3          	or	t4,a4,a2
80016270:	fe0e98e3          	bnez	t4,80016260 <__ledf2+0x44>
80016274:	08081063          	bnez	a6,800162f4 <__ledf2+0xd8>
80016278:	00f8e7b3          	or	a5,a7,a5
8001627c:	0017b793          	seqz	a5,a5
80016280:	00059663          	bnez	a1,8001628c <__ledf2+0x70>
80016284:	00c76633          	or	a2,a4,a2
80016288:	04060c63          	beqz	a2,800162e0 <__ledf2+0xc4>
8001628c:	00079c63          	bnez	a5,800162a4 <__ledf2+0x88>
80016290:	00d51463          	bne	a0,a3,80016298 <__ledf2+0x7c>
80016294:	0305d063          	bge	a1,a6,800162b4 <__ledf2+0x98>
80016298:	04050063          	beqz	a0,800162d8 <__ledf2+0xbc>
8001629c:	fff00513          	li	a0,-1
800162a0:	00008067          	ret
800162a4:	fff00513          	li	a0,-1
800162a8:	00068a63          	beqz	a3,800162bc <__ledf2+0xa0>
800162ac:	00068513          	mv	a0,a3
800162b0:	00008067          	ret
800162b4:	00b85663          	bge	a6,a1,800162c0 <__ledf2+0xa4>
800162b8:	fe0502e3          	beqz	a0,8001629c <__ledf2+0x80>
800162bc:	00008067          	ret
800162c0:	fd176ce3          	bltu	a4,a7,80016298 <__ledf2+0x7c>
800162c4:	02e89263          	bne	a7,a4,800162e8 <__ledf2+0xcc>
800162c8:	fc6e68e3          	bltu	t3,t1,80016298 <__ledf2+0x7c>
800162cc:	ffc366e3          	bltu	t1,t3,800162b8 <__ledf2+0x9c>
800162d0:	00000513          	li	a0,0
800162d4:	00008067          	ret
800162d8:	00100513          	li	a0,1
800162dc:	00008067          	ret
800162e0:	fe0798e3          	bnez	a5,800162d0 <__ledf2+0xb4>
800162e4:	fb5ff06f          	j	80016298 <__ledf2+0x7c>
800162e8:	fce8e8e3          	bltu	a7,a4,800162b8 <__ledf2+0x9c>
800162ec:	fe5ff06f          	j	800162d0 <__ledf2+0xb4>
800162f0:	f7058ee3          	beq	a1,a6,8001626c <__ledf2+0x50>
800162f4:	f8059ee3          	bnez	a1,80016290 <__ledf2+0x74>
800162f8:	00000793          	li	a5,0
800162fc:	f89ff06f          	j	80016284 <__ledf2+0x68>

80016300 <__muldf3>:
80016300:	fd010113          	addi	sp,sp,-48
80016304:	0145d793          	srli	a5,a1,0x14
80016308:	02812423          	sw	s0,40(sp)
8001630c:	02912223          	sw	s1,36(sp)
80016310:	01312e23          	sw	s3,28(sp)
80016314:	01412c23          	sw	s4,24(sp)
80016318:	01512a23          	sw	s5,20(sp)
8001631c:	00c59493          	slli	s1,a1,0xc
80016320:	02112623          	sw	ra,44(sp)
80016324:	03212023          	sw	s2,32(sp)
80016328:	01612823          	sw	s6,16(sp)
8001632c:	01712623          	sw	s7,12(sp)
80016330:	01579713          	slli	a4,a5,0x15
80016334:	00050413          	mv	s0,a0
80016338:	00060993          	mv	s3,a2
8001633c:	00068a93          	mv	s5,a3
80016340:	00c4d493          	srli	s1,s1,0xc
80016344:	01f5da13          	srli	s4,a1,0x1f
80016348:	0a070663          	beqz	a4,800163f4 <__muldf3+0xf4>
8001634c:	7ff7fb13          	andi	s6,a5,2047
80016350:	7ff00793          	li	a5,2047
80016354:	10fb0263          	beq	s6,a5,80016458 <__muldf3+0x158>
80016358:	01d55793          	srli	a5,a0,0x1d
8001635c:	00349493          	slli	s1,s1,0x3
80016360:	0097e4b3          	or	s1,a5,s1
80016364:	008007b7          	lui	a5,0x800
80016368:	00f4e4b3          	or	s1,s1,a5
8001636c:	00351913          	slli	s2,a0,0x3
80016370:	c01b0b13          	addi	s6,s6,-1023
80016374:	00000b93          	li	s7,0
80016378:	014ad793          	srli	a5,s5,0x14
8001637c:	00ca9413          	slli	s0,s5,0xc
80016380:	01579713          	slli	a4,a5,0x15
80016384:	00c45413          	srli	s0,s0,0xc
80016388:	7ff7f513          	andi	a0,a5,2047
8001638c:	01fada93          	srli	s5,s5,0x1f
80016390:	10070063          	beqz	a4,80016490 <__muldf3+0x190>
80016394:	7ff00793          	li	a5,2047
80016398:	16f50063          	beq	a0,a5,800164f8 <__muldf3+0x1f8>
8001639c:	01d9d793          	srli	a5,s3,0x1d
800163a0:	00341413          	slli	s0,s0,0x3
800163a4:	0087e433          	or	s0,a5,s0
800163a8:	008007b7          	lui	a5,0x800
800163ac:	00f46433          	or	s0,s0,a5
800163b0:	c0150513          	addi	a0,a0,-1023
800163b4:	00399793          	slli	a5,s3,0x3
800163b8:	00000713          	li	a4,0
800163bc:	002b9693          	slli	a3,s7,0x2
800163c0:	00e6e6b3          	or	a3,a3,a4
800163c4:	00ab0b33          	add	s6,s6,a0
800163c8:	fff68693          	addi	a3,a3,-1 # 7fefffff <font6x8-0x10002d>
800163cc:	00e00613          	li	a2,14
800163d0:	015a4833          	xor	a6,s4,s5
800163d4:	001b0893          	addi	a7,s6,1
800163d8:	14d66c63          	bltu	a2,a3,80016530 <__muldf3+0x230>
800163dc:	80000637          	lui	a2,0x80000
800163e0:	00269693          	slli	a3,a3,0x2
800163e4:	55c60613          	addi	a2,a2,1372 # 8000055c <__clzsi2+0xfffe9088>
800163e8:	00c686b3          	add	a3,a3,a2
800163ec:	0006a683          	lw	a3,0(a3)
800163f0:	00068067          	jr	a3
800163f4:	00a4e933          	or	s2,s1,a0
800163f8:	06090c63          	beqz	s2,80016470 <__muldf3+0x170>
800163fc:	04048063          	beqz	s1,8001643c <__muldf3+0x13c>
80016400:	00048513          	mv	a0,s1
80016404:	0d0010ef          	jal	ra,800174d4 <__clzsi2>
80016408:	ff550713          	addi	a4,a0,-11
8001640c:	01c00793          	li	a5,28
80016410:	02e7cc63          	blt	a5,a4,80016448 <__muldf3+0x148>
80016414:	01d00793          	li	a5,29
80016418:	ff850913          	addi	s2,a0,-8
8001641c:	40e787b3          	sub	a5,a5,a4
80016420:	012494b3          	sll	s1,s1,s2
80016424:	00f457b3          	srl	a5,s0,a5
80016428:	0097e4b3          	or	s1,a5,s1
8001642c:	01241933          	sll	s2,s0,s2
80016430:	c0d00b13          	li	s6,-1011
80016434:	40ab0b33          	sub	s6,s6,a0
80016438:	f3dff06f          	j	80016374 <__muldf3+0x74>
8001643c:	098010ef          	jal	ra,800174d4 <__clzsi2>
80016440:	02050513          	addi	a0,a0,32
80016444:	fc5ff06f          	j	80016408 <__muldf3+0x108>
80016448:	fd850493          	addi	s1,a0,-40
8001644c:	009414b3          	sll	s1,s0,s1
80016450:	00000913          	li	s2,0
80016454:	fddff06f          	j	80016430 <__muldf3+0x130>
80016458:	00a4e933          	or	s2,s1,a0
8001645c:	02090263          	beqz	s2,80016480 <__muldf3+0x180>
80016460:	00050913          	mv	s2,a0
80016464:	7ff00b13          	li	s6,2047
80016468:	00300b93          	li	s7,3
8001646c:	f0dff06f          	j	80016378 <__muldf3+0x78>
80016470:	00000493          	li	s1,0
80016474:	00000b13          	li	s6,0
80016478:	00100b93          	li	s7,1
8001647c:	efdff06f          	j	80016378 <__muldf3+0x78>
80016480:	00000493          	li	s1,0
80016484:	7ff00b13          	li	s6,2047
80016488:	00200b93          	li	s7,2
8001648c:	eedff06f          	j	80016378 <__muldf3+0x78>
80016490:	013467b3          	or	a5,s0,s3
80016494:	06078e63          	beqz	a5,80016510 <__muldf3+0x210>
80016498:	04040063          	beqz	s0,800164d8 <__muldf3+0x1d8>
8001649c:	00040513          	mv	a0,s0
800164a0:	034010ef          	jal	ra,800174d4 <__clzsi2>
800164a4:	ff550693          	addi	a3,a0,-11
800164a8:	01c00793          	li	a5,28
800164ac:	02d7ce63          	blt	a5,a3,800164e8 <__muldf3+0x1e8>
800164b0:	01d00713          	li	a4,29
800164b4:	ff850793          	addi	a5,a0,-8
800164b8:	40d70733          	sub	a4,a4,a3
800164bc:	00f41433          	sll	s0,s0,a5
800164c0:	00e9d733          	srl	a4,s3,a4
800164c4:	00876433          	or	s0,a4,s0
800164c8:	00f997b3          	sll	a5,s3,a5
800164cc:	c0d00713          	li	a4,-1011
800164d0:	40a70533          	sub	a0,a4,a0
800164d4:	ee5ff06f          	j	800163b8 <__muldf3+0xb8>
800164d8:	00098513          	mv	a0,s3
800164dc:	7f9000ef          	jal	ra,800174d4 <__clzsi2>
800164e0:	02050513          	addi	a0,a0,32
800164e4:	fc1ff06f          	j	800164a4 <__muldf3+0x1a4>
800164e8:	fd850413          	addi	s0,a0,-40
800164ec:	00899433          	sll	s0,s3,s0
800164f0:	00000793          	li	a5,0
800164f4:	fd9ff06f          	j	800164cc <__muldf3+0x1cc>
800164f8:	013467b3          	or	a5,s0,s3
800164fc:	02078263          	beqz	a5,80016520 <__muldf3+0x220>
80016500:	00098793          	mv	a5,s3
80016504:	7ff00513          	li	a0,2047
80016508:	00300713          	li	a4,3
8001650c:	eb1ff06f          	j	800163bc <__muldf3+0xbc>
80016510:	00000413          	li	s0,0
80016514:	00000513          	li	a0,0
80016518:	00100713          	li	a4,1
8001651c:	ea1ff06f          	j	800163bc <__muldf3+0xbc>
80016520:	00000413          	li	s0,0
80016524:	7ff00513          	li	a0,2047
80016528:	00200713          	li	a4,2
8001652c:	e91ff06f          	j	800163bc <__muldf3+0xbc>
80016530:	00010ab7          	lui	s5,0x10
80016534:	fffa8313          	addi	t1,s5,-1 # ffff <font6x8-0x7fff002d>
80016538:	01095f93          	srli	t6,s2,0x10
8001653c:	0067f9b3          	and	s3,a5,t1
80016540:	00697933          	and	s2,s2,t1
80016544:	0107d293          	srli	t0,a5,0x10
80016548:	00090513          	mv	a0,s2
8001654c:	00098593          	mv	a1,s3
80016550:	61d000ef          	jal	ra,8001736c <__mulsi3>
80016554:	00050a13          	mv	s4,a0
80016558:	00028593          	mv	a1,t0
8001655c:	00090513          	mv	a0,s2
80016560:	60d000ef          	jal	ra,8001736c <__mulsi3>
80016564:	00050e93          	mv	t4,a0
80016568:	00098593          	mv	a1,s3
8001656c:	000f8513          	mv	a0,t6
80016570:	5fd000ef          	jal	ra,8001736c <__mulsi3>
80016574:	00050393          	mv	t2,a0
80016578:	00028593          	mv	a1,t0
8001657c:	000f8513          	mv	a0,t6
80016580:	5ed000ef          	jal	ra,8001736c <__mulsi3>
80016584:	010a5713          	srli	a4,s4,0x10
80016588:	007e8eb3          	add	t4,t4,t2
8001658c:	01d70733          	add	a4,a4,t4
80016590:	00050f13          	mv	t5,a0
80016594:	00777463          	bgeu	a4,t2,8001659c <__muldf3+0x29c>
80016598:	01550f33          	add	t5,a0,s5
8001659c:	00677e33          	and	t3,a4,t1
800165a0:	006a7533          	and	a0,s4,t1
800165a4:	01045393          	srli	t2,s0,0x10
800165a8:	010e1e13          	slli	t3,t3,0x10
800165ac:	00647433          	and	s0,s0,t1
800165b0:	00ae0e33          	add	t3,t3,a0
800165b4:	01075793          	srli	a5,a4,0x10
800165b8:	00090513          	mv	a0,s2
800165bc:	00040593          	mv	a1,s0
800165c0:	5ad000ef          	jal	ra,8001736c <__mulsi3>
800165c4:	00050e93          	mv	t4,a0
800165c8:	00038593          	mv	a1,t2
800165cc:	00090513          	mv	a0,s2
800165d0:	59d000ef          	jal	ra,8001736c <__mulsi3>
800165d4:	00050313          	mv	t1,a0
800165d8:	00040593          	mv	a1,s0
800165dc:	000f8513          	mv	a0,t6
800165e0:	58d000ef          	jal	ra,8001736c <__mulsi3>
800165e4:	00050913          	mv	s2,a0
800165e8:	00038593          	mv	a1,t2
800165ec:	000f8513          	mv	a0,t6
800165f0:	57d000ef          	jal	ra,8001736c <__mulsi3>
800165f4:	010ed693          	srli	a3,t4,0x10
800165f8:	01230333          	add	t1,t1,s2
800165fc:	006686b3          	add	a3,a3,t1
80016600:	00050713          	mv	a4,a0
80016604:	0126f663          	bgeu	a3,s2,80016610 <__muldf3+0x310>
80016608:	00010637          	lui	a2,0x10
8001660c:	00c50733          	add	a4,a0,a2
80016610:	0106df93          	srli	t6,a3,0x10
80016614:	00010bb7          	lui	s7,0x10
80016618:	00ef8fb3          	add	t6,t6,a4
8001661c:	fffb8713          	addi	a4,s7,-1 # ffff <font6x8-0x7fff002d>
80016620:	00e6f6b3          	and	a3,a3,a4
80016624:	01069693          	slli	a3,a3,0x10
80016628:	00eefeb3          	and	t4,t4,a4
8001662c:	01d68eb3          	add	t4,a3,t4
80016630:	0104da93          	srli	s5,s1,0x10
80016634:	00e4f4b3          	and	s1,s1,a4
80016638:	01d78933          	add	s2,a5,t4
8001663c:	00048513          	mv	a0,s1
80016640:	00098593          	mv	a1,s3
80016644:	529000ef          	jal	ra,8001736c <__mulsi3>
80016648:	00050a13          	mv	s4,a0
8001664c:	00028593          	mv	a1,t0
80016650:	00048513          	mv	a0,s1
80016654:	519000ef          	jal	ra,8001736c <__mulsi3>
80016658:	00050713          	mv	a4,a0
8001665c:	00098593          	mv	a1,s3
80016660:	000a8513          	mv	a0,s5
80016664:	509000ef          	jal	ra,8001736c <__mulsi3>
80016668:	00050313          	mv	t1,a0
8001666c:	00028593          	mv	a1,t0
80016670:	000a8513          	mv	a0,s5
80016674:	4f9000ef          	jal	ra,8001736c <__mulsi3>
80016678:	010a5793          	srli	a5,s4,0x10
8001667c:	00670733          	add	a4,a4,t1
80016680:	00e787b3          	add	a5,a5,a4
80016684:	00050293          	mv	t0,a0
80016688:	0067f463          	bgeu	a5,t1,80016690 <__muldf3+0x390>
8001668c:	017502b3          	add	t0,a0,s7
80016690:	0107d513          	srli	a0,a5,0x10
80016694:	00010bb7          	lui	s7,0x10
80016698:	005502b3          	add	t0,a0,t0
8001669c:	fffb8513          	addi	a0,s7,-1 # ffff <font6x8-0x7fff002d>
800166a0:	00a7f333          	and	t1,a5,a0
800166a4:	00aa7a33          	and	s4,s4,a0
800166a8:	01031313          	slli	t1,t1,0x10
800166ac:	01430333          	add	t1,t1,s4
800166b0:	00048513          	mv	a0,s1
800166b4:	00040593          	mv	a1,s0
800166b8:	4b5000ef          	jal	ra,8001736c <__mulsi3>
800166bc:	00050993          	mv	s3,a0
800166c0:	00038593          	mv	a1,t2
800166c4:	00048513          	mv	a0,s1
800166c8:	4a5000ef          	jal	ra,8001736c <__mulsi3>
800166cc:	00050793          	mv	a5,a0
800166d0:	00040593          	mv	a1,s0
800166d4:	000a8513          	mv	a0,s5
800166d8:	495000ef          	jal	ra,8001736c <__mulsi3>
800166dc:	00050413          	mv	s0,a0
800166e0:	00038593          	mv	a1,t2
800166e4:	000a8513          	mv	a0,s5
800166e8:	485000ef          	jal	ra,8001736c <__mulsi3>
800166ec:	0109d593          	srli	a1,s3,0x10
800166f0:	008787b3          	add	a5,a5,s0
800166f4:	00f585b3          	add	a1,a1,a5
800166f8:	0085f463          	bgeu	a1,s0,80016700 <__muldf3+0x400>
800166fc:	01750533          	add	a0,a0,s7
80016700:	00010737          	lui	a4,0x10
80016704:	fff70713          	addi	a4,a4,-1 # ffff <font6x8-0x7fff002d>
80016708:	00e5f6b3          	and	a3,a1,a4
8001670c:	01069693          	slli	a3,a3,0x10
80016710:	00e9f733          	and	a4,s3,a4
80016714:	01e90633          	add	a2,s2,t5
80016718:	00e686b3          	add	a3,a3,a4
8001671c:	01d63eb3          	sltu	t4,a2,t4
80016720:	01f68733          	add	a4,a3,t6
80016724:	01d706b3          	add	a3,a4,t4
80016728:	00660633          	add	a2,a2,t1
8001672c:	00663333          	sltu	t1,a2,t1
80016730:	00568f33          	add	t5,a3,t0
80016734:	006f03b3          	add	t2,t5,t1
80016738:	01f73733          	sltu	a4,a4,t6
8001673c:	01d6beb3          	sltu	t4,a3,t4
80016740:	01d76733          	or	a4,a4,t4
80016744:	0105d593          	srli	a1,a1,0x10
80016748:	005f32b3          	sltu	t0,t5,t0
8001674c:	0063b333          	sltu	t1,t2,t1
80016750:	00961793          	slli	a5,a2,0x9
80016754:	00b70733          	add	a4,a4,a1
80016758:	0062e333          	or	t1,t0,t1
8001675c:	00670733          	add	a4,a4,t1
80016760:	01c7e7b3          	or	a5,a5,t3
80016764:	00a70533          	add	a0,a4,a0
80016768:	00f037b3          	snez	a5,a5
8001676c:	01765613          	srli	a2,a2,0x17
80016770:	00951513          	slli	a0,a0,0x9
80016774:	00939713          	slli	a4,t2,0x9
80016778:	00c7e7b3          	or	a5,a5,a2
8001677c:	0173d413          	srli	s0,t2,0x17
80016780:	00e7e7b3          	or	a5,a5,a4
80016784:	00751713          	slli	a4,a0,0x7
80016788:	00856433          	or	s0,a0,s0
8001678c:	10075463          	bgez	a4,80016894 <__muldf3+0x594>
80016790:	0017d713          	srli	a4,a5,0x1
80016794:	0017f793          	andi	a5,a5,1
80016798:	00f767b3          	or	a5,a4,a5
8001679c:	01f41713          	slli	a4,s0,0x1f
800167a0:	00e7e7b3          	or	a5,a5,a4
800167a4:	00145413          	srli	s0,s0,0x1
800167a8:	3ff88693          	addi	a3,a7,1023
800167ac:	0ed05863          	blez	a3,8001689c <__muldf3+0x59c>
800167b0:	0077f713          	andi	a4,a5,7
800167b4:	02070063          	beqz	a4,800167d4 <__muldf3+0x4d4>
800167b8:	00f7f713          	andi	a4,a5,15
800167bc:	00400613          	li	a2,4
800167c0:	00c70a63          	beq	a4,a2,800167d4 <__muldf3+0x4d4>
800167c4:	00478713          	addi	a4,a5,4 # 800004 <font6x8-0x7f800028>
800167c8:	00f737b3          	sltu	a5,a4,a5
800167cc:	00f40433          	add	s0,s0,a5
800167d0:	00070793          	mv	a5,a4
800167d4:	00741713          	slli	a4,s0,0x7
800167d8:	00075a63          	bgez	a4,800167ec <__muldf3+0x4ec>
800167dc:	ff000737          	lui	a4,0xff000
800167e0:	fff70713          	addi	a4,a4,-1 # feffffff <__clzsi2+0x7efe8b2b>
800167e4:	00e47433          	and	s0,s0,a4
800167e8:	40088693          	addi	a3,a7,1024
800167ec:	7fe00713          	li	a4,2046
800167f0:	16d74863          	blt	a4,a3,80016960 <__muldf3+0x660>
800167f4:	0037d713          	srli	a4,a5,0x3
800167f8:	01d41793          	slli	a5,s0,0x1d
800167fc:	00e7e7b3          	or	a5,a5,a4
80016800:	00345413          	srli	s0,s0,0x3
80016804:	01469713          	slli	a4,a3,0x14
80016808:	00c41413          	slli	s0,s0,0xc
8001680c:	7ff006b7          	lui	a3,0x7ff00
80016810:	00d77733          	and	a4,a4,a3
80016814:	00c45413          	srli	s0,s0,0xc
80016818:	00876433          	or	s0,a4,s0
8001681c:	01f81813          	slli	a6,a6,0x1f
80016820:	02c12083          	lw	ra,44(sp)
80016824:	01046733          	or	a4,s0,a6
80016828:	02812403          	lw	s0,40(sp)
8001682c:	02412483          	lw	s1,36(sp)
80016830:	02012903          	lw	s2,32(sp)
80016834:	01c12983          	lw	s3,28(sp)
80016838:	01812a03          	lw	s4,24(sp)
8001683c:	01412a83          	lw	s5,20(sp)
80016840:	01012b03          	lw	s6,16(sp)
80016844:	00c12b83          	lw	s7,12(sp)
80016848:	00078513          	mv	a0,a5
8001684c:	00070593          	mv	a1,a4
80016850:	03010113          	addi	sp,sp,48
80016854:	00008067          	ret
80016858:	000a0813          	mv	a6,s4
8001685c:	00048413          	mv	s0,s1
80016860:	00090793          	mv	a5,s2
80016864:	000b8713          	mv	a4,s7
80016868:	00200693          	li	a3,2
8001686c:	0ed70a63          	beq	a4,a3,80016960 <__muldf3+0x660>
80016870:	00300693          	li	a3,3
80016874:	0cd70c63          	beq	a4,a3,8001694c <__muldf3+0x64c>
80016878:	00100693          	li	a3,1
8001687c:	f2d716e3          	bne	a4,a3,800167a8 <__muldf3+0x4a8>
80016880:	00000413          	li	s0,0
80016884:	00000793          	li	a5,0
80016888:	0880006f          	j	80016910 <__muldf3+0x610>
8001688c:	000a8813          	mv	a6,s5
80016890:	fd9ff06f          	j	80016868 <__muldf3+0x568>
80016894:	000b0893          	mv	a7,s6
80016898:	f11ff06f          	j	800167a8 <__muldf3+0x4a8>
8001689c:	00100613          	li	a2,1
800168a0:	40d60633          	sub	a2,a2,a3
800168a4:	03800713          	li	a4,56
800168a8:	fcc74ce3          	blt	a4,a2,80016880 <__muldf3+0x580>
800168ac:	01f00713          	li	a4,31
800168b0:	06c74463          	blt	a4,a2,80016918 <__muldf3+0x618>
800168b4:	41e88893          	addi	a7,a7,1054
800168b8:	01141733          	sll	a4,s0,a7
800168bc:	00c7d6b3          	srl	a3,a5,a2
800168c0:	011797b3          	sll	a5,a5,a7
800168c4:	00d76733          	or	a4,a4,a3
800168c8:	00f037b3          	snez	a5,a5
800168cc:	00f767b3          	or	a5,a4,a5
800168d0:	00c45433          	srl	s0,s0,a2
800168d4:	0077f713          	andi	a4,a5,7
800168d8:	02070063          	beqz	a4,800168f8 <__muldf3+0x5f8>
800168dc:	00f7f713          	andi	a4,a5,15
800168e0:	00400693          	li	a3,4
800168e4:	00d70a63          	beq	a4,a3,800168f8 <__muldf3+0x5f8>
800168e8:	00478713          	addi	a4,a5,4
800168ec:	00f737b3          	sltu	a5,a4,a5
800168f0:	00f40433          	add	s0,s0,a5
800168f4:	00070793          	mv	a5,a4
800168f8:	00841713          	slli	a4,s0,0x8
800168fc:	06074a63          	bltz	a4,80016970 <__muldf3+0x670>
80016900:	01d41713          	slli	a4,s0,0x1d
80016904:	0037d793          	srli	a5,a5,0x3
80016908:	00f767b3          	or	a5,a4,a5
8001690c:	00345413          	srli	s0,s0,0x3
80016910:	00000693          	li	a3,0
80016914:	ef1ff06f          	j	80016804 <__muldf3+0x504>
80016918:	fe100713          	li	a4,-31
8001691c:	40d70733          	sub	a4,a4,a3
80016920:	02000593          	li	a1,32
80016924:	00e45733          	srl	a4,s0,a4
80016928:	00000693          	li	a3,0
8001692c:	00b60663          	beq	a2,a1,80016938 <__muldf3+0x638>
80016930:	43e88893          	addi	a7,a7,1086
80016934:	011416b3          	sll	a3,s0,a7
80016938:	00f6e7b3          	or	a5,a3,a5
8001693c:	00f037b3          	snez	a5,a5
80016940:	00f767b3          	or	a5,a4,a5
80016944:	00000413          	li	s0,0
80016948:	f8dff06f          	j	800168d4 <__muldf3+0x5d4>
8001694c:	00080437          	lui	s0,0x80
80016950:	00000793          	li	a5,0
80016954:	7ff00693          	li	a3,2047
80016958:	00000813          	li	a6,0
8001695c:	ea9ff06f          	j	80016804 <__muldf3+0x504>
80016960:	00000413          	li	s0,0
80016964:	00000793          	li	a5,0
80016968:	7ff00693          	li	a3,2047
8001696c:	e99ff06f          	j	80016804 <__muldf3+0x504>
80016970:	00000413          	li	s0,0
80016974:	00000793          	li	a5,0
80016978:	00100693          	li	a3,1
8001697c:	e89ff06f          	j	80016804 <__muldf3+0x504>

80016980 <__subdf3>:
80016980:	00100837          	lui	a6,0x100
80016984:	fff80813          	addi	a6,a6,-1 # fffff <font6x8-0x7ff0002d>
80016988:	fe010113          	addi	sp,sp,-32
8001698c:	00b877b3          	and	a5,a6,a1
80016990:	0145d713          	srli	a4,a1,0x14
80016994:	00d87833          	and	a6,a6,a3
80016998:	0146d893          	srli	a7,a3,0x14
8001699c:	00812c23          	sw	s0,24(sp)
800169a0:	00379793          	slli	a5,a5,0x3
800169a4:	7ff77413          	andi	s0,a4,2047
800169a8:	01d55713          	srli	a4,a0,0x1d
800169ac:	00912a23          	sw	s1,20(sp)
800169b0:	00f767b3          	or	a5,a4,a5
800169b4:	01f5d493          	srli	s1,a1,0x1f
800169b8:	01d65713          	srli	a4,a2,0x1d
800169bc:	01f6d593          	srli	a1,a3,0x1f
800169c0:	00381813          	slli	a6,a6,0x3
800169c4:	00112e23          	sw	ra,28(sp)
800169c8:	01212823          	sw	s2,16(sp)
800169cc:	01312623          	sw	s3,12(sp)
800169d0:	7ff8f893          	andi	a7,a7,2047
800169d4:	7ff00693          	li	a3,2047
800169d8:	00351513          	slli	a0,a0,0x3
800169dc:	01076733          	or	a4,a4,a6
800169e0:	00361613          	slli	a2,a2,0x3
800169e4:	00d89663          	bne	a7,a3,800169f0 <__subdf3+0x70>
800169e8:	00c766b3          	or	a3,a4,a2
800169ec:	00069463          	bnez	a3,800169f4 <__subdf3+0x74>
800169f0:	0015c593          	xori	a1,a1,1
800169f4:	41140833          	sub	a6,s0,a7
800169f8:	2c959063          	bne	a1,s1,80016cb8 <__subdf3+0x338>
800169fc:	13005c63          	blez	a6,80016b34 <__subdf3+0x1b4>
80016a00:	06089063          	bnez	a7,80016a60 <__subdf3+0xe0>
80016a04:	00c766b3          	or	a3,a4,a2
80016a08:	02068863          	beqz	a3,80016a38 <__subdf3+0xb8>
80016a0c:	fff40813          	addi	a6,s0,-1 # 7ffff <font6x8-0x7ff8002d>
80016a10:	02081063          	bnez	a6,80016a30 <__subdf3+0xb0>
80016a14:	00c50633          	add	a2,a0,a2
80016a18:	00a63533          	sltu	a0,a2,a0
80016a1c:	00e787b3          	add	a5,a5,a4
80016a20:	00a787b3          	add	a5,a5,a0
80016a24:	00060513          	mv	a0,a2
80016a28:	00100413          	li	s0,1
80016a2c:	08c0006f          	j	80016ab8 <__subdf3+0x138>
80016a30:	7ff00693          	li	a3,2047
80016a34:	02d41e63          	bne	s0,a3,80016a70 <__subdf3+0xf0>
80016a38:	00757713          	andi	a4,a0,7
80016a3c:	62070c63          	beqz	a4,80017074 <__subdf3+0x6f4>
80016a40:	00f57713          	andi	a4,a0,15
80016a44:	00400693          	li	a3,4
80016a48:	62d70663          	beq	a4,a3,80017074 <__subdf3+0x6f4>
80016a4c:	00450693          	addi	a3,a0,4
80016a50:	00a6b533          	sltu	a0,a3,a0
80016a54:	00a787b3          	add	a5,a5,a0
80016a58:	00068513          	mv	a0,a3
80016a5c:	6180006f          	j	80017074 <__subdf3+0x6f4>
80016a60:	7ff00693          	li	a3,2047
80016a64:	fcd40ae3          	beq	s0,a3,80016a38 <__subdf3+0xb8>
80016a68:	008006b7          	lui	a3,0x800
80016a6c:	00d76733          	or	a4,a4,a3
80016a70:	03800693          	li	a3,56
80016a74:	0b06ca63          	blt	a3,a6,80016b28 <__subdf3+0x1a8>
80016a78:	01f00693          	li	a3,31
80016a7c:	0706cc63          	blt	a3,a6,80016af4 <__subdf3+0x174>
80016a80:	02000593          	li	a1,32
80016a84:	410585b3          	sub	a1,a1,a6
80016a88:	00b716b3          	sll	a3,a4,a1
80016a8c:	010658b3          	srl	a7,a2,a6
80016a90:	00b61633          	sll	a2,a2,a1
80016a94:	0116e6b3          	or	a3,a3,a7
80016a98:	00c03633          	snez	a2,a2
80016a9c:	00c6e633          	or	a2,a3,a2
80016aa0:	01075733          	srl	a4,a4,a6
80016aa4:	00a60633          	add	a2,a2,a0
80016aa8:	00f70733          	add	a4,a4,a5
80016aac:	00a637b3          	sltu	a5,a2,a0
80016ab0:	00f707b3          	add	a5,a4,a5
80016ab4:	00060513          	mv	a0,a2
80016ab8:	00879713          	slli	a4,a5,0x8
80016abc:	f6075ee3          	bgez	a4,80016a38 <__subdf3+0xb8>
80016ac0:	00140413          	addi	s0,s0,1
80016ac4:	7ff00713          	li	a4,2047
80016ac8:	5ae40263          	beq	s0,a4,8001706c <__subdf3+0x6ec>
80016acc:	ff8006b7          	lui	a3,0xff800
80016ad0:	fff68693          	addi	a3,a3,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
80016ad4:	00d7f6b3          	and	a3,a5,a3
80016ad8:	00155593          	srli	a1,a0,0x1
80016adc:	00157513          	andi	a0,a0,1
80016ae0:	01f69793          	slli	a5,a3,0x1f
80016ae4:	00a5e533          	or	a0,a1,a0
80016ae8:	00a7e533          	or	a0,a5,a0
80016aec:	0016d793          	srli	a5,a3,0x1
80016af0:	f49ff06f          	j	80016a38 <__subdf3+0xb8>
80016af4:	fe080693          	addi	a3,a6,-32
80016af8:	02000893          	li	a7,32
80016afc:	00d756b3          	srl	a3,a4,a3
80016b00:	00000593          	li	a1,0
80016b04:	01180863          	beq	a6,a7,80016b14 <__subdf3+0x194>
80016b08:	04000593          	li	a1,64
80016b0c:	41058833          	sub	a6,a1,a6
80016b10:	010715b3          	sll	a1,a4,a6
80016b14:	00c5e633          	or	a2,a1,a2
80016b18:	00c03633          	snez	a2,a2
80016b1c:	00c6e633          	or	a2,a3,a2
80016b20:	00000713          	li	a4,0
80016b24:	f81ff06f          	j	80016aa4 <__subdf3+0x124>
80016b28:	00c76633          	or	a2,a4,a2
80016b2c:	00c03633          	snez	a2,a2
80016b30:	ff1ff06f          	j	80016b20 <__subdf3+0x1a0>
80016b34:	0e080263          	beqz	a6,80016c18 <__subdf3+0x298>
80016b38:	408885b3          	sub	a1,a7,s0
80016b3c:	02041e63          	bnez	s0,80016b78 <__subdf3+0x1f8>
80016b40:	00a7e6b3          	or	a3,a5,a0
80016b44:	50068463          	beqz	a3,8001704c <__subdf3+0x6cc>
80016b48:	fff58693          	addi	a3,a1,-1 # 7ffff <font6x8-0x7ff8002d>
80016b4c:	00069c63          	bnez	a3,80016b64 <__subdf3+0x1e4>
80016b50:	00c50533          	add	a0,a0,a2
80016b54:	00e787b3          	add	a5,a5,a4
80016b58:	00c53633          	sltu	a2,a0,a2
80016b5c:	00c787b3          	add	a5,a5,a2
80016b60:	ec9ff06f          	j	80016a28 <__subdf3+0xa8>
80016b64:	7ff00813          	li	a6,2047
80016b68:	03059263          	bne	a1,a6,80016b8c <__subdf3+0x20c>
80016b6c:	00070793          	mv	a5,a4
80016b70:	00060513          	mv	a0,a2
80016b74:	3b00006f          	j	80016f24 <__subdf3+0x5a4>
80016b78:	7ff00693          	li	a3,2047
80016b7c:	fed888e3          	beq	a7,a3,80016b6c <__subdf3+0x1ec>
80016b80:	008006b7          	lui	a3,0x800
80016b84:	00d7e7b3          	or	a5,a5,a3
80016b88:	00058693          	mv	a3,a1
80016b8c:	03800593          	li	a1,56
80016b90:	06d5ce63          	blt	a1,a3,80016c0c <__subdf3+0x28c>
80016b94:	01f00593          	li	a1,31
80016b98:	04d5c063          	blt	a1,a3,80016bd8 <__subdf3+0x258>
80016b9c:	02000813          	li	a6,32
80016ba0:	40d80833          	sub	a6,a6,a3
80016ba4:	00d55333          	srl	t1,a0,a3
80016ba8:	010795b3          	sll	a1,a5,a6
80016bac:	01051533          	sll	a0,a0,a6
80016bb0:	0065e5b3          	or	a1,a1,t1
80016bb4:	00a03533          	snez	a0,a0
80016bb8:	00a5e533          	or	a0,a1,a0
80016bbc:	00d7d6b3          	srl	a3,a5,a3
80016bc0:	00c50533          	add	a0,a0,a2
80016bc4:	00e687b3          	add	a5,a3,a4
80016bc8:	00c53633          	sltu	a2,a0,a2
80016bcc:	00c787b3          	add	a5,a5,a2
80016bd0:	00088413          	mv	s0,a7
80016bd4:	ee5ff06f          	j	80016ab8 <__subdf3+0x138>
80016bd8:	fe068593          	addi	a1,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80016bdc:	02000313          	li	t1,32
80016be0:	00b7d5b3          	srl	a1,a5,a1
80016be4:	00000813          	li	a6,0
80016be8:	00668863          	beq	a3,t1,80016bf8 <__subdf3+0x278>
80016bec:	04000813          	li	a6,64
80016bf0:	40d806b3          	sub	a3,a6,a3
80016bf4:	00d79833          	sll	a6,a5,a3
80016bf8:	00a86533          	or	a0,a6,a0
80016bfc:	00a03533          	snez	a0,a0
80016c00:	00a5e533          	or	a0,a1,a0
80016c04:	00000693          	li	a3,0
80016c08:	fb9ff06f          	j	80016bc0 <__subdf3+0x240>
80016c0c:	00a7e533          	or	a0,a5,a0
80016c10:	00a03533          	snez	a0,a0
80016c14:	ff1ff06f          	j	80016c04 <__subdf3+0x284>
80016c18:	00140693          	addi	a3,s0,1
80016c1c:	7fe6f593          	andi	a1,a3,2046
80016c20:	06059463          	bnez	a1,80016c88 <__subdf3+0x308>
80016c24:	00a7e6b3          	or	a3,a5,a0
80016c28:	04041063          	bnez	s0,80016c68 <__subdf3+0x2e8>
80016c2c:	42068863          	beqz	a3,8001705c <__subdf3+0x6dc>
80016c30:	00c766b3          	or	a3,a4,a2
80016c34:	e00682e3          	beqz	a3,80016a38 <__subdf3+0xb8>
80016c38:	00c50633          	add	a2,a0,a2
80016c3c:	00e787b3          	add	a5,a5,a4
80016c40:	00a63533          	sltu	a0,a2,a0
80016c44:	00a787b3          	add	a5,a5,a0
80016c48:	00879713          	slli	a4,a5,0x8
80016c4c:	00060513          	mv	a0,a2
80016c50:	de0754e3          	bgez	a4,80016a38 <__subdf3+0xb8>
80016c54:	ff800737          	lui	a4,0xff800
80016c58:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
80016c5c:	00e7f7b3          	and	a5,a5,a4
80016c60:	00100413          	li	s0,1
80016c64:	dd5ff06f          	j	80016a38 <__subdf3+0xb8>
80016c68:	f00682e3          	beqz	a3,80016b6c <__subdf3+0x1ec>
80016c6c:	00c76633          	or	a2,a4,a2
80016c70:	2a060a63          	beqz	a2,80016f24 <__subdf3+0x5a4>
80016c74:	00000493          	li	s1,0
80016c78:	004007b7          	lui	a5,0x400
80016c7c:	00000513          	li	a0,0
80016c80:	7ff00413          	li	s0,2047
80016c84:	3f00006f          	j	80017074 <__subdf3+0x6f4>
80016c88:	7ff00593          	li	a1,2047
80016c8c:	3cb68e63          	beq	a3,a1,80017068 <__subdf3+0x6e8>
80016c90:	00c50633          	add	a2,a0,a2
80016c94:	00e78733          	add	a4,a5,a4
80016c98:	00a637b3          	sltu	a5,a2,a0
80016c9c:	00f70733          	add	a4,a4,a5
80016ca0:	01f71513          	slli	a0,a4,0x1f
80016ca4:	00165613          	srli	a2,a2,0x1
80016ca8:	00c56533          	or	a0,a0,a2
80016cac:	00175793          	srli	a5,a4,0x1
80016cb0:	00068413          	mv	s0,a3
80016cb4:	d85ff06f          	j	80016a38 <__subdf3+0xb8>
80016cb8:	0f005a63          	blez	a6,80016dac <__subdf3+0x42c>
80016cbc:	08089e63          	bnez	a7,80016d58 <__subdf3+0x3d8>
80016cc0:	00c766b3          	or	a3,a4,a2
80016cc4:	d6068ae3          	beqz	a3,80016a38 <__subdf3+0xb8>
80016cc8:	fff40813          	addi	a6,s0,-1
80016ccc:	02081063          	bnez	a6,80016cec <__subdf3+0x36c>
80016cd0:	40c50633          	sub	a2,a0,a2
80016cd4:	00c53533          	sltu	a0,a0,a2
80016cd8:	40e787b3          	sub	a5,a5,a4
80016cdc:	40a787b3          	sub	a5,a5,a0
80016ce0:	00060513          	mv	a0,a2
80016ce4:	00100413          	li	s0,1
80016ce8:	0540006f          	j	80016d3c <__subdf3+0x3bc>
80016cec:	7ff00693          	li	a3,2047
80016cf0:	d4d404e3          	beq	s0,a3,80016a38 <__subdf3+0xb8>
80016cf4:	03800693          	li	a3,56
80016cf8:	0b06c463          	blt	a3,a6,80016da0 <__subdf3+0x420>
80016cfc:	01f00693          	li	a3,31
80016d00:	0706c663          	blt	a3,a6,80016d6c <__subdf3+0x3ec>
80016d04:	02000593          	li	a1,32
80016d08:	410585b3          	sub	a1,a1,a6
80016d0c:	00b716b3          	sll	a3,a4,a1
80016d10:	010658b3          	srl	a7,a2,a6
80016d14:	00b61633          	sll	a2,a2,a1
80016d18:	0116e6b3          	or	a3,a3,a7
80016d1c:	00c03633          	snez	a2,a2
80016d20:	00c6e633          	or	a2,a3,a2
80016d24:	01075733          	srl	a4,a4,a6
80016d28:	40c50633          	sub	a2,a0,a2
80016d2c:	40e78733          	sub	a4,a5,a4
80016d30:	00c537b3          	sltu	a5,a0,a2
80016d34:	40f707b3          	sub	a5,a4,a5
80016d38:	00060513          	mv	a0,a2
80016d3c:	00879713          	slli	a4,a5,0x8
80016d40:	ce075ce3          	bgez	a4,80016a38 <__subdf3+0xb8>
80016d44:	00800937          	lui	s2,0x800
80016d48:	fff90913          	addi	s2,s2,-1 # 7fffff <font6x8-0x7f80002d>
80016d4c:	0127f933          	and	s2,a5,s2
80016d50:	00050993          	mv	s3,a0
80016d54:	20c0006f          	j	80016f60 <__subdf3+0x5e0>
80016d58:	7ff00693          	li	a3,2047
80016d5c:	ccd40ee3          	beq	s0,a3,80016a38 <__subdf3+0xb8>
80016d60:	008006b7          	lui	a3,0x800
80016d64:	00d76733          	or	a4,a4,a3
80016d68:	f8dff06f          	j	80016cf4 <__subdf3+0x374>
80016d6c:	fe080693          	addi	a3,a6,-32
80016d70:	02000893          	li	a7,32
80016d74:	00d756b3          	srl	a3,a4,a3
80016d78:	00000593          	li	a1,0
80016d7c:	01180863          	beq	a6,a7,80016d8c <__subdf3+0x40c>
80016d80:	04000593          	li	a1,64
80016d84:	41058833          	sub	a6,a1,a6
80016d88:	010715b3          	sll	a1,a4,a6
80016d8c:	00c5e633          	or	a2,a1,a2
80016d90:	00c03633          	snez	a2,a2
80016d94:	00c6e633          	or	a2,a3,a2
80016d98:	00000713          	li	a4,0
80016d9c:	f8dff06f          	j	80016d28 <__subdf3+0x3a8>
80016da0:	00c76633          	or	a2,a4,a2
80016da4:	00c03633          	snez	a2,a2
80016da8:	ff1ff06f          	j	80016d98 <__subdf3+0x418>
80016dac:	0e080863          	beqz	a6,80016e9c <__subdf3+0x51c>
80016db0:	40888833          	sub	a6,a7,s0
80016db4:	04041263          	bnez	s0,80016df8 <__subdf3+0x478>
80016db8:	00a7e6b3          	or	a3,a5,a0
80016dbc:	34068463          	beqz	a3,80017104 <__subdf3+0x784>
80016dc0:	fff80693          	addi	a3,a6,-1
80016dc4:	00069e63          	bnez	a3,80016de0 <__subdf3+0x460>
80016dc8:	40a60533          	sub	a0,a2,a0
80016dcc:	40f707b3          	sub	a5,a4,a5
80016dd0:	00a63633          	sltu	a2,a2,a0
80016dd4:	40c787b3          	sub	a5,a5,a2
80016dd8:	00058493          	mv	s1,a1
80016ddc:	f09ff06f          	j	80016ce4 <__subdf3+0x364>
80016de0:	7ff00313          	li	t1,2047
80016de4:	02681463          	bne	a6,t1,80016e0c <__subdf3+0x48c>
80016de8:	00070793          	mv	a5,a4
80016dec:	00060513          	mv	a0,a2
80016df0:	7ff00413          	li	s0,2047
80016df4:	0d00006f          	j	80016ec4 <__subdf3+0x544>
80016df8:	7ff00693          	li	a3,2047
80016dfc:	fed886e3          	beq	a7,a3,80016de8 <__subdf3+0x468>
80016e00:	008006b7          	lui	a3,0x800
80016e04:	00d7e7b3          	or	a5,a5,a3
80016e08:	00080693          	mv	a3,a6
80016e0c:	03800813          	li	a6,56
80016e10:	08d84063          	blt	a6,a3,80016e90 <__subdf3+0x510>
80016e14:	01f00813          	li	a6,31
80016e18:	04d84263          	blt	a6,a3,80016e5c <__subdf3+0x4dc>
80016e1c:	02000313          	li	t1,32
80016e20:	40d30333          	sub	t1,t1,a3
80016e24:	00d55e33          	srl	t3,a0,a3
80016e28:	00679833          	sll	a6,a5,t1
80016e2c:	00651533          	sll	a0,a0,t1
80016e30:	01c86833          	or	a6,a6,t3
80016e34:	00a03533          	snez	a0,a0
80016e38:	00a86533          	or	a0,a6,a0
80016e3c:	00d7d6b3          	srl	a3,a5,a3
80016e40:	40a60533          	sub	a0,a2,a0
80016e44:	40d707b3          	sub	a5,a4,a3
80016e48:	00a63633          	sltu	a2,a2,a0
80016e4c:	40c787b3          	sub	a5,a5,a2
80016e50:	00088413          	mv	s0,a7
80016e54:	00058493          	mv	s1,a1
80016e58:	ee5ff06f          	j	80016d3c <__subdf3+0x3bc>
80016e5c:	fe068813          	addi	a6,a3,-32 # 7fffe0 <font6x8-0x7f80004c>
80016e60:	02000e13          	li	t3,32
80016e64:	0107d833          	srl	a6,a5,a6
80016e68:	00000313          	li	t1,0
80016e6c:	01c68863          	beq	a3,t3,80016e7c <__subdf3+0x4fc>
80016e70:	04000313          	li	t1,64
80016e74:	40d306b3          	sub	a3,t1,a3
80016e78:	00d79333          	sll	t1,a5,a3
80016e7c:	00a36533          	or	a0,t1,a0
80016e80:	00a03533          	snez	a0,a0
80016e84:	00a86533          	or	a0,a6,a0
80016e88:	00000693          	li	a3,0
80016e8c:	fb5ff06f          	j	80016e40 <__subdf3+0x4c0>
80016e90:	00a7e533          	or	a0,a5,a0
80016e94:	00a03533          	snez	a0,a0
80016e98:	ff1ff06f          	j	80016e88 <__subdf3+0x508>
80016e9c:	00140693          	addi	a3,s0,1
80016ea0:	7fe6f693          	andi	a3,a3,2046
80016ea4:	08069863          	bnez	a3,80016f34 <__subdf3+0x5b4>
80016ea8:	00a7e833          	or	a6,a5,a0
80016eac:	00c766b3          	or	a3,a4,a2
80016eb0:	06041063          	bnez	s0,80016f10 <__subdf3+0x590>
80016eb4:	00081c63          	bnez	a6,80016ecc <__subdf3+0x54c>
80016eb8:	24068e63          	beqz	a3,80017114 <__subdf3+0x794>
80016ebc:	00070793          	mv	a5,a4
80016ec0:	00060513          	mv	a0,a2
80016ec4:	00058493          	mv	s1,a1
80016ec8:	b71ff06f          	j	80016a38 <__subdf3+0xb8>
80016ecc:	b60686e3          	beqz	a3,80016a38 <__subdf3+0xb8>
80016ed0:	40c50833          	sub	a6,a0,a2
80016ed4:	010538b3          	sltu	a7,a0,a6
80016ed8:	40e786b3          	sub	a3,a5,a4
80016edc:	411686b3          	sub	a3,a3,a7
80016ee0:	00869893          	slli	a7,a3,0x8
80016ee4:	0008dc63          	bgez	a7,80016efc <__subdf3+0x57c>
80016ee8:	40a60533          	sub	a0,a2,a0
80016eec:	40f707b3          	sub	a5,a4,a5
80016ef0:	00a63633          	sltu	a2,a2,a0
80016ef4:	40c787b3          	sub	a5,a5,a2
80016ef8:	fcdff06f          	j	80016ec4 <__subdf3+0x544>
80016efc:	00d86533          	or	a0,a6,a3
80016f00:	22050263          	beqz	a0,80017124 <__subdf3+0x7a4>
80016f04:	00068793          	mv	a5,a3
80016f08:	00080513          	mv	a0,a6
80016f0c:	b2dff06f          	j	80016a38 <__subdf3+0xb8>
80016f10:	00081e63          	bnez	a6,80016f2c <__subdf3+0x5ac>
80016f14:	20068c63          	beqz	a3,8001712c <__subdf3+0x7ac>
80016f18:	00070793          	mv	a5,a4
80016f1c:	00060513          	mv	a0,a2
80016f20:	00058493          	mv	s1,a1
80016f24:	7ff00413          	li	s0,2047
80016f28:	b11ff06f          	j	80016a38 <__subdf3+0xb8>
80016f2c:	fe068ce3          	beqz	a3,80016f24 <__subdf3+0x5a4>
80016f30:	d45ff06f          	j	80016c74 <__subdf3+0x2f4>
80016f34:	40c509b3          	sub	s3,a0,a2
80016f38:	013536b3          	sltu	a3,a0,s3
80016f3c:	40e78933          	sub	s2,a5,a4
80016f40:	40d90933          	sub	s2,s2,a3
80016f44:	00891693          	slli	a3,s2,0x8
80016f48:	0806d463          	bgez	a3,80016fd0 <__subdf3+0x650>
80016f4c:	40a609b3          	sub	s3,a2,a0
80016f50:	40f707b3          	sub	a5,a4,a5
80016f54:	01363633          	sltu	a2,a2,s3
80016f58:	40c78933          	sub	s2,a5,a2
80016f5c:	00058493          	mv	s1,a1
80016f60:	08090263          	beqz	s2,80016fe4 <__subdf3+0x664>
80016f64:	00090513          	mv	a0,s2
80016f68:	56c000ef          	jal	ra,800174d4 <__clzsi2>
80016f6c:	ff850713          	addi	a4,a0,-8
80016f70:	01f00793          	li	a5,31
80016f74:	08e7c063          	blt	a5,a4,80016ff4 <__subdf3+0x674>
80016f78:	02000693          	li	a3,32
80016f7c:	40e686b3          	sub	a3,a3,a4
80016f80:	00e917b3          	sll	a5,s2,a4
80016f84:	00d9d6b3          	srl	a3,s3,a3
80016f88:	00f6e6b3          	or	a3,a3,a5
80016f8c:	00e99533          	sll	a0,s3,a4
80016f90:	0a874463          	blt	a4,s0,80017038 <__subdf3+0x6b8>
80016f94:	40870733          	sub	a4,a4,s0
80016f98:	00170793          	addi	a5,a4,1
80016f9c:	01f00613          	li	a2,31
80016fa0:	06f64263          	blt	a2,a5,80017004 <__subdf3+0x684>
80016fa4:	02000713          	li	a4,32
80016fa8:	40f70733          	sub	a4,a4,a5
80016fac:	00f555b3          	srl	a1,a0,a5
80016fb0:	00e69633          	sll	a2,a3,a4
80016fb4:	00e51533          	sll	a0,a0,a4
80016fb8:	00b66633          	or	a2,a2,a1
80016fbc:	00a03533          	snez	a0,a0
80016fc0:	00a66533          	or	a0,a2,a0
80016fc4:	00f6d7b3          	srl	a5,a3,a5
80016fc8:	00000413          	li	s0,0
80016fcc:	a6dff06f          	j	80016a38 <__subdf3+0xb8>
80016fd0:	0129e533          	or	a0,s3,s2
80016fd4:	f80516e3          	bnez	a0,80016f60 <__subdf3+0x5e0>
80016fd8:	00000793          	li	a5,0
80016fdc:	00000413          	li	s0,0
80016fe0:	13c0006f          	j	8001711c <__subdf3+0x79c>
80016fe4:	00098513          	mv	a0,s3
80016fe8:	4ec000ef          	jal	ra,800174d4 <__clzsi2>
80016fec:	02050513          	addi	a0,a0,32
80016ff0:	f7dff06f          	j	80016f6c <__subdf3+0x5ec>
80016ff4:	fd850513          	addi	a0,a0,-40
80016ff8:	00a996b3          	sll	a3,s3,a0
80016ffc:	00000513          	li	a0,0
80017000:	f91ff06f          	j	80016f90 <__subdf3+0x610>
80017004:	fe170713          	addi	a4,a4,-31
80017008:	02000593          	li	a1,32
8001700c:	00e6d733          	srl	a4,a3,a4
80017010:	00000613          	li	a2,0
80017014:	00b78863          	beq	a5,a1,80017024 <__subdf3+0x6a4>
80017018:	04000613          	li	a2,64
8001701c:	40f60633          	sub	a2,a2,a5
80017020:	00c69633          	sll	a2,a3,a2
80017024:	00c56533          	or	a0,a0,a2
80017028:	00a03533          	snez	a0,a0
8001702c:	00a76533          	or	a0,a4,a0
80017030:	00000793          	li	a5,0
80017034:	f95ff06f          	j	80016fc8 <__subdf3+0x648>
80017038:	ff8007b7          	lui	a5,0xff800
8001703c:	fff78793          	addi	a5,a5,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
80017040:	40e40433          	sub	s0,s0,a4
80017044:	00f6f7b3          	and	a5,a3,a5
80017048:	9f1ff06f          	j	80016a38 <__subdf3+0xb8>
8001704c:	00070793          	mv	a5,a4
80017050:	00060513          	mv	a0,a2
80017054:	00058413          	mv	s0,a1
80017058:	9e1ff06f          	j	80016a38 <__subdf3+0xb8>
8001705c:	00070793          	mv	a5,a4
80017060:	00060513          	mv	a0,a2
80017064:	9d5ff06f          	j	80016a38 <__subdf3+0xb8>
80017068:	7ff00413          	li	s0,2047
8001706c:	00000793          	li	a5,0
80017070:	00000513          	li	a0,0
80017074:	00879713          	slli	a4,a5,0x8
80017078:	00075e63          	bgez	a4,80017094 <__subdf3+0x714>
8001707c:	00140413          	addi	s0,s0,1
80017080:	7ff00713          	li	a4,2047
80017084:	0ae40c63          	beq	s0,a4,8001713c <__subdf3+0x7bc>
80017088:	ff800737          	lui	a4,0xff800
8001708c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__clzsi2+0x7f7e8b2b>
80017090:	00e7f7b3          	and	a5,a5,a4
80017094:	01d79713          	slli	a4,a5,0x1d
80017098:	00355513          	srli	a0,a0,0x3
8001709c:	00a76533          	or	a0,a4,a0
800170a0:	7ff00713          	li	a4,2047
800170a4:	0037d793          	srli	a5,a5,0x3
800170a8:	00e41e63          	bne	s0,a4,800170c4 <__subdf3+0x744>
800170ac:	00f56533          	or	a0,a0,a5
800170b0:	00000793          	li	a5,0
800170b4:	00050863          	beqz	a0,800170c4 <__subdf3+0x744>
800170b8:	000807b7          	lui	a5,0x80
800170bc:	00000513          	li	a0,0
800170c0:	00000493          	li	s1,0
800170c4:	01441713          	slli	a4,s0,0x14
800170c8:	7ff006b7          	lui	a3,0x7ff00
800170cc:	00c79793          	slli	a5,a5,0xc
800170d0:	01c12083          	lw	ra,28(sp)
800170d4:	01812403          	lw	s0,24(sp)
800170d8:	00d77733          	and	a4,a4,a3
800170dc:	00c7d793          	srli	a5,a5,0xc
800170e0:	01f49493          	slli	s1,s1,0x1f
800170e4:	00f767b3          	or	a5,a4,a5
800170e8:	0097e733          	or	a4,a5,s1
800170ec:	01012903          	lw	s2,16(sp)
800170f0:	01412483          	lw	s1,20(sp)
800170f4:	00c12983          	lw	s3,12(sp)
800170f8:	00070593          	mv	a1,a4
800170fc:	02010113          	addi	sp,sp,32
80017100:	00008067          	ret
80017104:	00070793          	mv	a5,a4
80017108:	00060513          	mv	a0,a2
8001710c:	00080413          	mv	s0,a6
80017110:	db5ff06f          	j	80016ec4 <__subdf3+0x544>
80017114:	00000793          	li	a5,0
80017118:	00000513          	li	a0,0
8001711c:	00000493          	li	s1,0
80017120:	f55ff06f          	j	80017074 <__subdf3+0x6f4>
80017124:	00000793          	li	a5,0
80017128:	ff5ff06f          	j	8001711c <__subdf3+0x79c>
8001712c:	00000513          	li	a0,0
80017130:	00000493          	li	s1,0
80017134:	004007b7          	lui	a5,0x400
80017138:	b49ff06f          	j	80016c80 <__subdf3+0x300>
8001713c:	00000793          	li	a5,0
80017140:	00000513          	li	a0,0
80017144:	f51ff06f          	j	80017094 <__subdf3+0x714>

80017148 <__fixdfsi>:
80017148:	0145d713          	srli	a4,a1,0x14
8001714c:	001006b7          	lui	a3,0x100
80017150:	fff68793          	addi	a5,a3,-1 # fffff <font6x8-0x7ff0002d>
80017154:	7ff77713          	andi	a4,a4,2047
80017158:	3fe00613          	li	a2,1022
8001715c:	00b7f7b3          	and	a5,a5,a1
80017160:	01f5d593          	srli	a1,a1,0x1f
80017164:	04e65e63          	bge	a2,a4,800171c0 <__fixdfsi+0x78>
80017168:	41d00613          	li	a2,1053
8001716c:	00e65a63          	bge	a2,a4,80017180 <__fixdfsi+0x38>
80017170:	80000537          	lui	a0,0x80000
80017174:	fff54513          	not	a0,a0
80017178:	00a58533          	add	a0,a1,a0
8001717c:	00008067          	ret
80017180:	00d7e7b3          	or	a5,a5,a3
80017184:	43300693          	li	a3,1075
80017188:	40e686b3          	sub	a3,a3,a4
8001718c:	01f00613          	li	a2,31
80017190:	02d64063          	blt	a2,a3,800171b0 <__fixdfsi+0x68>
80017194:	bed70713          	addi	a4,a4,-1043
80017198:	00e797b3          	sll	a5,a5,a4
8001719c:	00d55533          	srl	a0,a0,a3
800171a0:	00a7e533          	or	a0,a5,a0
800171a4:	02058063          	beqz	a1,800171c4 <__fixdfsi+0x7c>
800171a8:	40a00533          	neg	a0,a0
800171ac:	00008067          	ret
800171b0:	41300513          	li	a0,1043
800171b4:	40e50533          	sub	a0,a0,a4
800171b8:	00a7d533          	srl	a0,a5,a0
800171bc:	fe9ff06f          	j	800171a4 <__fixdfsi+0x5c>
800171c0:	00000513          	li	a0,0
800171c4:	00008067          	ret

800171c8 <__fixunsdfsi>:
800171c8:	0145d713          	srli	a4,a1,0x14
800171cc:	00100837          	lui	a6,0x100
800171d0:	fff80793          	addi	a5,a6,-1 # fffff <font6x8-0x7ff0002d>
800171d4:	7ff77713          	andi	a4,a4,2047
800171d8:	3fe00613          	li	a2,1022
800171dc:	00b7f7b3          	and	a5,a5,a1
800171e0:	00050693          	mv	a3,a0
800171e4:	01f5d593          	srli	a1,a1,0x1f
800171e8:	04e65a63          	bge	a2,a4,8001723c <__fixunsdfsi+0x74>
800171ec:	41f00613          	li	a2,1055
800171f0:	40b60633          	sub	a2,a2,a1
800171f4:	fff58513          	addi	a0,a1,-1
800171f8:	04c75463          	bge	a4,a2,80017240 <__fixunsdfsi+0x78>
800171fc:	00000513          	li	a0,0
80017200:	04059063          	bnez	a1,80017240 <__fixunsdfsi+0x78>
80017204:	43300513          	li	a0,1075
80017208:	40e50533          	sub	a0,a0,a4
8001720c:	01f00613          	li	a2,31
80017210:	0107e7b3          	or	a5,a5,a6
80017214:	00a64c63          	blt	a2,a0,8001722c <__fixunsdfsi+0x64>
80017218:	bed70713          	addi	a4,a4,-1043
8001721c:	00e797b3          	sll	a5,a5,a4
80017220:	00a6d533          	srl	a0,a3,a0
80017224:	00a7e533          	or	a0,a5,a0
80017228:	00008067          	ret
8001722c:	41300513          	li	a0,1043
80017230:	40e50533          	sub	a0,a0,a4
80017234:	00a7d533          	srl	a0,a5,a0
80017238:	00008067          	ret
8001723c:	00000513          	li	a0,0
80017240:	00008067          	ret

80017244 <__floatsidf>:
80017244:	ff010113          	addi	sp,sp,-16
80017248:	00112623          	sw	ra,12(sp)
8001724c:	00812423          	sw	s0,8(sp)
80017250:	00912223          	sw	s1,4(sp)
80017254:	08050663          	beqz	a0,800172e0 <__floatsidf+0x9c>
80017258:	41f55793          	srai	a5,a0,0x1f
8001725c:	00a7c433          	xor	s0,a5,a0
80017260:	40f40433          	sub	s0,s0,a5
80017264:	01f55493          	srli	s1,a0,0x1f
80017268:	00040513          	mv	a0,s0
8001726c:	268000ef          	jal	ra,800174d4 <__clzsi2>
80017270:	41e00713          	li	a4,1054
80017274:	00a00793          	li	a5,10
80017278:	40a70733          	sub	a4,a4,a0
8001727c:	04a7c863          	blt	a5,a0,800172cc <__floatsidf+0x88>
80017280:	00b00793          	li	a5,11
80017284:	40a787b3          	sub	a5,a5,a0
80017288:	01550513          	addi	a0,a0,21 # 80000015 <__clzsi2+0xfffe8b41>
8001728c:	00f457b3          	srl	a5,s0,a5
80017290:	00a41433          	sll	s0,s0,a0
80017294:	00048513          	mv	a0,s1
80017298:	00c79793          	slli	a5,a5,0xc
8001729c:	01471713          	slli	a4,a4,0x14
800172a0:	00c7d793          	srli	a5,a5,0xc
800172a4:	01f51513          	slli	a0,a0,0x1f
800172a8:	00f767b3          	or	a5,a4,a5
800172ac:	00c12083          	lw	ra,12(sp)
800172b0:	00a7e733          	or	a4,a5,a0
800172b4:	00040513          	mv	a0,s0
800172b8:	00812403          	lw	s0,8(sp)
800172bc:	00412483          	lw	s1,4(sp)
800172c0:	00070593          	mv	a1,a4
800172c4:	01010113          	addi	sp,sp,16
800172c8:	00008067          	ret
800172cc:	ff550513          	addi	a0,a0,-11
800172d0:	00a417b3          	sll	a5,s0,a0
800172d4:	00048513          	mv	a0,s1
800172d8:	00000413          	li	s0,0
800172dc:	fbdff06f          	j	80017298 <__floatsidf+0x54>
800172e0:	00000713          	li	a4,0
800172e4:	00000793          	li	a5,0
800172e8:	ff1ff06f          	j	800172d8 <__floatsidf+0x94>

800172ec <__floatunsidf>:
800172ec:	ff010113          	addi	sp,sp,-16
800172f0:	00812423          	sw	s0,8(sp)
800172f4:	00112623          	sw	ra,12(sp)
800172f8:	00050413          	mv	s0,a0
800172fc:	06050263          	beqz	a0,80017360 <__floatunsidf+0x74>
80017300:	1d4000ef          	jal	ra,800174d4 <__clzsi2>
80017304:	41e00713          	li	a4,1054
80017308:	00a00793          	li	a5,10
8001730c:	40a70733          	sub	a4,a4,a0
80017310:	04a7c063          	blt	a5,a0,80017350 <__floatunsidf+0x64>
80017314:	00b00793          	li	a5,11
80017318:	40a787b3          	sub	a5,a5,a0
8001731c:	01550513          	addi	a0,a0,21
80017320:	00f457b3          	srl	a5,s0,a5
80017324:	00a41433          	sll	s0,s0,a0
80017328:	00c12083          	lw	ra,12(sp)
8001732c:	00040513          	mv	a0,s0
80017330:	00c79793          	slli	a5,a5,0xc
80017334:	00812403          	lw	s0,8(sp)
80017338:	01471713          	slli	a4,a4,0x14
8001733c:	00c7d793          	srli	a5,a5,0xc
80017340:	00f766b3          	or	a3,a4,a5
80017344:	00068593          	mv	a1,a3
80017348:	01010113          	addi	sp,sp,16
8001734c:	00008067          	ret
80017350:	ff550793          	addi	a5,a0,-11
80017354:	00f417b3          	sll	a5,s0,a5
80017358:	00000413          	li	s0,0
8001735c:	fcdff06f          	j	80017328 <__floatunsidf+0x3c>
80017360:	00000793          	li	a5,0
80017364:	00000713          	li	a4,0
80017368:	fc1ff06f          	j	80017328 <__floatunsidf+0x3c>

8001736c <__mulsi3>:
8001736c:	00050613          	mv	a2,a0
80017370:	00000513          	li	a0,0
80017374:	0015f693          	andi	a3,a1,1
80017378:	00068463          	beqz	a3,80017380 <__mulsi3+0x14>
8001737c:	00c50533          	add	a0,a0,a2
80017380:	0015d593          	srli	a1,a1,0x1
80017384:	00161613          	slli	a2,a2,0x1
80017388:	fe0596e3          	bnez	a1,80017374 <__mulsi3+0x8>
8001738c:	00008067          	ret

80017390 <__muldi3>:
80017390:	00050313          	mv	t1,a0
80017394:	ff010113          	addi	sp,sp,-16
80017398:	00060513          	mv	a0,a2
8001739c:	00068893          	mv	a7,a3
800173a0:	00112623          	sw	ra,12(sp)
800173a4:	00030613          	mv	a2,t1
800173a8:	00050693          	mv	a3,a0
800173ac:	00000713          	li	a4,0
800173b0:	00000793          	li	a5,0
800173b4:	00000813          	li	a6,0
800173b8:	0016fe13          	andi	t3,a3,1
800173bc:	00171e93          	slli	t4,a4,0x1
800173c0:	000e0c63          	beqz	t3,800173d8 <__muldi3+0x48>
800173c4:	01060e33          	add	t3,a2,a6
800173c8:	010e3833          	sltu	a6,t3,a6
800173cc:	00e787b3          	add	a5,a5,a4
800173d0:	00f807b3          	add	a5,a6,a5
800173d4:	000e0813          	mv	a6,t3
800173d8:	01f65713          	srli	a4,a2,0x1f
800173dc:	0016d693          	srli	a3,a3,0x1
800173e0:	00eee733          	or	a4,t4,a4
800173e4:	00161613          	slli	a2,a2,0x1
800173e8:	fc0698e3          	bnez	a3,800173b8 <__muldi3+0x28>
800173ec:	00058663          	beqz	a1,800173f8 <__muldi3+0x68>
800173f0:	f7dff0ef          	jal	ra,8001736c <__mulsi3>
800173f4:	00a787b3          	add	a5,a5,a0
800173f8:	00088a63          	beqz	a7,8001740c <__muldi3+0x7c>
800173fc:	00030513          	mv	a0,t1
80017400:	00088593          	mv	a1,a7
80017404:	f69ff0ef          	jal	ra,8001736c <__mulsi3>
80017408:	00f507b3          	add	a5,a0,a5
8001740c:	00c12083          	lw	ra,12(sp)
80017410:	00080513          	mv	a0,a6
80017414:	00078593          	mv	a1,a5
80017418:	01010113          	addi	sp,sp,16
8001741c:	00008067          	ret

80017420 <__divsi3>:
80017420:	06054063          	bltz	a0,80017480 <__umodsi3+0x10>
80017424:	0605c663          	bltz	a1,80017490 <__umodsi3+0x20>

80017428 <__udivsi3>:
80017428:	00058613          	mv	a2,a1
8001742c:	00050593          	mv	a1,a0
80017430:	fff00513          	li	a0,-1
80017434:	02060c63          	beqz	a2,8001746c <__udivsi3+0x44>
80017438:	00100693          	li	a3,1
8001743c:	00b67a63          	bgeu	a2,a1,80017450 <__udivsi3+0x28>
80017440:	00c05863          	blez	a2,80017450 <__udivsi3+0x28>
80017444:	00161613          	slli	a2,a2,0x1
80017448:	00169693          	slli	a3,a3,0x1
8001744c:	feb66ae3          	bltu	a2,a1,80017440 <__udivsi3+0x18>
80017450:	00000513          	li	a0,0
80017454:	00c5e663          	bltu	a1,a2,80017460 <__udivsi3+0x38>
80017458:	40c585b3          	sub	a1,a1,a2
8001745c:	00d56533          	or	a0,a0,a3
80017460:	0016d693          	srli	a3,a3,0x1
80017464:	00165613          	srli	a2,a2,0x1
80017468:	fe0696e3          	bnez	a3,80017454 <__udivsi3+0x2c>
8001746c:	00008067          	ret

80017470 <__umodsi3>:
80017470:	00008293          	mv	t0,ra
80017474:	fb5ff0ef          	jal	ra,80017428 <__udivsi3>
80017478:	00058513          	mv	a0,a1
8001747c:	00028067          	jr	t0
80017480:	40a00533          	neg	a0,a0
80017484:	0005d863          	bgez	a1,80017494 <__umodsi3+0x24>
80017488:	40b005b3          	neg	a1,a1
8001748c:	f9dff06f          	j	80017428 <__udivsi3>
80017490:	40b005b3          	neg	a1,a1
80017494:	00008293          	mv	t0,ra
80017498:	f91ff0ef          	jal	ra,80017428 <__udivsi3>
8001749c:	40a00533          	neg	a0,a0
800174a0:	00028067          	jr	t0

800174a4 <__modsi3>:
800174a4:	00008293          	mv	t0,ra
800174a8:	0005ca63          	bltz	a1,800174bc <__modsi3+0x18>
800174ac:	00054c63          	bltz	a0,800174c4 <__modsi3+0x20>
800174b0:	f79ff0ef          	jal	ra,80017428 <__udivsi3>
800174b4:	00058513          	mv	a0,a1
800174b8:	00028067          	jr	t0
800174bc:	40b005b3          	neg	a1,a1
800174c0:	fe0558e3          	bgez	a0,800174b0 <__modsi3+0xc>
800174c4:	40a00533          	neg	a0,a0
800174c8:	f61ff0ef          	jal	ra,80017428 <__udivsi3>
800174cc:	40b00533          	neg	a0,a1
800174d0:	00028067          	jr	t0

800174d4 <__clzsi2>:
800174d4:	000107b7          	lui	a5,0x10
800174d8:	02f57a63          	bgeu	a0,a5,8001750c <__clzsi2+0x38>
800174dc:	0ff00793          	li	a5,255
800174e0:	00a7b7b3          	sltu	a5,a5,a0
800174e4:	00379793          	slli	a5,a5,0x3
800174e8:	80000737          	lui	a4,0x80000
800174ec:	02000693          	li	a3,32
800174f0:	40f686b3          	sub	a3,a3,a5
800174f4:	00f55533          	srl	a0,a0,a5
800174f8:	59870793          	addi	a5,a4,1432 # 80000598 <__clzsi2+0xfffe90c4>
800174fc:	00a78533          	add	a0,a5,a0
80017500:	00054503          	lbu	a0,0(a0)
80017504:	40a68533          	sub	a0,a3,a0
80017508:	00008067          	ret
8001750c:	01000737          	lui	a4,0x1000
80017510:	01000793          	li	a5,16
80017514:	fce56ae3          	bltu	a0,a4,800174e8 <__clzsi2+0x14>
80017518:	01800793          	li	a5,24
8001751c:	fcdff06f          	j	800174e8 <__clzsi2+0x14>
