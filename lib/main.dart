import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/pages/dashboard/main.dart';
import 'package:doctor_nest/pages/intro/main.dart';
import 'package:doctor_nest/pages/register/main.dart';
import 'package:doctor_nest/pages/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DoctorNest());
}

class DoctorNest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/intro",
      routes: {
        "/": (context) => HomeDashBoard(),
        "/intro": (context) => IntroScreen()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: CustomColors.app_bg_scaffold,
          primaryColor: CustomColors.app_primary,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: CustomColors.bodyTextColor,
              ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
