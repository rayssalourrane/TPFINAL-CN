console.time('tempo');
document.write("Parse Int result<br>");
document.write(parseIntF("10000"));
console.timeEnd('tempo');
function getRandom(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

document.write("Quick Sort result<br>");
let array = [];
for (let i = 0 ; i < 10000 ; i++){
    array.push(getRandom(-9,9));
}

console.log(array);
console.time('tempo');
document.write(quickSort(array));
console.timeEnd('tempo');

//2- ParseInt
function parseIntF(string) {
    return parseInt(string);
}
