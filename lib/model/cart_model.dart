import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["apple", "4.00", "lib/images/apple.png", Colors.red],
    ["can", "4.00", "lib/images/can.png", Colors.red],
    ["chiken-leg", "4.00", "lib/images/chicken-leg.png", Colors.brown],
    ["orange", "4.00", "lib/images/orange.png", Colors.orange],
    ["water", "4.00", "lib/images/water.png", Colors.blue],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalePrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalePrice += double.parse(_cartItems[i][i]);
    }
    return totalePrice.toStringAsFixed(2);
  }
}
