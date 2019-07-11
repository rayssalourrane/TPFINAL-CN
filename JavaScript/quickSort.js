document.write("Quick Sort result<br>");
let array = [];
for (let i = 0 ; i < 10000 ; i++){
    array.push(getRandom(-9,9));
}

console.log(array);
console.time('tempo');
document.write(quickSort(array));
console.timeEnd('tempo');

//3- QuicSort
function quickSort(items) {
    return items.sort();
}
