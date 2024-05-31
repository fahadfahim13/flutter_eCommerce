import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, index) => Column(
              children: [
                //search bar
                Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                ),

                //message

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text('Everyone Flies... Some fly longer than others.',
                      style: TextStyle(color: Colors.grey[600])),
                ),

                //pics
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Hot Pics',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        )
                      ]),
                ),

                const SizedBox(
                  height: 10,
                ),

                // list of shoes
                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, idx) {
                          return Shoetile(
                            shoe: value.getShoeList()[idx],
                            onTap: () {
                              Provider.of<Cart>(context, listen: false).addItemToCart(value.getShoeList()[idx]);
                              showDialog(context: context, builder: (context) => AlertDialog(
                                title: Text('Successfully Added product to cart'),
                                content: Text('Check your cart!!'),
                              ));
                            },
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 25.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ));
  }
}
