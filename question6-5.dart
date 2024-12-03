class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  Camera({ int? id, String? brand, String? color, double? price }) {
    _id = id;
    _brand = brand;
    _color = color;
    _price = price;
  }

  // getter
  int? get id => _id;
  String? get brand => _brand;
  String? get color => _color;
  double? get price => _price;

  //setter
  set id(int? id) => _id = id;
  set brand(String? brand) => _brand = brand;
  set color(String? color) => _color = color;
  set price(double? price) => _price = price;

  void display() {
    print('ID: $_id');
    print('Brand: $_brand');
    print('Color: $_color');
    print('Price: \$$_price');
    print('---------------');
  }
}

void main() {
  List<Camera> cameras = [];

  cameras.add(Camera(id: 1, brand: 'Canon', color: 'Black', price: 599.99));
  cameras.add(Camera(id: 2, brand: 'Nikon', color: 'Silver', price: 899.99));
  cameras.add(Camera(id: 3, brand: 'Sony', color: 'White', price: 749.99));

  print('Camera list:');
  for (var camera in cameras) {
    camera.display();
  }
}