import 'package:calculator/screens/home_screen.dart';
import 'package:calculator/screens/luanch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/luanch_screen',
      routes: {
        '/luanch_screen' : (context) => const LuanchScreen(),
        '/home_Screen' : (context) =>  const HomeScreen(),
      },
    );
  }
}
