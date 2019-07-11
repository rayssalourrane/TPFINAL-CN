import 'dart:math';

matrixZerosGenerator(int li, int lc) => new List<List<int>>.generate(li, (i) => List<int>.generate(lc, (j) => 0));
matrixGenerator(int li, int lc) => new List<List<double>>.generate(li, (i) => List<double>.generate(lc, (j) => new Random().nextDouble()));

randmatstat(int size){
  int n = 5;
  var v = matrixZerosGenerator(size, size);
  var w = matrixZerosGenerator(size, size);

  for(int i = 0 ; i < size ; i++){

    var a = matrixGenerator(n, n);
  print(a);
  }
}