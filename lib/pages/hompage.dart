import 'package:flutter/material.dart';
import 'package:mack_dine_right/pages/screens/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MDR'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0xFFf54256),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 10),
            child: Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF004D40))),
              child: const TextField(
                keyboardType: TextInputType.name,
                cursorColor: Color(0xFF004D40),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF004D40),
                  ),
                ),
              ),
            ),
          ),
          preferredSize: const Size(50, 50),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFf54256),
              ),
              child: Text('Hello is the name'),
            ),
          ],
        ),
      ),
      body: const MainMenu(),
    );
  }
}
