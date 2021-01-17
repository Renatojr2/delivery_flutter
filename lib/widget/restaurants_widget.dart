import 'package:delivery/data/data.dart';
import 'package:delivery/models/restaurant.dart';
import 'package:delivery/pages/restaurant_page.dart';
import 'package:delivery/widget/rating_star.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> restaurantsList = [];

    restaurants.forEach(
      (Restaurant restaurant) {
        restaurantsList.add(
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RestaurantPage(restaurant: restaurant),
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.grey[200]),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Hero(
                      tag: restaurant.imgUrl,
                      child: Image(
                        height: height * .17,
                        width: width * .35,
                        image: AssetImage(restaurant.imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            restaurant.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              RatingStars(restaurant.rating),
                              RatingStars(restaurant.rating),
                              RatingStars(restaurant.rating),
                              RatingStars(restaurant.rating),
                              RatingStars(restaurant.rating),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            restaurant.address,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '2km',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    return Column(
      children: restaurantsList,
    );
  }
}
