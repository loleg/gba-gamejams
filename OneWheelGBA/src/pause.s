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
	.file	"pause.c"
	.text
	.align	2
	.global	initPause
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r9, #104
	mov	r1, #32
	mov	r2, #0
	mov	r0, #64
	mov	r4, #4
	mov	lr, #1
	mov	ip, #8
	mov	r8, #100
	mov	r7, #101
	mov	r6, #144
	mov	r5, #102
	ldr	r3, .L4+20
	str	r9, [r3, #4]
	str	r8, [r3, #56]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r0, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r4, [r3, #44]
	str	lr, [r3, #52]
	str	ip, [r3, #48]
	ldr	r3, .L4+24
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r0, [r3]
	str	r2, [r3, #36]
	str	r4, [r3, #44]
	str	lr, [r3, #52]
	str	ip, [r3, #48]
	str	r2, [r3, #32]
	str	r7, [r3, #56]
	ldr	r3, .L4+28
	str	r0, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #36]
	str	r4, [r3, #44]
	str	lr, [r3, #52]
	str	ip, [r3, #48]
	str	r2, [r3, #32]
	str	r6, [r3, #4]
	str	r5, [r3, #56]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	dancer1
	.word	dancer2
	.word	dancer3
	.size	initPause, .-initPause
	.align	2
	.global	initDancers
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDancers, %function
initDancers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1
	push	{r4, lr}
	beq	.L12
	cmp	r0, #2
	bne	.L13
	mov	r2, #64
	mov	r3, #101
	str	r2, [r1, #4]
	str	r3, [r1, #56]
.L8:
	mov	r2, #32
	mov	r4, #64
	mov	r3, #0
	mov	lr, #4
	mov	ip, #1
	mov	r0, #8
	str	r4, [r1]
	str	lr, [r1, #44]
	str	r2, [r1, #24]
	str	r2, [r1, #28]
	str	r3, [r1, #36]
	str	r3, [r1, #32]
	str	ip, [r1, #52]
	str	r0, [r1, #48]
	pop	{r4, lr}
	bx	lr
.L13:
	cmp	r0, #3
	moveq	r2, #144
	moveq	r3, #102
	streq	r2, [r1, #4]
	streq	r3, [r1, #56]
	b	.L8
.L12:
	mov	r2, #104
	mov	r3, #100
	str	r2, [r1, #4]
	str	r3, [r1, #56]
	b	.L8
	.size	initDancers, .-initDancers
	.align	2
	.global	drawAll
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAll, %function
drawAll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L16
	ldr	r0, [r1, #44]
	ldr	r2, [r1, #56]
	ldr	ip, [r1, #36]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L16+4
	ldr	r5, [r1]
	ldr	r7, .L16+8
	add	ip, ip, r0, lsl #5
	lsl	r0, r2, #3
	ldr	lr, [r1, #4]
	ldr	r1, [r7, #44]
	strh	r5, [r3, r0]	@ movhi
	ldr	r0, [r7, #36]
	ldr	r6, .L16+12
	ldr	r4, .L16+16
	add	r0, r0, r1, lsl #5
	add	r2, r3, r2, lsl #3
	orr	lr, lr, r6
	lsl	r5, r0, #2
	ldr	r0, [r7, #56]
	ldr	r8, [r4, #44]
	lsl	ip, ip, #2
	strh	lr, [r2, #2]	@ movhi
	ldm	r7, {r1, lr}
	strh	ip, [r2, #4]	@ movhi
	lsl	r2, r0, #3
	strh	r1, [r3, r2]	@ movhi
	ldr	r1, [r4, #36]
	ldr	r2, [r4, #56]
	ldr	ip, [r4, #4]
	add	r0, r3, r0, lsl #3
	ldr	r4, [r4]
	orr	lr, lr, r6
	add	r1, r1, r8, lsl #5
	strh	lr, [r0, #2]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	orr	ip, ip, r6
	lsl	r0, r2, #3
	lsl	r1, r1, #2
	add	r2, r3, r2, lsl #3
	strh	r4, [r3, r0]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	dancer1
	.word	shadowOAM
	.word	dancer2
	.word	-32768
	.word	dancer3
	.size	drawAll, .-drawAll
	.align	2
	.global	drawDancer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDancer, %function
drawDancer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	push	{r4, lr}
	ldr	r2, [r0, #36]
	ldr	r4, [r0, #44]
	ldr	r3, [r0, #56]
	ldr	ip, .L20
	ldr	lr, [r0]
	add	r2, r2, r4, lsl #5
	lsl	r0, r3, #3
	lsl	r2, r2, #2
	add	r3, ip, r3, lsl #3
	strh	lr, [ip, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	shadowOAM
	.size	drawDancer, .-drawDancer
	.global	__aeabi_idivmod
	.align	2
	.global	updatePause
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePause, %function
updatePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L27
	ldr	r3, .L27+4
	ldr	r4, [r7, #32]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L23
	ldr	r0, [r7, #36]
	ldr	r3, .L27+8
	ldr	r1, [r7, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r7, #36]
.L23:
	ldr	r6, .L27+12
	ldr	r3, .L27+4
	ldr	r5, [r6, #32]
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	add	r4, r4, #1
	cmp	r5, r3, lsl #1
	str	r4, [r7, #32]
	bne	.L24
	ldr	r0, [r6, #36]
	ldr	r3, .L27+8
	ldr	r1, [r6, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r6, #36]
.L24:
	ldr	r7, .L27+16
	ldr	r3, .L27+4
	ldr	r4, [r7, #32]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	add	r5, r5, #1
	cmp	r4, r3, lsl #1
	str	r5, [r6, #32]
	bne	.L25
	ldr	r0, [r7, #36]
	ldr	r3, .L27+8
	ldr	r1, [r7, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r7, #36]
.L25:
	add	r4, r4, #1
	str	r4, [r7, #32]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	dancer1
	.word	1717986919
	.word	__aeabi_idivmod
	.word	dancer2
	.word	dancer3
	.size	updatePause, .-updatePause
	.align	2
	.global	animateDancer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateDancer, %function
animateDancer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L32
	ldr	r4, [r0, #32]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	mov	r5, r0
	bne	.L30
	ldr	r0, [r0, #36]
	ldr	r3, .L32+4
	ldr	r1, [r5, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L30:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateDancer, .-animateDancer
	.comm	dancer3,60,4
	.comm	dancer2,60,4
	.comm	dancer1,60,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
