import 'package:disenos/screens/desing_scroll.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:disenos/screens/desing_basic.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'desing_basic': ( _) => const DesingBasicScreen(),
        'desing_scroll': ( _) => const DesingScrollScreen(),
        'home_screen': ( _) => const HomeScreen()
      },
    );
  }
}