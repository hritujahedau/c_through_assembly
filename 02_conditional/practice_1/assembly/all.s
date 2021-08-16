


.section .rodata
	.msg_p_b:
		.string		"\n Byte \n"
	.msg_p_w:
		.string		"\n Word \n"
	.msg_p_lg:
		.string		"\n Long \n"
	.msg_p_g:
		.string		"\n %d > %d = %d\n"
	.msg_p_l:
		.string		"\n %d < %d = %d\n"
	.msg_p_ge:
		.string		"\n %d >= %d = %d\n"
	.msg_p_le:
		.string		"\n %d <= %d = %d\n"
	.msg_p_e:
		.string		"\n %d == %d = %d \n"
	.msg_p_ne:
		.string		"\n %d != %d = %d\n"

.section .data

	.globl 	xb
	.type	xb, @object
	.size	xb, 1
xb:
	.zero	1

	.globl	yb
	.type	yb, @object
	.size	yb, 1
yb:
	.zero	1

	.globl	xw
	.type 	xw, @object
	.size	xw, 2
xw:
	.zero	2

	.globl	yw
	.type 	yw, @object
	.size	yw, 2
yw:
	.zero	2

	.globl 	xl
	.type 	xl, @object
	.size	xl, 4
xl:
	.zero	4

	.globl	yl
	.type	yl, @object
	.size	yl, 4
yl:
	.zero	4

.section .text
	.globl  _start
	.type	_start, @function

_start:

	pushl	%ebp
	movl	%esp, %ebp

	movb	$100, xb
	movb	$200, yb

	pushl	$.msg_p_b
	call	printf
	add	$4, %esp
	
	movb	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	setg	%al

	movzbl	%al, %eax
	movb 	xb, %bl
	movzbl	%bl, %ebx
	movb	yb, %dl
	movzbl	%dl, %edx

	pushl	%eax
	pushl	%edx
	pushl 	%ebx
	pushl	$.msg_p_g
	call	printf
	addl	$16, %esp
	
	movb	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	setl	%al

	movzbl	%al, %eax
	movb 	xb, %bl
	movb	yb, %dl
	
	movzbl	%bl, %ebx
	movzbl	%dl, %edx

	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl 	$.msg_p_l
	call	printf
	addl	$16, %esp

	movb	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	setge	%al
	
	movzbl	%al, %eax
	movb	xb, %bl
	movzbl	%bl, %ebx
	movb	yb, %dl
	movzbl	%dl, %edx
	
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_ge
	call	printf
	addl	$16, %esp

	movb 	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	setle	%al

	movzbl	%al, %eax	
	movb	xb, %bl
	movzbl	%bl, %ebx
	movb	yb, %dl
	movzbl	%dl, %edx
	
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_le
	call	printf
	addl	$16, %esp

	movb	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	sete	%al

	movzbl	%al, %eax
	movb	xb, %bl
	movzbl	%bl, %ebx
	movb	yb, %dl
	movzbl	%dl, %edx
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_e
	call	printf
	addl	$16, %esp

	movb	xb, %al
	movb	yb, %bl
	cmpb	%al, %bl
	setne	%al
	
	movzbl	%al, %eax
	movb	xb, %bl
	movzbl	%bl, %ebx
	movb	yb, %dl
	movzbl	%dl, %edx

	pushl 	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_ne
	call	printf
	addl	$16, %esp

	#word
	
	movw	$100, xw
	movw	$200, yw

	pushl	$.msg_p_w
	call	printf
	addl	$4, %esp
	
	movw	xw, %ax
	movw	yw, %bx
	cmpw	%bx, %ax
	setg	%al

	movzbl	%al, %eax
	movw	xw, %bx
	movzwl	%bx, %ebx	
	movw	yw, %dx
	movzwl	%dx, %edx

	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_g
	call	printf
	addl	$16, %esp

	movw	xw, %ax
	movw	yw, %bx
	cmpw	%bx, %ax
	setl	%al

	movzbl	%al, %eax
	movw	xw, %bx
	movzwl	%bx, %ebx
	movw	yw, %dx
	movzwl	%dx, %edx

	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_l
	call	printf
	addl	$16, %esp

	movw	xw, %ax
	movw	yw, %bx
	cmpw	%ax, %bx
	setge	%al

	movzbl	%al, %eax
	movw	xw, %bx
	movzwl	%bx, %ebx
	movw	yw, %dx
	movzwl	%dx, %edx
	
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_ge
	call	printf
	addl	$16, %esp

	movw	xw, %ax
	movw	yw, %bx
	cmpw	%ax, %bx
	setle	%al

	movzbl	%al, %eax
	movw	xw, %bx
	movzwl	%bx, %ebx
	movw	yw, %dx
	movzwl	%dx, %edx
	
	pushl	%eax
	pushl	%ebx
	pushl	%edx
	pushl	$.msg_p_le
	call	printf
	addl	$16, %esp

	movw	xw, %ax
	movw	yw, %bx
	cmpw	%ax, %bx
	sete	%al
	
	movzbl	%al, %eax
	pushl	%eax

	movw	xw, %bx
	movzwl	%bx, %ebx
	movw	yw, %dx
	movzwl	%dx, %edx

	pushl 	%eax
	pushl	%edx
	pushl	%ebx
	pushl	$.msg_p_e
	call	printf
	addl	$16, %esp

	movw	xw, %ax
	movw	yw, %bx
	cmpw	%bx, %ax
	setne	%al

	movzbl	%al, %eax
	movw	xw, %bx
	movzwl	%bx, %ebx
	movw	yw, %dx
	movzwl	%dx, %edx

	pushl 	%eax
	pushl	%edx
	pushl 	%ebx
	pushl	$.msg_p_ne
	call	printf
	addl	$16, %esp

	#long

	movl	$100, xl
	movl	$200, yl

	pushl	$.msg_p_lg
	call	printf
	addl	$4, %esp	

	movl	xl, %eax
	movl	yl, %ebx
	cmpl	%ebx, %eax
	setg	%al
	
	movzbl	%al, %eax
	pushl 	%eax
	pushl	yl
	pushl	xl
	pushl	$.msg_p_g
	call	printf
	addl	$16, %esp

	movl	xl, %eax
	movl	yl, %ebx
	cmpl 	%ebx, %eax
	setl	%al
	
	movzbl	%al,%eax
	pushl	%eax
	pushl	yl
	pushl	xl	
	pushl	$.msg_p_l
	call	printf
	addl	$16, %esp

	movl	xl, %eax
	movl	yl, %ebx
	cmpl	%ebx, %eax
	setge	%al

	movzbl	%al, %eax
	pushl	%eax
	pushl	yl
	pushl	xl
	pushl	$.msg_p_ge
	call	printf
	addl	$16, %esp

	movl	xl, %eax
	movl	yl, %ebx
	cmpl	%ebx, %eax
	setle	%al
	
	movzbl	%al, %eax
	pushl	%eax
	pushl	yl
	pushl	xl
	pushl	$.msg_p_le
	call	printf
	addl	$16, %esp

	movl	xl, %eax
	movl	yl, %ebx
	cmpl	%ebx, %eax
	sete	%al

	movzbl	%al, %eax
	pushl 	%eax
	pushl	yl
	pushl	xl
	pushl	$.msg_p_e
	call	printf
	addl	$16, %esp
	
	movl	xl, %eax
	movl	yl, %ebx
	cmpl	%ebx, %eax
	setne	%al

	movzbl	%al, %eax
	pushl	%eax
	pushl	yl
	pushl	xl
	pushl	$.msg_p_ne
	call	printf
	addl	$16, %esp

	pushl 	$0
	call	exit

