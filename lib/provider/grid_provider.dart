import 'package:flutter/cupertino.dart';

class GridProvider extends ChangeNotifier {
  bool _grid = false;
  bool get grid => _grid;

  void selectGrid() {
    _grid = true;
    notifyListeners();
  }

  void selectGrid2() {
    _grid = false;
    notifyListeners();
  }
}
