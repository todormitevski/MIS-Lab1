class ClothingItem {
  int id;
  String name;
  String description;
  String image;
  double price;

  ClothingItem({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price
  });

  ClothingItem.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        description = data['description'],
        image = data['image'],
        price = data['price'];
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'price': price
  };
}