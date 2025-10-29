class FoodModels {
  final String image;
  final String name;
  final String price;

  FoodModels({required this.image, required this.name, required this.price});

  //
  Map<String, dynamic> toMap() {
    return {"image": image, "name": name, "price": price};
  }

  factory FoodModels.fromMap(Map<String, dynamic> map) {
    return FoodModels(
      image: map['image'],
      name: map['name'],
      price: map['price'],
    );
  }
}
