import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/tabBarExample.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amit Permit Room & Bar"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(width: 300,
            height: 450,
            color: Colors.brown.shade200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Text("Label 1"),
                      )
                    ],
                  ),
                  Spacer(), // This will push the next row to the bottom
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade700, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () { },
                          child: Text('Enter'),
                        ),
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                color: Colors.indigo,
                child: TabBarExample(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
