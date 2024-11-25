// import 'dart:io';

void main() {
  // stdout.write('Enter num: ');
  // int? num = int.parse(stdin.readLineSync()!);

  int num = 5;

  print('Multiplication Tables $num');
  for (int i = 1; i <= 12; i++) {
    print('$num x $i = ${num * i}');
  }
}
