class House {
  int? id;
  String? name;
  double? price;

  House({ this.id, this.name, this.price });
  
  void printDetails() {
    print('House ID: $id');
    print('House Name: $name');
    print('House Price: $price');
    print('------------------------');
  }
}

void main() {
  List<House> houses = [];

  houses.add(House(id: 1, name: 'LA City', price: 250000));
  houses.add(House(id: 2, name: 'Sangsom land', price: 1500000));
  houses.add(House(id: 3, name: 'Nu Dome', price: 250000));

  for (var house in houses) {
    house.printDetails();
  }
}