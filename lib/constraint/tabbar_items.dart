import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/screen/home_screen.dart';
import 'package:movie_app/screen/search_screen.dart';
import 'package:movie_app/screen/watchlist_screen.dart';

class TabBarConstraint {
  static final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const WatchListScreen(),
  ];

  static final items = [
    BottomNavigationBarItem(
      label: "Home",
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/home_inactive.svg",
          semanticsLabel: "Home Inactive",
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/home_active.svg",
          semanticsLabel: "Home Active",
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "Search",
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/search_inactive.svg",
          semanticsLabel: "Search Inactive",
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/search_active.svg",
          semanticsLabel: "Search Active",
        ),
      ),
    ),
    BottomNavigationBarItem(
      label: "Watch list",
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/save_inactive.svg",
          semanticsLabel: "Save Inactive",
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          "assets/icon/tabbar/save_active.svg",
          semanticsLabel: "Save Active",
        ),
      ),
    ),
  ];
}
