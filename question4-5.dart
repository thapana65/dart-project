import 'dart:io';

void main() {
    List<String> names = [];
    stdout.write('Input numbers of friends: ');
    int? numOfFriends = int.parse(stdin.readLineSync()!);
    for (int i = 1; i <= numOfFriends; i++) {
        stdout.write('Input friend name: ');
        String? input = stdin.readLineSync();
        
        if (input != null && input.isNotEmpty) {
            names.add(input);
        } else {
            print('Invalid input!');
        }
    }

    stdout.write('Input char to search: ');
    String? search = stdin.readLineSync();

    if (search == null || search.isEmpty) {
        print('Search query cannot be empty!');
        return;
    }

    List<String> searchWithChar = names.where((element) =>
      element.toLowerCase().startsWith(search.toLowerCase())).toList();

    print('Friends whose name starts with "$search": $searchWithChar');
}