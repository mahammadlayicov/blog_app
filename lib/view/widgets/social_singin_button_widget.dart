import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constant/app_color.dart';
class SocialSignInButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final String imagePath;
  final VoidCallback onPressed;

  SocialSignInButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.textColor,
    required this.borderColor,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(20),
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Center(
                child: Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: greyDarker)),
              ),
            ),
            Gap(44),
          ],
        ),
      ),
    );
  }
}
