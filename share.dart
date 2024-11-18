import 'dart:io';

void main() {
  stdout.write('Enter bill: ');
  int? bill = int.parse(stdin.readLineSync()!);

  stdout.write('Enter amount person: ');
  int? amount = int.parse(stdin.readLineSync()!);

  var total = (bill / amount).toStringAsFixed(2);
  stdout.write('Average per person: $total Baht');
}
