import 'package:flutter/material.dart';
import 'package:thiran/view/utils/utils.dart';

class CustomAppBar2 extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar2({super.key});

  final Size preferredSize = const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: black,
          ),
        ),
      ],
    );
  }
}
