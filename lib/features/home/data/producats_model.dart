class Producats {
  Producats({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  String image;
  String name;
  String description;
  double price;

  factory Producats.fromJson(Map<String, dynamic> json) => Producats(
        image: json["thumbnail"],
        name: json["title"],
        description: json["description"],
        price: json["price"].toDouble(),
      );
}
