import 'package:flutter/cupertino.dart';
import 'package:meals/domain/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('You have no favorites meals yet - start adding some!',
            style: TextStyle(
              fontSize: 20,
            )),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return ListView(
            children: [
              MealItem(
                id: favoriteMeals[index].id,
                title: favoriteMeals[index].title,
                imageUrl: favoriteMeals[index].imageUrl,
                duration: favoriteMeals[index].duration,
                affordability: favoriteMeals[index].affordability,
                complexity: favoriteMeals[index].complexity,
              ),
            ],
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
