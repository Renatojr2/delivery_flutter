import 'package:delivery/models/restaurant.dart';
import 'package:flutter/foundation.dart';
import 'food.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    @required this.restaurant,
    @required this.food,
    @required this.date,
    @required this.quantity,
  });
}
