import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  const CategoryMealsScreen({Key? key}) : super(key: key);

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle, {Key? key})
  // : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
