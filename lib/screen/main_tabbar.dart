import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';
import 'package:movie_app/constraint/tabbar_items.dart';
import 'package:movie_app/constraint/textstyle.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({Key? key}) : super(key: key);

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.backgroundColor,
      body: IndexedStack(
        index: _currentIndex,
        children: TabBarConstraint.screens,
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 79,
          child: Column(children: [
            SizedBox(
              height: 1,
              child: Container(
                decoration:
                    const BoxDecoration(color: ColorConstraint.primaryColor),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            BottomNavigationBar(
              selectedItemColor: ColorConstraint.primaryColor,
              unselectedItemColor: ColorConstraint.secondaryColor,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: TabBarConstraint.items,
              selectedLabelStyle: TextStyleConstraint.remark,
              unselectedLabelStyle: TextStyleConstraint.remark,
              currentIndex: _currentIndex,
              onTap: (index) => setState(() {
                _currentIndex = index;
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
