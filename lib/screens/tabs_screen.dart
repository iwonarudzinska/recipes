import 'package:flutter/material.dart';
import 'package:meals_udemy/screens/categories_screen.dart';
import 'package:meals_udemy/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavoritesScreen(), 'title': 'Your Favorite'},
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title']),
          // bottom: const TabBar(
          //   tabs: [
          //     Tab(
          //       icon: Icon(
          //         Icons.category,
          //       ),
          //       text: 'Categories',
          //     ),
          //     Tab(
          //       icon: Icon(
          //         Icons.star,
          //       ),
          //       text: 'Favorites',
          //     ),
          //   ],
          // ),
        ),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.star),
              label: 'Favorites',
            ),
          ],
        ),
        // body: const TabBarView(
        //   children: [
        //     CategoriesScreen(),
        //     FavoritesScreen(),
        //   ],
        // ),
      ),
    );
  }
}
