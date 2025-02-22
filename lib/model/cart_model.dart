import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["apple", "4.00", "lib/images/apple.png", Colors.red],
    ["can", "4.00", "lib/images/can.png", Colors.red],
    ["chiken-leg", "4.00", "lib/images/chiken-leg.png", Colors.brown],
    ["orange", "4.00", "lib/images/orange.png", Colors.orange],
    ["water", "4.00", "lib/images/water.png", Colors.blue],
  ];
  get shopItems => _shopItems;
}
