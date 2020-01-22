
main.out:     file format elf32-littleriscv


Disassembly of section .text:

80000800 <_start>:
80000800:	00000117          	auipc	sp,0x0
80000804:	00010113          	mv	sp,sp
80000808:	00000097          	auipc	ra,0x0
8000080c:	00c08093          	addi	ra,ra,12 # 80000814 <exec_done>
80000810:	0a00006f          	j	800008b0 <main>

80000814 <exec_done>:
80000814:	0000006f          	j	80000814 <exec_done>

80000818 <writeToUART>:
80000818:	00000793          	li	a5,0
8000081c:	c00006b7          	lui	a3,0xc0000
80000820:	00b79463          	bne	a5,a1,80000828 <writeToUART+0x10>
80000824:	00008067          	ret
80000828:	0106c703          	lbu	a4,16(a3) # c0000010 <fctprintf+0x3fffe9dc>
8000082c:	00177713          	andi	a4,a4,1
80000830:	fe071ce3          	bnez	a4,80000828 <writeToUART+0x10>
80000834:	00f50733          	add	a4,a0,a5
80000838:	00074703          	lbu	a4,0(a4)
8000083c:	00178793          	addi	a5,a5,1
80000840:	00e688a3          	sb	a4,17(a3)
80000844:	fddff06f          	j	80000820 <writeToUART+0x8>

80000848 <getTickCount>:
80000848:	c00007b7          	lui	a5,0xc0000
8000084c:	0047a703          	lw	a4,4(a5) # c0000004 <fctprintf+0x3fffe9d0>
80000850:	00e52023          	sw	a4,0(a0)
80000854:	0007a783          	lw	a5,0(a5)
80000858:	00f5a023          	sw	a5,0(a1)
8000085c:	00008067          	ret

80000860 <__udivsi3>:
80000860:	00050793          	mv	a5,a0
80000864:	00000513          	li	a0,0
80000868:	00f5c463          	blt	a1,a5,80000870 <__udivsi3+0x10>
8000086c:	00008067          	ret
80000870:	40b787b3          	sub	a5,a5,a1
80000874:	00150513          	addi	a0,a0,1
80000878:	ff1ff06f          	j	80000868 <__udivsi3+0x8>

8000087c <__umodsi3>:
8000087c:	00a5c463          	blt	a1,a0,80000884 <__umodsi3+0x8>
80000880:	00008067          	ret
80000884:	40b50533          	sub	a0,a0,a1
80000888:	ff5ff06f          	j	8000087c <__umodsi3>

8000088c <_putchar>:
8000088c:	fe010113          	addi	sp,sp,-32 # 800007e0 <base+0x330>
80000890:	00a107a3          	sb	a0,15(sp)
80000894:	00100593          	li	a1,1
80000898:	00f10513          	addi	a0,sp,15
8000089c:	00112e23          	sw	ra,28(sp)
800008a0:	f79ff0ef          	jal	ra,80000818 <writeToUART>
800008a4:	01c12083          	lw	ra,28(sp)
800008a8:	02010113          	addi	sp,sp,32
800008ac:	00008067          	ret

800008b0 <main>:
800008b0:	fd010113          	addi	sp,sp,-48
800008b4:	02112623          	sw	ra,44(sp)
800008b8:	060000ef          	jal	ra,80000918 <memmgr_init>
800008bc:	00c10593          	addi	a1,sp,12
800008c0:	00810513          	addi	a0,sp,8
800008c4:	f85ff0ef          	jal	ra,80000848 <getTickCount>
800008c8:	01410593          	addi	a1,sp,20
800008cc:	01010513          	addi	a0,sp,16
800008d0:	f79ff0ef          	jal	ra,80000848 <getTickCount>
800008d4:	01c10593          	addi	a1,sp,28
800008d8:	01810513          	addi	a0,sp,24
800008dc:	f6dff0ef          	jal	ra,80000848 <getTickCount>
800008e0:	deadc5b7          	lui	a1,0xdeadc
800008e4:	80000537          	lui	a0,0x80000
800008e8:	eef58613          	addi	a2,a1,-273 # deadbeef <fctprintf+0x5eada8bb>
800008ec:	00050513          	mv	a0,a0
800008f0:	abe58593          	addi	a1,a1,-1346
800008f4:	411000ef          	jal	ra,80001504 <printf_>
800008f8:	01c12603          	lw	a2,28(sp)
800008fc:	01812583          	lw	a1,24(sp)
80000900:	80000537          	lui	a0,0x80000
80000904:	03050513          	addi	a0,a0,48 # 80000030 <fctprintf+0xffffe9fc>
80000908:	3fd000ef          	jal	ra,80001504 <printf_>
8000090c:	02c12083          	lw	ra,44(sp)
80000910:	03010113          	addi	sp,sp,48
80000914:	00008067          	ret

80000918 <memmgr_init>:
80000918:	800007b7          	lui	a5,0x80000
8000091c:	4b078793          	addi	a5,a5,1200 # 800004b0 <fctprintf+0xffffee7c>
80000920:	0007a023          	sw	zero,0(a5)
80000924:	0007a223          	sw	zero,4(a5)
80000928:	800007b7          	lui	a5,0x80000
8000092c:	4a07a623          	sw	zero,1196(a5) # 800004ac <fctprintf+0xffffee78>
80000930:	800007b7          	lui	a5,0x80000
80000934:	4a07a423          	sw	zero,1192(a5) # 800004a8 <fctprintf+0xffffee74>
80000938:	00008067          	ret

8000093c <memmgr_free>:
8000093c:	80000737          	lui	a4,0x80000
80000940:	4ac72783          	lw	a5,1196(a4) # 800004ac <fctprintf+0xffffee78>
80000944:	ff850693          	addi	a3,a0,-8
80000948:	00070613          	mv	a2,a4
8000094c:	0007a703          	lw	a4,0(a5)
80000950:	06d7f463          	bgeu	a5,a3,800009b8 <memmgr_free+0x7c>
80000954:	04e6fe63          	bgeu	a3,a4,800009b0 <memmgr_free+0x74>
80000958:	ffc52883          	lw	a7,-4(a0)
8000095c:	00389813          	slli	a6,a7,0x3
80000960:	01068833          	add	a6,a3,a6
80000964:	01071a63          	bne	a4,a6,80000978 <memmgr_free+0x3c>
80000968:	00472583          	lw	a1,4(a4)
8000096c:	00072703          	lw	a4,0(a4)
80000970:	011585b3          	add	a1,a1,a7
80000974:	feb52e23          	sw	a1,-4(a0)
80000978:	0047a803          	lw	a6,4(a5)
8000097c:	fee52c23          	sw	a4,-8(a0)
80000980:	00381593          	slli	a1,a6,0x3
80000984:	00b785b3          	add	a1,a5,a1
80000988:	02b69063          	bne	a3,a1,800009a8 <memmgr_free+0x6c>
8000098c:	ffc52703          	lw	a4,-4(a0)
80000990:	01070733          	add	a4,a4,a6
80000994:	00e7a223          	sw	a4,4(a5)
80000998:	ff852703          	lw	a4,-8(a0)
8000099c:	00e7a023          	sw	a4,0(a5)
800009a0:	4af62623          	sw	a5,1196(a2)
800009a4:	00008067          	ret
800009a8:	00d7a023          	sw	a3,0(a5)
800009ac:	ff5ff06f          	j	800009a0 <memmgr_free+0x64>
800009b0:	00e7e863          	bltu	a5,a4,800009c0 <memmgr_free+0x84>
800009b4:	fa5ff06f          	j	80000958 <memmgr_free+0x1c>
800009b8:	00e7e463          	bltu	a5,a4,800009c0 <memmgr_free+0x84>
800009bc:	f8e6eee3          	bltu	a3,a4,80000958 <memmgr_free+0x1c>
800009c0:	00070793          	mv	a5,a4
800009c4:	f89ff06f          	j	8000094c <memmgr_free+0x10>

800009c8 <memmgr_alloc>:
800009c8:	fd010113          	addi	sp,sp,-48
800009cc:	02912223          	sw	s1,36(sp)
800009d0:	800004b7          	lui	s1,0x80000
800009d4:	4ac4a783          	lw	a5,1196(s1) # 800004ac <fctprintf+0xffffee78>
800009d8:	02812423          	sw	s0,40(sp)
800009dc:	00750413          	addi	s0,a0,7
800009e0:	00345413          	srli	s0,s0,0x3
800009e4:	02112623          	sw	ra,44(sp)
800009e8:	03212023          	sw	s2,32(sp)
800009ec:	01312e23          	sw	s3,28(sp)
800009f0:	01412c23          	sw	s4,24(sp)
800009f4:	01512a23          	sw	s5,20(sp)
800009f8:	01612823          	sw	s6,16(sp)
800009fc:	01712623          	sw	s7,12(sp)
80000a00:	00140413          	addi	s0,s0,1
80000a04:	00079e63          	bnez	a5,80000a20 <memmgr_alloc+0x58>
80000a08:	800007b7          	lui	a5,0x80000
80000a0c:	4b078713          	addi	a4,a5,1200 # 800004b0 <fctprintf+0xffffee7c>
80000a10:	4ae4a623          	sw	a4,1196(s1)
80000a14:	00e72023          	sw	a4,0(a4)
80000a18:	00072223          	sw	zero,4(a4)
80000a1c:	4b078793          	addi	a5,a5,1200
80000a20:	01000713          	li	a4,16
80000a24:	0007a503          	lw	a0,0(a5)
80000a28:	00040913          	mv	s2,s0
80000a2c:	00e47463          	bgeu	s0,a4,80000a34 <memmgr_alloc+0x6c>
80000a30:	01000913          	li	s2,16
80000a34:	800009b7          	lui	s3,0x80000
80000a38:	00391b13          	slli	s6,s2,0x3
80000a3c:	80000a37          	lui	s4,0x80000
80000a40:	40000b93          	li	s7,1024
80000a44:	0a898993          	addi	s3,s3,168 # 800000a8 <fctprintf+0xffffea74>
80000a48:	00452703          	lw	a4,4(a0)
80000a4c:	04876e63          	bltu	a4,s0,80000aa8 <memmgr_alloc+0xe0>
80000a50:	04871063          	bne	a4,s0,80000a90 <memmgr_alloc+0xc8>
80000a54:	00052703          	lw	a4,0(a0)
80000a58:	00e7a023          	sw	a4,0(a5)
80000a5c:	4af4a623          	sw	a5,1196(s1)
80000a60:	00850513          	addi	a0,a0,8
80000a64:	02c12083          	lw	ra,44(sp)
80000a68:	02812403          	lw	s0,40(sp)
80000a6c:	02412483          	lw	s1,36(sp)
80000a70:	02012903          	lw	s2,32(sp)
80000a74:	01c12983          	lw	s3,28(sp)
80000a78:	01812a03          	lw	s4,24(sp)
80000a7c:	01412a83          	lw	s5,20(sp)
80000a80:	01012b03          	lw	s6,16(sp)
80000a84:	00c12b83          	lw	s7,12(sp)
80000a88:	03010113          	addi	sp,sp,48
80000a8c:	00008067          	ret
80000a90:	40870733          	sub	a4,a4,s0
80000a94:	00e52223          	sw	a4,4(a0)
80000a98:	00371713          	slli	a4,a4,0x3
80000a9c:	00e50533          	add	a0,a0,a4
80000aa0:	00852223          	sw	s0,4(a0)
80000aa4:	fb9ff06f          	j	80000a5c <memmgr_alloc+0x94>
80000aa8:	4ac4a783          	lw	a5,1196(s1)
80000aac:	02a79663          	bne	a5,a0,80000ad8 <memmgr_alloc+0x110>
80000ab0:	4a8a2503          	lw	a0,1192(s4) # 800004a8 <fctprintf+0xffffee74>
80000ab4:	00ab0ab3          	add	s5,s6,a0
80000ab8:	035be663          	bltu	s7,s5,80000ae4 <memmgr_alloc+0x11c>
80000abc:	00a98533          	add	a0,s3,a0
80000ac0:	01252223          	sw	s2,4(a0)
80000ac4:	00850513          	addi	a0,a0,8
80000ac8:	e75ff0ef          	jal	ra,8000093c <memmgr_free>
80000acc:	4ac4a503          	lw	a0,1196(s1)
80000ad0:	4b5a2423          	sw	s5,1192(s4)
80000ad4:	00050863          	beqz	a0,80000ae4 <memmgr_alloc+0x11c>
80000ad8:	00050793          	mv	a5,a0
80000adc:	00052503          	lw	a0,0(a0)
80000ae0:	f69ff06f          	j	80000a48 <memmgr_alloc+0x80>
80000ae4:	00000513          	li	a0,0
80000ae8:	f7dff06f          	j	80000a64 <memmgr_alloc+0x9c>

80000aec <_out_buffer>:
80000aec:	00d67663          	bgeu	a2,a3,80000af8 <_out_buffer+0xc>
80000af0:	00c585b3          	add	a1,a1,a2
80000af4:	00a58023          	sb	a0,0(a1)
80000af8:	00008067          	ret

80000afc <_out_null>:
80000afc:	00008067          	ret

80000b00 <_ntoa_long>:
80000b00:	f9010113          	addi	sp,sp,-112
80000b04:	06812423          	sw	s0,104(sp)
80000b08:	06912223          	sw	s1,100(sp)
80000b0c:	07212023          	sw	s2,96(sp)
80000b10:	05412c23          	sw	s4,88(sp)
80000b14:	05512a23          	sw	s5,84(sp)
80000b18:	05612823          	sw	s6,80(sp)
80000b1c:	05812423          	sw	s8,72(sp)
80000b20:	05a12023          	sw	s10,64(sp)
80000b24:	06112623          	sw	ra,108(sp)
80000b28:	05312e23          	sw	s3,92(sp)
80000b2c:	05712623          	sw	s7,76(sp)
80000b30:	05912223          	sw	s9,68(sp)
80000b34:	03b12e23          	sw	s11,60(sp)
80000b38:	00f12423          	sw	a5,8(sp)
80000b3c:	00058a93          	mv	s5,a1
80000b40:	07012d03          	lw	s10,112(sp)
80000b44:	07412483          	lw	s1,116(sp)
80000b48:	00050a13          	mv	s4,a0
80000b4c:	00060913          	mv	s2,a2
80000b50:	00068b13          	mv	s6,a3
80000b54:	00070413          	mv	s0,a4
80000b58:	00080593          	mv	a1,a6
80000b5c:	00088c13          	mv	s8,a7
80000b60:	00071463          	bnez	a4,80000b68 <_ntoa_long+0x68>
80000b64:	fef4f493          	andi	s1,s1,-17
80000b68:	4004fc93          	andi	s9,s1,1024
80000b6c:	000c8463          	beqz	s9,80000b74 <_ntoa_long+0x74>
80000b70:	06040863          	beqz	s0,80000be0 <_ntoa_long+0xe0>
80000b74:	0204f713          	andi	a4,s1,32
80000b78:	06100993          	li	s3,97
80000b7c:	00070463          	beqz	a4,80000b84 <_ntoa_long+0x84>
80000b80:	04100993          	li	s3,65
80000b84:	00040b93          	mv	s7,s0
80000b88:	01010d93          	addi	s11,sp,16
80000b8c:	00000413          	li	s0,0
80000b90:	ff698993          	addi	s3,s3,-10
80000b94:	000b8513          	mv	a0,s7
80000b98:	00b12623          	sw	a1,12(sp)
80000b9c:	ce1ff0ef          	jal	ra,8000087c <__umodsi3>
80000ba0:	00900793          	li	a5,9
80000ba4:	00c12583          	lw	a1,12(sp)
80000ba8:	0ff57713          	andi	a4,a0,255
80000bac:	06a7e863          	bltu	a5,a0,80000c1c <_ntoa_long+0x11c>
80000bb0:	03070713          	addi	a4,a4,48
80000bb4:	0ff77713          	andi	a4,a4,255
80000bb8:	000b8513          	mv	a0,s7
80000bbc:	00b12623          	sw	a1,12(sp)
80000bc0:	00ed8023          	sb	a4,0(s11)
80000bc4:	c9dff0ef          	jal	ra,80000860 <__udivsi3>
80000bc8:	00c12583          	lw	a1,12(sp)
80000bcc:	00140413          	addi	s0,s0,1
80000bd0:	00bbe863          	bltu	s7,a1,80000be0 <_ntoa_long+0xe0>
80000bd4:	02000793          	li	a5,32
80000bd8:	001d8d93          	addi	s11,s11,1
80000bdc:	02f41c63          	bne	s0,a5,80000c14 <_ntoa_long+0x114>
80000be0:	0024f993          	andi	s3,s1,2
80000be4:	06099663          	bnez	s3,80000c50 <_ntoa_long+0x150>
80000be8:	0014f713          	andi	a4,s1,1
80000bec:	000d0e63          	beqz	s10,80000c08 <_ntoa_long+0x108>
80000bf0:	00070c63          	beqz	a4,80000c08 <_ntoa_long+0x108>
80000bf4:	00812783          	lw	a5,8(sp)
80000bf8:	00079663          	bnez	a5,80000c04 <_ntoa_long+0x104>
80000bfc:	00c4f693          	andi	a3,s1,12
80000c00:	00068463          	beqz	a3,80000c08 <_ntoa_long+0x108>
80000c04:	fffd0d13          	addi	s10,s10,-1
80000c08:	02000693          	li	a3,32
80000c0c:	03000613          	li	a2,48
80000c10:	0240006f          	j	80000c34 <_ntoa_long+0x134>
80000c14:	00050b93          	mv	s7,a0
80000c18:	f7dff06f          	j	80000b94 <_ntoa_long+0x94>
80000c1c:	01370733          	add	a4,a4,s3
80000c20:	f95ff06f          	j	80000bb4 <_ntoa_long+0xb4>
80000c24:	01010793          	addi	a5,sp,16
80000c28:	00878533          	add	a0,a5,s0
80000c2c:	00c50023          	sb	a2,0(a0)
80000c30:	00140413          	addi	s0,s0,1
80000c34:	01847463          	bgeu	s0,s8,80000c3c <_ntoa_long+0x13c>
80000c38:	fed416e3          	bne	s0,a3,80000c24 <_ntoa_long+0x124>
80000c3c:	01f00693          	li	a3,31
80000c40:	03000613          	li	a2,48
80000c44:	00070663          	beqz	a4,80000c50 <_ntoa_long+0x150>
80000c48:	01a47463          	bgeu	s0,s10,80000c50 <_ntoa_long+0x150>
80000c4c:	0486fa63          	bgeu	a3,s0,80000ca0 <_ntoa_long+0x1a0>
80000c50:	0104f713          	andi	a4,s1,16
80000c54:	0a070663          	beqz	a4,80000d00 <_ntoa_long+0x200>
80000c58:	060c9063          	bnez	s9,80000cb8 <_ntoa_long+0x1b8>
80000c5c:	04040e63          	beqz	s0,80000cb8 <_ntoa_long+0x1b8>
80000c60:	008c0463          	beq	s8,s0,80000c68 <_ntoa_long+0x168>
80000c64:	05a41a63          	bne	s0,s10,80000cb8 <_ntoa_long+0x1b8>
80000c68:	fff40713          	addi	a4,s0,-1
80000c6c:	04070463          	beqz	a4,80000cb4 <_ntoa_long+0x1b4>
80000c70:	01000693          	li	a3,16
80000c74:	ffe40413          	addi	s0,s0,-2
80000c78:	04d58463          	beq	a1,a3,80000cc0 <_ntoa_long+0x1c0>
80000c7c:	00070413          	mv	s0,a4
80000c80:	00200713          	li	a4,2
80000c84:	06e59063          	bne	a1,a4,80000ce4 <_ntoa_long+0x1e4>
80000c88:	01f00713          	li	a4,31
80000c8c:	08876c63          	bltu	a4,s0,80000d24 <_ntoa_long+0x224>
80000c90:	03010793          	addi	a5,sp,48
80000c94:	00878733          	add	a4,a5,s0
80000c98:	06200693          	li	a3,98
80000c9c:	0400006f          	j	80000cdc <_ntoa_long+0x1dc>
80000ca0:	01010793          	addi	a5,sp,16
80000ca4:	00878533          	add	a0,a5,s0
80000ca8:	00c50023          	sb	a2,0(a0)
80000cac:	00140413          	addi	s0,s0,1
80000cb0:	f95ff06f          	j	80000c44 <_ntoa_long+0x144>
80000cb4:	00000413          	li	s0,0
80000cb8:	01000713          	li	a4,16
80000cbc:	fce592e3          	bne	a1,a4,80000c80 <_ntoa_long+0x180>
80000cc0:	0204f713          	andi	a4,s1,32
80000cc4:	06071c63          	bnez	a4,80000d3c <_ntoa_long+0x23c>
80000cc8:	01f00713          	li	a4,31
80000ccc:	04876c63          	bltu	a4,s0,80000d24 <_ntoa_long+0x224>
80000cd0:	03010793          	addi	a5,sp,48
80000cd4:	00878733          	add	a4,a5,s0
80000cd8:	07800693          	li	a3,120
80000cdc:	fed70023          	sb	a3,-32(a4)
80000ce0:	00140413          	addi	s0,s0,1
80000ce4:	01f00713          	li	a4,31
80000ce8:	02876e63          	bltu	a4,s0,80000d24 <_ntoa_long+0x224>
80000cec:	03010793          	addi	a5,sp,48
80000cf0:	00878733          	add	a4,a5,s0
80000cf4:	03000693          	li	a3,48
80000cf8:	fed70023          	sb	a3,-32(a4)
80000cfc:	00140413          	addi	s0,s0,1
80000d00:	01f00713          	li	a4,31
80000d04:	02876063          	bltu	a4,s0,80000d24 <_ntoa_long+0x224>
80000d08:	00812783          	lw	a5,8(sp)
80000d0c:	04078463          	beqz	a5,80000d54 <_ntoa_long+0x254>
80000d10:	03010793          	addi	a5,sp,48
80000d14:	00878733          	add	a4,a5,s0
80000d18:	02d00693          	li	a3,45
80000d1c:	fed70023          	sb	a3,-32(a4)
80000d20:	00140413          	addi	s0,s0,1
80000d24:	0034f493          	andi	s1,s1,3
80000d28:	00090c13          	mv	s8,s2
80000d2c:	08049263          	bnez	s1,80000db0 <_ntoa_long+0x2b0>
80000d30:	00040493          	mv	s1,s0
80000d34:	40890bb3          	sub	s7,s2,s0
80000d38:	0600006f          	j	80000d98 <_ntoa_long+0x298>
80000d3c:	01f00713          	li	a4,31
80000d40:	fe8762e3          	bltu	a4,s0,80000d24 <_ntoa_long+0x224>
80000d44:	03010793          	addi	a5,sp,48
80000d48:	00878733          	add	a4,a5,s0
80000d4c:	05800693          	li	a3,88
80000d50:	f8dff06f          	j	80000cdc <_ntoa_long+0x1dc>
80000d54:	0044f713          	andi	a4,s1,4
80000d58:	00070a63          	beqz	a4,80000d6c <_ntoa_long+0x26c>
80000d5c:	03010793          	addi	a5,sp,48
80000d60:	00878733          	add	a4,a5,s0
80000d64:	02b00693          	li	a3,43
80000d68:	fb5ff06f          	j	80000d1c <_ntoa_long+0x21c>
80000d6c:	0084f713          	andi	a4,s1,8
80000d70:	fa070ae3          	beqz	a4,80000d24 <_ntoa_long+0x224>
80000d74:	03010793          	addi	a5,sp,48
80000d78:	00878733          	add	a4,a5,s0
80000d7c:	02000693          	li	a3,32
80000d80:	f9dff06f          	j	80000d1c <_ntoa_long+0x21c>
80000d84:	000b0693          	mv	a3,s6
80000d88:	000a8593          	mv	a1,s5
80000d8c:	02000513          	li	a0,32
80000d90:	000a00e7          	jalr	s4
80000d94:	00148493          	addi	s1,s1,1
80000d98:	009b8633          	add	a2,s7,s1
80000d9c:	ffa4e4e3          	bltu	s1,s10,80000d84 <_ntoa_long+0x284>
80000da0:	00000c13          	li	s8,0
80000da4:	008d6463          	bltu	s10,s0,80000dac <_ntoa_long+0x2ac>
80000da8:	408d0c33          	sub	s8,s10,s0
80000dac:	012c0c33          	add	s8,s8,s2
80000db0:	00040b93          	mv	s7,s0
80000db4:	018404b3          	add	s1,s0,s8
80000db8:	41748633          	sub	a2,s1,s7
80000dbc:	060b9663          	bnez	s7,80000e28 <_ntoa_long+0x328>
80000dc0:	02098463          	beqz	s3,80000de8 <_ntoa_long+0x2e8>
80000dc4:	412489b3          	sub	s3,s1,s2
80000dc8:	00098413          	mv	s0,s3
80000dcc:	00890633          	add	a2,s2,s0
80000dd0:	07a46c63          	bltu	s0,s10,80000e48 <_ntoa_long+0x348>
80000dd4:	00000613          	li	a2,0
80000dd8:	013d6663          	bltu	s10,s3,80000de4 <_ntoa_long+0x2e4>
80000ddc:	01a90933          	add	s2,s2,s10
80000de0:	40990633          	sub	a2,s2,s1
80000de4:	00c484b3          	add	s1,s1,a2
80000de8:	06c12083          	lw	ra,108(sp)
80000dec:	06812403          	lw	s0,104(sp)
80000df0:	06012903          	lw	s2,96(sp)
80000df4:	05c12983          	lw	s3,92(sp)
80000df8:	05812a03          	lw	s4,88(sp)
80000dfc:	05412a83          	lw	s5,84(sp)
80000e00:	05012b03          	lw	s6,80(sp)
80000e04:	04c12b83          	lw	s7,76(sp)
80000e08:	04812c03          	lw	s8,72(sp)
80000e0c:	04412c83          	lw	s9,68(sp)
80000e10:	04012d03          	lw	s10,64(sp)
80000e14:	03c12d83          	lw	s11,60(sp)
80000e18:	00048513          	mv	a0,s1
80000e1c:	06412483          	lw	s1,100(sp)
80000e20:	07010113          	addi	sp,sp,112
80000e24:	00008067          	ret
80000e28:	fffb8b93          	addi	s7,s7,-1
80000e2c:	01010793          	addi	a5,sp,16
80000e30:	01778733          	add	a4,a5,s7
80000e34:	00074503          	lbu	a0,0(a4)
80000e38:	000b0693          	mv	a3,s6
80000e3c:	000a8593          	mv	a1,s5
80000e40:	000a00e7          	jalr	s4
80000e44:	f71ff06f          	j	80000db4 <_ntoa_long+0x2b4>
80000e48:	000b0693          	mv	a3,s6
80000e4c:	000a8593          	mv	a1,s5
80000e50:	02000513          	li	a0,32
80000e54:	000a00e7          	jalr	s4
80000e58:	00140413          	addi	s0,s0,1
80000e5c:	f71ff06f          	j	80000dcc <_ntoa_long+0x2cc>

80000e60 <_out_char>:
80000e60:	00050463          	beqz	a0,80000e68 <_out_char+0x8>
80000e64:	a29ff06f          	j	8000088c <_putchar>
80000e68:	00008067          	ret

80000e6c <_out_fct>:
80000e6c:	00050863          	beqz	a0,80000e7c <_out_fct+0x10>
80000e70:	0005a303          	lw	t1,0(a1)
80000e74:	0045a583          	lw	a1,4(a1)
80000e78:	00030067          	jr	t1
80000e7c:	00008067          	ret

80000e80 <_vsnprintf>:
80000e80:	fa010113          	addi	sp,sp,-96
80000e84:	04912a23          	sw	s1,84(sp)
80000e88:	05212823          	sw	s2,80(sp)
80000e8c:	05312623          	sw	s3,76(sp)
80000e90:	05412423          	sw	s4,72(sp)
80000e94:	03712e23          	sw	s7,60(sp)
80000e98:	04112e23          	sw	ra,92(sp)
80000e9c:	04812c23          	sw	s0,88(sp)
80000ea0:	05512223          	sw	s5,68(sp)
80000ea4:	05612023          	sw	s6,64(sp)
80000ea8:	03812c23          	sw	s8,56(sp)
80000eac:	03912a23          	sw	s9,52(sp)
80000eb0:	03a12823          	sw	s10,48(sp)
80000eb4:	03b12623          	sw	s11,44(sp)
80000eb8:	00058a13          	mv	s4,a1
80000ebc:	00060993          	mv	s3,a2
80000ec0:	00068493          	mv	s1,a3
80000ec4:	00070b93          	mv	s7,a4
80000ec8:	00050913          	mv	s2,a0
80000ecc:	00059663          	bnez	a1,80000ed8 <_vsnprintf+0x58>
80000ed0:	80001937          	lui	s2,0x80001
80000ed4:	afc90913          	addi	s2,s2,-1284 # 80000afc <fctprintf+0xfffff4c8>
80000ed8:	00010ab7          	lui	s5,0x10
80000edc:	80000b37          	lui	s6,0x80000
80000ee0:	00000d93          	li	s11,0
80000ee4:	fffa8a93          	addi	s5,s5,-1 # ffff <pool-0x7fff00a9>
80000ee8:	048b0b13          	addi	s6,s6,72 # 80000048 <fctprintf+0xffffea14>
80000eec:	4140006f          	j	80001300 <_vsnprintf+0x480>
80000ef0:	02500793          	li	a5,37
80000ef4:	00148493          	addi	s1,s1,1
80000ef8:	00f50c63          	beq	a0,a5,80000f10 <_vsnprintf+0x90>
80000efc:	001d8413          	addi	s0,s11,1
80000f00:	00098693          	mv	a3,s3
80000f04:	000d8613          	mv	a2,s11
80000f08:	000a0593          	mv	a1,s4
80000f0c:	5dc0006f          	j	800014e8 <_vsnprintf+0x668>
80000f10:	00000313          	li	t1,0
80000f14:	02b00713          	li	a4,43
80000f18:	02000613          	li	a2,32
80000f1c:	02300593          	li	a1,35
80000f20:	01c0006f          	j	80000f3c <_vsnprintf+0xbc>
80000f24:	02d00513          	li	a0,45
80000f28:	04a78463          	beq	a5,a0,80000f70 <_vsnprintf+0xf0>
80000f2c:	03000513          	li	a0,48
80000f30:	02a79263          	bne	a5,a0,80000f54 <_vsnprintf+0xd4>
80000f34:	00136313          	ori	t1,t1,1
80000f38:	00068493          	mv	s1,a3
80000f3c:	0004c783          	lbu	a5,0(s1)
80000f40:	00148693          	addi	a3,s1,1
80000f44:	02e78a63          	beq	a5,a4,80000f78 <_vsnprintf+0xf8>
80000f48:	fcf76ee3          	bltu	a4,a5,80000f24 <_vsnprintf+0xa4>
80000f4c:	02c78a63          	beq	a5,a2,80000f80 <_vsnprintf+0x100>
80000f50:	02b78c63          	beq	a5,a1,80000f88 <_vsnprintf+0x108>
80000f54:	fd078713          	addi	a4,a5,-48
80000f58:	0ff77713          	andi	a4,a4,255
80000f5c:	00900613          	li	a2,9
80000f60:	08e66863          	bltu	a2,a4,80000ff0 <_vsnprintf+0x170>
80000f64:	00000c13          	li	s8,0
80000f68:	00900693          	li	a3,9
80000f6c:	03c0006f          	j	80000fa8 <_vsnprintf+0x128>
80000f70:	00236313          	ori	t1,t1,2
80000f74:	fc5ff06f          	j	80000f38 <_vsnprintf+0xb8>
80000f78:	00436313          	ori	t1,t1,4
80000f7c:	fbdff06f          	j	80000f38 <_vsnprintf+0xb8>
80000f80:	00836313          	ori	t1,t1,8
80000f84:	fb5ff06f          	j	80000f38 <_vsnprintf+0xb8>
80000f88:	01036313          	ori	t1,t1,16
80000f8c:	fadff06f          	j	80000f38 <_vsnprintf+0xb8>
80000f90:	002c1793          	slli	a5,s8,0x2
80000f94:	01878e33          	add	t3,a5,s8
80000f98:	001e1e13          	slli	t3,t3,0x1
80000f9c:	fd0e0e13          	addi	t3,t3,-48
80000fa0:	01c70c33          	add	s8,a4,t3
80000fa4:	00060493          	mv	s1,a2
80000fa8:	0004c703          	lbu	a4,0(s1)
80000fac:	00148613          	addi	a2,s1,1
80000fb0:	fd070793          	addi	a5,a4,-48
80000fb4:	0ff7f793          	andi	a5,a5,255
80000fb8:	fcf6fce3          	bgeu	a3,a5,80000f90 <_vsnprintf+0x110>
80000fbc:	0004c703          	lbu	a4,0(s1)
80000fc0:	02e00793          	li	a5,46
80000fc4:	00000893          	li	a7,0
80000fc8:	0af71463          	bne	a4,a5,80001070 <_vsnprintf+0x1f0>
80000fcc:	0014c683          	lbu	a3,1(s1)
80000fd0:	00900613          	li	a2,9
80000fd4:	00148793          	addi	a5,s1,1
80000fd8:	fd068713          	addi	a4,a3,-48
80000fdc:	0ff77713          	andi	a4,a4,255
80000fe0:	40036313          	ori	t1,t1,1024
80000fe4:	06e66663          	bltu	a2,a4,80001050 <_vsnprintf+0x1d0>
80000fe8:	00900613          	li	a2,9
80000fec:	0480006f          	j	80001034 <_vsnprintf+0x1b4>
80000ff0:	02a00713          	li	a4,42
80000ff4:	00000c13          	li	s8,0
80000ff8:	fce792e3          	bne	a5,a4,80000fbc <_vsnprintf+0x13c>
80000ffc:	000bac03          	lw	s8,0(s7)
80001000:	004b8793          	addi	a5,s7,4
80001004:	000c5663          	bgez	s8,80001010 <_vsnprintf+0x190>
80001008:	00236313          	ori	t1,t1,2
8000100c:	41800c33          	neg	s8,s8
80001010:	00078b93          	mv	s7,a5
80001014:	00068493          	mv	s1,a3
80001018:	fa5ff06f          	j	80000fbc <_vsnprintf+0x13c>
8000101c:	00289793          	slli	a5,a7,0x2
80001020:	011788b3          	add	a7,a5,a7
80001024:	00189893          	slli	a7,a7,0x1
80001028:	fd088893          	addi	a7,a7,-48
8000102c:	011688b3          	add	a7,a3,a7
80001030:	00058793          	mv	a5,a1
80001034:	0007c683          	lbu	a3,0(a5)
80001038:	00178593          	addi	a1,a5,1
8000103c:	fd068713          	addi	a4,a3,-48
80001040:	0ff77713          	andi	a4,a4,255
80001044:	fce67ce3          	bgeu	a2,a4,8000101c <_vsnprintf+0x19c>
80001048:	00078493          	mv	s1,a5
8000104c:	0240006f          	j	80001070 <_vsnprintf+0x1f0>
80001050:	02a00713          	li	a4,42
80001054:	fee69ae3          	bne	a3,a4,80001048 <_vsnprintf+0x1c8>
80001058:	000ba883          	lw	a7,0(s7)
8000105c:	004b8793          	addi	a5,s7,4
80001060:	0008d463          	bgez	a7,80001068 <_vsnprintf+0x1e8>
80001064:	00000893          	li	a7,0
80001068:	00248493          	addi	s1,s1,2
8000106c:	00078b93          	mv	s7,a5
80001070:	0004c783          	lbu	a5,0(s1)
80001074:	06c00693          	li	a3,108
80001078:	00148713          	addi	a4,s1,1
8000107c:	06d78463          	beq	a5,a3,800010e4 <_vsnprintf+0x264>
80001080:	04f6e663          	bltu	a3,a5,800010cc <_vsnprintf+0x24c>
80001084:	06800693          	li	a3,104
80001088:	06d78863          	beq	a5,a3,800010f8 <_vsnprintf+0x278>
8000108c:	06a00693          	li	a3,106
80001090:	08d78063          	beq	a5,a3,80001110 <_vsnprintf+0x290>
80001094:	00048713          	mv	a4,s1
80001098:	00074503          	lbu	a0,0(a4)
8000109c:	07800793          	li	a5,120
800010a0:	00170493          	addi	s1,a4,1
800010a4:	e4a7ece3          	bltu	a5,a0,80000efc <_vsnprintf+0x7c>
800010a8:	06100793          	li	a5,97
800010ac:	06a7e663          	bltu	a5,a0,80001118 <_vsnprintf+0x298>
800010b0:	02500793          	li	a5,37
800010b4:	42f50063          	beq	a0,a5,800014d4 <_vsnprintf+0x654>
800010b8:	05800793          	li	a5,88
800010bc:	e4f510e3          	bne	a0,a5,80000efc <_vsnprintf+0x7c>
800010c0:	02036313          	ori	t1,t1,32
800010c4:	01000813          	li	a6,16
800010c8:	0a00006f          	j	80001168 <_vsnprintf+0x2e8>
800010cc:	07400693          	li	a3,116
800010d0:	00d78663          	beq	a5,a3,800010dc <_vsnprintf+0x25c>
800010d4:	07a00693          	li	a3,122
800010d8:	fad79ee3          	bne	a5,a3,80001094 <_vsnprintf+0x214>
800010dc:	10036313          	ori	t1,t1,256
800010e0:	fb9ff06f          	j	80001098 <_vsnprintf+0x218>
800010e4:	0014c683          	lbu	a3,1(s1)
800010e8:	fef69ae3          	bne	a3,a5,800010dc <_vsnprintf+0x25c>
800010ec:	30036313          	ori	t1,t1,768
800010f0:	00248713          	addi	a4,s1,2
800010f4:	fa5ff06f          	j	80001098 <_vsnprintf+0x218>
800010f8:	0014c683          	lbu	a3,1(s1)
800010fc:	00f68663          	beq	a3,a5,80001108 <_vsnprintf+0x288>
80001100:	08036313          	ori	t1,t1,128
80001104:	f95ff06f          	j	80001098 <_vsnprintf+0x218>
80001108:	0c036313          	ori	t1,t1,192
8000110c:	fe5ff06f          	j	800010f0 <_vsnprintf+0x270>
80001110:	20036313          	ori	t1,t1,512
80001114:	f85ff06f          	j	80001098 <_vsnprintf+0x218>
80001118:	f9e50793          	addi	a5,a0,-98
8000111c:	0ff7f793          	andi	a5,a5,255
80001120:	01600713          	li	a4,22
80001124:	dcf76ce3          	bltu	a4,a5,80000efc <_vsnprintf+0x7c>
80001128:	00279793          	slli	a5,a5,0x2
8000112c:	016787b3          	add	a5,a5,s6
80001130:	0007a783          	lw	a5,0(a5)
80001134:	00078067          	jr	a5
80001138:	07800793          	li	a5,120
8000113c:	f8f504e3          	beq	a0,a5,800010c4 <_vsnprintf+0x244>
80001140:	06f00793          	li	a5,111
80001144:	3af50863          	beq	a0,a5,800014f4 <_vsnprintf+0x674>
80001148:	06200793          	li	a5,98
8000114c:	3af50863          	beq	a0,a5,800014fc <_vsnprintf+0x67c>
80001150:	06900793          	li	a5,105
80001154:	fef37313          	andi	t1,t1,-17
80001158:	00a00813          	li	a6,10
8000115c:	00f50863          	beq	a0,a5,8000116c <_vsnprintf+0x2ec>
80001160:	06400793          	li	a5,100
80001164:	00f50463          	beq	a0,a5,8000116c <_vsnprintf+0x2ec>
80001168:	ff337313          	andi	t1,t1,-13
8000116c:	40037793          	andi	a5,t1,1024
80001170:	00078463          	beqz	a5,80001178 <_vsnprintf+0x2f8>
80001174:	ffe37313          	andi	t1,t1,-2
80001178:	06900713          	li	a4,105
8000117c:	20037793          	andi	a5,t1,512
80001180:	00e50663          	beq	a0,a4,8000118c <_vsnprintf+0x30c>
80001184:	06400713          	li	a4,100
80001188:	06e51c63          	bne	a0,a4,80001200 <_vsnprintf+0x380>
8000118c:	16079a63          	bnez	a5,80001300 <_vsnprintf+0x480>
80001190:	10037793          	andi	a5,t1,256
80001194:	004b8413          	addi	s0,s7,4
80001198:	04078063          	beqz	a5,800011d8 <_vsnprintf+0x358>
8000119c:	000ba783          	lw	a5,0(s7)
800011a0:	41f7d713          	srai	a4,a5,0x1f
800011a4:	00f746b3          	xor	a3,a4,a5
800011a8:	00612223          	sw	t1,4(sp)
800011ac:	01812023          	sw	s8,0(sp)
800011b0:	01f7d793          	srli	a5,a5,0x1f
800011b4:	40e68733          	sub	a4,a3,a4
800011b8:	000d8613          	mv	a2,s11
800011bc:	00098693          	mv	a3,s3
800011c0:	000a0593          	mv	a1,s4
800011c4:	00090513          	mv	a0,s2
800011c8:	939ff0ef          	jal	ra,80000b00 <_ntoa_long>
800011cc:	00050d93          	mv	s11,a0
800011d0:	00040b93          	mv	s7,s0
800011d4:	12c0006f          	j	80001300 <_vsnprintf+0x480>
800011d8:	04037713          	andi	a4,t1,64
800011dc:	000ba783          	lw	a5,0(s7)
800011e0:	00070663          	beqz	a4,800011ec <_vsnprintf+0x36c>
800011e4:	0ff7f793          	andi	a5,a5,255
800011e8:	fb9ff06f          	j	800011a0 <_vsnprintf+0x320>
800011ec:	08037713          	andi	a4,t1,128
800011f0:	fa0708e3          	beqz	a4,800011a0 <_vsnprintf+0x320>
800011f4:	01079793          	slli	a5,a5,0x10
800011f8:	4107d793          	srai	a5,a5,0x10
800011fc:	fa5ff06f          	j	800011a0 <_vsnprintf+0x320>
80001200:	10079063          	bnez	a5,80001300 <_vsnprintf+0x480>
80001204:	10037793          	andi	a5,t1,256
80001208:	004b8413          	addi	s0,s7,4
8000120c:	00078c63          	beqz	a5,80001224 <_vsnprintf+0x3a4>
80001210:	000ba703          	lw	a4,0(s7)
80001214:	00612223          	sw	t1,4(sp)
80001218:	01812023          	sw	s8,0(sp)
8000121c:	00000793          	li	a5,0
80001220:	f99ff06f          	j	800011b8 <_vsnprintf+0x338>
80001224:	04037793          	andi	a5,t1,64
80001228:	000ba703          	lw	a4,0(s7)
8000122c:	00078663          	beqz	a5,80001238 <_vsnprintf+0x3b8>
80001230:	0ff77713          	andi	a4,a4,255
80001234:	fe1ff06f          	j	80001214 <_vsnprintf+0x394>
80001238:	08037793          	andi	a5,t1,128
8000123c:	fc078ce3          	beqz	a5,80001214 <_vsnprintf+0x394>
80001240:	01577733          	and	a4,a4,s5
80001244:	fd1ff06f          	j	80001214 <_vsnprintf+0x394>
80001248:	00237413          	andi	s0,t1,2
8000124c:	00100d13          	li	s10,1
80001250:	04041463          	bnez	s0,80001298 <_vsnprintf+0x418>
80001254:	00000d13          	li	s10,0
80001258:	0140006f          	j	8000126c <_vsnprintf+0x3ec>
8000125c:	00098693          	mv	a3,s3
80001260:	000a0593          	mv	a1,s4
80001264:	02000513          	li	a0,32
80001268:	000900e7          	jalr	s2
8000126c:	01bd0633          	add	a2,s10,s11
80001270:	001d0d13          	addi	s10,s10,1
80001274:	ff8d64e3          	bltu	s10,s8,8000125c <_vsnprintf+0x3dc>
80001278:	00000793          	li	a5,0
8000127c:	000c0463          	beqz	s8,80001284 <_vsnprintf+0x404>
80001280:	fffc0793          	addi	a5,s8,-1
80001284:	00fd8db3          	add	s11,s11,a5
80001288:	00200793          	li	a5,2
8000128c:	000c0463          	beqz	s8,80001294 <_vsnprintf+0x414>
80001290:	001c0793          	addi	a5,s8,1
80001294:	00078d13          	mv	s10,a5
80001298:	000bc503          	lbu	a0,0(s7)
8000129c:	004b8793          	addi	a5,s7,4
800012a0:	00f12823          	sw	a5,16(sp)
800012a4:	00098693          	mv	a3,s3
800012a8:	000d8613          	mv	a2,s11
800012ac:	000a0593          	mv	a1,s4
800012b0:	001d8c93          	addi	s9,s11,1
800012b4:	000900e7          	jalr	s2
800012b8:	04040063          	beqz	s0,800012f8 <_vsnprintf+0x478>
800012bc:	000d0413          	mv	s0,s10
800012c0:	000c8613          	mv	a2,s9
800012c4:	0200006f          	j	800012e4 <_vsnprintf+0x464>
800012c8:	00098693          	mv	a3,s3
800012cc:	000a0593          	mv	a1,s4
800012d0:	02000513          	li	a0,32
800012d4:	00160b93          	addi	s7,a2,1
800012d8:	000900e7          	jalr	s2
800012dc:	00140413          	addi	s0,s0,1
800012e0:	000b8613          	mv	a2,s7
800012e4:	ff8462e3          	bltu	s0,s8,800012c8 <_vsnprintf+0x448>
800012e8:	00000693          	li	a3,0
800012ec:	01ac6463          	bltu	s8,s10,800012f4 <_vsnprintf+0x474>
800012f0:	41ac06b3          	sub	a3,s8,s10
800012f4:	00dc8cb3          	add	s9,s9,a3
800012f8:	01012b83          	lw	s7,16(sp)
800012fc:	000c8d93          	mv	s11,s9
80001300:	0004c503          	lbu	a0,0(s1)
80001304:	be0516e3          	bnez	a0,80000ef0 <_vsnprintf+0x70>
80001308:	000d8613          	mv	a2,s11
8000130c:	013de463          	bltu	s11,s3,80001314 <_vsnprintf+0x494>
80001310:	fff98613          	addi	a2,s3,-1
80001314:	00098693          	mv	a3,s3
80001318:	000a0593          	mv	a1,s4
8000131c:	00000513          	li	a0,0
80001320:	000900e7          	jalr	s2
80001324:	05c12083          	lw	ra,92(sp)
80001328:	05812403          	lw	s0,88(sp)
8000132c:	05412483          	lw	s1,84(sp)
80001330:	05012903          	lw	s2,80(sp)
80001334:	04c12983          	lw	s3,76(sp)
80001338:	04812a03          	lw	s4,72(sp)
8000133c:	04412a83          	lw	s5,68(sp)
80001340:	04012b03          	lw	s6,64(sp)
80001344:	03c12b83          	lw	s7,60(sp)
80001348:	03812c03          	lw	s8,56(sp)
8000134c:	03412c83          	lw	s9,52(sp)
80001350:	03012d03          	lw	s10,48(sp)
80001354:	000d8513          	mv	a0,s11
80001358:	02c12d83          	lw	s11,44(sp)
8000135c:	06010113          	addi	sp,sp,96
80001360:	00008067          	ret
80001364:	004b8793          	addi	a5,s7,4
80001368:	00f12823          	sw	a5,16(sp)
8000136c:	000bad03          	lw	s10,0(s7)
80001370:	00088793          	mv	a5,a7
80001374:	00089463          	bnez	a7,8000137c <_vsnprintf+0x4fc>
80001378:	fff00793          	li	a5,-1
8000137c:	00fd0733          	add	a4,s10,a5
80001380:	000d0793          	mv	a5,s10
80001384:	0007c683          	lbu	a3,0(a5)
80001388:	00068463          	beqz	a3,80001390 <_vsnprintf+0x510>
8000138c:	02f71663          	bne	a4,a5,800013b8 <_vsnprintf+0x538>
80001390:	40037b93          	andi	s7,t1,1024
80001394:	41a78cb3          	sub	s9,a5,s10
80001398:	000b8663          	beqz	s7,800013a4 <_vsnprintf+0x524>
8000139c:	0198f463          	bgeu	a7,s9,800013a4 <_vsnprintf+0x524>
800013a0:	00088c93          	mv	s9,a7
800013a4:	00237413          	andi	s0,t1,2
800013a8:	06041463          	bnez	s0,80001410 <_vsnprintf+0x590>
800013ac:	000d8613          	mv	a2,s11
800013b0:	41bc8333          	sub	t1,s9,s11
800013b4:	03c0006f          	j	800013f0 <_vsnprintf+0x570>
800013b8:	00178793          	addi	a5,a5,1
800013bc:	fc9ff06f          	j	80001384 <_vsnprintf+0x504>
800013c0:	00160713          	addi	a4,a2,1
800013c4:	00612e23          	sw	t1,28(sp)
800013c8:	01112c23          	sw	a7,24(sp)
800013cc:	00e12a23          	sw	a4,20(sp)
800013d0:	00098693          	mv	a3,s3
800013d4:	000a0593          	mv	a1,s4
800013d8:	02000513          	li	a0,32
800013dc:	000900e7          	jalr	s2
800013e0:	01412703          	lw	a4,20(sp)
800013e4:	01812883          	lw	a7,24(sp)
800013e8:	01c12303          	lw	t1,28(sp)
800013ec:	00070613          	mv	a2,a4
800013f0:	00660733          	add	a4,a2,t1
800013f4:	fd8766e3          	bltu	a4,s8,800013c0 <_vsnprintf+0x540>
800013f8:	00000713          	li	a4,0
800013fc:	019c6463          	bltu	s8,s9,80001404 <_vsnprintf+0x584>
80001400:	419c0733          	sub	a4,s8,s9
80001404:	001c8793          	addi	a5,s9,1
80001408:	00ed8db3          	add	s11,s11,a4
8000140c:	00f70cb3          	add	s9,a4,a5
80001410:	000d8713          	mv	a4,s11
80001414:	0300006f          	j	80001444 <_vsnprintf+0x5c4>
80001418:	00068893          	mv	a7,a3
8000141c:	00170313          	addi	t1,a4,1
80001420:	01112c23          	sw	a7,24(sp)
80001424:	00612a23          	sw	t1,20(sp)
80001428:	00070613          	mv	a2,a4
8000142c:	00098693          	mv	a3,s3
80001430:	000a0593          	mv	a1,s4
80001434:	000900e7          	jalr	s2
80001438:	01412303          	lw	t1,20(sp)
8000143c:	01812883          	lw	a7,24(sp)
80001440:	00030713          	mv	a4,t1
80001444:	41b706b3          	sub	a3,a4,s11
80001448:	00dd06b3          	add	a3,s10,a3
8000144c:	0006c503          	lbu	a0,0(a3)
80001450:	00050863          	beqz	a0,80001460 <_vsnprintf+0x5e0>
80001454:	fc0b84e3          	beqz	s7,8000141c <_vsnprintf+0x59c>
80001458:	fff88693          	addi	a3,a7,-1
8000145c:	fa089ee3          	bnez	a7,80001418 <_vsnprintf+0x598>
80001460:	04040463          	beqz	s0,800014a8 <_vsnprintf+0x628>
80001464:	00070613          	mv	a2,a4
80001468:	40ec8433          	sub	s0,s9,a4
8000146c:	0240006f          	j	80001490 <_vsnprintf+0x610>
80001470:	00e12a23          	sw	a4,20(sp)
80001474:	00098693          	mv	a3,s3
80001478:	000a0593          	mv	a1,s4
8000147c:	02000513          	li	a0,32
80001480:	00160b93          	addi	s7,a2,1
80001484:	000900e7          	jalr	s2
80001488:	01412703          	lw	a4,20(sp)
8000148c:	000b8613          	mv	a2,s7
80001490:	008606b3          	add	a3,a2,s0
80001494:	fd86eee3          	bltu	a3,s8,80001470 <_vsnprintf+0x5f0>
80001498:	00000693          	li	a3,0
8000149c:	019c6463          	bltu	s8,s9,800014a4 <_vsnprintf+0x624>
800014a0:	419c06b3          	sub	a3,s8,s9
800014a4:	00d70733          	add	a4,a4,a3
800014a8:	01012b83          	lw	s7,16(sp)
800014ac:	00070d93          	mv	s11,a4
800014b0:	e51ff06f          	j	80001300 <_vsnprintf+0x480>
800014b4:	02136313          	ori	t1,t1,33
800014b8:	00800793          	li	a5,8
800014bc:	000ba703          	lw	a4,0(s7)
800014c0:	004b8413          	addi	s0,s7,4
800014c4:	00612223          	sw	t1,4(sp)
800014c8:	00f12023          	sw	a5,0(sp)
800014cc:	01000813          	li	a6,16
800014d0:	d4dff06f          	j	8000121c <_vsnprintf+0x39c>
800014d4:	001d8413          	addi	s0,s11,1
800014d8:	00098693          	mv	a3,s3
800014dc:	000d8613          	mv	a2,s11
800014e0:	000a0593          	mv	a1,s4
800014e4:	02500513          	li	a0,37
800014e8:	000900e7          	jalr	s2
800014ec:	00040d93          	mv	s11,s0
800014f0:	e11ff06f          	j	80001300 <_vsnprintf+0x480>
800014f4:	00800813          	li	a6,8
800014f8:	c69ff06f          	j	80001160 <_vsnprintf+0x2e0>
800014fc:	00200813          	li	a6,2
80001500:	c61ff06f          	j	80001160 <_vsnprintf+0x2e0>

80001504 <printf_>:
80001504:	fc010113          	addi	sp,sp,-64
80001508:	02d12623          	sw	a3,44(sp)
8000150c:	00050693          	mv	a3,a0
80001510:	80001537          	lui	a0,0x80001
80001514:	02b12223          	sw	a1,36(sp)
80001518:	02c12423          	sw	a2,40(sp)
8000151c:	02e12823          	sw	a4,48(sp)
80001520:	00810593          	addi	a1,sp,8
80001524:	02410713          	addi	a4,sp,36
80001528:	fff00613          	li	a2,-1
8000152c:	e6050513          	addi	a0,a0,-416 # 80000e60 <fctprintf+0xfffff82c>
80001530:	00112e23          	sw	ra,28(sp)
80001534:	02f12a23          	sw	a5,52(sp)
80001538:	03012c23          	sw	a6,56(sp)
8000153c:	03112e23          	sw	a7,60(sp)
80001540:	00e12623          	sw	a4,12(sp)
80001544:	93dff0ef          	jal	ra,80000e80 <_vsnprintf>
80001548:	01c12083          	lw	ra,28(sp)
8000154c:	04010113          	addi	sp,sp,64
80001550:	00008067          	ret

80001554 <sprintf_>:
80001554:	fc010113          	addi	sp,sp,-64
80001558:	02d12623          	sw	a3,44(sp)
8000155c:	00058693          	mv	a3,a1
80001560:	00050593          	mv	a1,a0
80001564:	80001537          	lui	a0,0x80001
80001568:	02c12423          	sw	a2,40(sp)
8000156c:	02e12823          	sw	a4,48(sp)
80001570:	fff00613          	li	a2,-1
80001574:	02810713          	addi	a4,sp,40
80001578:	aec50513          	addi	a0,a0,-1300 # 80000aec <fctprintf+0xfffff4b8>
8000157c:	00112e23          	sw	ra,28(sp)
80001580:	02f12a23          	sw	a5,52(sp)
80001584:	03012c23          	sw	a6,56(sp)
80001588:	03112e23          	sw	a7,60(sp)
8000158c:	00e12623          	sw	a4,12(sp)
80001590:	8f1ff0ef          	jal	ra,80000e80 <_vsnprintf>
80001594:	01c12083          	lw	ra,28(sp)
80001598:	04010113          	addi	sp,sp,64
8000159c:	00008067          	ret

800015a0 <snprintf_>:
800015a0:	fc010113          	addi	sp,sp,-64
800015a4:	02d12623          	sw	a3,44(sp)
800015a8:	00060693          	mv	a3,a2
800015ac:	00058613          	mv	a2,a1
800015b0:	00050593          	mv	a1,a0
800015b4:	80001537          	lui	a0,0x80001
800015b8:	02e12823          	sw	a4,48(sp)
800015bc:	aec50513          	addi	a0,a0,-1300 # 80000aec <fctprintf+0xfffff4b8>
800015c0:	02c10713          	addi	a4,sp,44
800015c4:	00112e23          	sw	ra,28(sp)
800015c8:	02f12a23          	sw	a5,52(sp)
800015cc:	03012c23          	sw	a6,56(sp)
800015d0:	03112e23          	sw	a7,60(sp)
800015d4:	00e12623          	sw	a4,12(sp)
800015d8:	8a9ff0ef          	jal	ra,80000e80 <_vsnprintf>
800015dc:	01c12083          	lw	ra,28(sp)
800015e0:	04010113          	addi	sp,sp,64
800015e4:	00008067          	ret

800015e8 <vprintf_>:
800015e8:	fe010113          	addi	sp,sp,-32
800015ec:	00050693          	mv	a3,a0
800015f0:	80001537          	lui	a0,0x80001
800015f4:	00058713          	mv	a4,a1
800015f8:	fff00613          	li	a2,-1
800015fc:	00c10593          	addi	a1,sp,12
80001600:	e6050513          	addi	a0,a0,-416 # 80000e60 <fctprintf+0xfffff82c>
80001604:	00112e23          	sw	ra,28(sp)
80001608:	879ff0ef          	jal	ra,80000e80 <_vsnprintf>
8000160c:	01c12083          	lw	ra,28(sp)
80001610:	02010113          	addi	sp,sp,32
80001614:	00008067          	ret

80001618 <vsnprintf_>:
80001618:	00068713          	mv	a4,a3
8000161c:	00060693          	mv	a3,a2
80001620:	00058613          	mv	a2,a1
80001624:	00050593          	mv	a1,a0
80001628:	80001537          	lui	a0,0x80001
8000162c:	aec50513          	addi	a0,a0,-1300 # 80000aec <fctprintf+0xfffff4b8>
80001630:	851ff06f          	j	80000e80 <_vsnprintf>

80001634 <fctprintf>:
80001634:	fc010113          	addi	sp,sp,-64
80001638:	00a12423          	sw	a0,8(sp)
8000163c:	80001537          	lui	a0,0x80001
80001640:	02d12623          	sw	a3,44(sp)
80001644:	02e12823          	sw	a4,48(sp)
80001648:	00b12623          	sw	a1,12(sp)
8000164c:	02c10713          	addi	a4,sp,44
80001650:	00060693          	mv	a3,a2
80001654:	00810593          	addi	a1,sp,8
80001658:	fff00613          	li	a2,-1
8000165c:	e6c50513          	addi	a0,a0,-404 # 80000e6c <fctprintf+0xfffff838>
80001660:	00112e23          	sw	ra,28(sp)
80001664:	02f12a23          	sw	a5,52(sp)
80001668:	03012c23          	sw	a6,56(sp)
8000166c:	03112e23          	sw	a7,60(sp)
80001670:	00e12223          	sw	a4,4(sp)
80001674:	80dff0ef          	jal	ra,80000e80 <_vsnprintf>
80001678:	01c12083          	lw	ra,28(sp)
8000167c:	04010113          	addi	sp,sp,64
80001680:	00008067          	ret
80001684:	0000                	unimp
	...
