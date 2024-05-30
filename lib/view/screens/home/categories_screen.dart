import 'package:flutter/material.dart';
import 'package:news_app/constant/categories.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';

import '../../widgets/topics_card_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: TwoTextWidget(
                    title: "Categories",
                    description: " Thousands of articles in each category"),
              ),
              Flexible(
                  flex: 10,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        mainAxisExtent: 75,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemCount: CategoriesName.categories.length,
                    itemBuilder: (context, index) {
                      return TopicsCardWidget(
                          title: CategoriesName.categories[index]);
                    },
                  )),
            ],
          )),
    );
  }
}
