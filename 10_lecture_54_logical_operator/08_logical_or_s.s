

.section .rodata

	.msg_p_a:
		.string		"\n a \n"
	.msg_p_b:
		.string		"\n b \n"
	.msg_p_c:
		.string		"\n c \n"
	.msg_p_other:
		.string		"\n other character \n"

.section .data
	
	.globl	num
	.type	num, @object
	.size	num, 4
num:
	.zero	4

.section .text
	
	.globl	_start
	.type	_start, @function
_start:
	# prologue
	pushl	%ebp
	movl	%esp, %ebp

	# code
	movl	$100, num

	movl	num ,%eax
	cmpl	$65, %eax
	je	.print_a

	movl	num, %eax
	cmpl	$97, %eax
	je	.print_a

	movl	num, %eax
	cmpl	$66, %eax
	je	.print_b

	movl	num, %eax
	cmpl	$98, %eax
	je	.print_b

	movl	num ,%eax
	cmpl	$67, %eax
	je	.print_c
	
	movl	num, %eax
	cmpl	$99, %eax
	je	.print_c

	jmp	.print_other

.print_a:

	pushl	$.msg_p_a
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_b:
	pushl	$.msg_p_b
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_c:
	pushl	$.msg_p_c
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_other:
	pushl	$.msg_p_other
	call	printf
	addl	$4, %esp
	jmp	.epilogue

	#epilogue
	.epilogue:
	pushl	$0
	call	exit

