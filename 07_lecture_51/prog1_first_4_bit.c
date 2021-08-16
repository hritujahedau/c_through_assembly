
#include <stdio.h>

#define 	CARRY_BIT 	0X0001
#define 	PARITY_BIT	0X0004

#define		AUXILLARY_BIT 	0X0010
#define 	SIGN_BIT	0X0040
#define 	ZERO_BIT	0X0080

#define 	TRAP_BIT	0X0100
#define 	INTERRUPT_BIT	0X0200
#define		DIRECTION_BIT	0X0400
#define 	OVERFLOW_BIT	0X0800

short num;

int main()
{
	num = CARRY_BIT | PARITY_BIT;
	// num = 0x0001 | 0x0004 = 0x0005

	printf("\n %hX | %hX = %hX \n", CARRY_BIT , PARITY_BIT , num);


	num = AUXILLARY_BIT | SIGN_BIT | ZERO_BIT;
	// num = 0x0010 | 0x0040 | 0x008 = 0x00D0

	printf("\n %hX | %hX | %hX = %hhX \n", AUXILLARY_BIT , SIGN_BIT , ZERO_BIT, num);

	num = TRAP_BIT | INTERRUPT_BIT | DIRECTION_BIT | OVERFLOW_BIT;
	// num = 0x0100 | 0x0200 | 0x0400 | 0x0800 = 0x0F00

	printf("\n %hX | %hX | %hX | %hX = %hX \n", TRAP_BIT , INTERRUPT_BIT , DIRECTION_BIT , OVERFLOW_BIT, num);

	return 0;
}

