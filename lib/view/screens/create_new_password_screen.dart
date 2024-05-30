import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/string_constant.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/twoTextWidget.dart';
import 'package:provider/provider.dart';

import '../../constant/app_color.dart';
import '../../provider/passwordTextfieldProvider.dart';
import '../widgets/textfield_password_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TwoTextWidget(
                title: StringConstant.createNewPasswordScreenTitle,
                description: StringConstant.createNewPasswordScreenDescription),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldPasswordWidget(
                      suffixIcon2: Icons.visibility_off_outlined,
                      prefixIcon: Icons.lock_outline_rounded,
                      suffixIcon: Icons.visibility_outlined,
                      title: StringConstant.passwordText,
                    ),
                    TextFieldPasswordWidget(
                      suffixIcon2: Icons.visibility_off_outlined,
                      prefixIcon: Icons.lock_outline_rounded,
                      suffixIcon: Icons.visibility_outlined,
                      title: StringConstant.passwordText,
                    ),
                  ],
                )),
            GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(LoginRoute());
                },
                child: ButtonWidget(title: "Confirm")),
            Expanded(flex: 3, child: Container()),
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
