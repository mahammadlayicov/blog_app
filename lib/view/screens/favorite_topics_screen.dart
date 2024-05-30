import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/constant/topics.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';

import '../widgets/topics_card_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FavoriteTopicsScreen extends StatelessWidget {
  const FavoriteTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: TwoTextWidget(
                  title: StringConstant.favoriteTopicsScreenTitle,
                  description: StringConstant.favoriteTopicsScreenDescription),
            ),
            Expanded(
                flex: 7,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      mainAxisExtent: 75,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemCount: TopicsName.topics.length,
                  itemBuilder: (context, index) {
                    return TopicsCardWidget(title: TopicsName.topics[index]);
                  },
                )),
            GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(HomeRoute());
                },
                child: ButtonWidget(title: "Next")),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
