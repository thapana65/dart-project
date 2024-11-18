import 'dart:io';

void main() {
  var arr = [12, 11, 13, 5, 6];

  printArray(arr);
  insertionSort(arr);
  print('');
  printArray(arr);
}

insertionSort(arr) {
  for (int i = 0; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

printArray(arr) {
  for (int i = 0; i < arr.length; i++) {
    stdout.write('${arr[i]}\t');
  }
}