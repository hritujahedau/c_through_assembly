
.section .rodata
	.msg_p_pos:
		.string		"\n positive number\n"

	.msg_p_neg:
		.string		"\n negative number\n"
.section .data
	
	.globl 	num
	.type 	num, @object
	.size 	num, 4
num:
	.zero	4

.section .text
	.globl 	_start
	.type	_start, @function
_start:

	# prologue
	pushl	%ebp
	movl	%esp, %ebp
	
	# code

	movl	$-4, num
	
	movl	num, %eax
	
	cmpl 	$0, %eax
	jl	.else_block

	pushl	$.msg_p_pos
	call	printf
	addl	$4, %esp
	jmp 	.exit_block

	.else_block:
	pushl	$.msg_p_neg
	call	printf
	addl	$4, %esp


	# epilogue
	.exit_block:
	pushl	$0
	call	exit

