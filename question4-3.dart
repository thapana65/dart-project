import 'dart:io';

void main() {
  List<int> bill = [];

  while (true) {
    stdout.write('Input: ');
    String? input = stdin.readLineSync();

    if (input == 'x' || input == null || input.isEmpty) {
      print('Total: ${sumList(bill)}');
      break;
    } else {
      bill.add(int.parse(input));
    }
  }
}

int sumList(List<int> bill) {
  int sum = 0;
  for (int i in bill) {
    sum += i;
  }
  return sum;
}
