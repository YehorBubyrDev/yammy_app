import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('$categoryTitle'),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Text(
              categoryMeals[index].title,
              style: const TextStyle(color: Colors.black),
            );
          }),
          itemCount: categoryMeals.length,
        ));
  }
}
