import 'package:flutter/material.dart';
import 'package:meals_udemy/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key, required this.id, required this.title,})
      : super(key: key);
  final String id;
  final String title;


  void selectCateory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCateory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: const Color.fromARGB(255, 118, 148, 182),
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
