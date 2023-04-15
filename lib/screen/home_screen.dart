import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';
import 'package:movie_app/constraint/textstyle.dart';

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
        child: Center(
          child: Text(
            "Home",
            style: TextStyleConstraint.body
                .copyWith(color: ColorConstraint.primaryColor, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
