

.section .rodata
	.msg_p_black:
		.string		"\n color is black\n"
	.msg_p_red:
		.string		"\n color is red \n"
	.msg_p_green:
		.string		"\n color is green\n"
	.msg_p_blue:
		.string		"\n color is blue\n"
	.msg_p_white:
		.string		"\n color is white\n"
	.msg_p_other:
		.string		"\n other color\n"

.section .data
	.globl	color
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
	movl	%esp, %esp
	
	# main code
	movl	$5, color
	movl	color, %eax

	# condition 1
	cmpl 	$0, %eax
	jne	.condition_2

		pushl	$.msg_p_black
		call	printf
		addl	$4, %esp
		jmp 	.epilogue

	.condition_2:
	movl	color, %eax
	cmpl	$1, %eax
	jne	.condition_3

		pushl	$.msg_p_red
		call	printf
		addl	$4, %esp
		jmp	.epilogue

	.condition_3:
	movl	color , %eax
	cmpl	$2, %eax
	jne	.condition_4
		
		pushl	$.msg_p_blue
		call	printf
		addl	$4, %esp
		jmp	.epilogue

	.condition_4:	
	movl	color, %eax
	cmpl	$3, %eax
	jne	.condition_5
		
		pushl	$.msg_p_green
		call	printf
		addl	$4, %esp	
		jmp	.epilogue

	.condition_5:
	movl	color, %eax
	cmpl	$4, %eax
	jne	.false_block
		
		pushl	$.msg_p_white
		call	printf
		addl	$4, %esp
		jmp 	.epilogue

	.false_block:
	pushl	$.msg_p_other
	call	printf
	addl	$4, %esp

	# epilogue
	.epilogue:
	pushl	$0
	call	exit
	


