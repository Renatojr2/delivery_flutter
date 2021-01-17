import 'package:delivery/models/food.dart';
import 'package:delivery/models/order.dart';
import 'package:delivery/models/restaurant.dart';
import 'package:delivery/models/user.dart';

final _burritos =
    Food(name: 'Burritos', price: 8.99, imgUrl: 'assets/images/burrito.jpg');
final _steak =
    Food(name: 'steak', price: 10.00, imgUrl: 'assets/images/steak.jpg');
final _burger =
    Food(name: 'burger', price: 14.99, imgUrl: 'assets/images/burger.jpg');
final _salmon =
    Food(name: 'salmon', price: 7.80, imgUrl: 'assets/images/salmon.jpg');
final _pizza =
    Food(name: 'pizza', price: 21.50, imgUrl: 'assets/images/pizza.jpg');
final _pasta =
    Food(name: 'pasta', price: 15.99, imgUrl: 'assets/images/pasta.jpg');
final _ramen =
    Food(name: 'ramen', price: 22.99, imgUrl: 'assets/images/ramen.jpg');
final _pancakes =
    Food(name: 'pancakes', price: 14.99, imgUrl: 'assets/images/pancakes.jpg');

final _restaurant0 = Restaurant(
  imgUrl: 'assets/images/restaurant0.jpg',
  name: 'Restaurante na Brasa',
  address: 'Rua sem saída',
  rating: 4,
  menu: [_pancakes, _steak, _salmon, _pizza],
);
final _restaurant1 = Restaurant(
  imgUrl: 'assets/images/restaurant1.jpg',
  name: 'Restaurante comida',
  address: 'Rua sem saída',
  rating: 4,
  menu: [_burritos, _ramen, _salmon, _pizza, _burger],
);
final _restaurant3 = Restaurant(
  imgUrl: 'assets/images/restaurant2.jpg',
  name: 'Restaurante fogão a lenha',
  address: 'Rua sem saída',
  rating: 4,
  menu: [_burritos, _ramen, _salmon, _pizza],
);
final _restaurant4 = Restaurant(
  imgUrl: 'assets/images/restaurant3.jpg',
  name: 'Restaurante sem Brasa',
  address: 'Rua sem saída',
  rating: 4,
  menu: [_burritos, _pasta, _ramen, _pizza],
);
final _restaurant2 = Restaurant(
  imgUrl: 'assets/images/restaurant4.jpg',
  name: 'Comida da vovó',
  address: 'Rua sem saída',
  rating: 5,
  menu: [_burritos, _ramen, _salmon, _pizza],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

final User currentUser = User(
  name: 'Fabiana',
  order: [
    Order(
        restaurant: _restaurant1,
        food: _salmon,
        date: '10, 10, 2020',
        quantity: 2),
    Order(
      restaurant: _restaurant3,
      food: _burritos,
      date: '15, 01, 2021',
      quantity: 1,
    ),
    Order(
      restaurant: _restaurant3,
      food: _pizza,
      date: '12, 12, 2020',
      quantity: 1,
    ),
    Order(
      restaurant: _restaurant4,
      food: _pasta,
      date: '10, 01, 2021',
      quantity: 3,
    ),
    Order(
      restaurant: _restaurant1,
      food: _burger,
      date: '12, 12, 2020',
      quantity: 5,
    ),
  ],
  cart: [
    Order(
        restaurant: _restaurant1,
        food: _salmon,
        date: '10, 10, 2020',
        quantity: 2),
    Order(
      restaurant: _restaurant3,
      food: _burritos,
      date: '15, 01, 2021',
      quantity: 1,
    ),
    Order(
      restaurant: _restaurant3,
      food: _pizza,
      date: '12, 12, 2020',
      quantity: 1,
    ),
    Order(
      restaurant: _restaurant4,
      food: _pasta,
      date: '10, 01, 2021',
      quantity: 3,
    ),
    Order(
      restaurant: _restaurant1,
      food: _burger,
      date: '12, 12, 2020',
      quantity: 5,
    ),
  ],
);
