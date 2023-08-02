import 'package:flutter/material.dart';
import '/view/home/home_screen.dart';
import '/view/home/widget/custom_text.dart';
import '/view/utils/utils.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: mHeight! / 3.2,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (mHeight! > 925) ? 1.20 : 1.7,
        ),
        itemCount: 4,
        itemBuilder: (context, index) => 
        //grid cards in home 
        Container(
          decoration: BoxDecoration(
            color: gridColor[index],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  gridIcon[index],
                  size: mHeight! / 27,
                  color: white,
                ),
                CustomText(
                  title: gridTitle[index],
                  color: white,
                  fontSize: 43,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List gridColor = [
  lightOrange,
  blueProgress,
  greenProgress,
  orangeProgress,
];

List gridIcon = [
  Icons.schedule_rounded,
  Icons.repeat_outlined,
  Icons.task_outlined,
  Icons.cancel_outlined,
];

List gridTitle = [
  'In Progress',
  'Ongoing',
  'Completed',
  'Cancel',
];
