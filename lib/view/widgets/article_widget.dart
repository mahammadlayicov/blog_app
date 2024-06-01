import 'package:flutter/material.dart';
import 'package:news_app/constant/blogs.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:provider/provider.dart';

import 'package:news_app/models/blog_model.dart';
import 'package:provider/provider.dart';

import '../../constant/app_color.dart';
import '../../provider/grid_provider.dart';

class ArticleCardWidget extends StatelessWidget {
  BlogModel blogModel;
  ArticleCardWidget({
    Key? key,
    required this.blogModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(blogModel.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    IconButton(
                      onPressed: () {
                        Provider.of<BookmarksProvider>(context, listen: false)
                            .toggleBookmarks(blogModel);
                      },
                      icon: Icon(
                        Provider.of<BookmarksProvider>(context)
                                .isExist(blogModel)
                            ? Icons.bookmark
                            : Icons.bookmark_border_outlined,
                        color: purplePrimary,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
