#include<stdio.h>
#include<omp.h>
int main()
{
	int n, i, a[100];
	omp_set_num_threads(2);
	printf("\nenter the number of terms to be generated in the fibonacci series:");
	scanf("%d",&n);
	a[0] = 0;
	a[1] = 1;
	#pragma omp parallel
	{
		#pragma omp single
		for(i = 2; i < n; i++)
		{
			a[i] = a[i - 1] + a[i - 2];
			printf("the ID of the thread involved in computing the fibanacci series number %d is: %d\n", i + 1, omp_get_thread_num());
		}
		#pragma omp barrier
		#pragma omp single
		{
			printf("\nthe elements of the fibonacci series are:\n");
			for(i = 0; i < n; i++)
				printf("the number is: %d, the ID of the thread displaying this is: %d\n", a[i], omp_get_thread_num());
		}
	}
	return(0);
}
				
			
			
