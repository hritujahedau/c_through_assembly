

#include <stdio.h>

// char
char cnum1;
char cnum2;
char cadd;
char csub;
char cmul;
char cdiv_q;
char cdiv_r;

// short
short snum1;
short snum2;
short sadd;
short ssub;
short smul;
short sdiv_r;
short sdiv_q;

// int
int inum1;
int inum2;
int iadd;
int isub;
int imul;
int idiv_q;
int idiv_r;

int main(void)
{
	cnum1 = 15;
	cnum2 = 10;
	
	cadd = cnum1 + cnum2;
	csub = cnum1 - cnum2;
	cmul = cnum1 * cnum2;
	cdiv_q = cnum1 / cnum2;
	cdiv_r = cnum1 % cnum2;
		
	printf("\nbyte addition of %hhd and %hhd is %hhd", cnum1, cnum2, cadd);
	printf("\nbyte substraction of %hhd and %hhd is %hhd", cnum1, cnum2, csub);
	printf("\nbyte multiplication of %hhd and %hhd is %hhd", cnum1, cnum2, cmul);
	printf("\nbyte quo of %hhd and %hhd is %hhd", cnum1, cnum2, cdiv_q);
	printf("\nbyte rem of %hhd and %hhd is %hhd", cnum1, cnum2, cdiv_r);

	snum1 = 150;
	snum2 = 20;
	
	sadd = snum1 + snum2;
	ssub = snum1 - snum2;
	smul = snum1 * snum2;
	sdiv_q = snum1 / snum2;
	sdiv_r = snum1 % snum2;

	printf("\nshort addition of %hd and %hd is %hd", snum1, snum2, sadd);
	printf("\nshort sub of %hd and %hd is %hd ", snum1, snum2, ssub);
	printf("\nshort mul of %hd and %hd is %hd ", snum1, snum2, smul);
	printf("\nshort quo of %hd and %hd is %hd", snum1, snum2, sdiv_q);
	printf("\nshort rem of %hd and %hd is %hd", snum1, snum2, sdiv_r);


	inum1 = 1234;
	inum2 = 45;
	iadd = inum1 + inum2;
	isub = inum1 - inum2;
	imul = inum1 * inum2;
	idiv_q = inum1 / inum2;
	idiv_r = inum1 % inum2;
	
	printf("\nint addition of %d and %d is %d", inum1, inum2, iadd);
	printf("\nint sub of %d and %d is %d", inum1, inum2, isub);
	printf("\nint mul of %d and %d is %d", inum1, inum2, imul);
	printf("\nint quo of %d and %d is %d", inum1, inum2, idiv_q);
	printf("\nint rem of %d and %d is %d", inum1, inum2, idiv_r);

	return 0;
}

