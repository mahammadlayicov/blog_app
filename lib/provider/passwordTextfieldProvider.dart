import 'package:flutter/material.dart';

class PasswordTextfieldProvider extends ChangeNotifier {
  bool _isObscure = true;
  bool _isObscure2 = true;
  bool _isObscure3 = true;

  bool get isObscure => _isObscure;
  bool get isObscure2 => _isObscure2;
  bool get isObscure3 => _isObscure2;

  void changeObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }
   void changeObscure2() {
    _isObscure2 = !_isObscure2;
    notifyListeners();
  }
     void changeObscure3() {
    _isObscure3 = !_isObscure3;
    notifyListeners();
  }
}
