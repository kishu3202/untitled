import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:untitled/model/product.dart';

import 'model/app_state_model.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppStateModel>(
        builder: (BuildContext context, child, model) {
      return DefaultTabController(
        animationDuration: Duration.zero,
        length: 5,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
              //print(tabController.index);
              //print(categories[tabController.index]);
              model.setCategory(categories[tabController.index]);
            }
          });
          return Scaffold(
            appBar: AppBar(
              // title: const Text('TabBar Sample'),
              bottom: TabBar(
                controller: tabController,
                tabs: const <Widget>[
                  Tab(
                    text: "Wine",
                    icon: Icon(Icons.wine_bar),
                  ),
                  Tab(
                    text: "Beer",
                    icon: Icon(Icons.wine_bar_outlined),
                  ),
                  Tab(
                    text: "Vodaka",
                    icon: Icon(Icons.wine_bar_rounded),
                  ),
                  Tab(
                    text: "Rum",
                    icon: Icon(Icons.wine_bar_sharp),
                  ),
                  Tab(
                    text: "Whisky",
                    icon: Icon(Icons.wine_bar),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: tabController,
              children: <Widget>[
                ListView(children: [
                  for (final product in model.getProducts())
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(child: Text(product.name),
                        onTap: () {
                          model.addProductToCart(product.id);
                        },),
                    ),
                ]

                    // const [
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    //   SizedBox(
                    //     height: 10,
                    //   ),
                    //   InkWell(child: Text("Wine 1")),
                    // ],
                    ),
                ListView(
                  children:
                  [ for (final product in model.getProducts())
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(child: Text(product.name),
                        onTap: () {
                          model.addProductToCart(product.id);
                        },),
                    ),]

                  // const [
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer  1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  //   SizedBox(
                  //     height: 10,
                  //   ),
                  //   InkWell(child: Text("Beer 1")),
                  // ],
                ),
                 Wrap(
                  children: [ for (final product in model.getProducts())
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(child: Text(product.name),
                        onTap: () {
                          model.addProductToCart(product.id);
                        },),
                    ),]
                  // [
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Vodka 1")),
                  // ],
                ),
                 Wrap(
                  children: [ for (final product in model.getProducts())
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(child: Text(product.name),
                        onTap: () {
                          model.addProductToCart(product.id);
                        },),
                    ),]

                  // [
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Rum 1")),
                  // ],
                ),
                 Center(
                    child: Wrap(
                  children: [ for (final product in model.getProducts())
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(child: Text(product.name),
                        onTap: () {
                          model.addProductToCart(product.id);
                        },),
                    ),]

                  // [
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  //   SizedBox(
                  //     width: 10,
                  //   ),
                  //   InkWell(child: Text("Whisky 1")),
                  // ],
                )),
              ],
            ),
          );
        }),
      );
    });
  }
}
