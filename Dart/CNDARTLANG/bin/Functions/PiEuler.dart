pisum() {
  var sum = 0.0;
  for (int j = 1 ; j <= 500 ; j++){
    sum = 0.0;
    for (int k = 1 ; k <= 10000 ; k++){
      sum = sum + 1.0/(k*k);
    }
  }
  return sum;
}

pisunvec() {
  var a = new List<int>.generate(10000, (i) => i + 1);
  double s = 0;

  for (int j = 0 ; j < 500 ; j++) {
    for (int k = 0; k < a.length; k++) {
      s += 1 / (a[k] ^ 2);
    }
  }
  return s;
}