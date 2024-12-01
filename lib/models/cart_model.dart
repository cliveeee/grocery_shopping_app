import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/models/grocery_model.dart';

class CartModel extends ChangeNotifier {
  final GroceryModel grocery;
  int quantity;

  CartModel({
    required this.grocery,
    this.quantity = 1,
  });
}
