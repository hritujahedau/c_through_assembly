


.section .rodata
	.msg_p_less_if:
		.string		"\n in if %d is less than %d"

	.msg_p_less_else:
		.string		"\n in else %d is less than %d"

.section .data
	.globl 	num1
	.type 	num1, @object
	.size	num1, 4
num1:
	.zero	4

	.globl	num2
	.type 	num2, @object
	.size	num2, 4
num2:
	.zero	4

.section .text
	
	.globl 	_start
	.type	_start, @function

_start:
	# prologue
	pushl	%ebp
	movl	%esp, %ebp

	# code
	movl	$20, num1
	movl	$10, num2

	movl	num1, %eax
	movl	num2, %ebx

	cmpl	%ebx, %eax
	jb	.else_block

	movl	num1, %eax
	movl	num2, %ebx
	
	pushl	%eax
	pushl	%ebx
	pushl	$.msg_p_less_if
	call	printf
	addl	$16, %esp
	jmp	.exit_block

	.else_block:
	movl	num1, %eax
	movl	num2, %ebx
	pushl	%ebx
	pushl	%eax
	pushl	$.msg_p_less_else
	call	printf
	addl	$16, %esp

	#epilogue
	.exit_block:
	pushl	$0
	call	exit

