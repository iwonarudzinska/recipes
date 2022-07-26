import 'package:flutter/material.dart';
import 'package:meals_udemy/models/meal.dart';
import 'package:meals_udemy/screens/categories_screen.dart';
import 'package:meals_udemy/screens/favorites_screen.dart';
import 'package:meals_udemy/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen(
    this.favoriteMeals, {
    Key? key,
  }) : super(key: key);
  final List<Meal> favoriteMeals;
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, dynamic>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoritesScreen(widget.favoriteMeals),
        'title': 'Your Favorite',
      },
    ];
    super.initState();
  }

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
        drawer: const MainDrawer(),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Colors.black,
          // unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
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
