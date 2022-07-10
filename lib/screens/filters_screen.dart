import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static String routeName = '/filters-screen';
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Filters screen'),
        ),
        body: const Center(
          child: Text(
            'Filters screen!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ));
  }
}
