#include <stdio.h>
#include <math.h>

double ff(double x) {
    return pow(x,4)+2*pow(x,3)-13*pow(x,2)-14*x+24;
}

double dff(double x) {
    return 4*pow(x,3)+6*pow(x,2) -26*x-14;
}

void Newton () {
    int x0 = 4, iterMax = 100;
    double toler = 1.0000e-05, y, x;
    double fx, dfx, deltax, df, raiz;
    int iter = 0, condErro;
    fx = ff(x0);
    dfx = dff(x0);
    x = x0;
    deltax = 1000;
    df = 1;

    while((fabs(deltax)>toler || fabs(fx)>toler) && df!=0 && iter<iterMax) {
        deltax = fx/dfx;
        x = x + deltax;
        fx = ff(x);
        dfx = dff(x);
        iter++;
    }

    raiz = x;

    if (fabs(deltax)<=toler && abs(fx)<=toler) {
        condErro = 0;
    }
    else {
        condErro = 1;
    }
    printf("Raiz ===> %f\n", raiz);
    printf("condErro ===> %d \n", condErro);
    printf("iter ===> %d \n\n\n", iter);
}

int main() {
    Newton();
    return 0;
}
