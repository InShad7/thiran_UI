
import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/home/widget/home_tile.dart';
import 'package:thiran/view/home/widget/profile_dp.dart';
import 'package:thiran/view/project_screen/widget/circular_indicaator.dart';
import 'package:thiran/view/utils/utils.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key, this.index, this.isDashboard = false});
  final index;
  final isDashboard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, top: 10),
      padding: const EdgeInsets.all(15),
      height: mHeight! / 3.8,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                title: tileTitle[index],
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: black,
              ),
              CustomText(
                title: 'Today, shared by - Unbox Digital',
                fontSize: 60,
                fontWeight: FontWeight.w500,
                color: grey,
              ),
              kHeight,
              CustomText(
                title: 'Team',
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: black,
              ),
              const ProfileDp(isProject: true),//team members dp
              kHeight,
              const DateRow()//date row
            ],
          ),
          CircularIndicator(index: index),//progress indicator
        ],
      ),
    );
  }
}
