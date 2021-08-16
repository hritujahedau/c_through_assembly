

#include <stdio.h>

#define 	CARRY_BIT 	0X0001
#define		PARRITY_BIT	0X0004

#define		AUXILLARY_BIT 	0X0010
#define		SIGN_BIT	0X0040
#define		ZERO_BIT	0X0080

#define		TRAP_BIT	0X0100
#define		INTERRUPT_BIT	0X0200
#define		DIRECTION_BIT	0X0400
#define		OVERFLOAW_BIT	0X0800

short num;

int main()
{
	num = INTERRUPT_BIT;

	printf("\n %hX = %hX ", INTERRUPT_BIT, num);

	return 0;
}

