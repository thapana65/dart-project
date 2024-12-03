import 'dart:io';

void main() {
  Map<String, Map<String, String>> persons = {};
  int count = 1;

  stdout.write('Enter person name (e.g., person..): ');
  String? personName = stdin.readLineSync();

  if (personName != null && personName.isNotEmpty) {
    String key = 'person$count';

    stdout.write('Enter age for $personName: ');
    String? age = stdin.readLineSync();

    stdout.write('Enter phone for $personName: ');
    String? phone = stdin.readLineSync();

    stdout.write('Enter address for $personName: ');
    String? address = stdin.readLineSync();

    stdout.write('Enter country for $personName: ');
    String? country = stdin.readLineSync();

    // เก็บข้อมูลใน map
    persons[key] = {
      'name': personName,
      'age': age ?? '',
      'phone': phone ?? '',
      'address': address ?? '',
      'country': country ?? ''
    };
  }

  stdout.write('Enter length of personName for search: ');
  int? length = int.parse(stdin.readLineSync()!);

  var keysWithNameLength = persons.keys.where((key) {
    var name = persons[key]?['name'];
    return name != null && name.length == length;
  });

  print('Persons with name length $length:');
  if (keysWithNameLength.isEmpty) {
    print('No persons found with the given name length.');
  } else {
    for (var key in keysWithNameLength) {
      print('Key: $key');
      print('Details: ${persons[key]}');
    }
  }
}
