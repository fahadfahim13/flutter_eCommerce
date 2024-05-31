import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
  Shoetile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25.0),
        width: 280,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: ClipRect(
          child: Column(
            children: [
              //pic
              Image.asset(shoe.image),
          
              //description
              Text(
                shoe.description,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
          
              //price + details
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe.name,
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                
                        const SizedBox(height: 5),
                        // price
                        Text('\$' + shoe.price,
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    //button to add to cart
                    Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
