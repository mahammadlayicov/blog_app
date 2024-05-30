import 'package:flutter/foundation.dart';

class OnboardingProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  void selectedIndex(int selectedIndex) {
    if (_index != selectedIndex) {
      _index = selectedIndex;
      notifyListeners();
    }
  }
}
