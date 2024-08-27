import 'dart:core';

import 'package:flutter/material.dart';
import 'package:simple_flutter_ecommerce/model/fruit.dart';

class Cart extends ChangeNotifier {
  //list of fruit to the cart
  List<Fruit> fruitShop = [
    Fruit(
        name: 'Banana',
        price: '236',
        imagepath: 'lib/images/banana.png',
        description: 'A banana is an elongated, edible fruit'),
    Fruit(
        name: 'Avacado',
        price: '126',
        imagepath: 'lib/images/avocado.png',
        description: 'Avacado are a source of vitamin C, E, k and B6'),
    Fruit(
        name: 'Chicken',
        price: '245',
        imagepath: 'lib/images/chicken.png',
        description: 'The chicen is a large and round short-winged bird'),
    Fruit(
        name: 'Water',
        price: '25',
        imagepath: 'lib/images/water.png',
        description: 'Water is free'),
  ];

  //list of item in user cart
  List<Fruit> userCart = [];

  //get list of shoes for sales
  List<Fruit> getFruitList() {
    return fruitShop;
  }

  //get cart
  List<Fruit> getUserCart() {
    return userCart;
  }

  //add item to cart

  void addItemToCart(Fruit fruit) {
    userCart.add(fruit);
    notifyListeners();
  }

  //remove item form cart
  void removeItemFromCart(Fruit fruit) {
    userCart.remove(fruit);
    notifyListeners();
  }
}
