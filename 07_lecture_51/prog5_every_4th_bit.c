

#include <stdio.h>


#define 	CARRY_FLAG 	0X0001
#define		PARITY_FLAG	0X0004

#define		AUXILLARY_FLAG	0X0010
#define		SIGN_FLAG	0X0040
#define		ZERO_FLAG	0X0080

#define		TRAP_FLAG	0X0100
#define		INETRRUPT_FLAG	0X0200
#define		DIRECTION_FLAG	0X0400
#define		OVERFLOW_FLAG	0X0800

short num;

int main()
{
	num = ZERO_FLAG | OVERFLOW_FLAG;

	printf("\n %hX | %hX = %hX", ZERO_FLAG , OVERFLOW_FLAG, num);

	return 0;
}

