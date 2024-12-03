import 'dart:io';

void main() {
  Map<String, Map<String, String>> persons = {};
  int count = 1;
  int? choice;

  do {
    displaymenu();
    stdout.write('Choose menu: ');
    choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("You selected Add.");
      while (true) {
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
        } else if (personName == null || personName.isEmpty) {
          break;
        }
      }
    } else if (choice == 2) {
      print("You selected Remove.");
    } else if (choice == 3) {
      print("You selected View.");
    } else if (choice == 4) {
      print("Exiting program...");
    } else {
      print("Invalid choice, please try again.");
    }
  } while (choice != 4);
}

displaymenu() {
  print('1 - Add');
  print('2 - Remove');
  print('3 - View');
  print('4 - Exit');
}
