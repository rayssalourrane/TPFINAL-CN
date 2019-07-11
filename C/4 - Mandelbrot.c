#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <math.h>

int i, j;

double complex z;
double complex cc;
int l = 26, c = 21;
double m[26][21];


int mandel(double rr, double ss) {
    int n;
    z = rr + ss * I;
    cc = z;
    for (n=0;n<79;n++) {
        if (cabs(z)>2.00) {
            return n;
        }
        z = z*z+cc;
    }
    return 80;
}

void mandelperf() {
    int i, j;
    double r, s;
    for (i=0;i<l;i++) {
        for (j=0;j<c;j++) {
            m[i][j] = 0;
        }
    }

    int c1=0,c2=0;
    for (r=-2.0;r<=0.6;r=r+0.1) {
        for (s=-1.0;s<=1.0;s=s+0.1) {
            printf("c1c1c1>>>>>%d\n", c1);
            printf("c2c2c2>>>>>%d\n", c2);
            m[c1][c2] = mandel(r,s);
            c1++;
        }
        c1 = 0;
        c2++;
    }

    for (i=0;i<l;i++) {
        printf("\n");
        for (j=0;j<c;j++) {
            printf("%1.0f\t",m[i][j]);
        }
    }
}

int main() {
    mandelperf();
    return 0;
}
