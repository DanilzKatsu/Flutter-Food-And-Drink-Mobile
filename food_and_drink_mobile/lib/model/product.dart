import 'dart:convert';

class Product {
  final int id;
  final String name;
  final String type;
  final double rate;
  final String image;
  final List<MaterialProduct> materialProducts;
  Product({
    required this.id,
    required this.name,
    required this.type,
    required this.rate,
    required this.image,
    required this.materialProducts,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'rate': rate,
      'image': image,
      'materialProducts': materialProducts.map((x) => x.toMap()).toList(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      rate: map['rate']?.toDouble() ?? 0.0,
      image: map['image'] ?? '',
      materialProducts: List<MaterialProduct>.from(
          map['materialProducts']?.map((x) => MaterialProduct.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}

class MaterialProduct {
  final String name;
  final String serving;
  final String image;
  MaterialProduct({
    required this.name,
    required this.serving,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serving': serving,
      'image': image,
    };
  }

  factory MaterialProduct.fromMap(Map<String, dynamic> map) {
    return MaterialProduct(
      name: map['name'] as String,
      serving: map['serving'] as String,
      image: map['image'] as String,
    );
  }
}

// ignore: non_constant_identifier_names
var fake_data_product = [
  Product(
    id: 1,
    name: "Banana Cake",
    type: "Cake",
    rate: 4.9,
    image: "assets/images/pic3.png",
    materialProducts: [
      MaterialProduct(
        name: "Chocolate Chips",
        serving: "1",
        image: "assets/images/pic7.png",
      ),
      MaterialProduct(
        name: "Milk",
        serving: "1/1",
        image: "assets/images/pic8.png",
      ),
      MaterialProduct(
        name: "Unsalted Butter",
        serving: "1",
        image: "assets/images/pic9.png",
      ),
    ],
  ),
  Product(
    id: 2,
    name: "Ice Cream on Cookie",
    type: "Dessert",
    rate: 4.8,
    image: "assets/images/pic4.png",
    materialProducts: [
      MaterialProduct(
        name: "Chocolate Chips",
        serving: "1",
        image: "assets/images/pic7.png",
      ),
      MaterialProduct(
        name: "Milk",
        serving: "1/1",
        image: "assets/images/pic8.png",
      ),
      MaterialProduct(
        name: "Unsalted Butter",
        serving: "1",
        image: "assets/images/pic9.png",
      ),
    ],
  ),
  Product(
    id: 3,
    name: "Chocolate Milkshake",
    type: "Drink",
    rate: 5.0,
    image: "assets/images/pic5.png",
    materialProducts: [
      MaterialProduct(
        name: "Chocolate Chips",
        serving: "1",
        image: "assets/images/pic7.png",
      ),
      MaterialProduct(
        name: "Milk",
        serving: "1/1",
        image: "assets/images/pic8.png",
      ),
      MaterialProduct(
        name: "Unsalted Butter",
        serving: "1",
        image: "assets/images/pic9.png",
      ),
    ],
  ),
  Product(
    id: 4,
    name: "Avocado Milkshake",
    type: "Drink",
    rate: 4.7,
    image: "assets/images/pic6.png",
    materialProducts: [
      MaterialProduct(
        name: "Chocolate Chips",
        serving: "1",
        image: "assets/images/pic7.png",
      ),
      MaterialProduct(
        name: "Milk",
        serving: "1/1",
        image: "assets/images/pic8.png",
      ),
      MaterialProduct(
        name: "Unsalted Butter",
        serving: "1",
        image: "assets/images/pic9.png",
      ),
    ],
  ),
];
