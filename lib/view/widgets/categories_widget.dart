import 'package:flutter/material.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/models/categories_model.dart';

class categories_widget extends StatelessWidget {
  CategoryModel categoryModel;
  bool isSelect;
  categories_widget({
    required this.isSelect,
    required this.categoryModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: isSelect ? purplePrimary : greyLighter,
          borderRadius: BorderRadius.circular(30)),
      width: MediaQuery.of(context).size.width * 0.3,
      child: Center(
          child: Text(categoryModel.title,
              style: TextStyle(color: isSelect ? whiteColor : greyPrimary))),
    );
  }
}
