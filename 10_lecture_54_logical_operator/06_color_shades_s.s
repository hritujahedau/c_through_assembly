

.section .rodata

	.msg_p_black:
		.string		"\n color is black"
	.msg_p_red:
		.string		"\n color is red"
	.msg_p_green:
		.string		"\n color is green"
	.msg_p_blue:
		.string		"\n color is blue"
	.msg_p_white:
		.string		"\n color is white"
	.msg_p_other_color:
		.string		"\n other color\n\n"	

	.msg_p_dark:
		.string		"\n shade is dark\n\n"
	.msg_p_light:
		.string		"\n shade is light\n\n"
	.msg_p_other_shade:
		.string		"\n other shade \n\n"

.section .data
	.globl	color
	.type	color, @object
	.size	color, 4
color:
	.zero	4

	.globl	shade
	.type	shade, @object
	.size	shade, 4
shade:
	.zero	4


.section .text
	.globl	_start
	.type	_start, @function
_start:
	# prologue
	pushl	%ebp
	movl	%esp, %ebp	

	# code
	movl	$6, color
	movl	$1, shade

	movl	color, %eax
	cmpl	$1, %eax
	je	.print_black
	
	movl	color, %eax
	cmpl	$2, %eax
	je	.print_red
	
	movl	color , %eax
	cmpl	$3, %eax
	je	.print_green
	
	movl	color, %eax
	cmpl	$4, %eax
	je	.print_blue

	movl	color, %eax
	cmpl	$5, %eax
	je	.print_white
	
	jmp	.print_other_color

.print_black:
	pushl	$.msg_p_black
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_red:
	pushl	$.msg_p_red
	call	printf
	addl	$4, %esp
	jmp	.print_shade

.print_green:
	pushl	$.msg_p_green
	call	printf
	addl	$4, %esp
	jmp	.print_shade

.print_blue:
	pushl	$.msg_p_blue
	call	printf
	addl	$4, %esp
	jmp	.print_shade

.print_white:
	pushl	$.msg_p_white
	call	printf
	addl	$4, %esp
	jmp 	.epilogue

.print_other_color:
	pushl	$.msg_p_other_color
	call	printf
	addl	$4, %esp
	jmp	.epilogue
	
.print_shade:
	
	movl	shade, %eax
	cmpl	$1, %eax
	je	.print_dark_shade
	
	movl	shade , %eax
	cmpl	$2, %eax
	je	.print_light_shade

	jmp	.print_other_shade

.print_dark_shade:
	pushl	$.msg_p_dark
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_light_shade:
	pushl	$.msg_p_light
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_other_shade:
	pushl 	$.msg_p_other_shade
	call	printf
	addl	$4, %esp
	jmp	.epilogue	

	# epilogue
	.epilogue:
	pushl	$0
	call	exit

