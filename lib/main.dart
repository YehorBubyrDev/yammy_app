import 'package:flutter/material.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yammy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ).copyWith(secondary: Colors.black),
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontSize: 14),
          bodyText2: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          headline6: TextStyle(fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: CategoriesScreen(),
      ),
    );
  }
}
