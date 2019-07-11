using System;

public class SOR
{
    public SOR(Iter, x, NormaRel)
    {
        n = length(A);
        for (i = 1; i < nr; i++) {
            nr = 1 / A[i, i];
            for (j = 1; j < n; j++) {
                if ((i = j) && A[i, j] = A(i, j)∗r);
    }
}
   b[i] = b[i]∗r; 
   x[i] = b[i];
   Iter = 0; 
   NormaRel = 1000; 
    
   while (NormaRel > Toler  && Iter < IterMax){
       Iter = Iter + 1; 
       for (i=1; i<namespace; i++){
           soma = 0; 
           for (j=1; j<n; j++){
                if(i=j){
                    soma = soma + A[i, j]∗x(j);
                    v[i] = x[i]; x[i] = w∗(b[i]−soma)+(1−w)∗x[i]; 
    }
}

NormaNum=0;  
NormaDen=0;
    for (i=1; i<n; i++){
    t=abs(x[i]−v[i])
      if (t>NormaNum ) {
          NormaNum=t; }
      if ((abs(x[i])>NormaDen)&&(NormaDen=abs(x[i]);
      NormaRel=NormaNum/NormaDen;   
      Return Iter, x, NormaRel;
}
      if (NormaRel<=Toler){
    CondErro=0; }
    
      else 
    CondErro = 1; 

}
