import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('TabBar Sample'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Wines",
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
        controller: _tabController,
        children:  <Widget>[
          ListView(
            children: [
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Wine 1")),

            ],
          ),
          ListView(
            children: [
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer  1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),
              SizedBox(height: 10,),
              InkWell(child: Text("Beer 1")),

            ],
          ),
          Wrap(
            children: [
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Vodka 1")),

            ],
          ),
          Wrap(
            children: [
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),
              SizedBox(width: 10,),
              InkWell(child: Text("Rum 1")),

            ],
          ),
          Center(
              child: Wrap(
                children: [
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                  SizedBox(width: 10,),
                  InkWell(child: Text("Whisky 1")),
                ],
              )
          ),
        ],
      ),
    );
  }
}