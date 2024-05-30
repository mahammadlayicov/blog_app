import 'package:flutter/material.dart';

import '../models/language_model.dart';

class LanguageProvider extends ChangeNotifier {
 final  List<LanguageModel>  _languages = [
     LanguageModel(title: "English"),
    LanguageModel(title: "Turkish"),
    LanguageModel(title: "German"),
    LanguageModel(title: "Spanish")
  ];
  String _selectedLanguage = '';

  List<LanguageModel> get languages => _languages;

  String get selectedLanguage => _selectedLanguage;

  void selectLanguage(String title) {
    _selectedLanguage = title;
    notifyListeners();
  }
}
