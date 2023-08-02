import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/utils/utils.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      width: mWidth,
      height: mHeight! / 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //greetings
          CustomText(
            title: 'Hello',
            color: grey,
            fontSize: 34,
            fontWeight: FontWeight.w500,
          ),
          //username
          CustomText(
            title: 'Alex Marconi',
            color: black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ],
      ),
    );
  }
}
