import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/utils/utils.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    //tab bar in the current state
    return CustomSlidingSegmentedControl(
      children: {
        //tab with name
        1: CustomText(
          title: 'All',
          fontSize: 45,
          fontWeight: FontWeight.w500,
          color: _selectedIndex == 1 ? white : black,
        ),
        2: CustomText(
          title: 'Ongoing',
          fontSize: 45,
          fontWeight: FontWeight.w500,
          color: _selectedIndex == 2 ? white : black,
        ),
        3: CustomText(
          title: 'Completed',
          fontSize: 45,
          fontWeight: FontWeight.w500,
          color: _selectedIndex == 3 ? white : black,
        ),
      },
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(50),
      ),
      fixedWidth: mWidth! / 3.2,
      height: mHeight! / 20,
      thumbDecoration: BoxDecoration(
        color: blueProgress,
        borderRadius: BorderRadius.circular(50),
      ),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
      onValueChanged: (v) {
        setState(() {
          _selectedIndex = v;
        });
      },
    );
  }
}
