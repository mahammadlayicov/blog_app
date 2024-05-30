import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/button_widget.dart';
import 'package:news_app/view/widgets/textfield_password_widget.dart';
import 'package:provider/provider.dart';

import '../../../constant/app_color.dart';
import '../../../constant/string_constant.dart';
import '../../../provider/passwordTextfieldProvider.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Icon(color: greyPrimary, Icons.arrow_back)),
        centerTitle: true,
        title: Text(
            style: TextStyle(fontWeight: FontWeight.w500), "Change Password"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              flex: 3,
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
                  TextFieldPasswordWidget(
                    suffixIcon2: Icons.visibility_off_outlined,
                    prefixIcon: Icons.lock_outline_rounded,
                    suffixIcon: Icons.visibility_outlined,
                    title: StringConstant.passwordText,
                  ),
                ],
              ),
            ),
            ButtonWidget(title: "Change Password"),
            Expanded(
              flex: 5,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
