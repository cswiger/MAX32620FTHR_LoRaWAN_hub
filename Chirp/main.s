	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.initBuzzer,"ax",@progbits
.global	initBuzzer
	.type	initBuzzer, @function
initBuzzer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x30,__zero_reg__
	out 0x33,__zero_reg__
	in r24,0x30
	ori r24,lo8(32)
	out 0x30,r24
	in r24,0x30
	ori r24,lo8(1)
	out 0x30,r24
	in r24,0x33
	ori r24,lo8(1)
	out 0x33,r24
	ret
	.size	initBuzzer, .-initBuzzer
	.section	.text.beep,"ax",@progbits
.global	beep
	.type	beep, @function
beep:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall initBuzzer
	ldi r24,lo8(48)
	out 0x3c,r24
	ldi r24,lo8(10499)
	ldi r25,hi8(10499)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	out 0x33,__zero_reg__
	cbi 0x1b,7
	ret
	.size	beep, .-beep
	.section	.text.ledOn,"ax",@progbits
.global	ledOn
	.type	ledOn, @function
ledOn:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x17
	ori r24,lo8(3)
	out 0x17,r24
	cbi 0x18,0
	sbi 0x18,1
	ret
	.size	ledOn, .-ledOn
	.section	.text.ledOff,"ax",@progbits
.global	ledOff
	.type	ledOff, @function
ledOff:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x17
	andi r24,lo8(-4)
	out 0x17,r24
	in r24,0x18
	andi r24,lo8(-4)
	out 0x18,r24
	ret
	.size	ledOff, .-ledOff
	.section	.text.chirp,"ax",@progbits
.global	chirp
	.type	chirp, @function
chirp:
	push r28
	push r29
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	cbi 0,2
.L6:
	tst r24
	breq .L9
	std Y+1,r24
	rcall beep
	ldi r30,lo8(9999)
	ldi r31,hi8(9999)
1:	sbiw r30,1
	brne 1b
	rjmp .
	nop
	ldd r24,Y+1
	subi r24,lo8(-(-1))
	rjmp .L6
.L9:
	sbi 0,2
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	chirp, .-chirp
	.section	.text.setupGPIO,"ax",@progbits
.global	setupGPIO
	.type	setupGPIO, @function
setupGPIO:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x1b,0
	cbi 0x1b,0
	sbi 0x1b,2
	cbi 0x1b,2
	sbi 0x1b,3
	cbi 0x1b,3
	sbi 0x1a,7
	cbi 0x1b,7
	sbi 0x17,0
	cbi 0x18,0
	sbi 0x17,1
	cbi 0x18,1
	sbi 0x17,2
	cbi 0x18,2
	ret
	.size	setupGPIO, .-setupGPIO
	.section	.text.setupPowerSaving,"ax",@progbits
.global	setupPowerSaving
	.type	setupPowerSaving, @function
setupPowerSaving:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x1,1
	sbi 0,3
	sbi 0,2
	cbi 0x6,7
	sbi 0,0
	sbi 0,1
	ret
	.size	setupPowerSaving, .-setupPowerSaving
	.section	.text.initWatchdog,"ax",@progbits
.global	initWatchdog
	.type	initWatchdog, @function
initWatchdog:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x21
	ori r24,lo8(16)
	out 0x21,r24
	in r24,0x21
	andi r24,lo8(-9)
	out 0x21,r24
	in r24,0x21
	ori r24,lo8(64)
	out 0x21,r24
	in r24,0x21
	ori r24,lo8(6)
	out 0x21,r24
	ret
	.size	initWatchdog, .-initWatchdog
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
/* epilogue start */
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_4, .-__vector_4
	.section	.text.sleep,"ax",@progbits
.global	sleep
	.type	sleep, @function
sleep:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x35
	andi r24,lo8(-25)
	ori r24,lo8(16)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(32)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(-124)
	out 0x35,r24
	in r24,0x35
	andi r24,lo8(-5)
	out 0x35,r24
/* #APP */
 ;  104 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	in r24,0x35
	andi r24,lo8(-33)
	out 0x35,r24
	ret
	.size	sleep, .-sleep
	.section	.text.sleepWhileADC,"ax",@progbits
.global	sleepWhileADC
	.type	sleepWhileADC, @function
sleepWhileADC:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x35
	andi r24,lo8(-25)
	ori r24,lo8(8)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(32)
	out 0x35,r24
/* #APP */
 ;  110 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	in r24,0x35
	andi r24,lo8(-33)
	out 0x35,r24
	ret
	.size	sleepWhileADC, .-sleepWhileADC
	.section	.text.__vector_13,"ax",@progbits
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
/* epilogue start */
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_13, .-__vector_13
	.section	.text.startExcitationSignal,"ax",@progbits
.global	startExcitationSignal
	.type	startExcitationSignal, @function
startExcitationSignal:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x36,__zero_reg__
	ldi r24,lo8(66)
	out 0x30,r24
	ldi r24,lo8(1)
	out 0x33,r24
	ret
	.size	startExcitationSignal, .-startExcitationSignal
	.section	.text.stopExcitationSignal,"ax",@progbits
.global	stopExcitationSignal
	.type	stopExcitationSignal, @function
stopExcitationSignal:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x33,__zero_reg__
	out 0x30,__zero_reg__
	ret
	.size	stopExcitationSignal, .-stopExcitationSignal
	.section	.text.getADC1,"ax",@progbits
.global	getADC1
	.type	getADC1, @function
getADC1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x6,2
	sbi 0x6,3
	sbi 0x7,0
	sbi 0x6,6
	rcall sleepWhileADC
	in r18,0x4
	in r24,0x5
	ldi r19,0
	or r19,r24
	ldi r24,lo8(-1)
	ldi r25,lo8(3)
	sub r24,r18
	sbc r25,r19
	ret
	.size	getADC1, .-getADC1
	.section	.text.getCapacitance,"ax",@progbits
.global	getCapacitance
	.type	getCapacitance, @function
getCapacitance:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	cbi 0,0
	sbi 0x6,7
	cbi 0,2
	rcall startExcitationSignal
	ldi r24,lo8(249)
	ldi r25,hi8(249)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	rcall getADC1
	ldi r25,lo8(199999)
	ldi r18,hi8(199999)
	ldi r24,hlo8(199999)
1:	subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
	rcall getADC1
	std Y+1,r24
	std Y+2,r25
	rcall stopExcitationSignal
	cbi 0x18,2
	sbi 0,2
	cbi 0x6,7
	sbi 0,0
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	getCapacitance, .-getCapacitance
	.section	.text.__vector_3,"ax",@progbits
.global	__vector_3
	.type	__vector_3, @function
__vector_3:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	in r24,0x3b
	andi r24,lo8(-33)
	out 0x3b,r24
	out 0x2e,__zero_reg__
	in r24,0x2c
	in r25,0x2c+1
	sts lightCounter+1,r25
	sts lightCounter,r24
	ldi r24,lo8(1)
	sts lightCycleOver,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_3, .-__vector_3
	.section	.text.__vector_8,"ax",@progbits
.global	__vector_8
	.type	__vector_8, @function
__vector_8:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	sts lightCounter+1,r25
	sts lightCounter,r24
	ldi r24,lo8(1)
	sts lightCycleOver,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_8, .-__vector_8
	.section	.text.getLight,"ax",@progbits
.global	getLight
	.type	getLight, @function
getLight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0,3
	sbi 0xc,0
	in r24,0x17
	ori r24,lo8(3)
	out 0x17,r24
	cbi 0x18,0
	sbi 0x18,1
	sbi 0x18,0
	cbi 0x18,1
	cbi 0x17,0
	in r24,0x18
	andi r24,lo8(-4)
	out 0x18,r24
	out 0x2c+1,__zero_reg__
	out 0x2c,__zero_reg__
	out 0x2f,__zero_reg__
	ldi r24,lo8(4)
	out 0x2e,r24
	in r24,0x20
	ori r24,lo8(1)
	out 0x20,r24
	in r24,0x3b
	ori r24,lo8(32)
	out 0x3b,r24
	sts lightCycleOver,__zero_reg__
.L24:
	lds r24,lightCycleOver
	cpse r24,__zero_reg__
	rjmp .L26
	in r24,0x35
	andi r24,lo8(-25)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(32)
	out 0x35,r24
/* #APP */
 ;  208 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	in r24,0x35
	andi r24,lo8(-33)
	out 0x35,r24
	rjmp .L24
.L26:
	out 0x2e,__zero_reg__
	in r24,0x3b
	andi r24,lo8(-33)
	out 0x3b,r24
	in r24,0x20
	andi r24,lo8(-2)
	out 0x20,r24
	cbi 0xc,0
	sbi 0,3
	lds r24,lightCounter
	lds r25,lightCounter+1
	ret
	.size	getLight, .-getLight
	.section	.text.loopSensorMode,"ax",@progbits
.global	loopSensorMode
	.type	loopSensorMode, @function
loopSensorMode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0,0
	ldi r24,lo8(-124)
	out 0x6,r24
	sbi 0x7,0
	cbi 0,2
	rcall startExcitationSignal
	ldi r18,lo8(99999)
	ldi r24,hi8(99999)
	ldi r25,hlo8(99999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	ldi r28,0
	ldi r29,0
.L29:
	rcall usiTwiDataInReceiveBuffer
	tst r24
	breq .L29
	rcall usiTwiReceiveByte
	cpse r24,__zero_reg__
	rjmp .L30
	rcall ledOn
	rcall getCapacitance
	mov r17,r24
	mov r24,r25
	rcall usiTwiTransmitByte
	mov r24,r17
	rcall usiTwiTransmitByte
	rcall ledOff
	rjmp .L29
.L30:
	cpi r24,lo8(1)
	brne .L32
	rcall usiTwiReceiveByte
	ldi r25,lo8(-1)
	add r25,r24
	cpi r25,lo8(-2)
	brsh .L29
	mov r22,r24
	ldi r24,lo8(1)
	ldi r25,0
	rcall eeprom_write_byte
	rjmp .L29
.L32:
	cpi r24,lo8(2)
	brne .L33
	ldi r24,lo8(1)
	ldi r25,0
	rcall eeprom_read_byte
	rjmp .L37
.L33:
	cpi r24,lo8(3)
	brne .L34
	rcall getLight
	movw r28,r24
	rjmp .L29
.L34:
	cpi r24,lo8(4)
	brne .L29
	mov r24,r29
	rcall usiTwiTransmitByte
	mov r24,r28
.L37:
	rcall usiTwiTransmitByte
	rjmp .L29
	.size	loopSensorMode, .-loopSensorMode
	.section	.text.wakeUpInterval8s,"ax",@progbits
.global	wakeUpInterval8s
	.type	wakeUpInterval8s, @function
wakeUpInterval8s:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x21
	andi r24,lo8(-3)
	out 0x21,r24
	in r24,0x21
	andi r24,lo8(-5)
	out 0x21,r24
	in r24,0x21
	ori r24,lo8(33)
	out 0x21,r24
	ldi r24,lo8(8)
	sts sleepSeconds,r24
	ret
	.size	wakeUpInterval8s, .-wakeUpInterval8s
	.section	.text.wakeUpInterval1s,"ax",@progbits
.global	wakeUpInterval1s
	.type	wakeUpInterval1s, @function
wakeUpInterval1s:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x21
	andi r24,lo8(-33)
	out 0x21,r24
	in r24,0x21
	andi r24,lo8(-2)
	out 0x21,r24
	in r24,0x21
	ori r24,lo8(6)
	out 0x21,r24
	ldi r24,lo8(1)
	sts sleepSeconds,r24
	ret
	.size	wakeUpInterval1s, .-wakeUpInterval1s
	.section	.text.chirpIfLight,"ax",@progbits
.global	chirpIfLight
	.type	chirpIfLight, @function
chirpIfLight:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall getLight
	lds r18,lightCounter
	lds r19,lightCounter+1
	lds r24,lightThreshold
	lds r25,lightThreshold+1
	cp r18,r24
	cpc r19,r25
	brsh .L41
	ldi r24,lo8(3)
	rjmp chirp
.L41:
	rcall ledOn
	ldi r24,lo8(2499)
	ldi r25,hi8(2499)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	rjmp ledOff
	.size	chirpIfLight, .-chirpIfLight
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall setupGPIO
	ldi r24,lo8(1)
	ldi r25,0
	rcall eeprom_read_byte
	ldi r25,lo8(-1)
	add r25,r24
	cpi r25,lo8(-2)
	brlo .L43
	ldi r24,lo8(32)
.L43:
	rcall usiTwiSlaveInit
	ldi r24,lo8(2)
	ldi r25,0
	rcall eeprom_read_word
	sts lightThreshold+1,r25
	sts lightThreshold,r24
	ldi r24,lo8(-128)
	out 0x26,r24
	ldi r24,lo8(2)
	out 0x26,r24
/* #APP */
 ;  334 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	rcall chirp
	rcall ledOn
	ldi r24,lo8(2499)
	ldi r25,hi8(2499)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	rcall ledOff
	ldi r25,lo8(99999)
	ldi r18,hi8(99999)
	ldi r24,hlo8(99999)
1:	subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
	rcall getLight
	lds r24,lightThreshold
	lds r25,lightThreshold+1
	adiw r24,1
	brne .L44
	lds r18,lightCounter
	lds r19,lightCounter+1
	lds r24,lightCounter
	lds r25,lightCounter+1
	ldi r22,lo8(10)
	ldi r23,0
	rcall __udivmodhi4
	movw r24,r18
	sub r24,r22
	sbc r25,r23
	movw r22,r24
	sts lightThreshold+1,r25
	sts lightThreshold,r24
	ldi r24,lo8(2)
	ldi r25,0
	rcall eeprom_write_word
	ldi r24,lo8(1)
	rcall chirp
	ldi r25,lo8(59999)
	ldi r18,hi8(59999)
	ldi r24,hlo8(59999)
1:	subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.L44:
	ldi r24,lo8(2)
	rcall chirp
	rcall usiTwiDataInReceiveBuffer
	cpse r24,__zero_reg__
	rcall loopSensorMode
.L45:
	rcall getCapacitance
	movw r10,r24
	out 0xd,__zero_reg__
	rcall setupPowerSaving
	rcall initWatchdog
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	ldi r29,0
	ldi r16,lo8(4)
	ldi r17,0
	ldi r28,0
.L46:
	cp r28,r29
	brsh .L47
	rcall sleep
	subi r28,lo8(-(1))
	movw r14,r12
.L48:
	movw r12,r14
	rjmp .L46
.L47:
	lds r22,sleepSeconds
	ldi r23,0
	mov r24,r29
	ldi r25,0
	rcall __mulhi3
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	sbc r27,r27
	sts secondsAfterWatering,r24
	sts secondsAfterWatering+1,r25
	sts secondsAfterWatering+2,r26
	sts secondsAfterWatering+3,r27
	rcall getCapacitance
	movw r14,r24
	movw r8,r10
	sub r8,r24
	sbc r9,r25
	cpse r17,__zero_reg__
	rjmp .L49
	movw r24,r12
	sub r24,r14
	sbc r25,r15
	cpi r24,-5
	sbci r25,-1
	brge .L49
	or r12,r13
	breq .L49
	ldi r24,lo8(9)
	rcall chirp
	ldi r24,lo8(69999)
	ldi r25,hi8(69999)
	ldi r18,hlo8(69999)
1:	subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	rcall chirp
	ldi r24,lo8(12499)
	ldi r25,hi8(12499)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	rcall chirp
	ldi r17,lo8(1)
.L49:
	ldi r25,-4
	cp r8,r25
	ldi r25,-1
	cpc r9,r25
	brge .L65
	cpi r16,lo8(1)
	brne .L66
	ldi r29,lo8(-31)
	rjmp .L64
.L65:
	rcall chirpIfLight
	movw r24,r8
	adiw r24,4
	sbiw r24,2
	brsh .L50
	cpi r16,lo8(2)
	brne .L67
	ldi r29,lo8(37)
.L63:
	ldi r17,0
.L64:
	ldi r28,0
	rjmp .L48
.L66:
	rcall wakeUpInterval8s
	ldi r29,lo8(-31)
	ldi r16,lo8(1)
	rjmp .L64
.L67:
	rcall wakeUpInterval8s
	ldi r29,lo8(37)
	ldi r16,lo8(2)
	rjmp .L63
.L50:
	movw r24,r8
	adiw r24,2
	sbiw r24,2
	brsh .L51
	cpi r16,lo8(3)
	brne .L68
.L58:
	ldi r29,lo8(1)
	rjmp .L63
.L68:
	rcall wakeUpInterval8s
	ldi r29,lo8(1)
	ldi r16,lo8(3)
	rjmp .L63
.L51:
	sbrc r9,7
	rjmp .L63
	cpi r16,lo8(4)
	breq .L58
	rcall wakeUpInterval1s
	ldi r29,lo8(1)
	ldi r16,lo8(4)
	rjmp .L63
	.size	main, .-main
.global	lightThreshold
	.section	.data.lightThreshold,"aw",@progbits
	.type	lightThreshold, @object
	.size	lightThreshold, 2
lightThreshold:
	.word	-6
.global	secondsAfterWatering
	.section	.bss.secondsAfterWatering,"aw",@nobits
	.type	secondsAfterWatering, @object
	.size	secondsAfterWatering, 4
secondsAfterWatering:
	.zero	4
.global	sleepSeconds
	.section	.bss.sleepSeconds,"aw",@nobits
	.type	sleepSeconds, @object
	.size	sleepSeconds, 1
sleepSeconds:
	.zero	1
	.comm	mode,1,1
.global	lightCycleOver
	.section	.bss.lightCycleOver,"aw",@nobits
	.type	lightCycleOver, @object
	.size	lightCycleOver, 1
lightCycleOver:
	.zero	1
.global	lightCounter
	.section	.bss.lightCounter,"aw",@nobits
	.type	lightCounter, @object
	.size	lightCounter, 2
lightCounter:
	.zero	2
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.5.1_1671) 4.9.2"
.global __do_copy_data
.global __do_clear_bss
