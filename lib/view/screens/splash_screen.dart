import 'package:flutter/material.dart';

import '../../constant/app_color.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purplePrimary,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
