#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int n = 1000;

void quicksort (int a[]) {
    qsort_kernel(&a,1,n+1);
}

void qsort_kernel(int a[], int lo, int hi) {
    int i = lo, j = hi, t;
    int pivor = a[(lo+hi)/2];
    while(i<=j) {
        while (i<=j) {
            while (a[i]<pivor && i<hi) {
                i++;
            }
            while (a[j]>pivor && j>lo) {
                j--;
            }
            if (i<=j) {
                t = a[i];
                a[i] = a[j];
                a[j] = t;
                i++;
                j--;
            }
        }
        if (j>lo) {
            qsort_kernel(a,lo,j);
        }
        if (i<hi) {
            qsort_kernel(a,i,hi);
        }
        return;
    }
}

int main() {
    int i;
    int a[n];
    for(i=0;i<n;i++){
        a[i] = rand()%n;
    }
    for(i=0;i<n;i++){
        printf("%d ",a[i]);
    }
    printf("\n\n");
    quicksort(&a);
    for(i=0;i<n;i++){
        printf("%d ",a[i]);
    }
    printf("\n\n");
    return 0;
}
