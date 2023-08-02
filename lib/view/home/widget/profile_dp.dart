import 'package:flutter/material.dart';
import 'package:thiran/view/home/home_screen.dart';
import 'package:thiran/view/utils/utils.dart';

class ProfileDp extends StatelessWidget {
  const ProfileDp({super.key, this.isProject = false});
  final isProject;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isProject ? mWidth! / 2.8 : mWidth! / 4.2,
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/dp.jpg'),
          ),
          const Positioned(
            left: 25,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/7309667.jpg'),
            ),
          ),
          const Positioned(
            left: 50,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/dp.jpg'),
            ),
          ),
//isProject true then only this works
          isProject
              ? const Positioned(
                  left: 75,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/7309667.jpg'),
                  ),
                )
              : const SizedBox(),
          isProject
              ? Positioned(
                  left: 100,
                  child: CircleAvatar(
                    backgroundColor: lightOrange,
                    radius: 22,
                    child: Icon(Icons.add, color: white),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
