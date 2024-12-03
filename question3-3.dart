import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  int? age = int.parse(stdin.readLineSync()!);

  createUser(name, age);
}

createUser(name, age, [isActive = 'true']) => print('{"name":$name}, "age":$age, "isActive":$isActive}');