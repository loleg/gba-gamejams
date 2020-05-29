	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVeggie.part.0, %function
drawVeggie.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #4]
	ldr	r4, [r0, #48]
	ldr	r1, [r0, #40]
	ldr	r2, [r0, #60]
	ldr	ip, .L4
	lsl	r3, r3, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	add	r1, r1, r4, lsl #5
	lsr	r3, r3, #23
	lsl	r0, r2, #3
	orr	r3, r3, #16384
	add	r2, ip, r2, lsl #3
	lsl	r1, r1, #1
	strh	lr, [ip, r0]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.size	drawVeggie.part.0, .-drawVeggie.part.0
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L23
	ldr	r1, [ip]
	cmp	r1, #256
	push	{r4, r5, r6, r7, r8, lr}
	ble	.L7
	ldr	r2, .L23+4
	ldr	r0, [r2]
	ldr	r3, .L23+8
	sub	r1, r1, #256
	add	r0, r0, #1
	str	r1, [ip]
	str	r0, [r2]
	add	r5, r3, #1360
.L8:
	ldr	r2, [r3, #12]
	sub	r2, r2, #256
	str	r2, [r3, #12]
	add	r3, r3, #68
	cmp	r3, r5
	bne	.L8
.L20:
	mov	r2, #67108864
	lsl	r3, r0, #24
	orr	r3, r3, #1073741824
	lsr	r3, r3, #16
	strh	r3, [r2, #8]	@ movhi
.L9:
	mov	r0, #67108864
	ldr	r4, .L23+12
	ldr	r3, [r4, #4]
	ldrh	ip, [ip, #4]
	lsl	r1, r1, #16
	ldr	lr, .L23+16
	lsr	r1, r1, #16
	lsl	r3, r3, #23
	strh	r1, [r0, #16]	@ movhi
	ldr	r8, [r4, #48]
	strh	ip, [r0, #18]	@ movhi
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, [r4, #40]
	ldr	r6, .L23+20
	ldr	r2, .L23+24
	lsr	r3, r3, #23
	orr	r3, r3, lr
	ldr	r4, [r2, #48]
	add	r0, r0, r8, lsl #5
	strh	r3, [r6, #2]	@ movhi
	ldr	r3, [r2]
	strh	r1, [r6]	@ movhi
	ldr	r1, [r2, #60]
	lsl	r0, r0, #2
	strh	r0, [r6, #4]	@ movhi
	orr	r3, r3, #16384
	lsl	r0, r1, #3
	strh	r3, [r6, r0]	@ movhi
	ldr	r3, [r2, #4]
	ldr	r0, [r2, #40]
	ldr	ip, .L23+28
	add	r1, r6, r1, lsl #3
	orr	r3, r3, lr
	ldr	r2, [ip, #40]
	add	r0, r0, r4, lsl #4
	ldr	r4, [ip, #48]
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [ip, #4]
	add	r2, r2, r4, lsl #4
	orr	lr, r3, lr
	ldr	r4, [ip]
	ldr	r3, [ip, #60]
	lsl	r0, r0, #2
	strh	r0, [r1, #4]	@ movhi
	orr	ip, r4, #16384
	lsl	r1, r3, #3
	lsl	r2, r2, #2
	add	r3, r6, r3, lsl #3
	strh	ip, [r6, r1]	@ movhi
	mov	r7, #512
	ldr	r4, .L23+8
	strh	lr, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L13
.L22:
	mov	r0, r4
	add	r4, r4, #68
	bl	drawVeggie.part.0
	cmp	r5, r4
	beq	.L21
.L13:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L22
	ldr	r3, [r4, #60]
	add	r4, r4, #68
	lsl	r3, r3, #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	bne	.L13
.L21:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	cmp	r1, #0
	ldrge	r5, .L23+32
	bge	.L9
	ldr	r2, .L23+4
	ldr	r0, [r2]
	ldr	r3, .L23+8
	add	r1, r1, #256
	sub	r0, r0, #1
	str	r1, [ip]
	str	r0, [r2]
	add	r5, r3, #1360
.L10:
	ldr	r2, [r3, #12]
	add	r2, r2, #256
	str	r2, [r3, #12]
	add	r3, r3, #68
	cmp	r3, r5
	bne	.L10
	b	.L20
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	screenBlock
	.word	vegetables
	.word	player
	.word	-32768
	.word	shadowOAM
	.word	healthBar
	.word	pizzaBar
	.word	vegetables+1360
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	lr, #1
	mov	r5, #3
	mov	r4, #20
	mov	ip, #32
	ldr	r3, .L27
	ldm	r3, {r0, r1}
	ldr	r3, .L27+4
	add	r1, r1, #64
	lsl	r1, r1, #8
	add	r0, r0, #104
	str	r5, [r3, #52]
	str	r4, [r3, #64]
	str	lr, [r3, #20]
	str	lr, [r3, #56]
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #32]
	str	r2, [r3, #16]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #36]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #20
	mov	r6, #28
	ldr	ip, .L33
	ldr	lr, .L33+4
	ldr	r5, .L33+8
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L33+12
	ldr	r1, .L33+16
	str	r4, [ip, #4]
	str	r4, [ip]
	str	r6, [lr]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L33+20
	ldr	r1, .L33+24
	mov	lr, pc
	bx	r5
	mov	r6, #8
	bl	initPlayer
	mov	lr, r4
	mov	r1, #50
	mov	r0, #16
	mov	r4, #1
	mov	r2, #0
	mov	ip, #5
	ldr	r3, .L33+28
	add	r5, r3, #1360
.L30:
	str	r1, [r3, #60]
	str	r0, [r3, #28]
	str	r0, [r3, #24]
	str	r4, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	ip, [r3, #52]
	str	lr, [r3, #64]
	add	r3, r3, #68
	cmp	r3, r5
	add	r1, r1, #1
	bne	.L30
	mov	r6, #205
	mov	r5, #4
	mov	r1, #32
	mov	lr, #6
	ldr	r3, .L33+32
	str	r6, [r3, #4]
	str	r4, [r3, #56]
	str	r5, [r3, #60]
	str	ip, [r3]
	str	r0, [r3, #28]
	str	ip, [r3, #40]
	str	r2, [r3, #48]
	str	r1, [r3, #24]
	ldr	r3, .L33+36
	str	r4, [r3, #56]
	str	lr, [r3, #40]
	str	r1, [r3, #24]
	str	ip, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #28]
	str	r2, [r3, #48]
	str	ip, [r3, #60]
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	screenBlock
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	vegetables
	.word	healthBar
	.word	pizzaBar
	.size	initGame, .-initGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L36
	ldr	r3, [r1, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #48]
	ldr	r2, [r1, #40]
	ldr	r0, .L36+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r2, r2, ip, lsl #5
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L37:
	.align	2
.L36:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L76
	ldr	r3, .L76+4
	ldr	r5, [r4, #36]
	smull	r1, r3, r5, r3
	sub	r3, r3, r5, asr #31
	ldr	r6, [r4, #40]
	add	r3, r3, r3, lsl #1
	cmp	r5, r3, lsl #1
	str	r6, [r4, #44]
	str	r2, [r4, #40]
	asr	r3, r5, #31
	bne	.L39
	ldr	r2, [r4, #32]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [r4, #32]
	ble	.L73
.L39:
	ldr	r2, .L76+8
	smull	r1, r2, r5, r2
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	bne	.L41
	ldr	r0, [r4, #48]
	ldr	r3, .L76+12
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #48]
.L41:
	ldr	r3, .L76+16
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L42
	ldr	r2, .L76+20
	ldr	r2, [r2, #8]
	cmp	r2, #0
	bne	.L43
	mov	r3, #3
	str	r3, [r4, #40]
.L42:
	ldr	r3, .L76+16
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L44
	ldr	r2, .L76+20
	ldr	r2, [r2, #8]
	cmp	r2, #0
	bne	.L54
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L46
	ldr	r3, .L76+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L51
.L71:
	ldr	r3, [r4, #40]
	cmp	r3, #4
	bne	.L47
	mov	r2, #0
	mov	r3, #1
	str	r6, [r4, #40]
	str	r2, [r4, #48]
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L74
.L46:
	ldr	r3, .L76+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L71
	ldr	r3, .L76+20
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L71
.L51:
	mov	r3, #2
	str	r3, [r4, #40]
.L47:
	add	r5, r5, #1
	str	r5, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L75
.L54:
	mov	r3, #7
	ldr	r2, .L76+16
	ldrh	r2, [r2, #48]
	tst	r2, #16
	str	r3, [r4, #40]
	bne	.L46
.L48:
	mov	r2, #1
	ldr	r3, .L76+16
	str	r2, [r4, #40]
	ldrh	r3, [r3, #48]
	b	.L47
.L73:
	addne	r2, r2, #1
	strne	r2, [r4, #32]
	b	.L39
.L74:
	ldr	r3, .L76+20
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L48
	ldr	r3, .L76+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L51
	b	.L71
.L75:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L48
	b	.L46
.L77:
	.align	2
.L76:
	.word	player
	.word	715827883
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	.LANCHOR0
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L133
	ldr	r3, [r1, #8]
	cmp	r3, #0
	movne	r2, #1
	moveq	r2, #2
	ldr	r0, [r1, #16]
	ldr	r3, .L133+4
	cmp	r0, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r0, [r3, #12]
	str	r2, [r3, #40]
	ldr	r7, [r1, #12]
	ldr	r4, [r3, #24]
	ldr	r6, [r3, #4]
	beq	.L80
	add	r2, r0, r7
	cmp	r2, #924
	blt	.L80
	mov	r8, #1
	mov	r2, #32
	mov	ip, #20
	mov	r5, #0
	mov	r0, #124
	ldr	r7, .L133+8
	add	lr, r4, r4, lsr #31
	ldrh	r7, [r7, #48]
	asr	lr, lr, r8
	rsb	lr, lr, #100
	lsl	lr, lr, #8
	ands	r7, r7, r2
	movne	r7, r5
	str	ip, [r1]
	str	lr, [r3, #8]
	str	ip, [r1, #4]
	str	r8, [r1, #20]
	str	r5, [r1, #12]
	str	r2, [r3, #28]
	str	r0, [r3, #12]
	beq	.L81
.L82:
	ldr	ip, .L133+8
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L85
	add	ip, r0, r4
	add	r5, ip, r7
	cmp	r5, #1024
	blt	.L131
.L85:
	ldr	ip, [r3, #16]
	add	r5, ip, lr
	add	r8, r5, r7
	add	r8, r2, r8, asr #8
	cmp	r8, #255
	bgt	.L88
	add	r2, r2, r5, asr #8
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #10
	ldr	r8, .L133+12
	add	r2, r2, r7
	lsl	r7, r2, #1
	ldrh	r7, [r8, r7]
	cmp	r7, #0
	asr	r7, r5, #8
	bne	.L132
.L88:
	mov	ip, #0
	asr	r7, lr, #8
.L89:
	ldr	lr, [r1, #4]
	cmp	lr, #95
	bgt	.L90
	ldr	r2, [r3]
	cmp	r2, #80
	addgt	lr, lr, #1
	strgt	lr, [r1, #4]
.L90:
	ldr	r2, .L133+16
	ldrh	r5, [r2]
	ldr	r2, [r1, #24]
	tst	r5, #1
	add	r2, r2, #1
	str	r2, [r1, #24]
	beq	.L91
	cmp	r2, #50
	movle	r2, #0
	movgt	r2, #1
	ldr	r5, .L133+20
	ldrh	r5, [r5]
	bics	r2, r2, r5
	movne	r2, #0
	subne	ip, ip, #1488
	strne	r2, [r1, #24]
	subne	ip, ip, #12
.L91:
	add	r4, r4, r6
	add	ip, ip, #100
	cmp	r4, #239
	str	ip, [r3, #16]
	ldr	r2, [r3, #32]
	ble	.L92
	cmp	r2, #0
	ble	.L92
	mov	r2, #0
	str	r2, [r3, #32]
	b	.L93
.L80:
	ldr	r2, .L133+8
	ldrh	r2, [r2, #48]
	tst	r2, #32
	ldr	lr, [r3, #8]
	ldr	r2, [r3, #28]
	bne	.L82
	cmp	r0, #0
	ble	.L82
.L81:
	cmp	r6, #0
	ble	.L82
	asr	r5, lr, #8
	sub	ip, r0, #2
	ldr	r8, .L133+12
	add	r9, ip, r5, lsl #10
	lsl	r9, r9, #1
	ldrh	r9, [r8, r9]
	cmp	r9, #0
	beq	.L82
	add	r5, r5, r2
	sub	r5, r5, #1
	add	ip, ip, r5, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r8, ip]
	cmp	ip, #0
	beq	.L82
	ldr	ip, .L133+24
	ldr	ip, [ip]
	ldr	r5, [r3, #32]
	rsb	ip, ip, #0
	cmp	r5, ip
	ldr	ip, .L133+28
	ldr	ip, [ip]
	subgt	r5, r5, #1
	strgt	r5, [r3, #32]
	cmp	ip, #27
	movgt	ip, #1
	movle	ip, #0
	cmp	r6, #119
	movgt	ip, #0
	cmp	ip, #0
	beq	.L82
	ldr	r5, [r1]
	ldr	ip, [r3, #64]
	sub	r5, r5, #2
	sub	ip, ip, #2
	str	r5, [r1]
	str	ip, [r3, #64]
	b	.L82
.L92:
	cmp	r6, #0
	ble	.L94
.L129:
	add	r0, r0, r2
.L93:
	ldr	r2, [r3, #64]
	sub	r7, r7, lr
	str	r7, [r3]
	sub	r2, r0, r2
	pop	{r4, r5, r6, r7, r8, r9, lr}
	str	r0, [r3, #12]
	str	r2, [r3, #4]
	b	animatePlayer
.L94:
	cmp	r2, #0
	bge	.L129
	mov	r2, #0
	str	r2, [r3, #32]
	b	.L93
.L132:
	add	r2, r2, r4
	lsl	r2, r2, #1
	ldrh	r2, [r8, r2]
	cmp	r2, #0
	strne	r5, [r3, #8]
	bne	.L89
	b	.L88
.L131:
	add	ip, ip, #1
	add	ip, ip, r7
	asr	r5, lr, #8
	ldr	r8, .L133+12
	add	r9, ip, r5, lsl #10
	lsl	r9, r9, #1
	ldrh	r9, [r8, r9]
	cmp	r9, #0
	beq	.L85
	add	r5, r5, r2
	sub	r5, r5, #1
	add	ip, ip, r5, lsl #10
	lsl	ip, ip, #1
	ldrh	ip, [r8, ip]
	cmp	ip, #0
	beq	.L85
	ldr	r5, .L133+24
	ldr	ip, [r3, #32]
	ldr	r5, [r5]
	cmp	ip, r5
	addlt	ip, ip, #1
	strlt	ip, [r3, #32]
	ldr	ip, .L133+28
	ldr	ip, [ip]
	cmp	ip, #30
	bgt	.L85
	ldr	ip, [r1]
	cmp	ip, #784
	bge	.L85
	cmp	r6, #120
	ldrgt	r5, [r3, #64]
	addgt	ip, ip, #2
	addgt	r5, r5, #2
	strgt	ip, [r1]
	strgt	r5, [r3, #64]
	b	.L85
.L134:
	.align	2
.L133:
	.word	.LANCHOR0
	.word	player
	.word	67109120
	.word	collisionMapBitmap
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR1
	.word	screenBlock
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	initVeggies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initVeggies, %function
initVeggies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #50
	mov	r0, #16
	mov	r6, #1
	mov	r2, #0
	mov	r5, #8
	mov	r4, #5
	mov	lr, #20
	ldr	r3, .L139
	add	ip, r3, #1360
.L136:
	str	r1, [r3, #60]
	str	r0, [r3, #28]
	str	r0, [r3, #24]
	str	r6, [r3, #16]
	str	r2, [r3, #20]
	str	r5, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r4, [r3, #52]
	str	lr, [r3, #64]
	add	r3, r3, #68
	cmp	r3, ip
	add	r1, r1, #1
	bne	.L136
	pop	{r4, r5, r6, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	vegetables
	.size	initVeggies, .-initVeggies
	.align	2
	.global	fireVeggie
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireVeggie, %function
fireVeggie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L145
	mov	r4, r0
	mov	lr, pc
	bx	r5
	mov	ip, #10
	mov	r1, #1
	ldr	r2, .L145+4
	smull	r3, r2, r0, r2
	ldr	r6, .L145+8
	add	r2, r2, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	r2, [r6, #28]
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #4
	cmp	r2, #0
	str	r3, [r4, #12]
	str	ip, [r4, #8]
	str	r1, [r4, #56]
	bne	.L142
	mov	r3, #4
	str	r1, [r6, #28]
	str	r3, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L142:
	mov	lr, pc
	bx	r5
	ldr	r3, .L145+12
	ldr	r1, [r4, #52]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r1, [r4, #48]
	str	r3, [r6, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L146:
	.align	2
.L145:
	.word	rand
	.word	-2004318071
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.size	fireVeggie, .-fireVeggie
	.align	2
	.global	drawVeggie
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVeggie, %function
drawVeggie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #56]
	cmp	r2, #0
	bne	drawVeggie.part.0
.L148:
	mov	r1, #512
	ldr	r3, [r0, #60]
	ldr	r2, .L149
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L150:
	.align	2
.L149:
	.word	shadowOAM
	.size	drawVeggie, .-drawVeggie
	.align	2
	.global	updateVeggie
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVeggie, %function
updateVeggie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0, #56]
	cmp	r3, #0
	mov	r4, r0
	ldr	r3, [r0, #8]
	sub	sp, sp, #16
	bne	.L152
	ldr	r2, [r0, #12]
	ldr	r5, .L175
.L153:
	ldm	r5, {r0, r1}
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #4]
	str	r3, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L152:
	mov	r6, r2
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #255
	movgt	r1, #0
	ldr	r5, .L175
	str	r3, [r0, #8]
	ldr	r2, [r5, #8]
	strgt	r1, [r0, #56]
	bgt	.L162
	cmp	r2, #0
	mov	r7, r1
	beq	.L160
	ldr	r2, [r0, #48]
	cmp	r2, #4
	beq	.L160
.L162:
	ldr	r2, [r4, #12]
	b	.L153
.L160:
	ldr	r3, .L175+4
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r3, {r2, r3}
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r8, .L175+8
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L158
	ldr	r3, [r4, #48]
	cmp	r3, #3
	ble	.L174
	cmp	r3, #4
	bne	.L158
	ldr	r1, .L175+12
	mov	r3, #0
	ldr	r2, .L175+16
	ldr	r0, .L175+20
	ldr	r7, .L175+24
	mov	lr, pc
	bx	r7
	mov	r2, #0
	ldr	r3, [r6, #48]
	cmp	r3, #2
	addle	r3, r3, #1
	str	r2, [r4, #56]
	str	r2, [r4, #12]
	strle	r3, [r6, #48]
	cmp	r3, #3
	moveq	r1, #1
	moveq	r2, #0
	movne	r2, #0
	ldr	r3, [r4, #8]
	streq	r1, [r5, #16]
	b	.L153
.L158:
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	b	.L153
.L174:
	mov	r3, #0
	mov	r1, #14848
	ldr	r2, .L175+16
	ldr	r0, .L175+28
	ldr	r6, .L175+24
	mov	lr, pc
	bx	r6
	mov	r2, #0
	ldr	r0, .L175+32
	ldr	r3, [r7, #48]
	ldr	r1, [r0, #4]
	add	r3, r3, #1
	sub	r1, r1, #1
	str	r2, [r4, #56]
	str	r2, [r4, #12]
	str	r1, [r0, #4]
	str	r3, [r7, #48]
	ldr	r3, [r4, #8]
	b	.L153
.L176:
	.align	2
.L175:
	.word	.LANCHOR0
	.word	player
	.word	collision
	.word	22050
	.word	11025
	.word	MarioPowerup
	.word	playSoundB
	.word	Slap_SoundMaster13_49669815
	.word	.LANCHOR1
	.size	updateVeggie, .-updateVeggie
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L185
	bl	updatePlayer
	mov	r4, r8
	ldr	r7, .L185+4
	ldr	r6, .L185+8
	add	r5, r8, #1360
.L178:
	mov	r0, r4
	mov	r2, r7
	mov	r1, r6
	add	r4, r4, #68
	bl	updateVeggie
	cmp	r4, r5
	bne	.L178
	ldr	r4, .L185+12
	ldr	r3, [r4, #32]
	cmp	r3, #49
	add	r3, r3, #1
	strne	r3, [r4, #32]
	beq	.L184
.L177:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L184:
	mov	r2, #0
	ldr	r3, .L185+16
	str	r2, [r4, #32]
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+20
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #3
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	add	r0, r3, r3, lsl #4
	add	r0, r8, r0, lsl #2
	ldr	r2, [r0, #56]
	cmp	r2, #0
	str	r3, [r4, #36]
	bne	.L177
	pop	{r4, r5, r6, r7, r8, lr}
	b	fireVeggie
.L186:
	.align	2
.L185:
	.word	vegetables
	.word	pizzaBar
	.word	healthBar
	.word	.LANCHOR0
	.word	rand
	.word	1717986919
	.size	updateGame, .-updateGame
	.align	2
	.global	initHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth, %function
initHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #5
	mov	r5, #205
	mov	r4, #32
	mov	lr, #16
	mov	ip, #0
	mov	r0, #1
	mov	r1, #4
	ldr	r3, .L189
	str	r5, [r3, #4]
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	r2, [r3]
	str	r2, [r3, #40]
	str	ip, [r3, #48]
	str	r0, [r3, #56]
	str	r1, [r3, #60]
	pop	{r4, r5, lr}
	bx	lr
.L190:
	.align	2
.L189:
	.word	healthBar
	.size	initHealth, .-initHealth
	.align	2
	.global	drawHealthorPizza
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealthorPizza, %function
drawHealthorPizza:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	push	{r4, lr}
	ldr	r2, [r0, #40]
	ldr	r4, [r0, #48]
	ldr	r3, [r0, #60]
	ldr	ip, [r0]
	ldr	lr, .L193
	add	r2, r2, r4, lsl #4
	orr	r0, ip, #16384
	lsl	r4, r3, #3
	lsl	r2, r2, #2
	add	r3, lr, r3, lsl #3
	strh	r0, [lr, r4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L194:
	.align	2
.L193:
	.word	shadowOAM
	.size	drawHealthorPizza, .-drawHealthorPizza
	.align	2
	.global	initPizzaBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPizzaBar, %function
initPizzaBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #5
	mov	r4, #32
	mov	lr, #16
	mov	ip, #6
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L197
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #60]
	str	ip, [r3, #40]
	str	r0, [r3, #48]
	str	r1, [r3, #56]
	pop	{r4, lr}
	bx	lr
.L198:
	.align	2
.L197:
	.word	pizzaBar
	.size	initPizzaBar, .-initPizzaBar
	.global	MAXSPEED
	.global	jumpCount
	.global	frameCount
	.global	randPizzaIndex
	.global	randVeggieIndex
	.global	collisionAdjustment
	.global	hOff
	.global	vOff
	.comm	screenBlock,4,4
	.global	pizzaAchieved
	.global	cheatOn
	.global	inTheDumpster
	.global	livesRemaining
	.comm	pizzaBar,68,4
	.comm	healthBar,68,4
	.comm	vegetables,1360,4
	.comm	player,68,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	MAXSPEED, %object
	.size	MAXSPEED, 4
MAXSPEED:
	.word	3
	.type	livesRemaining, %object
	.size	livesRemaining, 4
livesRemaining:
	.word	4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.type	cheatOn, %object
	.size	cheatOn, 4
cheatOn:
	.space	4
	.type	collisionAdjustment, %object
	.size	collisionAdjustment, 4
collisionAdjustment:
	.space	4
	.type	pizzaAchieved, %object
	.size	pizzaAchieved, 4
pizzaAchieved:
	.space	4
	.type	inTheDumpster, %object
	.size	inTheDumpster, 4
inTheDumpster:
	.space	4
	.type	jumpCount, %object
	.size	jumpCount, 4
jumpCount:
	.space	4
	.type	randPizzaIndex, %object
	.size	randPizzaIndex, 4
randPizzaIndex:
	.space	4
	.type	frameCount, %object
	.size	frameCount, 4
frameCount:
	.space	4
	.type	randVeggieIndex, %object
	.size	randVeggieIndex, 4
randVeggieIndex:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
