import 'dart:io';

void main() {
  stdout.write('Input Length: ');
  String? lengthInput = stdin.readLineSync();
  double length = (lengthInput != null && lengthInput.isNotEmpty) 
      ? double.parse(lengthInput) 
      : 1.0;

  stdout.write('Input Width: ');
  String? widthInput = stdin.readLineSync();
  double width = (widthInput != null && widthInput.isNotEmpty) 
      ? double.parse(widthInput) 
      : 1.0;

  calculateArea(length, width);
}

calculateArea([double length = 1, double width = 1]) => print('Area of rectangle: ${length * width}');