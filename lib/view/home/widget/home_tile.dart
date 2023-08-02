import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_heading.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/home/widget/profile_dp.dart';
import 'package:thiran/view/utils/utils.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeading(
          title: 'Daily Task',
          isTaskBtn: true,
          padding: true,
          taskName: 'All tasks',
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) => 
          //home tiles
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            height: mHeight! / 7.5,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: percent[index] == 0.9 ? greenProgress : grey,
                  size: mHeight! / 30,
                ),
                SizedBox(
                  height: mHeight! / 12,
                  width: mWidth! / 2.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: tileTitle[index],
                        color: black,
                        fontSize: 44,
                        fontWeight: FontWeight.w500,
                      ),
                      //progress indicator
                      LinearPercentIndicator(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        width: mWidth! / 2.4,
                        animation: true,
                        lineHeight: 11.0,
                        animationDuration: 2000,
                        percent: percent[index].toDouble(),
                        barRadius: const Radius.circular(20),
                        progressColor: percent[index] == 0.9
                            ? greenProgress
                            : percent[index] == 0.5
                                ? lightOrange
                                : percent[index] == 0.7
                                    ? blueProgress
                                    : red,
                        backgroundColor: percentBgColor,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    //team members dp
                    const ProfileDp(),
                    //icon to open for more details
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: grey,
                      size: mHeight! / 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List percent = [0.7, 0.9, 0.5, 0.2];
List tileTitle = [
  'App Animation',
  'Dashboard Design',
  'UI/UX Design',
  'Backend'
];
