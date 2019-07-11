#include <stdio.h>
#include <stdlib.h>

    double iter, x[5];
    double normaRel=1000;
    double A[5][5] = {4,-2,1,3,0,-1,10,0,8,1,-1,1,15,2,4,0,1,10,5,1,2,-3,1,2,20};
    double b[5] = {15,56,74,57,107}, itermax=500;
    double w= 1.6;
    double toler = 1e-5;
    double normaNum;
    double normaDen;
    double t;
    double soma;
    double v[5];
    double condErro;

void relacaosucessiva() {

    int i,j, n = 5; //tamanho de A
    double r;
    for(i=0;i<n;i++){
        r = 1/A[i][i];
        for(j=0;j<n;j++){
            if(i!=j) {
                A[i][j] = A[i][j] * r;
            }
        }
        b[i] = b[i]*r;
        x[i] = b[i];
    }
    iter = 0;
    normaRel = 1000;
    while(normaRel>toler && iter<itermax) {
        iter++;
        for(i=0;i<n;i++){
            soma = 0;
            for(j=0;j<n;j++){
                if(i!=j) {
                    soma = soma + A[i][j]*x[j];
                }
            }
            v[i] = x[i];
            x[i] = w*(b[i]-soma)+(1.00-w)*x[i];
        }
        for(i=0;i<n;i++){
            t = fabs(x[i]-v[i]);
            if (t>normaNum) {
                normaNum = t;
            }
            if (fabs(x[i])>normaDen) {
                normaDen = fabs(x[i]);
            }
        }
        normaRel = normaNum/normaDen;
    }
    if (normaRel<=toler){
        condErro = 0;
    } else {
        condErro = 1;
    }

    printf("Iter: %f\n", iter);
    for(i=0;i<5;i++) {
         printf("%0.2f\n", x[i]);
    }
    printf("normaRel: %f", normaRel);
}
int main() {
    relacaosucessiva();
    return 0;
}
