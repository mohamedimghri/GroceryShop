import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<List<dynamic>> _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Apple", "2.00", "lib/images/apple.png", Colors.red],
    ["Can", "3.00", "lib/images/can.png", Colors.red],
    ["Chicken Leg", "7.00", "lib/images/chicken-leg.png", Colors.brown],
    ["Orange", "2.00", "lib/images/orange.png", Colors.orange],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

  final List<List<dynamic>> _cartItems = [];

  List<List<dynamic>> get shopItems => _shopItems;
  List<List<dynamic>> get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  double calculateTotal() {
    double totalPrice = 0.0;
    for (var item in _cartItems) {
      totalPrice += double.parse(item[1]);
    }
    return totalPrice;
  }
}
