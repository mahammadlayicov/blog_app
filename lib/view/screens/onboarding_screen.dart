import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/config/contex_extension.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/provider/onboarding_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/button_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgs = [
      "assets/images/1.png",
      "assets/images/2.png",
      "assets/images/3.png"
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: imgs.length,
                  options: CarouselOptions(
                    autoPlay: true,
                    initialPage: 0,
                    animateToClosest: true,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    height: context.dynamicHeight(0.6),
                    enlargeFactor: 0.2,
                    onPageChanged: (index, reason) {
                      context.read<OnboardingProvider>().selectedIndex(index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      child: Image.asset(imgs[index]),
                    );
                  },
                ),
                Container(
                  child: DotsIndicator(
                    dotsCount: imgs.length,
                    position: context.watch<OnboardingProvider>().index,
                    decorator: DotsDecorator(
                      activeColor: purplePrimary,
                      color: greyLight,
                      activeSize: const Size(24.0, 9.0),
                      size: const Size(9.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    StringConstant.onboardingTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: blackPrimary),
                  ),
                  context.emptyWidgetHeight,
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      StringConstant.onboardingDetail,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: greyPrimary),
                    ),
                  )
                ],
              )),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                AutoRouter.of(context).push(WelcomeRoute());
              },
              child: ButtonWidget(
                title: StringConstant.nextText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
