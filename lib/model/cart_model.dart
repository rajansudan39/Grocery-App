import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  List get _shopItems => const [
        // [ itemName, itemPrice, imagePath, color ]
        ["Avocado", "50.00", "lib/images/avocado.png", Colors.green],
        ["Banana", "10.0", "lib/images/banana.png", Colors.yellow],
        ["Chicken", "100.0", "lib/images/chicken.png", Colors.brown],
        ["Water", "10.0", "lib/images/water.png", Colors.blue],
      ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
