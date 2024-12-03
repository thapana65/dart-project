import 'dart:io';

void main() {
  stdout.write('Enter num: ');
  int? num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print('$num is odd');
  }

  // String result = (num % 2 == 0) ? 'even' : 'odd';
  // print(result);
}