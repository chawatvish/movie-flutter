import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';
import 'package:movie_app/screen/main_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorConstraint.primaryColor,
      ),
      home: const MainTabBar(),
    );
  }
}
