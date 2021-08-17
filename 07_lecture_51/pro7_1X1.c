

#include <stdio.h>

#define 	CARRY_BIT 	0X0001
#define		PARITY_BIT	0X0004

#define		AUXILLARY_BIT 	0X0010
#define		SIGN_BIT	0X0040
#define		ZERO_BIT	0X0080

#define		TRAP_BIT	0X0100
#define		INTERRUPT_BIT	0X0200
#define		DIRECTION_BIT	0X0400
#define		OVERFLOW_BIT	0X0800

short num;

int main()
{
	num = CARRY_BIT | PARITY_BIT;
	printf("\n %hX | %hX = %hX ", CARRY_BIT, PARITY_BIT, num);

	num = CARRY_BIT | AUXILLARY_BIT;
	printf("\n %hx | %hx = %hx ", CARRY_BIT , AUXILLARY_BIT, num);

	num = CARRY_BIT | SIGN_BIT;
	printf("\n %hX | %hX = %hX ", CARRY_BIT , SIGN_BIT, num);

	num = CARRY_BIT | ZERO_BIT;
	printf("\n %hX | %hX = %hX ", CARRY_BIT, ZERO_BIT, num);

	num = CARRY_BIT | TRAP_BIT;
	printf("\n %hX | %hX = %hX ", CARRY_BIT, TRAP_BIT, num);

	num = CARRY_BIT | INTERRUPT_BIT;
	printf("\n %hX | %hX = %hX", CARRY_BIT, INTERRUPT_BIT, num);

	num = CARRY_BIT | DIRECTION_BIT;
	printf("\n %hX | %hX = %hX", CARRY_BIT, DIRECTION_BIT, num);

	num = CARRY_BIT | OVERFLOW_BIT;
	printf("\n %hX | %hX = %hX ", CARRY_BIT, OVERFLOW_BIT, num);

	return 0;
}

