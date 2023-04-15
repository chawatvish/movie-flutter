import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorConstraint.backgroundColor),
        child: const Center(
          child: Text(
            "Search",
            style: TextStyle(fontSize: 25, color: ColorConstraint.primaryColor),
          ),
        ),
      ),
    );
  }
}
