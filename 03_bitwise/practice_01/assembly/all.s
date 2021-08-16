

.section .rodata
	.msg_p_and:
		.string		"\n %d & %d = %d\n"
	.msg_p_or:
		.string		"\n %d | %d = %d\n"
	.msg_p_xor:
		.string		"\n %d ^ %d = %d\n"
	.msg_p_not:
		.string		"\n x = %d, x = ~ %d \n"
	.msg_p_left:
		.string		"\n %d << %d = %d \n"
	.msg_p_right:
		.string		"\n %d >> %d = %d \n"

.section .data

	.comm	num1, 4, 4
	.comm	num2, 4, 4


.section .text

	.globl	_start
	.type 	_start, @function

_start:

	pushl 	%ebp
	movl	%esp, %ebp

	movl	$0xF0F0F0F0, num1
	movl	$0x0F0F0F0F, num2

	movl	num1, %eax
	movl	num2, %ebx

	andl	%ebx, %eax
	
	pushl	%eax
	pushl	num2
	pushl	num1
	pushl	$.msg_p_and
	call	printf
	addl	$16, %esp

	pushl 	$0
	call	exit

