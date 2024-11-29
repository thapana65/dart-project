import 'dart:io';

void main() {
  List<String> days = [];
  stdout.write('Input number of day: ');
  int? numOfDays = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= numOfDays) {
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