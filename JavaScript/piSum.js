
console.time('tempo');
document.write("Pi pela formula de Euler<br>");
document.write(pisum());
console.timeEnd('tempo');

//5- Pi
function pisum() {
    sum = 0.0;
    for (j=1;j<=500;j++){
        sum=0.0;
        for (k=1;k<=10000;k++){
            sum= sum+1.0/(k*k);
        }
    }

    return sum;
}
