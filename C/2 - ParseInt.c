#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <conio.h>
#include <string.h>

 char hexadecimal[1000];
 int dec;

long int hextodec() {
    int i,l,decimal=0,rem,base=1,ascii;
      l=strlen(hexadecimal);
      for(i=l-1;i>=0;i--)
      {
        ascii=hexadecimal[i];
        if(ascii>47&&ascii<58)
            rem=ascii-48;
        else
            rem=ascii-55;
        decimal+=(rem*base);
        base*=16;
      }
      return decimal;
}


char dectohex(int decimal) {
    int quotiente, remainder;
    int i, j = 0;
    quotiente = decimal;
     while (quotiente != 0)
     {
         remainder = quotiente % 16;          //step 1
         if (remainder < 10)
         hexadecimal[j++] = 48 + remainder;   //step 2
         else
         hexadecimal[j++] = 55 + remainder;   //step 3
         quotiente = quotiente / 16;            //step 4
     }
     for (i = j-1; i >= 0; i--)
        printf("%c", hexadecimal[i]);
     return hexadecimal;
}


int main() {
    int n = 810553487;
    dectohex(n);
    long int dec = hextodec();
    printf("\nDEC ====> %d", dec);
    long int numValue = strtol(hexadecimal,NULL,16);
    printf("\n\n\n\n ============>>>>Decimal Valor: % ld ",numValue);
    return 0;
}
