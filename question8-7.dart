import 'dart:io';

void main() async {
  stdout.write('Input num1: ');
  int? num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Input num2: ');
  int? num2 = int.parse(stdin.readLineSync()!);

  await getSum(num1, num2);
}

Future<void> getSum(int num1, int num2) async {
  int sum = await sumFunction(num1, num2);
  print('The sum is: $sum');
}

Future<int> sumFunction(int num1, int num2) {
  return Future.delayed(Duration(seconds: 3), () => num1 + num2);
}