import 'dart:io';

void main() {
  stdout.write('Enter bill: ');
  int? bill = int.parse(stdin.readLineSync()!);

  stdout.write('Enter amount person: ');
  int? amount = int.parse(stdin.readLineSync()!);

  double avg = bill / amount;
  stdout.write('Average per person: $avg Baht');
}
