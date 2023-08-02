
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:thiran/view/home/widget/custom_text.dart';
import 'package:thiran/view/home/widget/home_tile.dart';
import 'package:thiran/view/utils/utils.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key, required this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 65,
      lineWidth: 10.0,
      animation: true,
      percent: percent[index].toDouble(),
      backgroundColor: percentBgColor,
      progressColor: percent[index] == 0.9
          ? greenProgress
          : percent[index] == 0.5
              ? lightOrange
              : percent[index] == 0.7
                  ? blueProgress
                  : red,
      circularStrokeCap: CircularStrokeCap.round,
      center: CustomText(
        title: percent[index] == 0.9
            ? '90%'
            : percent[index] == 0.5
                ? '50%'
                : percent[index] == 0.7
                    ? '70%'
                    : '30%',
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: black,
      ),
    );
  }
}




class DateRow extends StatelessWidget {
  const DateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.calendar_month_outlined,
          color: grey,
        ),
        kWidth,
        CustomText(
          title: 'June 15, 2021 - June 22, 2021',
          fontSize: 60,
          color: grey,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
