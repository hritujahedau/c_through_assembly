

.section .rodata

	.msg_p_even:
		.string 	"\n Even \n"

	.msg_p_odd:
		.string		"\n Odd\n"

.section .data
	.globl 	num 
	.type	num, @object
	.size 	num, 4
num:	
	.zero	4

.section .text

	.globl 	_start
	.type 	_start, @function
_start:

	# prologue
	pushl 	%ebp
	movl 	%esp, %ebp

	# code
	movl	$22, num
	
	movl 	num, %eax
	movl	$2, %ebx
	cltd
	divl	%ebx
	cmpl	$0, %edx
	jne	.else_block

	pushl	$.msg_p_even
	call	printf
	addl	$4, %esp
	jmp 	.exit_block

	.else_block:
	pushl	$.msg_p_odd
	call	printf
	addl	$4, %esp
	

	# Epilogue
	.exit_block:
	pushl 	$0
	call	exit
