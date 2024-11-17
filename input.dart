import 'dart:io';

void main() {
  stdout.writeln('Type something');
  int? input = int.parse(stdin.readLineSync()!);
  int re = input * 2;
  stdout.writeln('You typed: $re');
}