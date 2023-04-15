import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({Key? key}) : super(key: key);

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorConstraint.backgroundColor),
        child: const Center(
          child: Text(
            "Setting",
            style: TextStyle(fontSize: 25, color: ColorConstraint.primaryColor),
          ),
        ),
      ),
    );
  }
}
