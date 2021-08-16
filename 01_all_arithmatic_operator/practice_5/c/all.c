

#include <stdio.h>

char cnum1;
char cnum2;
char cadd;
char csub;
char cmul;
char cdiv_q;
char cdiv_r;

short snum1;
short snum2;
short sadd;
short ssub;
short smul;
short sdiv_q;
short sdiv_r;

int inum1;
int inum2;
int iadd;
int isub;
int imul;
int idiv_q;
int idiv_r;

int main()
{
	cnum1 = 10;
	cnum2 = 2;
	cadd = cnum1 + cnum2;
	csub = cnum1 - cnum2;
	cmul = cnum1 * cnum2;
	cdiv_q = cnum1 / cnum2;
	cdiv_r = cnum1 % cnum2;

	printf("\nchar add %hhd and %hhdm is %hhd", cnum1, cnum2, cadd);
	printf("\nchar sub %hhd and %hhd is %hhd", cnum1, cnum2, csub);
	printf("\nchar mul %hhd and %hhd is %hhd", cnum1, cnum2, cmul);
	printf("\nchar quo %hhd and %hhd is %hhd", cnum1, cnum2, cdiv_q);
	printf("\nchar rem %hhd and %hhd is %hhd", cnum1, cnum2, cdiv_r);

	snum1 = 134;
	snum2 = 12;
	sadd = snum1 + snum2;
	ssub = snum1 - snum2;
	smul = snum1 * snum2;
	sdiv_q = snum1 / snum2;
	sdiv_r = snum1 % snum2;

	printf("\nshort add %hd and %hd is %hd", snum1, snum2, sadd);
	printf("\nshort sub %hd and %hd is %hd", snum1, snum2, ssub);
	printf("\nshort mul %hd, and %hd is %hd", snum1, snum2, smul);
	printf("\nshort quo %hd nad %hd is %hd", snum1, snum2, sdiv_q);
	printf("\nshort rem %hd and %hd is %hd", snum1, snum2, sdiv_r);


	inum1 = 1234;
	inum2 = 12;
	iadd = inum1 + inum2;
	isub = inum1 - inum2;
	imul = inum1 * inum2;
	idiv_q = inum1 / inum2;
	idiv_r = inum1 / inum2;

	printf("\nint add %d and %d is %d", inum1, inum2, iadd);
	printf("\nint sub %d and %d is %d", inum1, inum2, isub);
	printf("\nint mul %d and %d is %d", inum1, inum2, imul);
	printf("\nint quo %d and %d is %d", inum1, inum2, idiv_q);
	printf("\nint rem %d and %d is %d", inum1, inum2, idiv_r);
	
	return 0;
}

