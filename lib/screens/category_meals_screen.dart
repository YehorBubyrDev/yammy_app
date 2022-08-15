import 'package:flutter/material.dart';
import 'package:yammy/models/meal.dart';

import '../data/dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static String routeName = '/category-meals-screen';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  late List<Meal> displayedMeals;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print('-----------');
    print(routeArgs);
    print('-----------');
    categoryTitle = routeArgs['title'];
    print(categoryTitle);
    final categoryId = routeArgs['id'];
    print(categoryId);
    displayedMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    print(displayedMeals);
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$categoryTitle'),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return MealItem(
              id: displayedMeals[index].id,
              title: displayedMeals[index].title,
              imgUrl: displayedMeals[index].imageUrl,
              duration: displayedMeals[index].duration,
              affordability: displayedMeals[index].affordability,
              complexity: displayedMeals[index].complexity,
              removeItem: _removeMeal,
            );
          }),
          itemCount: displayedMeals.length,
        ));
  }
}
