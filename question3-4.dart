import 'dart:io';

void main() {
  stdout.write('Input Length: ');
  double? length = double.parse(stdin.readLineSync()!);

  stdout.write('Input Width: ');
  double? width = double.parse(stdin.readLineSync()!);

  calculateArea(length, width);
}

calculateArea(length, width) => print('Area of rectangle: ${length * width}');