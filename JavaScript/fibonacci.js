console.time('Tempo de Execução');
document.write("Valor de entrada: 100<br>");
document.write("Resultado: ");
document.write(fibonacci(100));
console.timeEnd('Tempo de Execução');

//1- Fibonnaci
function fibonacci(num) {
    if (num < 2) return num;

    return fibonacci(num - 1) + fibonacci(num - 2);
}
