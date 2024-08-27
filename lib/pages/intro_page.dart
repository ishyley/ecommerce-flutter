import 'package:flutter/material.dart';
import 'package:simple_flutter_ecommerce/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(100),
              child: Image.asset(
                'lib/images/avocado.png',
                height: 240,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            const Text(
              "Get your Fresh Fruits",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(
              height: 48,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
              ),
            )
          ],
        ),
      ),
    );
  }
}
