import 'dart:math';
import 'Functions/Fibonacci.dart';
import 'Functions/ParseInt.dart';
import 'Functions/PiEuler.dart';
import 'Functions/QuickSort.dart';
import 'Functions/Mandelbrot.dart';
import 'Functions/MatrixEstatistic.dart';
import 'Functions/RelacSuce.dart';
import 'Functions/Newton.dart';

generateRandIntList(int size) => List<int>.generate(size, (i) =>  new Random().nextInt(100));


main(List<String> arguments) {
  





/*

  DateTime before = DateTime.now();
  fibonacci(10);
  DateTime after = DateTime.now();
  print(after.millisecondsSinceEpoch - before.millisecondsSinceEpoch);*/
/*
  var stopwatch  = new Stopwatch()..start();
  fibonacci(50);
  var elapsed = stopwatch.elapsed;
  print(elapsed.abs());

*/


  /*
  // 1. Fibonacci recursivo
  print(fibonacci(20));
  // 2. Parse Int (converte uma string em um inteiro).
  print(parseInt("2019"));
  // 3. Quicksort.
  print(quickSort(generateRandIntList(50)));
  // 4. Conjunto de Mandelbrot (Fractal).
  print(mandelperf());
  // 5. Geracao do π pela formula de Euler
  print(pisum());
  // 6. Estatıstica em Matriz Randomica.

  // 7. Metodo de Relaxacao Sucessiva (SOR).
  List<List<double>> A  = [[4,-2,1,3,0], [-1,10,0,8,1], [-1,1,15,2,4], [0,1,10,5,1], [2,-3,1,2,2,0]];
  List<double>  b = [15, 56, 74, 57, 107];
  var w = 1.6;
  var Toler = 1e-5;
  var IterMax = 500;
  print(relacSuce(A.toList(), b.toList(), w, Toler, IterMax));
  // 8. Metodo de Newton
  double x0 = 4;
  double TolerN = 1.0000e-05;
  int IterMaxN = 100;
  print(Newton(x0, TolerN, IterMaxN));
  */

}
