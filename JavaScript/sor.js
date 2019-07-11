
console.time('tempo');
a = [
   [4,-2,1,3,0],
   [-1,10,0,8,1],
   [-1,1,14,2,4],
   [0,1,10,5,1],
   [2,-3,1,2,20],
];
b= [15,56,74,57,107];
w = 1.6;
toler = 1*Math.E-5;
itermax = 500;
sor(a,b,w,toler,itermax);
console.timeEnd('tempo');

// 7 Relação Sucessiva
function sor(a,b,w,toler,itermax) {
    n=a.length;

    x = [];
    v = [];
    for(i = 0;i < n;i++){
        r = 1/a[i][i];
        for(j = 0;j < n;j++){
            if(i!==j){
                a[i][j] = a[i][j]*r;
            }
        }
        b[i] = b[i]*r;
        x[i] = b[i];
    }

    iter = 0;
    normaREl = 1000;
    while (normaREl > toler && iter < itermax){
        iter = iter +1;
        for(i = 0;i < n;i++){
            soma = 0;
            for(j = 0;j < n;j++){
                if(i!==j){
                    soma = soma+a[i][j]*x[i];
                }
            }
            v[i] = x[i];
            x[i] = w*(b[i]-soma)+(1-w)*x[i];
        }
        normanum = 0;
        normaden = 0;
        for(i = 0;i < n;i++){
            t =Math.abs(x[i]-v[i]);
            if(t>normanum) normanum=t;
            if (Math.abs(x[i]) > normaden) normaden =Math.abs(x[i]);
        }
        normaREl = normanum/normaden;
    }

    if (normaREl <=toler){
        condErro = 0;
    }else{
        condErro = 1;
    }

    document.write("Relação Sucessiva<br>");
    document.write("Iter: "+iter+"<br>");
    document.write("x: "+x+"<br>");
    document.write("normaRel: "+normaREl+"<br>");
    document.write("condErro: "+condErro+"<br>");
}



