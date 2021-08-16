
.section .rodata
	.msg_p_ba:
		.string 	"\nbyte add = %hhd\n"
	
	.msg_p_bs:
		.string		"\nbyte sub = %hhd\n"
	
	.msg_p_bm:
		.string		"\nbyte mul = %hhu\n"

	.msg_p_bd_q:
		.string		"\nbyte quo = %hhd\n"

	.msg_p_bd_r:
		.string		"\nbyte rem = %hhd\n"

	.msg_p_sa:
		.string 	"\nsort add = %hd\n"
	
	.msg_p_ss:
		.string 	"\nsort sub = %hd\n"

	.msg_p_sm:
		.string 	"\nsort mul = %hd\n"

	.msg_p_sd_q:
		.string 	"\nsort quo = %hd\n"
	
	.msg_p_sd_r:
		.string 	"\nsort rem = %hd\n"
	
	.msg_p_ia:
		.string 	"\nint add = %d\n"

	.msg_p_is:
		.string 	"\nint sub = %d\n"

	.msg_p_im:
		.string		"\nint mul = %d\n"

	.msg_p_id_q:
		.string		"\nint quo = %d\n"

	.msg_p_id_r:
		.string 	"\nint rem = %d\n"
.section .data
	.globl 	bnum1;
	.type 	bnum1, @object
	.size 	bnum1, 1
bnum1:
	.zero 	1

	.globl 	bnum2
	.type	bnum2, @object
	.size 	bnum2, 1
bnum2:
	.zero 	1

	.globl 	badd;
	.type 	badd, @object
	.size 	badd, 1
badd:
	.zero 	1

	.globl 	bsub
	.type	bsub, @object
	.size 	bsub, 1
bsub:
	.zero 	1
	

	.globl 	bmul
	.type 	bmul , @object
	.size	bmul, 1
bmul:
	.zero 	1

	.globl 	bdiv_q
	.type 	bdiv_q, @object
	.size 	bdiv_q, 1
bdiv_q:
	.zero 	1

	.globl 	bdiv_r
	.type	bdiv_r, @object
	.size	bdiv_r, 1
bdiv_r:
	.zero	1

	# short

	.globl 	snum1
	.type 	snum1, @object
	.size 	snum1, 2
snum1:
	.zero	2

	.globl 	snum2
	.type 	snum2, @object
	.size	snum2, 2
snum2:
	.zero	2

	.globl 	sadd
	.type	sadd, @object
	.size 	sadd, 2
sadd:
	.zero 2

	.globl 	ssub
	.type 	ssub, @object
	.size 	ssub, 2
ssub:
	.zero 	2

	.globl 	smul
	.type 	smul, @object
	.size 	smul, 2
smul:
	.zero	2
	
	.globl 	sdiv_q
	.type 	sdiv_q, @object
	.size 	sdiv_q, 2
sdiv_q:
	.zero	2
	
	.globl 	sdiv_r
	.type	sdiv_r, @object
	.size	sdiv_r, 2
sdiv_r:
	.zero 	2

	#int
	
	.globl 	inum1
	.type 	inum1, @object
	.size 	inum1, 4
inum1:
	.zero 	4

	.globl 	inum2
	.type 	inum2, @object
	.size 	inum2, 4
inum2:
	.zero 	4

	.globl 	iadd
	.type 	iadd, @object
	.size 	iadd, 4
iadd:
	.zero	4

	.globl 	isub
	.type 	isub, @object
	.size	isub, 4
isub:
	.zero	4

	.globl	imul
	.type 	imul, @object
	.size	imul, 4
imul:
	.zero	4

	.globl 	idiv_q
	.type 	idiv_q, @object
	.size 	idiv_q, 4
idiv_q:
	.zero	4

	.globl 	idiv_r
	.type	idiv_r, @object
	.size 	idiv_r, 4
idiv_r:
	.zero	4
	
.section .text

	.globl 	_start
	.type 	_start, @function
_start:
	
	# prologue
	pushl 	%ebp
	movl	%esp, %ebp

	# main code
	
	#value assignments
	
	movb 	$4, bnum1
	movb 	$5, bnum2
	
	# byte add
	movb 	bnum1, %al
	movb 	bnum2, %bl
	addb	%al, %bl
	movb 	%bl, badd

	# byte sub
	movb 	bnum1, %al
	movb 	bnum2, %bl
	subb	%al, %bl
	movb	%bl, bsub
		
	# byte mul
	movb	bnum1, %al
	movb	bnum2, %bl
	mulb	%bl
	movb	%al, bmul
	
	movb	$100, bnum1
	movb	$7, bnum2

	# byte div
	movb 	bnum1, %al;
	movb 	bnum2, %bl;
	cbtw
	divb	%bl
	movb	%al, bdiv_q
	movb	%ah, bdiv_r

	# print

	movb	badd, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl 	$.msg_p_ba
	call 	printf
	addl 	$8, %esp

	movb	bsub, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bs
	call 	printf
	addl 	$8, %esp

	movb	bmul, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bm
	call 	printf
	addl	$8, %esp

	movb 	bdiv_q, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bd_q
	call 	printf
	addl	$8, %esp

	movb	bdiv_r, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bd_r
	call 	printf
	addl	$8, %esp
	
	# word (short)
	movw	$1234, snum1
	movw	$14, snum2
	
	movw	snum1, %ax
	movw	snum2, %bx
	addw	%ax, %bx
	movw 	%bx, sadd

	movw	snum1, %ax
	movw 	snum2, %bx
	subw	%ax, %bx
	movw	%bx, ssub

	movw	snum1, %ax
	movw	snum2, %bx
	mulw	%bx
	movw	%ax, smul
	
	movw	snum1, %ax
	movw	snum2, %bx
	cwtd
	divw	%bx
	movw	%ax, sdiv_q
	movw	%dx, sdiv_r
	
	#print
	movw 	sadd, %ax
	movzwl	%ax, %eax
	pushl 	%eax
	pushl	$.msg_p_sa
	call 	printf
	addl	$8, %esp

	movw	ssub, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_ss
	call 	printf
	addl	$8, %esp
	
	movw	smul, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_sm
	call	printf
	addl	$8, %esp

	movw	sdiv_q, %ax
	movzwl	%ax, %eax
	pushl 	%eax
	pushl	$.msg_p_sd_q
	call	printf
	addl	$8, %esp


	movw	sdiv_r, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_sd_r
	call 	printf
	addl	$8, %esp

	# long operation
	movl	$12, inum1
	movl	$5, inum2

	movl	inum1, %eax
	movl	inum2, %ebx
	addl	%eax, %ebx
	movl	%ebx, iadd

	movl	inum1, %eax
	movl	inum2, %ebx
	subl	%eax, %ebx
	movl	%ebx, isub

	movl	inum1, %eax
	movl	inum2, %ebx
	mull	%ebx
	movl	%eax, imul

	movl	inum1, %eax
	movl	inum2, %ebx
	divl	%ebx
	movl	%eax, idiv_q
	movl	%edx, idiv_r

	# print
	pushl	iadd
	pushl	$.msg_p_ia
	call	printf
	addl	$8, %esp

	pushl	isub
	pushl	$.msg_p_is
	call 	printf
	addl	$8, %esp

	pushl	imul
	pushl	$.msg_p_im
	call	printf
	addl	$8, %esp

	pushl	idiv_q
	pushl	$.msg_p_id_q
	call	printf
	addl	$8, %esp

	pushl	idiv_r
	pushl	$.msg_p_id_r
	call	printf
	addl	$8, %esp

	pushl	$0
	call 	exit

