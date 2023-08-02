import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/home/widget/custom_heading.dart';
import 'package:thiran/view/utils/utils.dart';

class GraphSection extends StatelessWidget {
  const GraphSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeading(
          title: 'Project Progress',
          padding: true,
          isTaskBtn: true,
          taskName: 'Weekly',
        ),
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(4),
          height: mHeight! / 4.8,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset('assets/graph.png'),
        ),
      ],
    );
  }
}
