import 'dart:io';

void main() {
  stdout.write("Enter a text: ");
  String input = stdin.readLineSync()!.toLowerCase();

  for (var i in input.runes) {
    if (String.fromCharCode(i) == 'a' || 
       String.fromCharCode(i) == 'e' ||
       String.fromCharCode(i) == 'i' ||
       String.fromCharCode(i) == 'o' ||
       String.fromCharCode(i) == 'u' ) {
        print('${String.fromCharCode(i)} is vowel');
    } else
        print('${String.fromCharCode(i)} is consonant');
  }

  // for (var i in input.runes) {
  //   String result = (String.fromCharCode(i) == 'a' || 
  //                  String.fromCharCode(i) == 'e' ||
  //                  String.fromCharCode(i) == 'i' ||
  //                  String.fromCharCode(i) == 'o' ||
  //                  String.fromCharCode(i) == 'u') 
  //                  ? '${String.fromCharCode(i)} is vowel' : '${String.fromCharCode(i)} is consonant';
    
  //   print(result);
  // }
}