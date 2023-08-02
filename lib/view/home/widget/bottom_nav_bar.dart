import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:thiran/view/project_screen/project_screen.dart';
import 'package:thiran/view/utils/utils.dart';
import '../home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [
    Icons.home_filled,
    Icons.description,
    Icons.mail,
    Icons.settings,
  ];
  List<Widget> screen = [
    HomeScreen(),
    ProjectScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _bottomNavIndex,
          children: screen,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blueProgress,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: white,
        activeColor: blueProgress,
        inactiveColor: grey,
      ),
    );
  }
}
