import 'package:flutter/material.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  State<FoodItems> createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  int selectedIndex = 0;
  List<String> foods = [
    'Beef Burger',
    'Mushroom Burger',
    'Fried Rice',
    'Potato',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.blue,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
            child: Row(
              children: [
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
