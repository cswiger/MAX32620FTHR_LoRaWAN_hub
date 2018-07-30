	.file	"usiTwiSlave.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.usiTwiSlaveInit,"ax",@progbits
.global	usiTwiSlaveInit
	.type	usiTwiSlaveInit, @function
usiTwiSlaveInit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts rxTail,__zero_reg__
	sts rxHead,__zero_reg__
	sts txTail,__zero_reg__
	sts txHead,__zero_reg__
	sts slaveAddress,r24
	sts inPacket,__zero_reg__
	in r24,0x1a
	ori r24,lo8(80)
	out 0x1a,r24
	sbi 0x1b,4
	sbi 0x1b,6
	cbi 0x1a,6
	ldi r24,lo8(-88)
	out 0xd,r24
	ldi r24,lo8(-16)
	out 0xe,r24
	ret
	.size	usiTwiSlaveInit, .-usiTwiSlaveInit
	.section	.text.usiTwiTransmitByte,"ax",@progbits
.global	usiTwiTransmitByte
	.type	usiTwiTransmitByte, @function
usiTwiTransmitByte:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,txHead
	subi r25,lo8(-(1))
	andi r25,lo8(15)
.L3:
	lds r18,txTail
	cp r25,r18
	breq .L3
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(txBuf))
	sbci r31,hi8(-(txBuf))
	st Z,r24
	sts txHead,r25
	ret
	.size	usiTwiTransmitByte, .-usiTwiTransmitByte
	.section	.text.usiTwiReceiveByte,"ax",@progbits
.global	usiTwiReceiveByte
	.type	usiTwiReceiveByte, @function
usiTwiReceiveByte:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L7:
	lds r25,rxHead
	lds r24,rxTail
	cp r25,r24
	breq .L7
	lds r24,rxTail
	subi r24,lo8(-(1))
	andi r24,lo8(15)
	sts rxTail,r24
	lds r30,rxTail
	ldi r31,0
	subi r30,lo8(-(rxBuf))
	sbci r31,hi8(-(rxBuf))
	ld r24,Z
	ret
	.size	usiTwiReceiveByte, .-usiTwiReceiveByte
	.section	.text.usiTwiDataInReceiveBuffer,"ax",@progbits
.global	usiTwiDataInReceiveBuffer
	.type	usiTwiDataInReceiveBuffer, @function
usiTwiDataInReceiveBuffer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,rxHead
	lds r25,rxTail
	ldi r24,lo8(1)
	cpse r18,r25
	rjmp .L10
	ldi r24,0
.L10:
	ret
	.size	usiTwiDataInReceiveBuffer, .-usiTwiDataInReceiveBuffer
	.section	.text.usiTwiOnStart,"ax",@progbits
.global	usiTwiOnStart
	.type	usiTwiOnStart, @function
usiTwiOnStart:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts usiTwiOnStartFunction+1,r25
	sts usiTwiOnStartFunction,r24
	ret
	.size	usiTwiOnStart, .-usiTwiOnStart
	.section	.text.usiTwiOnStop,"ax",@progbits
.global	usiTwiOnStop
	.type	usiTwiOnStop, @function
usiTwiOnStop:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts usiTwiOnStopFunction+1,r25
	sts usiTwiOnStopFunction,r24
	ret
	.size	usiTwiOnStop, .-usiTwiOnStop
	.section	.text.__vector_15,"ax",@progbits
.global	__vector_15
	.type	__vector_15, @function
__vector_15:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	sts overflowState+1,__zero_reg__
	sts overflowState,__zero_reg__
	cbi 0x1a,6
.L15:
	sbis 0x19,4
	rjmp .L14
	sbis 0x19,6
	rjmp .L15
.L14:
	sbic 0x19,6
	rjmp .L16
	ldi r24,lo8(-8)
	rjmp .L23
.L16:
	ldi r24,lo8(-88)
.L23:
	out 0xd,r24
	ldi r24,lo8(-16)
	out 0xe,r24
/* epilogue start */
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_15, .-__vector_15
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r24,overflowState
	lds r25,overflowState+1
	cpi r24,2
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L26
	brsh .L27
	sbiw r24,0
	breq .L28
	sbiw r24,1
	breq .L29
	rjmp .L24
.L27:
	cpi r24,4
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L30
	brlo .L31
	sbiw r24,5
	breq .+2
	rjmp .L24
	lds r24,rxHead
	subi r24,lo8(-(1))
	andi r24,lo8(15)
	sts rxHead,r24
	lds r30,rxHead
	in r24,0xf
	ldi r31,0
	subi r30,lo8(-(rxBuf))
	sbci r31,hi8(-(rxBuf))
	st Z,r24
	rjmp .L60
.L28:
	in r24,0xf
	tst r24
	breq .L33
	in r24,0xf
	lsr r24
	lds r25,slaveAddress
	cpse r24,r25
	rjmp .L59
.L33:
	lds r30,usiTwiOnStartFunction
	lds r31,usiTwiOnStartFunction+1
	sbiw r30,0
	breq .L35
	icall
.L35:
	sbis 0xf,0
	rjmp .L60
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L57
.L31:
	in r24,0xf
	tst r24
	breq .L29
.L59:
	ldi r24,lo8(-88)
	out 0xd,r24
	rjmp .L58
.L29:
	lds r25,txHead
	lds r24,txTail
	cp r25,r24
	breq .L38
	lds r24,txTail
	subi r24,lo8(-(1))
	andi r24,lo8(15)
	sts txTail,r24
	lds r30,txTail
	ldi r31,0
	subi r30,lo8(-(txBuf))
	sbci r31,hi8(-(txBuf))
	ld r24,Z
	rjmp .L53
.L38:
	ldi r24,lo8(-1)
.L53:
	out 0xf,r24
	ldi r24,lo8(2)
	ldi r25,0
	sts overflowState+1,r25
	sts overflowState,r24
	sbi 0x1a,6
.L58:
	ldi r24,lo8(112)
	rjmp .L55
.L26:
	ldi r24,lo8(3)
	ldi r25,0
	sts overflowState+1,r25
	sts overflowState,r24
	cbi 0x1a,6
	out 0xf,__zero_reg__
	rjmp .L54
.L30:
	ldi r24,lo8(5)
	ldi r25,0
	sts overflowState+1,r25
	sts overflowState,r24
	cbi 0x1a,6
	rjmp .L58
.L60:
	ldi r24,lo8(4)
	ldi r25,0
.L57:
	sts overflowState+1,r25
	sts overflowState,r24
	out 0xf,__zero_reg__
	sbi 0x1a,6
.L54:
	ldi r24,lo8(126)
.L55:
	out 0xe,r24
.L24:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_16, .-__vector_16
	.section	.bss.usiTwiOnStopFunction,"aw",@nobits
	.type	usiTwiOnStopFunction, @object
	.size	usiTwiOnStopFunction, 2
usiTwiOnStopFunction:
	.zero	2
	.section	.bss.usiTwiOnStartFunction,"aw",@nobits
	.type	usiTwiOnStartFunction, @object
	.size	usiTwiOnStartFunction, 2
usiTwiOnStartFunction:
	.zero	2
	.section	.bss.txTail,"aw",@nobits
	.type	txTail, @object
	.size	txTail, 1
txTail:
	.zero	1
	.section	.bss.txHead,"aw",@nobits
	.type	txHead, @object
	.size	txHead, 1
txHead:
	.zero	1
	.section	.bss.txBuf,"aw",@nobits
	.type	txBuf, @object
	.size	txBuf, 16
txBuf:
	.zero	16
	.section	.bss.rxTail,"aw",@nobits
	.type	rxTail, @object
	.size	rxTail, 1
rxTail:
	.zero	1
	.section	.bss.rxHead,"aw",@nobits
	.type	rxHead, @object
	.size	rxHead, 1
rxHead:
	.zero	1
	.section	.bss.rxBuf,"aw",@nobits
	.type	rxBuf, @object
	.size	rxBuf, 16
rxBuf:
	.zero	16
	.section	.bss.inPacket,"aw",@nobits
	.type	inPacket, @object
	.size	inPacket, 1
inPacket:
	.zero	1
	.section	.bss.overflowState,"aw",@nobits
	.type	overflowState, @object
	.size	overflowState, 2
overflowState:
	.zero	2
	.section	.bss.slaveAddress,"aw",@nobits
	.type	slaveAddress, @object
	.size	slaveAddress, 1
slaveAddress:
	.zero	1
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.5.1_1671) 4.9.2"
.global __do_clear_bss
