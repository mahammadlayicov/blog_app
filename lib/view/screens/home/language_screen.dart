import 'package:flutter/material.dart';
import 'package:news_app/models/language_model.dart';
import 'package:news_app/provider/language_provider.dart';
import 'package:provider/provider.dart';

import '../../../constant/app_color.dart';
import '../../widgets/language_widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Icon(color: greyPrimary, Icons.arrow_back)),
        centerTitle: true,
        title: Text(style: TextStyle(fontWeight: FontWeight.w500), "Language"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) {
            return ListView.builder(
              itemCount: languageProvider.languages.length,
              itemBuilder: (context, index) {
                final language = languageProvider.languages[index];
                final isSelected =
                    languageProvider.selectedLanguage == language.title;
                return GestureDetector(
                  onTap: () {
                    languageProvider.selectLanguage(language.title);
                  },
                  child: LanguageWidget(
                    isSelected: isSelected,
                    languageModel: language,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
