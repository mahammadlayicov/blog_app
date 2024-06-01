import 'package:flutter/material.dart';
import 'package:news_app/models/blog_model.dart';

class BookmarksProvider extends ChangeNotifier {
  List<BlogModel> _bookmarks = [];
  List<BlogModel> get bookmarks => _bookmarks;

  bool isExist(BlogModel blogModel) => _bookmarks.contains(blogModel);

  void toggleBookmarks(BlogModel blogModel) {
    _bookmarks.Exsist(blogModel);
    notifyListeners();
  }
}

extension SelectBookmarksNotifier<T> on List {
  void Exsist(T value) {
    contains(value) ? remove(value) : add(value);
  }
}
