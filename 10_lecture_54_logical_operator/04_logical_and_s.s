

.section .rodata

	.msg_p_be:
		.string		"\n %d and %d both are even"
	.msg_p_bo:
		.string		"\n %d and %d both are odd"
	.msg_p_1e2o:
		.string		"\n %d is even and %d is odd"
	.msg_p_1o2e:
		.string		"\n %d is odd nad % is even"

.section .data

	.globl	num1
	.type	num1, @object
	.size 	num1, 4
num1:
	.zero	4

	.globl	num2
	.type	num2, @object
	.size	num2, 4
num2:
	.zero	4

.section .text

	.globl	_start
	.type	_start, @function	

_start:

	#prologue
	pushl	%ebp
	movl	%esp, %ebp

	movl	$15, num1
	movl	$31, num2

	# code
	movl	num1, %eax
	movl	$2, %ebx
	cltd
	divl	%ebx
	cmpl	$0, %edx
	jne	.print_1o_check2 	# num1 is is even 2 check for num2

		# here we come because num1 is even
		# check for num2
		movl	num2, %eax
		movl	$2, %ebx
		cltd
		divl	%ebx
		cmpl	$0, %edx
		jne	.print_1e2o

			movl	num1, %eax
			movl	num2, %ebx

			pushl	%ebx
			pushl	%eax
			pushl	$.msg_p_be
			call	printf
			addl	$8, %esp	
			jmp	.epilogue

		# here we come because num1 is even num2 is odd
.print_1e2o:
		movl	num1, %eax
		movl	num2, %ebx

		pushl	%ebx
		pushl	%eax
		pushl	$.msg_p_1e2o
		call	printf
		addl	$8, %esp
		jmp 	.epilogue

.print_1o_check2:

		movl	num2, %eax
		movl	$2, %ebx
		cltd
		divl	%ebx
		cmpl	$0, %edx
		jne	.print_bo
			
			# here we come because num1 is odd and num2 is even
			movl	num1, %eax
			movl	num2, %ebx
			pushl	%ebx
			pushl	%eax
			pushl	$.msg_p_1o2e
			call	printf
			addl	$8, %esp
			jmp 	.epilogue
.print_bo:
		movl	num1, %eax
		movl	num2, %ebx

		pushl	%ebx
		pushl	%eax
		pushl	$.msg_p_bo
		call	printf
		addl	$4, %esp
		jmp	.epilogue


	# epilogue
	.epilogue:
	pushl	$0
	call	exit

