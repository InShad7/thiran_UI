
import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/utils/utils.dart';

class CheckOptions extends StatelessWidget {
  const CheckOptions({super.key, this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CheckBtn(),
        CustomText(
          title: title,
          fontSize: 45,
          fontWeight: FontWeight.w500,
          color: black,
        ),
      ],
    );
  }
}

class CheckBtn extends StatefulWidget {
  const CheckBtn({
    super.key,
  });

  @override
  State<CheckBtn> createState() => _CheckBtnState();
}

class _CheckBtnState extends State<CheckBtn> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      icon: Icon(
        isSelected ? Icons.check_box_rounded : Icons.check_box_outlined,
        color: blueProgress,
        size: mHeight! / 30,
      ),
    );
  }
}
