// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i21;
import 'package:news_app/models/blog_model.dart' as _i20;
import 'package:news_app/view/screens/create_new_password_screen.dart' as _i5;
import 'package:news_app/view/screens/favorite_topics_screen.dart' as _i6;
import 'package:news_app/view/screens/forgot_password_screen.dart' as _i7;
import 'package:news_app/view/screens/home/article_screen.dart' as _i1;
import 'package:news_app/view/screens/home/bookmarks_screen.dart' as _i2;
import 'package:news_app/view/screens/home/categories_screen.dart' as _i3;
import 'package:news_app/view/screens/home/change_password_screen.dart' as _i4;
import 'package:news_app/view/screens/home/home_screen.dart' as _i9;
import 'package:news_app/view/screens/home/language_screen.dart' as _i10;
import 'package:news_app/view/screens/home/navbar.dart' as _i8;
import 'package:news_app/view/screens/home/profile_screen.dart' as _i13;
import 'package:news_app/view/screens/home/terms_conditions_screen.dart'
    as _i16;
import 'package:news_app/view/screens/login_screen.dart' as _i11;
import 'package:news_app/view/screens/onboarding_screen.dart' as _i12;
import 'package:news_app/view/screens/register_screen.dart' as _i14;
import 'package:news_app/view/screens/splash_screen.dart' as _i15;
import 'package:news_app/view/screens/verification_screen.dart' as _i17;
import 'package:news_app/view/screens/welcome_screen.dart' as _i18;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    ArticleRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ArticleScreen(
          blogModel: args.blogModel,
          key: args.key,
        ),
      );
    },
    BookmarksRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookmarksScreen(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CategoriesScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChangePasswordScreen(),
      );
    },
    CreateNewPasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateNewPasswordScreen(),
      );
    },
    FavoriteTopicsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavoriteTopicsScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
      );
    },
    HomeRoute2.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomeScreen2(),
      );
    },
    LanguageRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LanguageScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.LoginScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OnboardingScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RegisterScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashScreen(),
      );
    },
    TermsConditionsRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.TermsConditionsScreen(),
      );
    },
    VerificationRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.VerificationScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ArticleScreen]
class ArticleRoute extends _i19.PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({
    required _i20.BlogModel blogModel,
    _i21.Key? key,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ArticleRoute.name,
          args: ArticleRouteArgs(
            blogModel: blogModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static const _i19.PageInfo<ArticleRouteArgs> page =
      _i19.PageInfo<ArticleRouteArgs>(name);
}

class ArticleRouteArgs {
  const ArticleRouteArgs({
    required this.blogModel,
    this.key,
  });

  final _i20.BlogModel blogModel;

  final _i21.Key? key;

  @override
  String toString() {
    return 'ArticleRouteArgs{blogModel: $blogModel, key: $key}';
  }
}

/// generated route for
/// [_i2.BookmarksScreen]
class BookmarksRoute extends _i19.PageRouteInfo<void> {
  const BookmarksRoute({List<_i19.PageRouteInfo>? children})
      : super(
          BookmarksRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CategoriesScreen]
class CategoriesRoute extends _i19.PageRouteInfo<void> {
  const CategoriesRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChangePasswordScreen]
class ChangePasswordRoute extends _i19.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CreateNewPasswordScreen]
class CreateNewPasswordRoute extends _i19.PageRouteInfo<void> {
  const CreateNewPasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CreateNewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNewPasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FavoriteTopicsScreen]
class FavoriteTopicsRoute extends _i19.PageRouteInfo<void> {
  const FavoriteTopicsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          FavoriteTopicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteTopicsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i19.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomeScreen2]
class HomeRoute2 extends _i19.PageRouteInfo<void> {
  const HomeRoute2({List<_i19.PageRouteInfo>? children})
      : super(
          HomeRoute2.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute2';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LanguageScreen]
class LanguageRoute extends _i19.PageRouteInfo<void> {
  const LanguageRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginScreen]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OnboardingScreen]
class OnboardingRoute extends _i19.PageRouteInfo<void> {
  const OnboardingRoute({List<_i19.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProfileScreen]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RegisterScreen]
class RegisterRoute extends _i19.PageRouteInfo<void> {
  const RegisterRoute({List<_i19.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashScreen]
class SplashRoute extends _i19.PageRouteInfo<void> {
  const SplashRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TermsConditionsScreen]
class TermsConditionsRoute extends _i19.PageRouteInfo<void> {
  const TermsConditionsRoute({List<_i19.PageRouteInfo>? children})
      : super(
          TermsConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsConditionsRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.VerificationScreen]
class VerificationRoute extends _i19.PageRouteInfo<void> {
  const VerificationRoute({List<_i19.PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.WelcomeScreen]
class WelcomeRoute extends _i19.PageRouteInfo<void> {
  const WelcomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
