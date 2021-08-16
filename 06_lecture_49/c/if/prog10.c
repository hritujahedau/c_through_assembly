

#include<stdio.h>

int num;

int main()
{
	num = 80;
	if(num < 35)
	{
		printf(" F grade");	
	}
	if(num >= 35 && num < 60)
	{
		printf("\n C grade");
	}
	if(num >= 60 && num < 75)
	{
		printf("\n B grade");
	}
	if(num >= 75 && num <= 100)
	{
		printf("\n A grade");
	}
	if(num > 100)
	{
		printf("\n Not valid marks");
	}
	
}

