

#include <stdio.h>

int mood;

int main()
{
	mood = 0;
	if(mood == -2)
	{
		printf("\n Very Sad");
	}else if(mood == -1)
	{
		printf("\n Sad");
	}else if(mood == 0)
	{
		printf("\n Normal not happy not sad");
	}else if(mood == 1)
	{	
		printf("\n Happy");
	}else if(mood == 2)
	{
		printf("\n Very Happy");
	}
	return 0;
}

