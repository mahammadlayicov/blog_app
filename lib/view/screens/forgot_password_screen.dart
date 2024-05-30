import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/view/screens/login_screen.dart';
import 'package:news_app/view/screens/verification_screen.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/textfield_password_widget.dart';
import 'package:provider/provider.dart';

import '../../constant/app_color.dart';
import '../widgets/textfield_mail_widget.dart';
import '../widgets/twoTextWidget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TwoTextWidget(
                title: StringConstant.forgotScreenTitle,
                description: StringConstant.forgotScreenDescription),
            TextFieldMailWidget(
              prefixIcon: Icons.mail_outline_outlined,
              title: StringConstant.emailText,
            ),
            GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(VerificationRoute());
                },
                child: ButtonWidget(title: StringConstant.nextText)),
            Expanded(
              flex: 5,
              child: Container(),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      StringConstant.loginEndText,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: blackLighter),
                    ),
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(RegisterRoute());
                      },
                      child: Text(
                        " Sing Up",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: blackPrimary, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
