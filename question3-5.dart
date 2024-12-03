import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Input Length: ');
  int? length = int.parse(stdin.readLineSync()!);
  
  generateOTP(length);
}

generateOTP(length) {
  List<int> randomList = List.generate(length, (_) => Random().nextInt(10));
  
  String otp = randomList.join();
  print('OTP: $otp');
}