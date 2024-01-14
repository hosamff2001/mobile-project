import 'package:appnest/core/utliz/assets.dart';

class Producats {
  Producats({
    required this.image,
    required this.name,
    required this.descreption,
    required this.price,
  });

  String image;
  String name;
  String descreption;
  double price;
}

List<Producats> product = [
  Producats(
      image: Assets.imageProduct1,
      name: "Diet Coke",
      descreption: "355ml, Price",
      price: 1.99),
  Producats(
      image: Assets.imageProduct2,
      name: "Sprite Can",
      descreption: "325ml, Price",
      price: 1.5),
  Producats(
      image: Assets.imageProduct3,
      name: "Apple & Grape Juice",
      descreption: "2L, Price",
      price: 15.99),
  Producats(
      image: Assets.imageProduct4,
      name: "Orenge Juice",
      descreption: "2L, Price",
      price: 15.99),
  Producats(
      image: Assets.imageProduct5,
      name: "Coca Cola Can",
      descreption: "325ml, Price",
      price: 4.99),
  Producats(
      image: Assets.imageProduct6,
      name: "Pepsi Can ",
      descreption: "330ml, Price",
      price: 4.99),
];
