

.section .rodata
	.msg_p_ba:
		.string		"\nbyte add %d \n"
	.msg_p_bs:
		.string		"\nbyte sub %d \n"
	.msg_p_bm:
		.string		"\nbyte mul %d \n"
	.msg_p_bd_q:
		.string		"\nbyte quo %d \n"
	.msg_p_bd_r:
		.string		"\nbyte rem %d \n"

	.msg_p_wa:
		.string		"\nword add %d \n"
	.msg_p_ws:
		.string		"\nword sub %d \n"
	.msg_p_wm:
		.string		"\nword mul %d \n"
	.msg_p_wd_q:
		.string		"\nword quo %d\n"
	.msg_p_wd_r:
		.string		"\nword rem %d\n"

	.msg_p_la:
		.string		"\nlong add %d\n"
	.msg_p_ls:
		.string		"\nlong sub %d\n"
	.msg_p_lm:
		.string		"\nlong	mul %d\n"
	.msg_p_ld_q:
		.string		"\nlong quo %d\n"
	.msg_p_ld_r:
		.string		"\nlong	rem %d\n"
	
.section .data
	
	.globl	bnum1
	.type 	bnum1, @object
	.size	bnum1, 1
bnum1:
	.zero	1

	.globl	bnum2
	.type	bnum2, @object
	.size	bnum2, 1
bnum2:
	.zero	1

	.globl 	badd
	.type	badd, @object	
	.size	badd, 1
badd:
	.zero	1

	.globl	bsub
	.type 	bsub, @object
	.size	bsub, 1
bsub:
	.zero	1
	
	.globl	bmul
	.type	bmul, @object	
	.size	bmul, 1
bmul:
	.zero	1

	.globl	bdiv_q
	.type	bdiv_q, @object
	.size	bdiv_q, 1
bdiv_q:
	.zero	1

	.globl	bdiv_r
	.type	bdiv_r, @object
	.size	bdiv_r, 1
bdiv_r:
	.zero	1

	.globl	wnum1
	.type	wnum1, @object
	.size	wnum1, 2
wnum1:
	.zero	2

	.globl	wnum2
	.type	wnum2 , @object
	.size	wnum2, 2
wnum2:
	.zero	2

	.globl 	wadd
	.type	wadd, @object
	.size	wadd, 2
wadd:
	.zero 2

	.globl	wsub
	.type	wsub, @object
	.size	wsub, 2
wsub:
	.zero	2

	.globl	wmul
	.type 	wmul, @object
	.size	wmul, 2
wmul:
	.zero	2

	.globl	wdiv_q
	.type 	wdiv_q, @object
	.size 	wdiv_q, 2
wdiv_q:
	.zero	2


	.globl 	wdiv_r
	.type	wdiv_r, @object
	.size	wdiv_r, 2
wdiv_r:
	.zero	2

	.globl 	lnum1
	.type 	lnum1, @object
	.size	lnum1, 4
lnum1:
	.zero	4

	.globl	lnum2
	.type	lnum2, @object
	.size	lnum2, 4
lnum2:
	.zero	4

	.globl 	ladd
	.type	ladd, @object
	.size	ladd, 4
ladd:
	.zero	4

	.globl	lsub
	.type   lsub, @object
	.size	lsub, 4
lsub:
	.zero 	4

	.globl	lmul
	.type 	lmul, @object
	.size	lmul, 4
lmul:
	.zero	4

	.globl	ldiv_q
	.type 	ldiv_q, @object
	.size 	ldiv_q, 4

ldiv_q:
	.zero	4
	
	.globl 	ldiv_r
	.type 	ldiv_r, @object
	.size	ldiv_r, 4
ldiv_r:
	.zero	4

.section .text

	.globl 	_start
	.type 	_start, @function

_start:
	pushl	%ebp
	movl	%esp, %ebp

	movb 	$20, bnum1
	movb	$2, bnum2

	movb	bnum1, %al
	movb	bnum2, %bl
	addb	%al, %bl
	movb 	%bl, badd

	movb	bnum1, %al
	movb	bnum2, %bl
	subb	%bl, %al
	movb	%al, bsub

	movb 	bnum1, %al
	movb	bnum2, %bl
	mulb	%bl
	movb 	%al, bmul

	movb	bnum1, %al
	movb	bnum2, %bl
	cwtd
	divb	%bl
	movb	%al, bdiv_q
	movb	%ah, bdiv_r

	#print values

	movb	badd, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_ba
	call 	printf
	addl	$8, %esp

	movb	bsub, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bs
	call	printf
	addl	$8, %esp

	movb	bmul, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bm
	call	printf
	addl	$8, %esp	


	movb	bdiv_q, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bd_q
	call	printf
	addl	$8, %esp

	movb	bdiv_r, %al
	movzbl	%al, %eax
	pushl	%eax
	pushl	$.msg_p_bd_r
	call	printf
	addl	$8, %esp

	# word
	
	movw 	$123, wnum1
	movw 	$12, wnum2
	
	movw	wnum1, %ax
	movw	wnum2, %bx
	addw	%ax, %bx
	movw	%bx, wadd

	movw	wnum1, %ax
	movw	wnum2, %bx
	subw	%bx, %ax
	movw	%ax, wsub

	movw	wnum1, %ax
	movw	wnum2, %bx
	mulw	%bx
	movw	%ax, wmul

	movw	wnum1, %ax
	movw	wnum2, 	%bx
	cwtl	
	divw	%bx
	movw	%ax, wdiv_q
	movw	%dx, wdiv_r

	# print
	
	movw	wadd, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_wa
	call	printf
	addl	$8, %esp

	movw	wsub, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl 	$.msg_p_ws
	call	printf
	addl	$8, %esp

	movw	wmul, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_wm
	call	printf
	addl	$8, %esp

	movw	wdiv_q, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_wd_q
	call	printf
	addl	$8, %esp

	movw	wdiv_r, %ax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.msg_p_wd_r
	call	printf
	addl	$8, %esp

	# long

	movl 	$1234, lnum1
	movl	$12, lnum2
	
	movl	lnum1, %eax
	movl	lnum2, %ebx
	addl	%eax, %ebx
	movl	%ebx, ladd

	movl	lnum1, %eax
	movl	lnum2, %ebx
	subl	%ebx, %eax
	movl	%ebx, lsub

	movl	lnum1, %eax
	movl	lnum2, %ebx
	mull	%ebx
	movl	%eax, lmul

	movl	lnum1, %eax
	movl	lnum2, %ebx
	divl	%ebx
	movl	%eax, ldiv_q
	movl	%edx, ldiv_r

	# print values

	movl	ladd, %eax
	pushl	%eax
	pushl 	$.msg_p_la
	call	printf
	addl	$8, %esp

	movl	lsub, %eax
	pushl 	%eax	
	pushl	$.msg_p_ls
	call	printf
	addl	$8, %esp

	movl	lmul, %eax
	pushl 	%eax
	pushl 	$.msg_p_lm
	call	printf
	addl	$8, %esp

	movl	ldiv_q, %eax
	pushl	%eax
	pushl	$.msg_p_ld_q
	call	printf
	addl	$8, %esp

	movl	ldiv_r, %eax
	pushl	%eax
	pushl	$.msg_p_ld_r	
	call	printf
	addl	$8, %esp

	pushl	$0
	call	exit

