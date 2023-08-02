import 'package:flutter/material.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/utils/utils.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading(
      {super.key,
      this.title,
      this.isTaskBtn = false,
      this.padding = false,
      this.taskName});

  final title;
  final isTaskBtn;
  final padding;
  final taskName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ? 15.0 : 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CustomText(
          title: title,
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: black,
        ),

        //isTask Btn needed then it only shows
        isTaskBtn
            ? Row(
                children: [
                  CustomText(
                    title: taskName,
                    fontSize: 42,
                    fontWeight: FontWeight.w500,
                    color: grey,
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                    color: grey,
                    size: 30,
                  ),
                ],
              )
            : const SizedBox()
      ]),
    );
  }
}
