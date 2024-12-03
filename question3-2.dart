import 'dart:io';

void main() {
  stdout.write('Input num: ');
  int? num = int.parse(stdin.readLineSync()!);

  isEven(num);
}

isEven(int num) {
  if (num % 2 == 0) {
    return print('True');
  } else
    return print('False');
}