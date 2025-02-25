import 'package:flutter/material.dart';
import 'package:groceryshop/components/grocery_item_tile.dart';
import 'package:groceryshop/model/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Good Morning",
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("Let's order fresh items for you",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 24,
            
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
