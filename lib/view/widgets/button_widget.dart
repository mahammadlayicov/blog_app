import 'package:flutter/material.dart';

import '../../constant/app_color.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  ButtonWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: purplePrimary, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 56,
      child: Center(
          child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: whiteColor, fontWeight: FontWeight.bold),
      )),
    );
  }
}
