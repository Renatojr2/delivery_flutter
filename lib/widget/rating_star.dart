import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;

  const RatingStars(this.rating);
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i <= rating; i++) {
      return InkWell(
        child: Icon(
          Icons.star,
          size: 18,
        ),
      );
    }
  }
}
