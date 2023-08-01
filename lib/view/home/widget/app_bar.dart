import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/utils/utils.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: mHeight! / 13,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(
          backgroundColor: purple50,
          radius: mHeight! / 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.asset(
              'assets/face.png',
              fit: BoxFit.contain,
              height: mHeight! / 10,
              width: mWidth! / 10,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_rounded,
            size: mHeight! / 28,
            color: grey,
          ),
        ),
      ]),
    );
  }
}
