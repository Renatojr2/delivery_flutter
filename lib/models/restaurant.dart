import 'package:delivery/models/food.dart';
import 'package:flutter/foundation.dart';

class Restaurant {
  final String imgUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  Restaurant({
    @required this.imgUrl,
    @required this.name,
    @required this.address,
    @required this.rating,
    @required this.menu,
  });
}
