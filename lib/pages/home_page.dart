import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: buildHomeMenu(context),
      );

  Widget buildHomeMenu(BuildContext context) => GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: [
          for (final menuItem in ["Join a Room", "Create a Room"])
            Padding(
              padding: const EdgeInsets.all(10),
              child: buildMenuItem(context, menuItem),
            )
        ],
      );

  Widget buildMenuItem(BuildContext context, String menuItem) => Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            menuItem,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      );
}
