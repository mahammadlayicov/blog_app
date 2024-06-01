import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/models/blog_model.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:news_app/view/widgets/bookmarks_card_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';

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
                description: "Saved articles to the library",
              ),
            ),
            Expanded(
              flex: 10,
              child: Consumer<BookmarksProvider>(
                builder: (context, bookmarksProvider, child) {
                  if (bookmarksProvider.bookmarks.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            backgroundColor: purpleLighter,
                            radius: 50,
                            child: Icon(
                              Icons.book_outlined,
                              size: 30,
                              color: purplePrimary,
                            ),
                          ),
                        ),
                        Gap(30),
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 60.0),
                            child: Text(
                              "You haven't saved any articles yet. Start reading and bookmarking them now",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListView.builder(
                      itemCount: bookmarksProvider.bookmarks.length,
                      itemBuilder: (context, index) {
                        var bookmark = bookmarksProvider.bookmarks[index];
                        return Dismissible(
                            key: UniqueKey(),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              bookmarksProvider.toggleBookmarks(bookmark);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('${bookmark.title} removed')),
                              );
                            },
                            background: Container(
                              color: Colors.red,
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  context.router
                                      .push(ArticleRoute(blogModel: bookmark));
                                },
                                child: BookmarkCardWidget(bookmark: bookmark)));
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
