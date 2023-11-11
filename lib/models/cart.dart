import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'assets/images/AirJordan.png',
        description: 'The forward-thinking design of his latest signature shoe.'
    ),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'assets/images/AirJordan.png',
        description: 'The forward-thinking design of his latest signature shoe.'
    ),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'assets/images/AirJordan.png',
        description: 'The forward-thinking design of his latest signature shoe.'
    ),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'assets/images/AirJordan.png',
        description: 'The forward-thinking design of his latest signature shoe.'
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}