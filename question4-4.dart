import 'dart:io';

void main() {
  List<String> days = [];
  int i = 0;
  while (i < 7) {
    stdout.write('Input day: ');
    String? input = stdin.readLineSync();

    if (input == 'x' || input == null || input.isEmpty) {
      days.forEach((days) => print(days));
      break;
    } else {
      days.add(input);
      i++;
    }
  }

  days.forEach((days) => print(days));
}