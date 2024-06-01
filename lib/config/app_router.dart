import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideRightWithFade,
            page: ArticleRoute.page,
            path: '/article'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: CreateNewPasswordRoute.page,
            path: '/create-new-password'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: FavoriteTopicsRoute.page,
            path: '/favorite-topics'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: ForgotPasswordRoute.page,
            path: '/forgot-password'),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          children: [
            AutoRoute(page: HomeRoute2.page, path: 'home2'),
            AutoRoute(page: CategoriesRoute.page, path: 'categories'),
            AutoRoute(page: BookmarksRoute.page, path: 'bookmarks'),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.fadeIn,
            page: LanguageRoute.page,
            path: '/language'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: TermsConditionsRoute.page,
            path: '/terms-conditions'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: ChangePasswordRoute.page,
            path: '/change-password'),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        CustomRoute(
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: OnboardingRoute.page,
          path: '/onboarding',
        ),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.slideLeft,
            page: RegisterRoute.page,
            path: '/register'),
        AutoRoute(page: SplashRoute.page, path: '/splash'),
        CustomRoute(
            transitionsBuilder: TransitionsBuilders.fadeIn,
            page: VerificationRoute.page,
            path: '/verification'),
        AutoRoute(page: WelcomeRoute.page, path: '/welcome'),
      ];
}
