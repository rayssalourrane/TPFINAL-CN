relacSuce(List A, List b, var w, var Toler, var IterMax) {
  var n = A.length;
 // var M = List<List<int>>.generate(26, (i) => List<int>.generate(21, (j) => 0));
  List<double> x = new List(n);
  List<double> v = new List(n);

  double CondErro,  NormaNum = 0, NormaDen = 0, NormaRel, Iter;

  for (int i = 0; i < n; i++) {
    var r = 1 / A[i][i];
    for (int j = 0; j < n; j++) {
      if (i != j) {
        A[i][j] = A[i][j] * r;
      }
    }
    b[i] = b[i] * r;
    x[i] = b[i];
  }

  Iter = 0;
  NormaRel = 1000;

  while (NormaRel > Toler && Iter < IterMax) {
    Iter = Iter + 1;
    for (int i = 0; i < n; i++) {
      double soma = 0;
      for (int j = 0; j < n; j++) {
        if (i != j) {
          soma = soma + A[i][j] * x[j];
        }
      }
      v[i] = x[i];
      x[i] = w * (b[i] - soma) + (1 - w) * x[i];
    }

    for (int i = 0; i < n; i++) {
      var t = (x[i] - v[i]).abs();
      if (t > NormaNum) {
        NormaNum = t;
      }
      if ((x[i].abs()) > NormaDen) {
        NormaDen = (x[i]).abs();
      }
    }
    NormaRel = NormaNum / NormaDen;
  }
  if (NormaRel <= Toler) {
    CondErro = 0;
  } else {
    CondErro = 1;
  }

  return "Iter = " + Iter.toString() + '\n' + "x = " + x.toString() + ',\n' + "NormaRel = " + NormaRel.toString();
}
