import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static String routeName = '/meal-detail-screen';
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final mealName = routeArgs['title'];
    final mealId = routeArgs['id'];
    return Scaffold(
        appBar: AppBar(
          title: Text('$mealName'),
        ),
        body: Center(
          child: Text(
            '$mealName ' ' - $mealId',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ));
  }
}
