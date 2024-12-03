import 'dart:io';

void main() async {
  File file = File(sample.csv);

  file.readAsString().then((String contents) {
    print(contents);
  });

  String contents = await file.readAsString();
}