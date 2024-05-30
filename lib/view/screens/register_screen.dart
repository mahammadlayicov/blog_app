import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/textfield_mail_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';

import '../../constant/app_color.dart';
import '../../provider/passwordTextfieldProvider.dart';
import '../widgets/textfield_password_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: TwoTextWidget(
                    title: StringConstant.registerScreenTitle,
                    description: StringConstant.registerScreenDescription),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldMailWidget(
                      prefixIcon: Icons.mail_outline_outlined,
                      title: StringConstant.emailText,
                    ),
                    TextFieldMailWidget(
                      prefixIcon: Icons.mail_outline_outlined,
                      title: StringConstant.emailText,
                    ),
                    TextFieldPasswordWidget(
                      suffixIcon2: Icons.visibility_off_outlined,
                      prefixIcon: Icons.lock_outline_rounded,
                      suffixIcon: Icons.visibility_outlined,
                      title: StringConstant.passwordText,
                    ),
                    TextFieldPasswordWidget(
                      onPressedCallback: () {
                        Provider.of<PasswordTextfieldProvider>(context,
                                listen: false)
                            .changeObscure2();
                      },
                      suffixIcon2: Icons.visibility_off_outlined,
                      prefixIcon: Icons.lock_outline_rounded,
                      suffixIcon: Icons.visibility_outlined,
                      title: StringConstant.passwordText,
                    ),
                  ],
                ),
              ),
              ButtonWidget(title: "Sign Up"),
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: blackLighter),
                      ),
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(LoginRoute());
                        },
                        child: Text(
                          "  Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: blackPrimary,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
