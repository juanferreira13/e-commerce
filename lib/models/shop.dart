import 'package:flutter/material.dart';
import 'product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Tenis Asics",
      price: 649.99,
      description: "Tenis",
      imagePath: 'assets/Asics.png',
    ),

    Product(
      name: "Moletom Essentials",
      price: 599.99,
      description: "Moletom",
      imagePath: 'assets/essentials.png',
    ),

    Product(
      name: "Tenis Nike Dunk",
      price: 799.99,
      description: "tenis",
      imagePath: 'assets/dunk.png',
    ),

    Product(
      name: "Moletom Stussy",
      price: 399.99,
      description:
          "Moletom",
      imagePath: 'assets/stussy.png',
    ),

    Product(
      name: "Tenis New Balance",
      price: 599.99,
      description:
          "Tenis",
      imagePath: 'assets/nb.png',
    ),
  ];

  // Carrinho
  // ignore: prefer_final_fields
  List<Product> _cart = [];

  // get Lista de produtos
  List<Product> get shop => _shop;

  // get Carrinho
  List<Product> get cart => _cart;

  // Add item para o carrinho
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // Remover item do carrinho
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
