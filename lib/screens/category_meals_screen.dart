import 'package:flutter/material.dart';
import 'package:meals_udemy/dummy_data.dart';
import 'package:meals_udemy/models/meal.dart';
import 'package:meals_udemy/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal>? displayedMeals;
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedMeals = dummymeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals!.removeWhere((meal) => meal.id == mealId);
    });
  }

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle, {Key? key})
  // : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    // final routeArgs =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final categoryTitle = routeArgs['title'];
    // final categoryId = routeArgs['id'];
    // final categoryMeals = dummymeals.where((meal) {
    //   return meal.categories.contains(categoryId);
    // }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals![index].id,
            title: displayedMeals![index].title,
            imageUrl: displayedMeals![index].imageUrl,
            duration: displayedMeals![index].duration,
            affordability: displayedMeals![index].affordability,
            complexity: displayedMeals![index].complexity,
            removeItem: _removeMeal,
          );
        },
        itemCount: displayedMeals!.length,
      ),
    );
  }
}
