import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_heading.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/home/widget/profile_dp.dart';
import 'package:thiran/view/project_screen/widget/circular_indicaator.dart';
import 'package:thiran/view/utils/utils.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      height: mHeight! / 3.2,
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeading(title: 'Dashboard Design'),
          CustomText(
            title: 'Today, Shared by - Unbox Digital',
            fontSize: 53,
            fontWeight: FontWeight.w500,
            color: grey,
          ),
          kHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircularIndicator(index: 1),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight,
                  CustomText(
                    title: 'Team',
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  kHeight,
                  const ProfileDp(isProject: true),
                  kHeight,
                  CustomText(
                    title: 'Deadline',
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  kHeight,
                  const DateRow()
                ],
              )
            ],
          ),
          kHeight20,
        ],
      ),
    );
  }
}
