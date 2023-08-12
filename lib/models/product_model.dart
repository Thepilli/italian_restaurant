// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

Product productFromMap(String str) => Product.fromMap(json.decode(str));

String productToMap(Product data) => json.encode(data.toMap());

class Product {
  final String id;
  final String title;
  final String description;
  final String calories;
  final String price;
  final String image;
  final String rating;

  Product({
    this.id = '',
    this.title = '',
    this.description = '',
    this.calories = '',
    this.price = '',
    this.image = '',
    this.rating = '',
  });

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        calories: json["calories"],
        price: json["price"],
        image: json["image"],
        rating: json["rating"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "calories": calories,
        "price": price,
        "image": image,
        "rating": rating,
      };
}
