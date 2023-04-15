import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorConstraint.backgroundColor),
        child: const Center(
          child: Text(
            "Home",
            style: TextStyle(fontSize: 25, color: ColorConstraint.primaryColor),
          ),
        ),
      ),
    );
  }
}
