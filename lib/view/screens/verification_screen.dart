import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';
import '../widgets/verificationTextfieldWidget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TwoTextWidget(
                title: StringConstant.verificationScreenTitle,
                description: StringConstant.verificationScreenDescription),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verificationTextfieldWidget(),
                  verificationTextfieldWidget(),
                  verificationTextfieldWidget(),
                  verificationTextfieldWidget(),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(CreateNewPasswordRoute());
                },
                child: ButtonWidget(title: "Confirm")),
            Expanded(flex: 4, child: Container()),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      StringConstant.loginEndText,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: blackLighter),
                    ),
                    Text(
                      " Sing Up",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: blackPrimary, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
