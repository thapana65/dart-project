import 'dart:io';

void main() {
  var arr = [64, 25, 90, 12, 22, 11];

  printArray(arr, arr.length);
  bubbleSort(arr, arr.length);
  print('');
  printArray(arr, arr.length);
}

bubbleSort(arr, n) {
  var i, j, temp;
  var swapped;
  for (i = 0; i < n - 1; i++) {
    swapped = false;
    for (j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }

    if (swapped == false) break;
  }
}

printArray(arr, n) {
  for (int i = 0; i < arr.length; i++) {
    stdout.write('${arr[i]}\t');
  }
}