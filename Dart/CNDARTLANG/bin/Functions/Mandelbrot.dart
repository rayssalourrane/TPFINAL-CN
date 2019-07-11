import 'dart:io';

import 'package:quantity/number.dart';
import 'package:quantity/quantity.dart';

mandel(var z) {
  var n = 0;
  var c = z;
  for (n = 0; n <= 79; n++) {
    var res = z.abs();
    print(res);
    if (res > 2) {
      return 0;
    }
    z = z ^ 2 + c;
  }
  n = 80;
  return n;
}

mandelperf() {
  var M = List<List<int>>.generate(26, (i) => List<int>.generate(21, (j) => 0));
  var counti = 0, countj = 0;
  double i = -1.0;
  for (var r = -2.0; r <= 0.5; r += 0.1) {
    //for (var i = -1.0; i <= 1.0; i += 0.10) {
    while(i <= 1.0){
      Real R = numToNumber(r);
      Real RI = numToNumber(i);
      Imaginary I = Imaginary.constant(RI);
     // var teste = Complex(R,I);
     // print(mandel(Complex(R,I)));
      M[counti][countj] =  mandel(Complex(R,I));
      countj++;
      i = double.parse((i + (0.1)).toStringAsFixed(5));
    }
    counti++;
    countj = 0;
  }
  return M;
}
