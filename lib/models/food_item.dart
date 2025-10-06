import 'package:food_oderingapp/models/food_item.dart';

class FoodItem {
  final int id;
  final String name;
  final double price;
  final String image;

  FoodItem({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}
