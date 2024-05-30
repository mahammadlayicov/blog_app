import 'package:flutter/material.dart';
import 'package:news_app/models/language_model.dart';

import '../../constant/app_color.dart';

class LanguageWidget extends StatelessWidget {
  LanguageModel languageModel;
  bool isSelected;

  LanguageWidget({
    required this.isSelected,
    required this.languageModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          color: isSelected ? purplePrimary : greyLighter,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Center(
        child: ListTile(
          leading: Text(
            languageModel.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: isSelected ? whiteColor : greyDarker,
                ),
          ),
          trailing:
              isSelected ? Icon(color: whiteColor, Icons.check) : SizedBox(),
        ),
      ),
    );
  }
}
