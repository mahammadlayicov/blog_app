import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/view/screens/home/bookmarks_screen.dart';
import 'package:news_app/view/screens/home/categories_screen.dart';
import 'package:news_app/view/screens/home/home_screen.dart';
import 'package:news_app/view/screens/home/profile_screen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute2(),
        CategoriesRoute(),
        BookmarksRoute(),
        ProfileRoute()
      ],
      builder: (context, child) {
        final tabRoutes = AutoTabsRouter.of(context);
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarColor: navigationBarColor,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          child: Scaffold(
            body: AutomaticKeepAlive(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  HomeScreen2(),
                  CategoriesScreen(),
                  BookmarksScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
            bottomNavigationBar: WaterDropNavBar(
              iconSize: 35,
              waterDropColor: purplePrimary,
              bottomPadding: 8,
              backgroundColor: navigationBarColor,
              onItemSelected: (int index) {
                setState(() {
                  tabRoutes.setActiveIndex(index);
                  selectedIndex = index;
                });
                pageController.animateToPage(selectedIndex,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOutQuad);
              },
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  filledIcon: Icons.home,
                  outlinedIcon: Icons.home_outlined,
                ),
                BarItem(
                  filledIcon: Icons.grid_view_rounded,
                  outlinedIcon: Icons.grid_view_outlined,
                ),
                BarItem(
                  filledIcon: Icons.bookmark,
                  outlinedIcon: Icons.bookmark_outline,
                ),
                BarItem(
                  filledIcon: Icons.person,
                  outlinedIcon: Icons.person_outlined,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
