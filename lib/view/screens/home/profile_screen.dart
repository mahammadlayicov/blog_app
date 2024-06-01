import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:news_app/config/app_router.gr.dart';
import 'package:news_app/constant/app_color.dart';
import 'package:news_app/view/screens/home/change_password_screen.dart';
import 'package:news_app/view/screens/home/terms_conditions_screen.dart';

import '../../widgets/profile_build_widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: whiteColor,
                          foregroundImage: NetworkImage(
                              "https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png"),
                        ),
                        Gap(30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mahammad Layıcov",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "mahammadlayicov@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileBuildWodget(
                      widget: Switch(
                          activeTrackColor: purplePrimary,
                          activeColor: whiteColor,
                          value: true,
                          onChanged: (value) {}),
                      title: "Notifications",
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(LanguageRoute());
                      },
                      child: ProfileBuildWodget(
                        widget: Icon(
                          Icons.arrow_forward_ios,
                          color: greyDarker,
                        ),
                        title: "Language",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(ChangePasswordRoute());
                      },
                      child: ProfileBuildWodget(
                        widget: Icon(
                          Icons.arrow_forward_ios,
                          color: greyDarker,
                        ),
                        title: "Change Password",
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileBuildWodget(
                      widget: Icon(
                        Icons.arrow_forward_ios,
                        color: greyDarker,
                      ),
                      title: "Privacy",
                    ),
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(TermsConditionsRoute());
                      },
                      child: ProfileBuildWodget(
                        widget: Icon(
                          Icons.arrow_forward_ios,
                          color: greyDarker,
                        ),
                        title: "Terms & Conditions",
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileBuildWodget(
                    widget: Icon(
                      size: 30,
                      Icons.exit_to_app_rounded,
                      color: greyDarker,
                    ),
                    title: "Terms & Conditions",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
