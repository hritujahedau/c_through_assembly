

.section .rodata
	.msg_p_x:
		.string		"\n execute"
	.msg_p_w:
		.string		"\n write"
	.msg_p_wx:
		.string		"\n write and execute"
	.msg_p_r:
		.string		"\n read"
	.msg_p_rx:
		.string		"\n excute and read"
	.msg_p_rw:
		.string		"\n read and write"
	.msg_p_rwx:
		.string		"\n read , write and execute"

	.msg_p_default:
		.string		"\n Invalid Permission"

.section .data
	.globl 	permission
	.type	permission, @object
	.size	permission, 4	
permission:
	.zero	4

.section .text
	.globl 	_start
	.type	_start, @function
_start:
	
	# prologue
	pushl %ebp
	movl	%esp, %ebp

	# code
	movl	$8, permission
	movl	permission, %eax

	cmpl	$1, %eax
	je	.print_x

	movl	permission, %eax
	cmpl	$2, %eax
	je	.print_w

	movl	permission, %eax
	cmpl	$3, %eax
	je	.print_r

	movl	permission, %eax
	cmpl	$4, %eax
	je	.print_xw

	movl	permission, %eax
	cmpl	$5, %eax
	je	.print_xr

	movl	permission, %eax
	cmpl	$6, %eax
	je	.print_rw

	movl	permission, %eax
	cmpl	$7, %eax
	je	.print_xrw

	jmp	.print_invalid
	

.print_x:
	
	pushl	$.msg_p_x
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_w:
	pushl	$.msg_p_w
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_r:
	pushl	$.msg_p_r
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_xr:
	pushl	$.msg_p_rx
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_xw:
	pushl	$.msg_p_wx
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_rw:
	pushl	$.msg_p_rw
	call	printf
	addl	$4, %esp
	jmp 	.epilogue
	
.print_xrw:
	pushl	$.msg_p_rwx
	call	printf
	addl	$4, %esp
	jmp	.epilogue

.print_invalid:
	pushl	$.msg_p_default
	call	printf
	addl	$4, %esp

	#epilogue
	.epilogue:
	pushl	 $0
	call	 exit

