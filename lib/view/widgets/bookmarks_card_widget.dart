import 'package:flutter/material.dart';

import '../../models/blog_model.dart';

class BookmarkCardWidget extends StatelessWidget {
  const BookmarkCardWidget({
    super.key,
    required this.bookmark,
  });

  final BlogModel bookmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              bookmark.imgPath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bookmark.category,
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    bookmark.title,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
