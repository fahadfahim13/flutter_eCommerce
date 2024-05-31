import 'package:ecommerce/components/cart_items.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Expanded(child: 
                  ListView.builder(
                    itemCount: value.getuserCart().length,
                    itemBuilder: (context, idx) {
                      Shoe individualShoe = value.getuserCart()[idx];
                      return CartItem(shoe: individualShoe);
                  }))
                ],
              ),
            ));
  }
}
