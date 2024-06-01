import 'package:flutter/material.dart';
import 'package:news_app/constant/blogs.dart';
import '../models/blog_model.dart';
import '../models/language_model.dart';

class CategoryProvider extends ChangeNotifier {
  String _selectedCategory = 'Random';
  String get selectedCategory => _selectedCategory;
  List<BlogModel> _list = mockupSportsData;
  List<BlogModel> get list => _list;

  void createList() {
    List<BlogModel> tempList = [];
    if (_selectedCategory == "Random") {
      tempList = List.from(mockupSportsData);
    } else {
      for (var element in mockupSportsData) {
        if (element.category == _selectedCategory) {
          tempList.add(element);
        }
      }
    }
    _list = tempList;
    notifyListeners();
  }

  void selectCategory(String title) {
    _selectedCategory = title;
    createList();
  }
}
