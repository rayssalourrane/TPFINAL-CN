#include <stdio.h>
#include <stdlib.h>
int t = 3, n = 3;
float p[3][12], q[6][6], pinversa[12][3], qinversa[6][6];
float a[3][3], b[3][3], c[3][3], d[3][3];
float v[5][5], w[5][5];


void matriz_transposta (int l, int c) {
  int i, j, aux;

  for (i = 0; i < l; i++) {
    for (j = i+1; j < c; j++) {
      if (j != i) {
   aux = pinversa[i][j];
   pinversa[i][j] = pinversa[j][i];
   pinversa[j][i] = aux;
      }
    }
  }

  printf("\n8888888888888\n");
  for (i = 0; i < l; i++) {
    for (j = 0; j < c; j++) {
      printf ("%d ",pinversa[i][j]);
    }
    printf ("\n");
  }
  printf("\n8888888888888\n");

}

void randmatstat() {
    int i, j;
    for (i=0;i<t;i++) {
        for (j=0;j<t;j++) {
            v[i][j] = 0;
            w[i][j] = 0;
        }
    }

    for (i=0;i<t;i++) {
        for (j=0;j<t;j++) {
            a[i][j] = rand()%100;
            b[i][j] = rand()%100;
            c[i][j] = rand()%100;
            d[i][j] = rand()%100;
        }
    }


    printf("\nAAAAAAA\n");
    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            printf("%0.0f ",a[i][j]);
        }
        printf("\n");
    }
    printf("\n\n\nBBBBBBBB\n");
    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            printf("%0.0f ",b[i][j]);
        }
        printf("\n");
    }
    printf("\n\n\nCCCCCCCC\n");
    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            printf("%0.0f ",c[i][j]);
        }
        printf("\n");
    }
    printf("\n\n\nDDDDDDDD\n");
    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            printf("%0.0f ",d[i][j]);
        }
        printf("\n");
    }
    printf("\n");

    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            p[i][j] = a[i][j];
        }
    }

    for (i=0;i<n;i++) {
        for (j=n;j<n*2;j++) {
            p[i][j] = b[i][j-3];
        }
    }

    for (i=0;i<n;i++) {
        for (j=n*2;j<n*3;j++) {
            p[i][j] = c[i][j-6];
        }
    }

    for (i=0;i<n;i++) {
        for (j=n*3;j<n*4;j++) {
            p[i][j] = d[i][j-9];
        }
    }

    printf("\n\n\nPPPPPPP\n");
    for (i=0;i<n;i++) {
        for (j=0;j<n*4;j++) {
            printf("%0.0f\t",p[i][j]);
        }
        printf("\n");
    }

    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            q[i][j] = a[i][j];
        }
    }

    for (i=0;i<n;i++) {
        for (j=n;j<n*2;j++) {
            q[i][j] = b[i][j-3];
        }
    }

    for (i=n;i<n*2;i++) {
        for (j=0;j<n;j++) {
            q[i][j] = c[i-3][j];
        }
    }

    for (i=n;i<n*2;i++) {
        for (j=n;j<n*2;j++) {
            q[i][j] = d[i-3][j-3];
        }
    }


    printf("\n\n\nQQQQQQQ\n");
    for (i=0;i<n*2;i++) {
        for (j=0;j<n*2;j++) {
            printf("%0.0f\t",q[i][j]);
        }
        printf("\n");
    }

    /*
    for (i=0;i<n;i++) {
        for (j=0;j<n;j++) {
            pinversa[i][j] = a[i][j];
        }
    }

    for (i=n;i<n*2;i++) {
        for (j=0;j<n;j++) {
            pinversa[i][j] = b[i-3][j];
        }
    }

    for (i=n*2;i<n*3;i++) {
        for (j=0;j<n;j++) {
            pinversa[i][j] = c[i-6][j];
        }
    }

    for (i=n*3;i<n*4;i++) {
        for (j=0;j<n;j++) {
            pinversa[i][j] = d[i-9][j];
        }
    }


    int k;
    int vet[12];
    for (i=0;i<n;i++) {
        vet[i] = a[0][i];
        vet[i+3] = b[0][i+3];
        vet[i+6] = c[0][i+6];
        vet[i+9] = d[0][i+9];
        for (k=0;k<12;k++) {
            pinversa[k][i] = vet[k];
        }
    }

    */
    matriz_transposta (12,3);

    printf("\n\n\nPP INVERSA\n");


    for (i=0;i<n*4;i++) {
        for (j=0;j<n;j++) {
            printf("%0.0f\t",pinversa[i][j]);
        }
        printf("\n");
    }

    for (i=0;i<n*2;i++) {
        for (j=0;j<n*2;j++) {
            qinversa[j][i] = q[i][j];
        }
    }

    printf("\n\n\nQQ INVERSA\n");
    for (i=0;i<n*2;i++) {
        for (j=0;j<n*2;j++) {
            printf("%0.0f\t",qinversa[i][j]);
        }
        printf("\n");
    }

}

int main() {
    randmatstat();
    return 0;
}
