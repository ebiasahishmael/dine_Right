import 'package:flutter/material.dart';
import 'package:mack_dine_right/pages/screens/food_item.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Home',
    'Burger',
    'Pizza',
    'Fries',
    'Rice',
    'Chicken',
    'Potato',
    'Pork'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
          //color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: index == selectedIndex
                          ? const Color(0xFFf54256)
                          : const Color(0xff004D40),
                      fontSize: 17,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const FoodItems(),
      ],
    );
  }
}
