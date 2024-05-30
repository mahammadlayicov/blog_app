import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ArticleRoute.page, path: '/article'),
        AutoRoute(
            page: CreateNewPasswordRoute.page, path: '/create-new-password'),
        AutoRoute(page: FavoriteTopicsRoute.page, path: '/favorite-topics'),
        AutoRoute(page: ForgotPasswordRoute.page, path: '/forgot-password'),
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
              children: [
                AutoRoute(page: LanguageRoute.page, path: 'language'),
                AutoRoute(
                    page: TermsConditionsRoute.page, path: 'terms-conditions'),
                AutoRoute(
                    page: ChangePasswordRoute.page, path: 'change-password'),
              ],
            ),
          ],
        ),
        AutoRoute(page: LoginRoute.page, path: '/login'),
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/onboarding',
          initial: true,
        ),
        AutoRoute(page: RegisterRoute.page, path: '/register'),
        AutoRoute(page: SplashRoute.page, path: '/splash'),
        AutoRoute(page: VerificationRoute.page, path: '/verification'),
        AutoRoute(page: WelcomeRoute.page, path: '/welcome'),
      ];
}
