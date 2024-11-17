void main() {
  var arr = [64, 25, 12, 22, 11];
  print(arr);

  selectionSort(arr);

  print(arr);
}

selectionSort(arr) {
  var n = arr.length;
  for (var i = 0; i < n - 1; i++) {
    var min_idx = i;

    for (var j = i + 1; j < n; j++) {
      if (arr[j] < arr[min_idx]) {
        min_idx = j;
      }
    }

    var temp = arr[i];
    arr[i] = arr[min_idx];
    arr[min_idx] = temp;
  }
}