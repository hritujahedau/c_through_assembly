

#include <stdio.h>

int x = 0;
int y = 0;

int main(void)
{
	x = 100;
	y = 200;

	printf("\n %d < %d = %d", x, y , x<y);
	printf("\n %d > %d = %d", x, y, x>y);
	printf("\n %d <= %d = %d", x, y, x<=y);
	printf("\n %d >= %d = %d", x, y, x>=y);
	printf("\n %d == %d = %d", x, y, x==y);
	printf("\n %d != %d = %d", x, y, x!=y);

	x = 200;
	y = 100;

	printf("\n %d < %d = %d", x, y, x < y);
	printf("\n %d > %d = %d", x, y, x > y);
	printf("\n %d <= %d = %d", x, y, x <= y);
	printf("\n %d >= %d = %d", x, y, x >= y);
	printf("\n %d == %d = %d", x, y, x == y);
	printf("\n %d != %d = %d", x, y, x != y);

	return 0;

}
