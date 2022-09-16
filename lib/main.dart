import 'package:flutter/material.dart';
import 'package:mack_dine_right/pages/hompage.dart';
import 'package:mack_dine_right/pages/login_page.dart';
import 'package:mack_dine_right/pages/signup_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: const MyApp(),
      routes: <String, WidgetBuilder>{
        '/signup': (context) => const SignUpPage(),
        '/main': (context) => const MyApp(),
        '/homepage': (context) => const HomePage(),
      },
      title: 'Mackelvin Dine Right',
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFf54256),
        title: const Text(
          "Mackelvin Dine Right",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const LoginPage(),
    );
  }
}
