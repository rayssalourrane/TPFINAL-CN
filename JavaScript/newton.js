console.time('tempo');
x0 = 4;
toler = 10000*Math.E-5;
itermax = 100;
newton(x0,toler,itermax);
console.timeEnd('tempo');

//8 Método de Newton
function newton(x0,toler,itermax){
    fx = Math.pow(x0,4)+2*Math.pow(x0,3)-13*Math.pow(x0,2)-14*x0+24;
    dfx = 4*Math.pow(x0,3)+6*Math.pow(x0,2)-26*x0-14;

    x= x0;
    iter = 0;
    deltax=1000;
    df=1;
    while((Math.abs(deltax)>toler || Math.abs(fx) > toler) && df!==0 && iter < itermax){
        deltax=-fx/dfx;
        x=x+deltax;

        fx = Math.pow(x0,4)+2*Math.pow(x0,3)-13*Math.pow(x0,2)-14*x0+24;
        dfx = 4*Math.pow(x0,3)+6*Math.pow(x0,2)-26*x0-14;

        iter=iter+1;
    }

    raiz = x;
    if(Math.abs(deltax)<=toler && Math.abs(fx)<=toler){
        conderro = 0;
    }else{
        conderro = 1;
    }

    document.write("Método de Newton<br>");
    document.write("Iter: "+iter+"<br>");
    document.write("raiz: "+raiz+"<br>");
    document.write("condErro: "+conderro+"<br>");
}




