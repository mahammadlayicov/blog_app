import 'package:flutter/material.dart';
import 'package:news_app/provider/select_topics_provider.dart';
import 'package:provider/provider.dart';

import '../../constant/app_color.dart';

class TopicsCardWidget extends StatelessWidget {
  String title;
  TopicsCardWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectTopicsProvider>(
      builder: (context, topicsProvider, child) {
        return GestureDetector(
          onTap: () {
            topicsProvider.toggleFav(title);
          },
          child: Container(
            decoration: BoxDecoration(
                color:
                    topicsProvider.isExist(title) ? purplePrimary : greyLighter,
                borderRadius: BorderRadius.circular(10)),
            height: 75,
            width: 50,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: topicsProvider.isExist(title)
                        ? whiteColor
                        : greyDarker),
              ),
            ),
          ),
        );
      },
    );
  }
}
