import 'package:flutter/material.dart';

class SelectTopicsProvider extends ChangeNotifier {
  List<String> _topics = [];
  List<String> get topics => _topics;
  bool isExist(String title) => _topics.contains(title);

  void toggleFav(String title) {
    _topics.Exsist(title);
    notifyListeners();
  }
}
extension SelectTopicsNotifier<T> on List {
  void Exsist(T value) {
    contains(value) ? remove(value) : add(value);
  }
}
