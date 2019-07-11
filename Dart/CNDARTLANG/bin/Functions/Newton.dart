import 'dart:math';

fx(double x) => (pow(x,4))+2*pow(x,3)-13*pow(x,2)-14*x+24;
dfx(double x) => 4*pow(x,3)+6*pow(x,2)-26*x-14;

Newton(double x0, double Toler, int IterMax) {
  double Fx = fx(x0);
  double DFx = dfx(x0);
  double x = x0;
  double Iter = 0;
  double DeltaX = 1000;
  double DF = 1;
  double CondErro;

  while (((DeltaX).abs() > Toler || (Fx).abs() > Toler) && (DF != 0) &&
      (Iter < IterMax)){
    DeltaX = -Fx / DFx;
    x = x + DeltaX;
    Fx = fx(x);
    DFx = dfx(x);
    Iter = Iter + 1;
  }
  double Raiz = x;
  if ((DeltaX).abs() <= Toler && (Fx).abs() <= Toler) {
    CondErro = 0;
  }
  else {
    CondErro = 1;
  }
  return "Raiz = " + Raiz.toString() + ',\n' + "Iter = " + Iter.toString() + ',\n' + "CondErro = " + CondErro.toString();
}