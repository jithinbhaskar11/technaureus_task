import 'package:flutter/foundation.dart';

class Product {
  bool showAddButton;
  int count;

  Product({required this.showAddButton, required this.count});
}

class AddToCartController extends ChangeNotifier {
  Product products = Product(showAddButton: true, count: 0);

  Product get product => products;

  void toggleAddButton() {
    products.showAddButton = !products.showAddButton;
    notifyListeners();
  }

  void plusButton() {
    products.count++;
    notifyListeners();
  }

  void removeButton() {
    if (products.count > 0) {
      products.count--;
      notifyListeners();
    }
  }
}
