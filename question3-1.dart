import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the third number: ');
  int num3 = int.parse(stdin.readLineSync()!);

  maxNumber(num1, num2, num3);
}

maxNumber(int num1, int num2, int num3) => print('The maximum number is: ${max(max(num1, num2), num3)}');