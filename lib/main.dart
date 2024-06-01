import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.dart';
import 'package:news_app/provider/bookmark_provider.dart';
import 'package:news_app/provider/category_provider.dart';
import 'package:news_app/provider/grid_provider.dart';
import 'package:news_app/provider/language_provider.dart';
import 'package:news_app/provider/onboarding_provider.dart';
import 'package:news_app/provider/passwordTextfieldProvider.dart';
import 'package:news_app/provider/select_topics_provider.dart';
import 'package:news_app/view/screens/favorite_topics_screen.dart';
import 'package:news_app/view/screens/home/change_password_screen.dart';
import 'package:news_app/view/screens/home/navbar.dart';
import 'package:news_app/view/screens/onboarding_screen.dart';
import 'package:news_app/view/screens/splash_screen.dart';
import 'package:news_app/view/screens/verification_screen.dart';
import 'package:news_app/view/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'view/screens/create_new_password_screen.dart';
import 'view/screens/forgot_password_screen.dart';
import 'view/screens/home/article_screen.dart';
import 'view/screens/home/language_screen.dart';
import 'view/screens/login_screen.dart';
import 'view/screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => OnboardingProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => PasswordTextfieldProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => SelectTopicsProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => LanguageProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CategoryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => GridProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => BookmarksProvider(),
          )
        ],
        child: MaterialApp.router(
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
