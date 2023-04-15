import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';
import 'package:movie_app/constraint/textstyle.dart';
import 'package:movie_app/ui/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What do you want to watch?",
                style: TextStyleConstraint.body.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SearchBox(
                onTapHandler: () => print("onSearchBox: Tapped"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
