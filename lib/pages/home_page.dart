import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/pages/cart.dart';
import 'package:ecommerce/pages/shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIdx = 0;

  void onTabChange(index) {
    setState(() {
      _selectedIdx = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const Cart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavbar(
        onTabChange: onTabChange,
      ),
      body: _pages[_selectedIdx],
    );
  }
}
