import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/provider/passwordTextfieldProvider.dart';
import 'package:news_app/view/screens/forgot_password_screen.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:gap/gap.dart';
import 'package:news_app/view/widgets/textfield_mail_widget.dart';
import 'package:provider/provider.dart';
import '../widgets/social_singin_button_widget.dart';
import '../widgets/textfield_password_widget.dart';
import '../widgets/twoTextWidget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: TwoTextWidget(
                    description: StringConstant.loginWelcomeDetail,
                    title: StringConstant.loginWelcomeBack),
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
                      TextFieldPasswordWidget(
                        suffixIcon2: Icons.visibility_off_outlined,
                        prefixIcon: Icons.lock_outline_rounded,
                        suffixIcon: Icons.visibility_outlined,
                        title: StringConstant.passwordText,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push(ForgotPasswordRoute());
                          },
                          child: Text(StringConstant.forgetPasswordText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: greyPrimary)),
                        ),
                      )
                    ],
                  )),
              Flexible(
                flex: 2,
                child: GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(FavoriteTopicsRoute());
                    },
                    child: ButtonWidget(title: StringConstant.buttonLoginText)),
              ),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "or",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: greyPrimary),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialSignInButton(
                        icon: Icons.facebook,
                        text: 'Sign In with Google',
                        color: Colors.white,
                        textColor: greyDarker,
                        borderColor: greyLight,
                        imagePath: 'assets/images/google-logo.png',
                        onPressed: () {},
                      ),
                      SocialSignInButton(
                        icon: Icons.facebook,
                        text: 'Sign In with Facebook',
                        color: Colors.white,
                        textColor: greyDarker,
                        borderColor: greyLight,
                        imagePath: 'assets/images/facebook-logo.png',
                        onPressed: () {},
                      ),
                    ],
                  )),
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
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(RegisterRoute());
                        },
                        child: Text(
                          " Sing Up",
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
          ),
        ),
      ),
    );
  }
}
