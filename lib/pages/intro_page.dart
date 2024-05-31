import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            // looo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/Images/logo.png',
                height: 240,
              ),
            ),

            // title

            // sub title

            //start now button
          ],
        ),
      ),
    );
  }
}
