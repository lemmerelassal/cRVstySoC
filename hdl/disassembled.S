
main.out:     file format elf32-littleriscv


Disassembly of section .text:

80000800 <_start>:
80000800:	00000117          	auipc	sp,0x0
80000804:	00010113          	mv	sp,sp
80000808:	00000097          	auipc	ra,0x0
8000080c:	00c08093          	addi	ra,ra,12 # 80000814 <exec_done>
80000810:	0500006f          	j	80000860 <main>

80000814 <exec_done>:
80000814:	0000006f          	j	80000814 <exec_done>

80000818 <__udivsi3>:
80000818:	00050793          	mv	a5,a0
8000081c:	00000513          	li	a0,0
80000820:	00f5da63          	bge	a1,a5,80000834 <__udivsi3+0x1c>
80000824:	40b787b3          	sub	a5,a5,a1
80000828:	00150513          	addi	a0,a0,1
8000082c:	fef5cce3          	blt	a1,a5,80000824 <__udivsi3+0xc>
80000830:	00008067          	ret
80000834:	00008067          	ret

80000838 <__umodsi3>:
80000838:	00a5d663          	bge	a1,a0,80000844 <__umodsi3+0xc>
8000083c:	40b50533          	sub	a0,a0,a1
80000840:	fea5cee3          	blt	a1,a0,8000083c <__umodsi3+0x4>
80000844:	00008067          	ret

80000848 <_putchar>:
80000848:	c0000737          	lui	a4,0xc0000
8000084c:	01074783          	lbu	a5,16(a4) # c0000010 <fctprintf+0x3fffe970>
80000850:	0017f793          	andi	a5,a5,1
80000854:	fe079ce3          	bnez	a5,8000084c <_putchar+0x4>
80000858:	00a708a3          	sb	a0,17(a4)
8000085c:	00008067          	ret

80000860 <main>:
80000860:	80000537          	lui	a0,0x80000
80000864:	00050513          	mv	a0,a0
80000868:	4fd0006f          	j	80001564 <printf_>

8000086c <_out_buffer>:
8000086c:	00d67663          	bgeu	a2,a3,80000878 <_out_buffer+0xc>
80000870:	00c585b3          	add	a1,a1,a2
80000874:	00a58023          	sb	a0,0(a1)
80000878:	00008067          	ret

8000087c <_out_null>:
8000087c:	00008067          	ret

80000880 <_ntoa_long>:
80000880:	f9010113          	addi	sp,sp,-112 # 80000790 <__stack_top-0x70>
80000884:	00f12423          	sw	a5,8(sp)
80000888:	07412783          	lw	a5,116(sp)
8000088c:	05a12023          	sw	s10,64(sp)
80000890:	00070d13          	mv	s10,a4
80000894:	4007f713          	andi	a4,a5,1024
80000898:	06812423          	sw	s0,104(sp)
8000089c:	06912223          	sw	s1,100(sp)
800008a0:	07212023          	sw	s2,96(sp)
800008a4:	05512a23          	sw	s5,84(sp)
800008a8:	05712623          	sw	s7,76(sp)
800008ac:	05812423          	sw	s8,72(sp)
800008b0:	06112623          	sw	ra,108(sp)
800008b4:	05312e23          	sw	s3,92(sp)
800008b8:	05412c23          	sw	s4,88(sp)
800008bc:	05612823          	sw	s6,80(sp)
800008c0:	05912223          	sw	s9,68(sp)
800008c4:	03b12e23          	sw	s11,60(sp)
800008c8:	01112023          	sw	a7,0(sp)
800008cc:	00e12623          	sw	a4,12(sp)
800008d0:	07012a83          	lw	s5,112(sp)
800008d4:	00050413          	mv	s0,a0
800008d8:	00058493          	mv	s1,a1
800008dc:	00060b93          	mv	s7,a2
800008e0:	00068913          	mv	s2,a3
800008e4:	00080c13          	mv	s8,a6
800008e8:	0c0d1c63          	bnez	s10,800009c0 <_ntoa_long+0x140>
800008ec:	fef7f793          	andi	a5,a5,-17
800008f0:	32070663          	beqz	a4,80000c1c <_ntoa_long+0x39c>
800008f4:	07412703          	lw	a4,116(sp)
800008f8:	06f12a23          	sw	a5,116(sp)
800008fc:	00000d93          	li	s11,0
80000900:	00277a13          	andi	s4,a4,2
80000904:	200a1063          	bnez	s4,80000b04 <_ntoa_long+0x284>
80000908:	07412783          	lw	a5,116(sp)
8000090c:	00012223          	sw	zero,4(sp)
80000910:	00000d93          	li	s11,0
80000914:	0017fa13          	andi	s4,a5,1
80000918:	140a9263          	bnez	s5,80000a5c <_ntoa_long+0x1dc>
8000091c:	00012783          	lw	a5,0(sp)
80000920:	02fdfa63          	bgeu	s11,a5,80000954 <_ntoa_long+0xd4>
80000924:	02000713          	li	a4,32
80000928:	02ed8663          	beq	s11,a4,80000954 <_ntoa_long+0xd4>
8000092c:	01010993          	addi	s3,sp,16
80000930:	03000693          	li	a3,48
80000934:	02000613          	li	a2,32
80000938:	0080006f          	j	80000940 <_ntoa_long+0xc0>
8000093c:	00cd8c63          	beq	s11,a2,80000954 <_ntoa_long+0xd4>
80000940:	001d8d93          	addi	s11,s11,1
80000944:	00012783          	lw	a5,0(sp)
80000948:	01b98733          	add	a4,s3,s11
8000094c:	fed70fa3          	sb	a3,-1(a4)
80000950:	fefde6e3          	bltu	s11,a5,8000093c <_ntoa_long+0xbc>
80000954:	020a0c63          	beqz	s4,8000098c <_ntoa_long+0x10c>
80000958:	035df863          	bgeu	s11,s5,80000988 <_ntoa_long+0x108>
8000095c:	02000713          	li	a4,32
80000960:	12ed8663          	beq	s11,a4,80000a8c <_ntoa_long+0x20c>
80000964:	01010993          	addi	s3,sp,16
80000968:	03000693          	li	a3,48
8000096c:	02000613          	li	a2,32
80000970:	0080006f          	j	80000978 <_ntoa_long+0xf8>
80000974:	10cd8c63          	beq	s11,a2,80000a8c <_ntoa_long+0x20c>
80000978:	001d8d93          	addi	s11,s11,1
8000097c:	01b98733          	add	a4,s3,s11
80000980:	fed70fa3          	sb	a3,-1(a4)
80000984:	ff5d98e3          	bne	s11,s5,80000974 <_ntoa_long+0xf4>
80000988:	00000a13          	li	s4,0
8000098c:	00412783          	lw	a5,4(sp)
80000990:	16078663          	beqz	a5,80000afc <_ntoa_long+0x27c>
80000994:	00c12783          	lw	a5,12(sp)
80000998:	28079863          	bnez	a5,80000c28 <_ntoa_long+0x3a8>
8000099c:	100d9663          	bnez	s11,80000aa8 <_ntoa_long+0x228>
800009a0:	01000793          	li	a5,16
800009a4:	34fc0a63          	beq	s8,a5,80000cf8 <_ntoa_long+0x478>
800009a8:	00200793          	li	a5,2
800009ac:	38fc0c63          	beq	s8,a5,80000d44 <_ntoa_long+0x4c4>
800009b0:	03000793          	li	a5,48
800009b4:	00f10823          	sb	a5,16(sp)
800009b8:	00100d93          	li	s11,1
800009bc:	1480006f          	j	80000b04 <_ntoa_long+0x284>
800009c0:	0107f793          	andi	a5,a5,16
800009c4:	00f12223          	sw	a5,4(sp)
800009c8:	07412783          	lw	a5,116(sp)
800009cc:	06100a13          	li	s4,97
800009d0:	0207f793          	andi	a5,a5,32
800009d4:	08079063          	bnez	a5,80000a54 <_ntoa_long+0x1d4>
800009d8:	00000d93          	li	s11,0
800009dc:	01010993          	addi	s3,sp,16
800009e0:	00900b13          	li	s6,9
800009e4:	ff6a0a13          	addi	s4,s4,-10
800009e8:	02000c93          	li	s9,32
800009ec:	00c0006f          	j	800009f8 <_ntoa_long+0x178>
800009f0:	059d8463          	beq	s11,s9,80000a38 <_ntoa_long+0x1b8>
800009f4:	00050d13          	mv	s10,a0
800009f8:	000c0593          	mv	a1,s8
800009fc:	000d0513          	mv	a0,s10
80000a00:	e39ff0ef          	jal	ra,80000838 <__umodsi3>
80000a04:	0ff57693          	andi	a3,a0,255
80000a08:	03068613          	addi	a2,a3,48
80000a0c:	014686b3          	add	a3,a3,s4
80000a10:	0ff6f693          	andi	a3,a3,255
80000a14:	00ab6463          	bltu	s6,a0,80000a1c <_ntoa_long+0x19c>
80000a18:	0ff67693          	andi	a3,a2,255
80000a1c:	001d8d93          	addi	s11,s11,1
80000a20:	01b98633          	add	a2,s3,s11
80000a24:	000d0513          	mv	a0,s10
80000a28:	000c0593          	mv	a1,s8
80000a2c:	fed60fa3          	sb	a3,-1(a2)
80000a30:	de9ff0ef          	jal	ra,80000818 <__udivsi3>
80000a34:	fb8d7ee3          	bgeu	s10,s8,800009f0 <_ntoa_long+0x170>
80000a38:	07412783          	lw	a5,116(sp)
80000a3c:	0027fa13          	andi	s4,a5,2
80000a40:	f40a16e3          	bnez	s4,8000098c <_ntoa_long+0x10c>
80000a44:	07412783          	lw	a5,116(sp)
80000a48:	0017fa13          	andi	s4,a5,1
80000a4c:	ec0a88e3          	beqz	s5,8000091c <_ntoa_long+0x9c>
80000a50:	00c0006f          	j	80000a5c <_ntoa_long+0x1dc>
80000a54:	04100a13          	li	s4,65
80000a58:	f81ff06f          	j	800009d8 <_ntoa_long+0x158>
80000a5c:	220a0463          	beqz	s4,80000c84 <_ntoa_long+0x404>
80000a60:	00812783          	lw	a5,8(sp)
80000a64:	00079863          	bnez	a5,80000a74 <_ntoa_long+0x1f4>
80000a68:	07412783          	lw	a5,116(sp)
80000a6c:	00c7f713          	andi	a4,a5,12
80000a70:	00070463          	beqz	a4,80000a78 <_ntoa_long+0x1f8>
80000a74:	fffa8a93          	addi	s5,s5,-1
80000a78:	00012783          	lw	a5,0(sp)
80000a7c:	ecfdfee3          	bgeu	s11,a5,80000958 <_ntoa_long+0xd8>
80000a80:	02000713          	li	a4,32
80000a84:	eaed94e3          	bne	s11,a4,8000092c <_ntoa_long+0xac>
80000a88:	f15df0e3          	bgeu	s11,s5,80000988 <_ntoa_long+0x108>
80000a8c:	00412783          	lw	a5,4(sp)
80000a90:	00000a13          	li	s4,0
80000a94:	1a078663          	beqz	a5,80000c40 <_ntoa_long+0x3c0>
80000a98:	00c12783          	lw	a5,12(sp)
80000a9c:	00000a13          	li	s4,0
80000aa0:	02000d93          	li	s11,32
80000aa4:	18079263          	bnez	a5,80000c28 <_ntoa_long+0x3a8>
80000aa8:	00012783          	lw	a5,0(sp)
80000aac:	01b78463          	beq	a5,s11,80000ab4 <_ntoa_long+0x234>
80000ab0:	17ba9c63          	bne	s5,s11,80000c28 <_ntoa_long+0x3a8>
80000ab4:	fffd8713          	addi	a4,s11,-1
80000ab8:	ee0704e3          	beqz	a4,800009a0 <_ntoa_long+0x120>
80000abc:	01000693          	li	a3,16
80000ac0:	28dc0a63          	beq	s8,a3,80000d54 <_ntoa_long+0x4d4>
80000ac4:	00200693          	li	a3,2
80000ac8:	02dc1063          	bne	s8,a3,80000ae8 <_ntoa_long+0x268>
80000acc:	01010793          	addi	a5,sp,16
80000ad0:	00e78733          	add	a4,a5,a4
80000ad4:	06200693          	li	a3,98
80000ad8:	00d70023          	sb	a3,0(a4)
80000adc:	02000713          	li	a4,32
80000ae0:	16ed8063          	beq	s11,a4,80000c40 <_ntoa_long+0x3c0>
80000ae4:	000d8713          	mv	a4,s11
80000ae8:	03010793          	addi	a5,sp,48
80000aec:	00e786b3          	add	a3,a5,a4
80000af0:	00170d93          	addi	s11,a4,1
80000af4:	03000713          	li	a4,48
80000af8:	fee68023          	sb	a4,-32(a3)
80000afc:	02000713          	li	a4,32
80000b00:	14ed8063          	beq	s11,a4,80000c40 <_ntoa_long+0x3c0>
80000b04:	00812783          	lw	a5,8(sp)
80000b08:	14078863          	beqz	a5,80000c58 <_ntoa_long+0x3d8>
80000b0c:	03010793          	addi	a5,sp,48
80000b10:	01b78733          	add	a4,a5,s11
80000b14:	02d00793          	li	a5,45
80000b18:	001d8993          	addi	s3,s11,1
80000b1c:	fef70023          	sb	a5,-32(a4)
80000b20:	07412783          	lw	a5,116(sp)
80000b24:	0037fc13          	andi	s8,a5,3
80000b28:	120c1463          	bnez	s8,80000c50 <_ntoa_long+0x3d0>
80000b2c:	1359f263          	bgeu	s3,s5,80000c50 <_ntoa_long+0x3d0>
80000b30:	015b8b33          	add	s6,s7,s5
80000b34:	413b0b33          	sub	s6,s6,s3
80000b38:	000b8c13          	mv	s8,s7
80000b3c:	000c0613          	mv	a2,s8
80000b40:	00090693          	mv	a3,s2
80000b44:	001c0c13          	addi	s8,s8,1
80000b48:	00048593          	mv	a1,s1
80000b4c:	02000513          	li	a0,32
80000b50:	000400e7          	jalr	s0
80000b54:	ff6c14e3          	bne	s8,s6,80000b3c <_ntoa_long+0x2bc>
80000b58:	000b0c13          	mv	s8,s6
80000b5c:	02098a63          	beqz	s3,80000b90 <_ntoa_long+0x310>
80000b60:	01010c93          	addi	s9,sp,16
80000b64:	013b0b33          	add	s6,s6,s3
80000b68:	016c8d33          	add	s10,s9,s6
80000b6c:	013c89b3          	add	s3,s9,s3
80000b70:	fff9c503          	lbu	a0,-1(s3)
80000b74:	413d0633          	sub	a2,s10,s3
80000b78:	00090693          	mv	a3,s2
80000b7c:	fff98993          	addi	s3,s3,-1
80000b80:	00048593          	mv	a1,s1
80000b84:	000b0c13          	mv	s8,s6
80000b88:	000400e7          	jalr	s0
80000b8c:	ff3c92e3          	bne	s9,s3,80000b70 <_ntoa_long+0x2f0>
80000b90:	040a0663          	beqz	s4,80000bdc <_ntoa_long+0x35c>
80000b94:	417c09b3          	sub	s3,s8,s7
80000b98:	0559f263          	bgeu	s3,s5,80000bdc <_ntoa_long+0x35c>
80000b9c:	013b8633          	add	a2,s7,s3
80000ba0:	00090693          	mv	a3,s2
80000ba4:	00198993          	addi	s3,s3,1
80000ba8:	00048593          	mv	a1,s1
80000bac:	02000513          	li	a0,32
80000bb0:	000400e7          	jalr	s0
80000bb4:	ff59e4e3          	bltu	s3,s5,80000b9c <_ntoa_long+0x31c>
80000bb8:	417c0733          	sub	a4,s8,s7
80000bbc:	00170713          	addi	a4,a4,1
80000bc0:	00000793          	li	a5,0
80000bc4:	00eae863          	bltu	s5,a4,80000bd4 <_ntoa_long+0x354>
80000bc8:	fffb8793          	addi	a5,s7,-1
80000bcc:	01578ab3          	add	s5,a5,s5
80000bd0:	418a87b3          	sub	a5,s5,s8
80000bd4:	001c0c13          	addi	s8,s8,1
80000bd8:	00fc0c33          	add	s8,s8,a5
80000bdc:	06c12083          	lw	ra,108(sp)
80000be0:	06812403          	lw	s0,104(sp)
80000be4:	06412483          	lw	s1,100(sp)
80000be8:	06012903          	lw	s2,96(sp)
80000bec:	05c12983          	lw	s3,92(sp)
80000bf0:	05812a03          	lw	s4,88(sp)
80000bf4:	05412a83          	lw	s5,84(sp)
80000bf8:	05012b03          	lw	s6,80(sp)
80000bfc:	04c12b83          	lw	s7,76(sp)
80000c00:	04412c83          	lw	s9,68(sp)
80000c04:	04012d03          	lw	s10,64(sp)
80000c08:	03c12d83          	lw	s11,60(sp)
80000c0c:	000c0513          	mv	a0,s8
80000c10:	04812c03          	lw	s8,72(sp)
80000c14:	07010113          	addi	sp,sp,112
80000c18:	00008067          	ret
80000c1c:	00012223          	sw	zero,4(sp)
80000c20:	06f12a23          	sw	a5,116(sp)
80000c24:	da5ff06f          	j	800009c8 <_ntoa_long+0x148>
80000c28:	01000713          	li	a4,16
80000c2c:	08ec0263          	beq	s8,a4,80000cb0 <_ntoa_long+0x430>
80000c30:	00200713          	li	a4,2
80000c34:	eaec14e3          	bne	s8,a4,80000adc <_ntoa_long+0x25c>
80000c38:	02000713          	li	a4,32
80000c3c:	12ed9c63          	bne	s11,a4,80000d74 <_ntoa_long+0x4f4>
80000c40:	07412783          	lw	a5,116(sp)
80000c44:	02000993          	li	s3,32
80000c48:	0037fc13          	andi	s8,a5,3
80000c4c:	020c0663          	beqz	s8,80000c78 <_ntoa_long+0x3f8>
80000c50:	000b8b13          	mv	s6,s7
80000c54:	f0dff06f          	j	80000b60 <_ntoa_long+0x2e0>
80000c58:	07412783          	lw	a5,116(sp)
80000c5c:	0047f713          	andi	a4,a5,4
80000c60:	02071c63          	bnez	a4,80000c98 <_ntoa_long+0x418>
80000c64:	0087f713          	andi	a4,a5,8
80000c68:	06071c63          	bnez	a4,80000ce0 <_ntoa_long+0x460>
80000c6c:	0037fc13          	andi	s8,a5,3
80000c70:	000d8993          	mv	s3,s11
80000c74:	000c1463          	bnez	s8,80000c7c <_ntoa_long+0x3fc>
80000c78:	eb59ece3          	bltu	s3,s5,80000b30 <_ntoa_long+0x2b0>
80000c7c:	000b8b13          	mv	s6,s7
80000c80:	ed9ff06f          	j	80000b58 <_ntoa_long+0x2d8>
80000c84:	00012783          	lw	a5,0(sp)
80000c88:	d0fdf2e3          	bgeu	s11,a5,8000098c <_ntoa_long+0x10c>
80000c8c:	02000713          	li	a4,32
80000c90:	c8ed9ee3          	bne	s11,a4,8000092c <_ntoa_long+0xac>
80000c94:	cf9ff06f          	j	8000098c <_ntoa_long+0x10c>
80000c98:	03010793          	addi	a5,sp,48
80000c9c:	01b78733          	add	a4,a5,s11
80000ca0:	02b00793          	li	a5,43
80000ca4:	001d8993          	addi	s3,s11,1
80000ca8:	fef70023          	sb	a5,-32(a4)
80000cac:	e75ff06f          	j	80000b20 <_ntoa_long+0x2a0>
80000cb0:	07412783          	lw	a5,116(sp)
80000cb4:	0207f713          	andi	a4,a5,32
80000cb8:	04070e63          	beqz	a4,80000d14 <_ntoa_long+0x494>
80000cbc:	02000713          	li	a4,32
80000cc0:	f8ed80e3          	beq	s11,a4,80000c40 <_ntoa_long+0x3c0>
80000cc4:	000d8793          	mv	a5,s11
80000cc8:	03010713          	addi	a4,sp,48
80000ccc:	00f70733          	add	a4,a4,a5
80000cd0:	05800693          	li	a3,88
80000cd4:	00178d93          	addi	s11,a5,1
80000cd8:	fed70023          	sb	a3,-32(a4)
80000cdc:	e01ff06f          	j	80000adc <_ntoa_long+0x25c>
80000ce0:	03010793          	addi	a5,sp,48
80000ce4:	01b78733          	add	a4,a5,s11
80000ce8:	02000793          	li	a5,32
80000cec:	001d8993          	addi	s3,s11,1
80000cf0:	fef70023          	sb	a5,-32(a4)
80000cf4:	e2dff06f          	j	80000b20 <_ntoa_long+0x2a0>
80000cf8:	07412783          	lw	a5,116(sp)
80000cfc:	0207f793          	andi	a5,a5,32
80000d00:	02079a63          	bnez	a5,80000d34 <_ntoa_long+0x4b4>
80000d04:	07800793          	li	a5,120
80000d08:	00f10823          	sb	a5,16(sp)
80000d0c:	00100713          	li	a4,1
80000d10:	dd9ff06f          	j	80000ae8 <_ntoa_long+0x268>
80000d14:	02000713          	li	a4,32
80000d18:	f2ed84e3          	beq	s11,a4,80000c40 <_ntoa_long+0x3c0>
80000d1c:	01010793          	addi	a5,sp,16
80000d20:	01b786b3          	add	a3,a5,s11
80000d24:	001d8d93          	addi	s11,s11,1
80000d28:	07800713          	li	a4,120
80000d2c:	00e68023          	sb	a4,0(a3)
80000d30:	dadff06f          	j	80000adc <_ntoa_long+0x25c>
80000d34:	05800793          	li	a5,88
80000d38:	00f10823          	sb	a5,16(sp)
80000d3c:	00100713          	li	a4,1
80000d40:	da9ff06f          	j	80000ae8 <_ntoa_long+0x268>
80000d44:	06200793          	li	a5,98
80000d48:	00f10823          	sb	a5,16(sp)
80000d4c:	00100713          	li	a4,1
80000d50:	d99ff06f          	j	80000ae8 <_ntoa_long+0x268>
80000d54:	07412783          	lw	a5,116(sp)
80000d58:	0207f693          	andi	a3,a5,32
80000d5c:	ffed8793          	addi	a5,s11,-2
80000d60:	f60694e3          	bnez	a3,80000cc8 <_ntoa_long+0x448>
80000d64:	01010693          	addi	a3,sp,16
80000d68:	00f686b3          	add	a3,a3,a5
80000d6c:	00070d93          	mv	s11,a4
80000d70:	fb9ff06f          	j	80000d28 <_ntoa_long+0x4a8>
80000d74:	01010793          	addi	a5,sp,16
80000d78:	01b78733          	add	a4,a5,s11
80000d7c:	001d8d93          	addi	s11,s11,1
80000d80:	d55ff06f          	j	80000ad4 <_ntoa_long+0x254>

80000d84 <_vsnprintf>:
80000d84:	f9010113          	addi	sp,sp,-112
80000d88:	06812423          	sw	s0,104(sp)
80000d8c:	06912223          	sw	s1,100(sp)
80000d90:	07212023          	sw	s2,96(sp)
80000d94:	05312e23          	sw	s3,92(sp)
80000d98:	05712623          	sw	s7,76(sp)
80000d9c:	06112623          	sw	ra,108(sp)
80000da0:	05412c23          	sw	s4,88(sp)
80000da4:	05512a23          	sw	s5,84(sp)
80000da8:	05612823          	sw	s6,80(sp)
80000dac:	05812423          	sw	s8,72(sp)
80000db0:	05912223          	sw	s9,68(sp)
80000db4:	05a12023          	sw	s10,64(sp)
80000db8:	03b12e23          	sw	s11,60(sp)
80000dbc:	00058913          	mv	s2,a1
80000dc0:	00060493          	mv	s1,a2
80000dc4:	00068b93          	mv	s7,a3
80000dc8:	00070413          	mv	s0,a4
80000dcc:	00050993          	mv	s3,a0
80000dd0:	4c058863          	beqz	a1,800012a0 <_vsnprintf+0x51c>
80000dd4:	000bc503          	lbu	a0,0(s7)
80000dd8:	00000d93          	li	s11,0
80000ddc:	4c050c63          	beqz	a0,800012b4 <_vsnprintf+0x530>
80000de0:	800007b7          	lui	a5,0x80000
80000de4:	0a078793          	addi	a5,a5,160 # 800000a0 <fctprintf+0xffffea00>
80000de8:	80000b37          	lui	s6,0x80000
80000dec:	80000a37          	lui	s4,0x80000
80000df0:	02f12023          	sw	a5,32(sp)
80000df4:	054b0793          	addi	a5,s6,84 # 80000054 <fctprintf+0xffffe9b4>
80000df8:	02500a93          	li	s5,37
80000dfc:	010a0a13          	addi	s4,s4,16 # 80000010 <fctprintf+0xffffe970>
80000e00:	00f12e23          	sw	a5,28(sp)
80000e04:	0200006f          	j	80000e24 <_vsnprintf+0xa0>
80000e08:	000d8613          	mv	a2,s11
80000e0c:	00048693          	mv	a3,s1
80000e10:	00090593          	mv	a1,s2
80000e14:	001d8d93          	addi	s11,s11,1
80000e18:	000980e7          	jalr	s3
80000e1c:	000bc503          	lbu	a0,0(s7)
80000e20:	18050863          	beqz	a0,80000fb0 <_vsnprintf+0x22c>
80000e24:	001b8b93          	addi	s7,s7,1
80000e28:	ff5510e3          	bne	a0,s5,80000e08 <_vsnprintf+0x84>
80000e2c:	00000693          	li	a3,0
80000e30:	01000593          	li	a1,16
80000e34:	000bc503          	lbu	a0,0(s7)
80000e38:	001b8713          	addi	a4,s7,1
80000e3c:	00070613          	mv	a2,a4
80000e40:	fe050793          	addi	a5,a0,-32 # 7fffffe0 <fctprintf+0xffffe940>
80000e44:	0ff7f793          	andi	a5,a5,255
80000e48:	00f5ea63          	bltu	a1,a5,80000e5c <_vsnprintf+0xd8>
80000e4c:	00279793          	slli	a5,a5,0x2
80000e50:	014787b3          	add	a5,a5,s4
80000e54:	0007a783          	lw	a5,0(a5)
80000e58:	00078067          	jr	a5
80000e5c:	fd050793          	addi	a5,a0,-48
80000e60:	0ff7f793          	andi	a5,a5,255
80000e64:	00900593          	li	a1,9
80000e68:	0cf5f663          	bgeu	a1,a5,80000f34 <_vsnprintf+0x1b0>
80000e6c:	02a00793          	li	a5,42
80000e70:	1cf50c63          	beq	a0,a5,80001048 <_vsnprintf+0x2c4>
80000e74:	000b8613          	mv	a2,s7
80000e78:	00000b13          	li	s6,0
80000e7c:	00070b93          	mv	s7,a4
80000e80:	02e00793          	li	a5,46
80000e84:	00000893          	li	a7,0
80000e88:	0ef50e63          	beq	a0,a5,80000f84 <_vsnprintf+0x200>
80000e8c:	f9850793          	addi	a5,a0,-104
80000e90:	0ff7f793          	andi	a5,a5,255
80000e94:	01200713          	li	a4,18
80000e98:	06f76463          	bltu	a4,a5,80000f00 <_vsnprintf+0x17c>
80000e9c:	01c12703          	lw	a4,28(sp)
80000ea0:	00279793          	slli	a5,a5,0x2
80000ea4:	00e787b3          	add	a5,a5,a4
80000ea8:	0007a783          	lw	a5,0(a5)
80000eac:	00078067          	jr	a5
80000eb0:	0016e693          	ori	a3,a3,1
80000eb4:	00070b93          	mv	s7,a4
80000eb8:	f7dff06f          	j	80000e34 <_vsnprintf+0xb0>
80000ebc:	0026e693          	ori	a3,a3,2
80000ec0:	00070b93          	mv	s7,a4
80000ec4:	f71ff06f          	j	80000e34 <_vsnprintf+0xb0>
80000ec8:	0046e693          	ori	a3,a3,4
80000ecc:	00070b93          	mv	s7,a4
80000ed0:	f65ff06f          	j	80000e34 <_vsnprintf+0xb0>
80000ed4:	0106e693          	ori	a3,a3,16
80000ed8:	00070b93          	mv	s7,a4
80000edc:	f59ff06f          	j	80000e34 <_vsnprintf+0xb0>
80000ee0:	0086e693          	ori	a3,a3,8
80000ee4:	00070b93          	mv	s7,a4
80000ee8:	f4dff06f          	j	80000e34 <_vsnprintf+0xb0>
80000eec:	00164503          	lbu	a0,1(a2)
80000ef0:	06800793          	li	a5,104
80000ef4:	4af50e63          	beq	a0,a5,800013b0 <_vsnprintf+0x62c>
80000ef8:	0806e693          	ori	a3,a3,128
80000efc:	001b8b93          	addi	s7,s7,1
80000f00:	fdb50793          	addi	a5,a0,-37
80000f04:	0ff7f793          	andi	a5,a5,255
80000f08:	05300713          	li	a4,83
80000f0c:	eef76ee3          	bltu	a4,a5,80000e08 <_vsnprintf+0x84>
80000f10:	02012703          	lw	a4,32(sp)
80000f14:	00279793          	slli	a5,a5,0x2
80000f18:	00e787b3          	add	a5,a5,a4
80000f1c:	0007a783          	lw	a5,0(a5)
80000f20:	00078067          	jr	a5
80000f24:	00164503          	lbu	a0,1(a2)
80000f28:	1006e693          	ori	a3,a3,256
80000f2c:	001b8b93          	addi	s7,s7,1
80000f30:	fd1ff06f          	j	80000f00 <_vsnprintf+0x17c>
80000f34:	00000b13          	li	s6,0
80000f38:	00900593          	li	a1,9
80000f3c:	0080006f          	j	80000f44 <_vsnprintf+0x1c0>
80000f40:	00170713          	addi	a4,a4,1
80000f44:	002b1793          	slli	a5,s6,0x2
80000f48:	016787b3          	add	a5,a5,s6
80000f4c:	00179793          	slli	a5,a5,0x1
80000f50:	00a787b3          	add	a5,a5,a0
80000f54:	00074503          	lbu	a0,0(a4)
80000f58:	000b8813          	mv	a6,s7
80000f5c:	fd078b13          	addi	s6,a5,-48
80000f60:	fd050613          	addi	a2,a0,-48
80000f64:	0ff67613          	andi	a2,a2,255
80000f68:	00070b93          	mv	s7,a4
80000f6c:	fcc5fae3          	bgeu	a1,a2,80000f40 <_vsnprintf+0x1bc>
80000f70:	02e00793          	li	a5,46
80000f74:	00070613          	mv	a2,a4
80000f78:	00280b93          	addi	s7,a6,2
80000f7c:	00000893          	li	a7,0
80000f80:	f0f516e3          	bne	a0,a5,80000e8c <_vsnprintf+0x108>
80000f84:	00164503          	lbu	a0,1(a2)
80000f88:	00900713          	li	a4,9
80000f8c:	4006e693          	ori	a3,a3,1024
80000f90:	fd050793          	addi	a5,a0,-48
80000f94:	0ff7f793          	andi	a5,a5,255
80000f98:	06f77c63          	bgeu	a4,a5,80001010 <_vsnprintf+0x28c>
80000f9c:	02a00793          	li	a5,42
80000fa0:	30f50e63          	beq	a0,a5,800012bc <_vsnprintf+0x538>
80000fa4:	000b8613          	mv	a2,s7
80000fa8:	001b8b93          	addi	s7,s7,1
80000fac:	ee1ff06f          	j	80000e8c <_vsnprintf+0x108>
80000fb0:	000d8413          	mv	s0,s11
80000fb4:	009de463          	bltu	s11,s1,80000fbc <_vsnprintf+0x238>
80000fb8:	fff48d93          	addi	s11,s1,-1
80000fbc:	00048693          	mv	a3,s1
80000fc0:	000d8613          	mv	a2,s11
80000fc4:	00090593          	mv	a1,s2
80000fc8:	00000513          	li	a0,0
80000fcc:	000980e7          	jalr	s3
80000fd0:	06c12083          	lw	ra,108(sp)
80000fd4:	00040513          	mv	a0,s0
80000fd8:	06812403          	lw	s0,104(sp)
80000fdc:	06412483          	lw	s1,100(sp)
80000fe0:	06012903          	lw	s2,96(sp)
80000fe4:	05c12983          	lw	s3,92(sp)
80000fe8:	05812a03          	lw	s4,88(sp)
80000fec:	05412a83          	lw	s5,84(sp)
80000ff0:	05012b03          	lw	s6,80(sp)
80000ff4:	04c12b83          	lw	s7,76(sp)
80000ff8:	04812c03          	lw	s8,72(sp)
80000ffc:	04412c83          	lw	s9,68(sp)
80001000:	04012d03          	lw	s10,64(sp)
80001004:	03c12d83          	lw	s11,60(sp)
80001008:	07010113          	addi	sp,sp,112
8000100c:	00008067          	ret
80001010:	00289c13          	slli	s8,a7,0x2
80001014:	011c0c33          	add	s8,s8,a7
80001018:	000b8593          	mv	a1,s7
8000101c:	001c1c13          	slli	s8,s8,0x1
80001020:	001b8b93          	addi	s7,s7,1
80001024:	00ac0c33          	add	s8,s8,a0
80001028:	000bc503          	lbu	a0,0(s7)
8000102c:	fd0c0893          	addi	a7,s8,-48
80001030:	fd050793          	addi	a5,a0,-48
80001034:	0ff7f793          	andi	a5,a5,255
80001038:	fcf77ce3          	bgeu	a4,a5,80001010 <_vsnprintf+0x28c>
8000103c:	000b8613          	mv	a2,s7
80001040:	00258b93          	addi	s7,a1,2
80001044:	e49ff06f          	j	80000e8c <_vsnprintf+0x108>
80001048:	00042b03          	lw	s6,0(s0)
8000104c:	00440413          	addi	s0,s0,4
80001050:	000b4863          	bltz	s6,80001060 <_vsnprintf+0x2dc>
80001054:	001bc503          	lbu	a0,1(s7)
80001058:	002b8b93          	addi	s7,s7,2
8000105c:	e25ff06f          	j	80000e80 <_vsnprintf+0xfc>
80001060:	001bc503          	lbu	a0,1(s7)
80001064:	0026e693          	ori	a3,a3,2
80001068:	41600b33          	neg	s6,s6
8000106c:	002b8b93          	addi	s7,s7,2
80001070:	e11ff06f          	j	80000e80 <_vsnprintf+0xfc>
80001074:	07800793          	li	a5,120
80001078:	44f50863          	beq	a0,a5,800014c8 <_vsnprintf+0x744>
8000107c:	05800793          	li	a5,88
80001080:	26f50663          	beq	a0,a5,800012ec <_vsnprintf+0x568>
80001084:	06f00793          	li	a5,111
80001088:	3ef50863          	beq	a0,a5,80001478 <_vsnprintf+0x6f4>
8000108c:	06200793          	li	a5,98
80001090:	42f50863          	beq	a0,a5,800014c0 <_vsnprintf+0x73c>
80001094:	06900713          	li	a4,105
80001098:	fef6f593          	andi	a1,a3,-17
8000109c:	4006f793          	andi	a5,a3,1024
800010a0:	48e51e63          	bne	a0,a4,8000153c <_vsnprintf+0x7b8>
800010a4:	3c079663          	bnez	a5,80001470 <_vsnprintf+0x6ec>
800010a8:	2006f693          	andi	a3,a3,512
800010ac:	00a00813          	li	a6,10
800010b0:	d60696e3          	bnez	a3,80000e1c <_vsnprintf+0x98>
800010b4:	1005f793          	andi	a5,a1,256
800010b8:	00440c13          	addi	s8,s0,4
800010bc:	42079063          	bnez	a5,800014dc <_vsnprintf+0x758>
800010c0:	0405f793          	andi	a5,a1,64
800010c4:	3c079a63          	bnez	a5,80001498 <_vsnprintf+0x714>
800010c8:	0805f793          	andi	a5,a1,128
800010cc:	42078e63          	beqz	a5,80001508 <_vsnprintf+0x784>
800010d0:	00041783          	lh	a5,0(s0)
800010d4:	40f7d693          	srai	a3,a5,0xf
800010d8:	00d7c733          	xor	a4,a5,a3
800010dc:	40d70733          	sub	a4,a4,a3
800010e0:	01071713          	slli	a4,a4,0x10
800010e4:	01075713          	srli	a4,a4,0x10
800010e8:	000d8613          	mv	a2,s11
800010ec:	00b12223          	sw	a1,4(sp)
800010f0:	01612023          	sw	s6,0(sp)
800010f4:	01f7d793          	srli	a5,a5,0x1f
800010f8:	00048693          	mv	a3,s1
800010fc:	00090593          	mv	a1,s2
80001100:	00098513          	mv	a0,s3
80001104:	f7cff0ef          	jal	ra,80000880 <_ntoa_long>
80001108:	00050d93          	mv	s11,a0
8000110c:	000c0413          	mv	s0,s8
80001110:	d0dff06f          	j	80000e1c <_vsnprintf+0x98>
80001114:	00164503          	lbu	a0,1(a2)
80001118:	06c00793          	li	a5,108
8000111c:	e0f516e3          	bne	a0,a5,80000f28 <_vsnprintf+0x1a4>
80001120:	00264503          	lbu	a0,2(a2)
80001124:	3006e693          	ori	a3,a3,768
80001128:	00360b93          	addi	s7,a2,3
8000112c:	dd5ff06f          	j	80000f00 <_vsnprintf+0x17c>
80001130:	00164503          	lbu	a0,1(a2)
80001134:	2006e693          	ori	a3,a3,512
80001138:	001b8b93          	addi	s7,s7,1
8000113c:	dc5ff06f          	j	80000f00 <_vsnprintf+0x17c>
80001140:	001d8d13          	addi	s10,s11,1
80001144:	0026f693          	andi	a3,a3,2
80001148:	00440c13          	addi	s8,s0,4
8000114c:	000d0c93          	mv	s9,s10
80001150:	2c068063          	beqz	a3,80001410 <_vsnprintf+0x68c>
80001154:	00044503          	lbu	a0,0(s0)
80001158:	000d8613          	mv	a2,s11
8000115c:	00048693          	mv	a3,s1
80001160:	00090593          	mv	a1,s2
80001164:	000980e7          	jalr	s3
80001168:	00100793          	li	a5,1
8000116c:	01bb0db3          	add	s11,s6,s11
80001170:	3367fe63          	bgeu	a5,s6,800014ac <_vsnprintf+0x728>
80001174:	000c8613          	mv	a2,s9
80001178:	00048693          	mv	a3,s1
8000117c:	001c8c93          	addi	s9,s9,1
80001180:	00090593          	mv	a1,s2
80001184:	02000513          	li	a0,32
80001188:	000980e7          	jalr	s3
8000118c:	ffbc94e3          	bne	s9,s11,80001174 <_vsnprintf+0x3f0>
80001190:	000c8d93          	mv	s11,s9
80001194:	000c0413          	mv	s0,s8
80001198:	c85ff06f          	j	80000e1c <_vsnprintf+0x98>
8000119c:	000d8613          	mv	a2,s11
800011a0:	00048693          	mv	a3,s1
800011a4:	00090593          	mv	a1,s2
800011a8:	02500513          	li	a0,37
800011ac:	001d8d93          	addi	s11,s11,1
800011b0:	000980e7          	jalr	s3
800011b4:	c69ff06f          	j	80000e1c <_vsnprintf+0x98>
800011b8:	00042c83          	lw	s9,0(s0)
800011bc:	00440793          	addi	a5,s0,4
800011c0:	02f12423          	sw	a5,40(sp)
800011c4:	000cc503          	lbu	a0,0(s9)
800011c8:	10089c63          	bnez	a7,800012e0 <_vsnprintf+0x55c>
800011cc:	ffe00d13          	li	s10,-2
800011d0:	32050863          	beqz	a0,80001500 <_vsnprintf+0x77c>
800011d4:	001d0d13          	addi	s10,s10,1
800011d8:	01ac8633          	add	a2,s9,s10
800011dc:	000c8793          	mv	a5,s9
800011e0:	0080006f          	j	800011e8 <_vsnprintf+0x464>
800011e4:	00c78a63          	beq	a5,a2,800011f8 <_vsnprintf+0x474>
800011e8:	0017c703          	lbu	a4,1(a5)
800011ec:	00178793          	addi	a5,a5,1
800011f0:	fe071ae3          	bnez	a4,800011e4 <_vsnprintf+0x460>
800011f4:	41978d33          	sub	s10,a5,s9
800011f8:	4006fc13          	andi	s8,a3,1024
800011fc:	000c0663          	beqz	s8,80001208 <_vsnprintf+0x484>
80001200:	01a8f463          	bgeu	a7,s10,80001208 <_vsnprintf+0x484>
80001204:	00088d13          	mv	s10,a7
80001208:	0026f793          	andi	a5,a3,2
8000120c:	02f12623          	sw	a5,44(sp)
80001210:	1a078c63          	beqz	a5,800013c8 <_vsnprintf+0x644>
80001214:	12050e63          	beqz	a0,80001350 <_vsnprintf+0x5cc>
80001218:	160c0663          	beqz	s8,80001384 <_vsnprintf+0x600>
8000121c:	01b88c33          	add	s8,a7,s11
80001220:	000d8613          	mv	a2,s11
80001224:	02cc0663          	beq	s8,a2,80001250 <_vsnprintf+0x4cc>
80001228:	00048693          	mv	a3,s1
8000122c:	00090593          	mv	a1,s2
80001230:	00160413          	addi	s0,a2,1
80001234:	000980e7          	jalr	s3
80001238:	41b407b3          	sub	a5,s0,s11
8000123c:	00fc87b3          	add	a5,s9,a5
80001240:	0007c503          	lbu	a0,0(a5)
80001244:	16050e63          	beqz	a0,800013c0 <_vsnprintf+0x63c>
80001248:	00040613          	mv	a2,s0
8000124c:	fccc1ee3          	bne	s8,a2,80001228 <_vsnprintf+0x4a4>
80001250:	000c0d93          	mv	s11,s8
80001254:	02c12783          	lw	a5,44(sp)
80001258:	0e079c63          	bnez	a5,80001350 <_vsnprintf+0x5cc>
8000125c:	02812403          	lw	s0,40(sp)
80001260:	bbdff06f          	j	80000e1c <_vsnprintf+0x98>
80001264:	00042703          	lw	a4,0(s0)
80001268:	0216e693          	ori	a3,a3,33
8000126c:	00800793          	li	a5,8
80001270:	000d8613          	mv	a2,s11
80001274:	00d12223          	sw	a3,4(sp)
80001278:	00f12023          	sw	a5,0(sp)
8000127c:	01000813          	li	a6,16
80001280:	00000793          	li	a5,0
80001284:	00048693          	mv	a3,s1
80001288:	00090593          	mv	a1,s2
8000128c:	00098513          	mv	a0,s3
80001290:	df0ff0ef          	jal	ra,80000880 <_ntoa_long>
80001294:	00440413          	addi	s0,s0,4
80001298:	00050d93          	mv	s11,a0
8000129c:	b81ff06f          	j	80000e1c <_vsnprintf+0x98>
800012a0:	000bc503          	lbu	a0,0(s7)
800012a4:	800019b7          	lui	s3,0x80001
800012a8:	87c98993          	addi	s3,s3,-1924 # 8000087c <fctprintf+0xfffff1dc>
800012ac:	00000d93          	li	s11,0
800012b0:	b20518e3          	bnez	a0,80000de0 <_vsnprintf+0x5c>
800012b4:	00000413          	li	s0,0
800012b8:	cfdff06f          	j	80000fb4 <_vsnprintf+0x230>
800012bc:	00042883          	lw	a7,0(s0)
800012c0:	00264503          	lbu	a0,2(a2)
800012c4:	00360b93          	addi	s7,a2,3
800012c8:	fff8c793          	not	a5,a7
800012cc:	41f7d793          	srai	a5,a5,0x1f
800012d0:	00f8f8b3          	and	a7,a7,a5
800012d4:	00440413          	addi	s0,s0,4
800012d8:	00260613          	addi	a2,a2,2
800012dc:	bb1ff06f          	j	80000e8c <_vsnprintf+0x108>
800012e0:	22050063          	beqz	a0,80001500 <_vsnprintf+0x77c>
800012e4:	fff88d13          	addi	s10,a7,-1
800012e8:	eedff06f          	j	800011d4 <_vsnprintf+0x450>
800012ec:	ff36f593          	andi	a1,a3,-13
800012f0:	4006f793          	andi	a5,a3,1024
800012f4:	0205e593          	ori	a1,a1,32
800012f8:	16078663          	beqz	a5,80001464 <_vsnprintf+0x6e0>
800012fc:	01000813          	li	a6,16
80001300:	ffe5f593          	andi	a1,a1,-2
80001304:	06900793          	li	a5,105
80001308:	2005f693          	andi	a3,a1,512
8000130c:	daf502e3          	beq	a0,a5,800010b0 <_vsnprintf+0x32c>
80001310:	06400793          	li	a5,100
80001314:	d8f50ee3          	beq	a0,a5,800010b0 <_vsnprintf+0x32c>
80001318:	b00692e3          	bnez	a3,80000e1c <_vsnprintf+0x98>
8000131c:	1005f793          	andi	a5,a1,256
80001320:	00440c13          	addi	s8,s0,4
80001324:	18079a63          	bnez	a5,800014b8 <_vsnprintf+0x734>
80001328:	0405f793          	andi	a5,a1,64
8000132c:	16079c63          	bnez	a5,800014a4 <_vsnprintf+0x720>
80001330:	0805f793          	andi	a5,a1,128
80001334:	18078263          	beqz	a5,800014b8 <_vsnprintf+0x734>
80001338:	00045703          	lhu	a4,0(s0)
8000133c:	000d8613          	mv	a2,s11
80001340:	00b12223          	sw	a1,4(sp)
80001344:	01612023          	sw	s6,0(sp)
80001348:	00000793          	li	a5,0
8000134c:	dadff06f          	j	800010f8 <_vsnprintf+0x374>
80001350:	000d8413          	mv	s0,s11
80001354:	f16d74e3          	bgeu	s10,s6,8000125c <_vsnprintf+0x4d8>
80001358:	01bb07b3          	add	a5,s6,s11
8000135c:	41a78db3          	sub	s11,a5,s10
80001360:	00040613          	mv	a2,s0
80001364:	00048693          	mv	a3,s1
80001368:	00140413          	addi	s0,s0,1
8000136c:	00090593          	mv	a1,s2
80001370:	02000513          	li	a0,32
80001374:	000980e7          	jalr	s3
80001378:	ffb414e3          	bne	s0,s11,80001360 <_vsnprintf+0x5dc>
8000137c:	02812403          	lw	s0,40(sp)
80001380:	a9dff06f          	j	80000e1c <_vsnprintf+0x98>
80001384:	000d8c13          	mv	s8,s11
80001388:	000c0613          	mv	a2,s8
8000138c:	00048693          	mv	a3,s1
80001390:	00090593          	mv	a1,s2
80001394:	000980e7          	jalr	s3
80001398:	001c0c13          	addi	s8,s8,1
8000139c:	41bc07b3          	sub	a5,s8,s11
800013a0:	00fc87b3          	add	a5,s9,a5
800013a4:	0007c503          	lbu	a0,0(a5)
800013a8:	fe0510e3          	bnez	a0,80001388 <_vsnprintf+0x604>
800013ac:	ea5ff06f          	j	80001250 <_vsnprintf+0x4cc>
800013b0:	00264503          	lbu	a0,2(a2)
800013b4:	0c06e693          	ori	a3,a3,192
800013b8:	00360b93          	addi	s7,a2,3
800013bc:	b45ff06f          	j	80000f00 <_vsnprintf+0x17c>
800013c0:	00040d93          	mv	s11,s0
800013c4:	e91ff06f          	j	80001254 <_vsnprintf+0x4d0>
800013c8:	001d0793          	addi	a5,s10,1
800013cc:	156d7e63          	bgeu	s10,s6,80001528 <_vsnprintf+0x7a4>
800013d0:	01bb07b3          	add	a5,s6,s11
800013d4:	41a78d33          	sub	s10,a5,s10
800013d8:	03112223          	sw	a7,36(sp)
800013dc:	000d8613          	mv	a2,s11
800013e0:	00048693          	mv	a3,s1
800013e4:	00090593          	mv	a1,s2
800013e8:	02000513          	li	a0,32
800013ec:	000980e7          	jalr	s3
800013f0:	001d8d93          	addi	s11,s11,1
800013f4:	02412883          	lw	a7,36(sp)
800013f8:	ffad90e3          	bne	s11,s10,800013d8 <_vsnprintf+0x654>
800013fc:	000cc503          	lbu	a0,0(s9)
80001400:	001b0d13          	addi	s10,s6,1
80001404:	e0051ae3          	bnez	a0,80001218 <_vsnprintf+0x494>
80001408:	02812403          	lw	s0,40(sp)
8000140c:	a11ff06f          	j	80000e1c <_vsnprintf+0x98>
80001410:	00100793          	li	a5,1
80001414:	1167f463          	bgeu	a5,s6,8000151c <_vsnprintf+0x798>
80001418:	fffd8c93          	addi	s9,s11,-1
8000141c:	016c8cb3          	add	s9,s9,s6
80001420:	0080006f          	j	80001428 <_vsnprintf+0x6a4>
80001424:	001d0d13          	addi	s10,s10,1
80001428:	000d8613          	mv	a2,s11
8000142c:	00048693          	mv	a3,s1
80001430:	00090593          	mv	a1,s2
80001434:	02000513          	li	a0,32
80001438:	000d0d93          	mv	s11,s10
8000143c:	000980e7          	jalr	s3
80001440:	ff9d12e3          	bne	s10,s9,80001424 <_vsnprintf+0x6a0>
80001444:	001d0d93          	addi	s11,s10,1
80001448:	00044503          	lbu	a0,0(s0)
8000144c:	00048693          	mv	a3,s1
80001450:	000c8613          	mv	a2,s9
80001454:	00090593          	mv	a1,s2
80001458:	000980e7          	jalr	s3
8000145c:	000c0413          	mv	s0,s8
80001460:	9bdff06f          	j	80000e1c <_vsnprintf+0x98>
80001464:	2006f693          	andi	a3,a3,512
80001468:	01000813          	li	a6,16
8000146c:	eadff06f          	j	80001318 <_vsnprintf+0x594>
80001470:	00a00813          	li	a6,10
80001474:	e8dff06f          	j	80001300 <_vsnprintf+0x57c>
80001478:	00800813          	li	a6,8
8000147c:	00068593          	mv	a1,a3
80001480:	06400713          	li	a4,100
80001484:	4005f793          	andi	a5,a1,1024
80001488:	0ae51663          	bne	a0,a4,80001534 <_vsnprintf+0x7b0>
8000148c:	2005f693          	andi	a3,a1,512
80001490:	c20780e3          	beqz	a5,800010b0 <_vsnprintf+0x32c>
80001494:	e6dff06f          	j	80001300 <_vsnprintf+0x57c>
80001498:	00044783          	lbu	a5,0(s0)
8000149c:	00078713          	mv	a4,a5
800014a0:	c49ff06f          	j	800010e8 <_vsnprintf+0x364>
800014a4:	00044703          	lbu	a4,0(s0)
800014a8:	e95ff06f          	j	8000133c <_vsnprintf+0x5b8>
800014ac:	000d0d93          	mv	s11,s10
800014b0:	000c0413          	mv	s0,s8
800014b4:	969ff06f          	j	80000e1c <_vsnprintf+0x98>
800014b8:	00042703          	lw	a4,0(s0)
800014bc:	e81ff06f          	j	8000133c <_vsnprintf+0x5b8>
800014c0:	00200813          	li	a6,2
800014c4:	fb9ff06f          	j	8000147c <_vsnprintf+0x6f8>
800014c8:	4006f793          	andi	a5,a3,1024
800014cc:	01000813          	li	a6,16
800014d0:	ff36f593          	andi	a1,a3,-13
800014d4:	e20796e3          	bnez	a5,80001300 <_vsnprintf+0x57c>
800014d8:	e2dff06f          	j	80001304 <_vsnprintf+0x580>
800014dc:	00042783          	lw	a5,0(s0)
800014e0:	000d8613          	mv	a2,s11
800014e4:	00b12223          	sw	a1,4(sp)
800014e8:	41f7d713          	srai	a4,a5,0x1f
800014ec:	00f746b3          	xor	a3,a4,a5
800014f0:	01612023          	sw	s6,0(sp)
800014f4:	01f7d793          	srli	a5,a5,0x1f
800014f8:	40e68733          	sub	a4,a3,a4
800014fc:	bfdff06f          	j	800010f8 <_vsnprintf+0x374>
80001500:	00000d13          	li	s10,0
80001504:	cf5ff06f          	j	800011f8 <_vsnprintf+0x474>
80001508:	00042783          	lw	a5,0(s0)
8000150c:	41f7d693          	srai	a3,a5,0x1f
80001510:	00f6c733          	xor	a4,a3,a5
80001514:	40d70733          	sub	a4,a4,a3
80001518:	bd1ff06f          	j	800010e8 <_vsnprintf+0x364>
8000151c:	000d8c93          	mv	s9,s11
80001520:	000d0d93          	mv	s11,s10
80001524:	f25ff06f          	j	80001448 <_vsnprintf+0x6c4>
80001528:	00078d13          	mv	s10,a5
8000152c:	ce0516e3          	bnez	a0,80001218 <_vsnprintf+0x494>
80001530:	ed9ff06f          	j	80001408 <_vsnprintf+0x684>
80001534:	00058693          	mv	a3,a1
80001538:	f99ff06f          	j	800014d0 <_vsnprintf+0x74c>
8000153c:	00a00813          	li	a6,10
80001540:	f41ff06f          	j	80001480 <_vsnprintf+0x6fc>

80001544 <_out_char>:
80001544:	00051463          	bnez	a0,8000154c <_out_char+0x8>
80001548:	00008067          	ret
8000154c:	afcff06f          	j	80000848 <_putchar>

80001550 <_out_fct>:
80001550:	00050863          	beqz	a0,80001560 <_out_fct+0x10>
80001554:	0005a303          	lw	t1,0(a1)
80001558:	0045a583          	lw	a1,4(a1)
8000155c:	00030067          	jr	t1
80001560:	00008067          	ret

80001564 <printf_>:
80001564:	fc010113          	addi	sp,sp,-64
80001568:	02410313          	addi	t1,sp,36
8000156c:	02d12623          	sw	a3,44(sp)
80001570:	00050693          	mv	a3,a0
80001574:	80001537          	lui	a0,0x80001
80001578:	02b12223          	sw	a1,36(sp)
8000157c:	02c12423          	sw	a2,40(sp)
80001580:	02e12823          	sw	a4,48(sp)
80001584:	00810593          	addi	a1,sp,8
80001588:	00030713          	mv	a4,t1
8000158c:	fff00613          	li	a2,-1
80001590:	54450513          	addi	a0,a0,1348 # 80001544 <fctprintf+0xfffffea4>
80001594:	00112e23          	sw	ra,28(sp)
80001598:	02f12a23          	sw	a5,52(sp)
8000159c:	03012c23          	sw	a6,56(sp)
800015a0:	03112e23          	sw	a7,60(sp)
800015a4:	00612623          	sw	t1,12(sp)
800015a8:	fdcff0ef          	jal	ra,80000d84 <_vsnprintf>
800015ac:	01c12083          	lw	ra,28(sp)
800015b0:	04010113          	addi	sp,sp,64
800015b4:	00008067          	ret

800015b8 <sprintf_>:
800015b8:	fc010113          	addi	sp,sp,-64
800015bc:	02810313          	addi	t1,sp,40
800015c0:	02d12623          	sw	a3,44(sp)
800015c4:	00058693          	mv	a3,a1
800015c8:	00050593          	mv	a1,a0
800015cc:	80001537          	lui	a0,0x80001
800015d0:	02c12423          	sw	a2,40(sp)
800015d4:	02e12823          	sw	a4,48(sp)
800015d8:	fff00613          	li	a2,-1
800015dc:	00030713          	mv	a4,t1
800015e0:	86c50513          	addi	a0,a0,-1940 # 8000086c <fctprintf+0xfffff1cc>
800015e4:	00112e23          	sw	ra,28(sp)
800015e8:	02f12a23          	sw	a5,52(sp)
800015ec:	03012c23          	sw	a6,56(sp)
800015f0:	03112e23          	sw	a7,60(sp)
800015f4:	00612623          	sw	t1,12(sp)
800015f8:	f8cff0ef          	jal	ra,80000d84 <_vsnprintf>
800015fc:	01c12083          	lw	ra,28(sp)
80001600:	04010113          	addi	sp,sp,64
80001604:	00008067          	ret

80001608 <snprintf_>:
80001608:	fc010113          	addi	sp,sp,-64
8000160c:	02c10313          	addi	t1,sp,44
80001610:	02d12623          	sw	a3,44(sp)
80001614:	00060693          	mv	a3,a2
80001618:	00058613          	mv	a2,a1
8000161c:	00050593          	mv	a1,a0
80001620:	80001537          	lui	a0,0x80001
80001624:	02e12823          	sw	a4,48(sp)
80001628:	86c50513          	addi	a0,a0,-1940 # 8000086c <fctprintf+0xfffff1cc>
8000162c:	00030713          	mv	a4,t1
80001630:	00112e23          	sw	ra,28(sp)
80001634:	02f12a23          	sw	a5,52(sp)
80001638:	03012c23          	sw	a6,56(sp)
8000163c:	03112e23          	sw	a7,60(sp)
80001640:	00612623          	sw	t1,12(sp)
80001644:	f40ff0ef          	jal	ra,80000d84 <_vsnprintf>
80001648:	01c12083          	lw	ra,28(sp)
8000164c:	04010113          	addi	sp,sp,64
80001650:	00008067          	ret

80001654 <vprintf_>:
80001654:	fe010113          	addi	sp,sp,-32
80001658:	00050693          	mv	a3,a0
8000165c:	80001537          	lui	a0,0x80001
80001660:	00058713          	mv	a4,a1
80001664:	fff00613          	li	a2,-1
80001668:	00c10593          	addi	a1,sp,12
8000166c:	54450513          	addi	a0,a0,1348 # 80001544 <fctprintf+0xfffffea4>
80001670:	00112e23          	sw	ra,28(sp)
80001674:	f10ff0ef          	jal	ra,80000d84 <_vsnprintf>
80001678:	01c12083          	lw	ra,28(sp)
8000167c:	02010113          	addi	sp,sp,32
80001680:	00008067          	ret

80001684 <vsnprintf_>:
80001684:	00068713          	mv	a4,a3
80001688:	00060693          	mv	a3,a2
8000168c:	00058613          	mv	a2,a1
80001690:	00050593          	mv	a1,a0
80001694:	80001537          	lui	a0,0x80001
80001698:	86c50513          	addi	a0,a0,-1940 # 8000086c <fctprintf+0xfffff1cc>
8000169c:	ee8ff06f          	j	80000d84 <_vsnprintf>

800016a0 <fctprintf>:
800016a0:	fc010113          	addi	sp,sp,-64
800016a4:	02c10313          	addi	t1,sp,44
800016a8:	00050e93          	mv	t4,a0
800016ac:	80001537          	lui	a0,0x80001
800016b0:	00058e13          	mv	t3,a1
800016b4:	02d12623          	sw	a3,44(sp)
800016b8:	02e12823          	sw	a4,48(sp)
800016bc:	00060693          	mv	a3,a2
800016c0:	00810593          	addi	a1,sp,8
800016c4:	00030713          	mv	a4,t1
800016c8:	fff00613          	li	a2,-1
800016cc:	55050513          	addi	a0,a0,1360 # 80001550 <fctprintf+0xfffffeb0>
800016d0:	00112e23          	sw	ra,28(sp)
800016d4:	02f12a23          	sw	a5,52(sp)
800016d8:	03012c23          	sw	a6,56(sp)
800016dc:	03112e23          	sw	a7,60(sp)
800016e0:	00612223          	sw	t1,4(sp)
800016e4:	01d12423          	sw	t4,8(sp)
800016e8:	01c12623          	sw	t3,12(sp)
800016ec:	e98ff0ef          	jal	ra,80000d84 <_vsnprintf>
800016f0:	01c12083          	lw	ra,28(sp)
800016f4:	04010113          	addi	sp,sp,64
800016f8:	00008067          	ret
800016fc:	0000                	unimp
	...
