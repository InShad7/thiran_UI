import 'package:flutter/material.dart';
import 'package:thiran/view/home/widget/app_bar.dart';
import 'package:thiran/view/home/widget/custom_heading.dart';
import 'package:thiran/view/project_screen/widget/details.dart';

import 'widget/tab_bar.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: const [
            CustomHeading(title: 'Project', padding: true),
            CustomTabBar(),
            Expanded(child: ProjectDetails()),
          ],
        ),
      ),
    );
  }
}
