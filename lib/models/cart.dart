import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '226',
        description: 'Sample description goes here...',
        image: 'lib/Images/1.jpg'),
    Shoe(
        name: 'Air Jordan',
        price: '310',
        description: 'Sample description goes here...',
        image: 'lib/Images/2.jpg'),
    Shoe(
        name: 'Kyrie 6',
        price: '213',
        description: 'Sample description goes here...',
        image: 'lib/Images/3.jpg'),
    Shoe(
        name: 'KD new',
        price: '255',
        description: 'Sample description goes here...',
        image: 'lib/Images/4.jpg'),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getuserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //removing items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
