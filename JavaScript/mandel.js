console.time('tempo');
document.write("MandelBrot<br>");
document.write(mandelpref());
console.timeEnd('tempo');

// 4-   Mandelbrot
function mandel(z){
    c = z;
    for (i = 0;i < 79; i++){
        if(Math.abs(z)>2){
            return i;
        }
        z = Math.pow(z,2)+c;
    }
    return 80;
}

function mandelpref(){
    m = geraMatriz(26, 21);

    count(m);

    count = 1;

    for (i=-2;i<=0.5;i+=0.1){
        for(j=-1;j<=1;j+=0.1){
            m[count] = mandel(Math.atan2(i,j));
            count++;
        }
    }

    return m;
}

function geraMatriz(t, n) {
    // matriz = [];
    // for(i = 0;i < t;i++){
    //     for(j = 0;j < n;j++){
    //         matriz[i][j] = 0;
    //     }
    // }
    //
    // return matriz;

    linhas = [];

    for(i=0; i<t; i++){

        colunas = [];
        for(j=0;j<n.length; j++){
            colunas.push(0);
        }
        linhas.push(colunas)
    }

    return linhas;
}


