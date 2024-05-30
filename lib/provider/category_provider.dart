import 'package:flutter/material.dart';

import '../models/language_model.dart';

class CategoryProvider extends ChangeNotifier {
  String _selectedCategory = 'Random';
  String get selectedCategory => _selectedCategory;
  void selectCategory(String title) {
    _selectedCategory = title;
    notifyListeners();
  }
}
