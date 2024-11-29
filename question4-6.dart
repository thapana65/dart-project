import 'dart:io';

void main() {
  Map<String, Map<String, String>> persons = {};
  int count = 1;
  stdout.write('Enter person name (e.g., person1):');
  String? personName = stdin.readLineSync();

  if (personName != null) {
    String key = 'person$count';

    stdout.write('Enter age for $personName: ');
    String? age = stdin.readLineSync();

    stdout.write('Enter phone for $personName: ');
    String? phone = stdin.readLineSync();

    stdout.write('Enter address for $personName: ');
    String? address = stdin.readLineSync();

    stdout.write('Enter country for $personName: ');
    String? country = stdin.readLineSync();
    
    persons[key] = {
      'name': personName ?? '',
      'age': age ?? '',
      'phone': phone ?? '',
      'address': address ?? '',
      'country': country ?? ''
    };
  }

  print('Persons Map:');
  print(persons);
}