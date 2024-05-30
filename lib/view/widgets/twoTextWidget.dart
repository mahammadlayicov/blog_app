import 'package:flutter/material.dart';

import '../../constant/app_color.dart';

class TwoTextWidget extends StatelessWidget {
  String title;
  String description;
  TwoTextWidget({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: blackPrimary)),
        Text(description,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: greyPrimary))
      ],
    );
  }
}
