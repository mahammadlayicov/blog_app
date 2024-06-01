import 'package:flutter/material.dart';
import 'package:news_app/constant/blogs.dart';
import 'package:provider/provider.dart';

import 'package:news_app/models/blog_model.dart';

import '../../constant/app_color.dart';
import '../../provider/bookmark_provider.dart';
import '../../provider/grid_provider.dart';

class ArticleCardMiniWidget extends StatelessWidget {
  BlogModel blogModel;
  ArticleCardMiniWidget({
    Key? key,
    required this.blogModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: EdgeInsets.only(bottom: 20),
          color: greyLighter,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      blogModel.imgPath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(blogModel.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 5,
            top: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () {
                    Provider.of<BookmarksProvider>(context, listen: false)
                        .toggleBookmarks(blogModel);
                  },
                  icon: Icon(
                    size: 25,
                    color: purplePrimary,
                    Provider.of<BookmarksProvider>(context)
                            .isExist(blogModel)
                        ? Icons.bookmark
                        : Icons.bookmark_border_outlined,
                  )),
            ))
      ],
    );
  }
}
