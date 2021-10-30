import 'package:flutter/material.dart';
import 'package:fresh_food/fresh_food_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreshFoodView Title',
      home: FreshFoodView(),
    );
  }
}
