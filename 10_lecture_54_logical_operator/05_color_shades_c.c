

#include <stdio.h>

int color;
int shade;

int main()
{
	color = 6;
	shade = 1;
	if(color == 1)
	{
		printf("\n Black");
	}
	else if(color == 2)
	{
		printf("\n color is red");
		if(shade == 1)
		{
			printf("\n dark");
		}
		else if(shade == 2)
		{
			printf("\n light");
		}
		else
		{
			printf("\n Other Shade");
		}
	}
	else if(color == 3)
	{
		printf("\n color is green");
		if(shade == 1)
		{
			printf("\n dark");
		}
		else if(shade == 2)
		{
			printf("\n light");
		}
		else
		{
			printf("\n other shade");
		}
	}
	else if(color == 4)
	{
		printf("\n color is blue");
		if(shade == 1)
		{
			printf("\n dark");
		}
		else if(shade == 2)
		{
			printf("\n light");
		}
		else
		{
			printf("\n other shade");
		}
	}
	else if(color == 5)
	{	
		printf("\n color white");
	}
	else
	{
		printf("\n other color");
	}

	printf("\n");

	return 0;
}

