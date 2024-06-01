import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/config/contex_extension.dart';
import 'package:news_app/view/widgets/button_widget.dart';

import '../../constant/app_color.dart';
import '../../constant/string_constant.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 8,
              child: Image.asset(
                  fit: BoxFit.contain, "assets/images/welcome.png")),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  StringConstant.appName,
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
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: context.lowValue),
                  child: GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(LoginRoute());
                    },
                    child: ButtonWidget(
                      title: StringConstant.buttonWelcomeText,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
