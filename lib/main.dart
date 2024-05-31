import 'package:flutter/material.dart';
import 'package:untitled/home_screen.dart';

void main(){
  runApp(DemoWindow());
}
class DemoWindow extends StatelessWidget {
  const DemoWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.brown,
          // colorScheme: ColorScheme.light(background: Colors.black26, surface: Colors.brown)
      ),
    );
  }
}
