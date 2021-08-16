
#include <stdio.h>

//char
char cNum1;
char cNum2;
char cAdd;
char cSub;
char cMul;
char cDiv_r;
char cDiv_q;

// short
short sNum1;
short sNum2;
short sAdd;
short sSub;
short sMul;
short sDiv_r;
short sDiv_q;

// int 
int iNum1;
int iNum2;
int iAdd;
int iSub;
int iMul;
int iDiv_r;
int iDiv_q;

// float
float fNum1;
float fNum2;
float fAdd;
float fSub;
float fMul;
float fDiv_r;
//float fDiv_q;

// double 
double dNum1;
double dNum2;
double dAdd;
double dSub;
double dMul;
double dDiv_r;
//double dDiv_q;

int main(void)
{

	// char
	cNum1 = 15;
	cNum2 = 2;
	cAdd = cNum1 + cNum2;
	cSub = cNum1 - cNum2;
	cMul = cNum1 * cNum2;
	cDiv_r = cNum1 / cNum2;
	cDiv_q = cNum1 % cNum2;
	printf("\n\nChar:");
	printf("\nAddition of %hhd and %hhd is %hhd", cNum1, cNum2, cAdd);
	printf("\nSubstraction of %hhd and %hhd is %hhd", cNum1, cNum2, cSub);
	printf("\nMultiplication of %hhd and %hhd is %hhd", cNum1, cNum2, cMul);
	printf("\nQuotient of %hhd and %hhd is %hhd", cNum1, cNum2, cDiv_r);
	printf("\nRemainder of %hhd and %hhd is %hhd", cNum1, cNum2, cDiv_q);
	
	// short
	sNum1 = 15;
	sNum2 = 20;
	sAdd = sNum1 + sNum2;
	sSub = sNum1 - sNum2;
	sMul = sNum1 * sNum2;
	sDiv_r = sNum1 / sNum2;
	sDiv_q = sNum1 % sNum2;
	printf("\n\nShort:");
	printf("\nAddition of %d and %d is %d", sNum1, sNum2, sAdd);
	printf("\nSubstraction of %d and %d is %d", sNum1, sNum2, sSub);
	printf("\nMultiplication of %d and %d is %d", sNum1, sNum2, sSub);
	printf("\nQuotient of %d and %d is %d", sNum1, sNum2, sDiv_r);
	printf("\nRemainder of %d and %d is %d", sNum1, sNum2, sDiv_q);

	// int
	iNum1 = 1280;
	iNum2 = 50;
	iAdd = iNum1 + iNum2;
	iSub = iNum1 - iNum2;
	iMul = iNum1 * iNum2;
	iDiv_r = iNum1 / iNum2;
	iDiv_q = iNum1 % iNum2;
	printf("\n\nInteger:");
	printf("\nAddition of %d and %d is %d", iNum1, iNum2, iAdd);
	printf("\nSubstraction of %d and %d is %d ", iNum1, iNum2, iSub);
	printf("\nMultiplication of %d and %d is %d", iNum1, iNum2, iMul);
	printf("\nQuotient of %d and %d is %d ", iNum1, iNum2, iDiv_r);
	printf("\nRemainder of %d and %d is %d", iNum1, iNum2, iDiv_q);

	// float
	fNum1 = 128.0f;
	fNum2 = 50.0f;
	fAdd = fNum1 + fNum2;
	fSub = fNum1 - fNum2;
	fMul = fNum1 * fNum2;
	fDiv_r = fNum1 / fNum2;
	//fDiv_q = fNum1 % fNum2;
	printf("\n\nFloat:");	
	printf("\nAddition of %f and %f is %f", fNum1, fNum2, fAdd);
	printf("\nSubstraction of %f and %f is %f", fNum1, fNum2, fSub);
	printf("\nMultiplication of %f and %f is %f", fNum1, fNum2, fMul);
	printf("Quotient of %f and %f is %f", fNum1, fNum2, fDiv_r);
	//printf("Remainder of %f anf %f is %f", fNum1, fNum2, fDiv_q);

	// double
	dNum1 = 128.0;
	dNum2 = 50.0;
	dAdd = dNum1 + dNum2;
	dSub = dNum1 - dNum2;
	dMul = dNum1 * dNum2;
	dDiv_r = dNum1 / dNum2;
	//dDiv_q = dNum1 % dNum2;
	printf("\n\nDouble:");
	printf("\nAddition of %lf and %lf is %lf", dNum1, dNum2, dAdd);
	printf("\nSubstraction of %lf and %lf is %lf", dNum1, dNum2, dSub);
	printf("\nMultiplication of %lf and %lf is %lf", dNum1, dNum2, dMul);
	printf("\nQuotient of %lf and %lf is %lf", dNum1, dNum2, dDiv_r);
	//printf("\nRemainder of %lf and %lf is %lf", dNum1, dNum2, dDiv_q); 	
		
	printf("\n");
		
	return 0;
}


