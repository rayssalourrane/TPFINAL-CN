partition(List quick, int left, int right) {
  var p = quick[left];
  var i = left;
  var j = right + 1;
  while (true) {
    while (quick[++i] < p) {
      if (i >= right) {
        break;
      }
    }
    while (quick[--j] > p) {
      if (j <= left) {
        break;
      }
    }
    if (i >= j) {
      break;
    }
    else {
      var aux = quick[i];
      quick[i] = quick[j];
      quick[j] = aux;
    }
  }
  if (j == left) {
    return j;
  }
  var aux = quick[left];
  quick[left] = quick[j];
  quick[j] = aux;

  return j;
}

sort(List quick, int start, int end) {
  if (start < end) {
    var pivo = partition(quick, start, end);
    sort(quick, start, pivo - 1);
    sort(quick, pivo + 1, end);
  }
  return quick;
}

quickSort(List list) {
  return sort(list, 0, list.length - 1);
}