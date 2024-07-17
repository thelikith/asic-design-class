#include<stdio.h>
int main()
{
	int n = 30, i = 0, sum = 0;
	for (i=0; i<=n; i++)
	{
		sum = sum + i;
	}
	printf("sum of numbers from 1 to %d is %d\n", n, sum);
	return 0;
}
