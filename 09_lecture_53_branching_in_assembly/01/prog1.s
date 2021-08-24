

.section .rodata
	.msg_p_white:
		.string		"\n color is white \n"
	.msg_p_black:
		.string		"\n color is black\n"

.section .data
	.globl 	color
	.type 	color, @object
	.size	color, 4
color:
	.zero	4

.section .text
	.globl 	_start
	.type	_start, @function

_start:
	# prologue
	pushl	%ebp
	movl	%esp, %ebp

	# main code
	
	# color -> 1 --> white
	# color -> 0 --> black

	movl	$0, color
	movl	color, %eax

	cmpl	$0, %eax
	je	.print_black

	pushl	$.msg_p_white
	call	printf
	addl	$4, %esp
	jmp 	.epilogue

	.print_black:
		pushl	$.msg_p_black
		call	printf
		addl	$4, %esp

	#epilogue
	.epilogue:
	pushl	$0
	call	exit

