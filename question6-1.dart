class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop({ this.id, this.name, this.ram });

  void display() {
    print('ID: $id');
    print('Name: $name');
    print('Ram: $ram GB');
    print('---------------');
  }
}

void main() {
  List<Laptop> laptops = [];

  laptops.add(Laptop(id: 1, name: 'Asus', ram: 16));
  laptops.add(Laptop(id: 2, name: 'Lenovo', ram: 8));
  laptops.add(Laptop(id: 3, name: 'Alienware', ram: 32));

  for (var laptop in laptops) {
    laptop.display();
  }
}