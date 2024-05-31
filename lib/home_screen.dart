
import 'package:flutter/material.dart';
import 'package:untitled/tabBarExample.dart';

import 'shopping_cart.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //print("I am also builing");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amit Permit Room & Bar"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(width: 300,
            height: 450,
            color: Colors.brown.shade200,
              child: const ShoppingCartPage(),
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Container(
                color: Colors.indigo,
                child: const TabBarExample(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
