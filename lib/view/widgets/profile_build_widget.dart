import 'package:flutter/material.dart';

import '../../constant/app_color.dart';

class ProfileBuildWodget extends StatelessWidget {
  String title;
  Widget widget;
  ProfileBuildWodget({
    required this.title,
    required this.widget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: greyLighter, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w500, color: greyDarker),
          ),
          widget
        ],
      ),
    );
  }
}
