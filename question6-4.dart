class Animal {
  String? name;
  String? color;

  Animal({ this.name, this.color });

  void show() {
    print('Name: $name');
    print('Color: $color');
  }
}

class Cat extends Animal {
  String? sound;
  String? species;

  Cat({ String? name, String? color, this.sound, this.species })
        : super(name: name, color: color);

  @override
  void show() {
    super.show();
    print('Sound: $sound');
    print('Species: $species');
    print('---------------');
  }
}

void main() {
  Cat cat1 = Cat(name: 'Khawnoew', color: 'Grey', sound: 'Meow', species: 'Cat');

  print('Animal list:');
  cat1.show();
}