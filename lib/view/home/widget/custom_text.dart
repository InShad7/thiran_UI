
import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key, this.title, this.color, this.fontSize, this.fontWeight});
  final title;
  final color;
  final fontSize;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: mHeight! / fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
