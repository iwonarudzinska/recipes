import 'package:flutter/material.dart';
import 'package:meals_udemy/screens/shopping_list_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(
    String title,
    IconData icon,
    Function tapHandler,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        tapHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: const Text(
              'MENU 🍽️',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.pink),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile('Shopping list', Icons.shopping_cart, () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => ShoppingListScreen(), fullscreenDialog: true),
            );
          }),
        ],
      ),
    );
  }
}
