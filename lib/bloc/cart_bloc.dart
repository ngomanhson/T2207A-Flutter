import 'package:flutter/material.dart';

import '../model/cart_item.dart';

class CartBloc extends ChangeNotifier{
  List<CartItem> _cartItems = [];

  Stream<List<CartItem>> get cartItemStream => Stream.value(_cartItems);

  void addToCart(CartItem item) {
    _cartItems.add(item);
    notifyListeners();
    print(_cartItems.length);
  }

  void removeCart(int itemId) {
    _cartItems.removeWhere((element) => element.id == itemId);
    notifyListeners();
  }
}