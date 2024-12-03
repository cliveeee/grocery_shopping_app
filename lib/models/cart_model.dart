import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery_shopping_app/models/grocery_model.dart';

class CartModel extends GetxController {
  final GroceryModel grocery;
  int quantity;

  CartModel({
    required this.grocery,
    this.quantity = 1,
  });
}
