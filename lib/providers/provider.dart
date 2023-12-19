import 'package:flutter/material.dart';
import 'package:medecin_app/models/cart_model.dart';

class dProvider extends ChangeNotifier {
  String language = 'en';
  List<CartModel> cart = [];

  void addToCart(CartModel cartModel) {
    cart.add(cartModel);
    notifyListeners();
  }

  List<CartModel> getCart() {
    return cart;
  }

  void setLanguage(String ln) {
    language = ln;
    notifyListeners();
  }
}
