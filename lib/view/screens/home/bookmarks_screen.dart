import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';

@RoutePage()
class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

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
                  title: "Bookmarks",
                  description: " Saved articles to the library"),
            ),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: purpleLighter,
                        radius: 50,
                        child: Icon(Icons.book_outlined,
                            size: 30, color: purplePrimary),
                      )),
                  Gap(30),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "You haven't saved any articles yet. Start reading and bookmarking them now",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
