#include <stdio.h>
#include <stdlib.h>

void pisum() {
    float j, k;
    float sum = 0.0;
    for(j=1;j<=500;j++) {
        sum = 0.0;
        for (k=1;k<=10000;k++) {
            sum = sum + 1/(k*k);
        }
    }
    printf("%f",sum);
}

int main() {
    pisum();
    return 0;
}
