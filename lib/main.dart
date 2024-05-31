import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:untitled/home_screen.dart';

import 'model/app_state_model.dart';

void main(){
  runApp(const DemoWindow());
}
class DemoWindow extends StatelessWidget {
  const DemoWindow({super.key});

  @override
  Widget build(BuildContext context) {
    //print("I am material app");
    return ScopedModel<AppStateModel>(
      model: AppStateModel()..loadProducts(),
      child: const MaterialApp(
        home:  HomeScreen(),
        //debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //     useMaterial3: true,
        //     primarySwatch: Colors.brown,
        //     // colorScheme: ColorScheme.light(background: Colors.black26, surface: Colors.brown)
        // ),
      ),
    );
  }
}
