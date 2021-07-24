import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/pages/chat/main.dart';
import 'package:doctor_nest/pages/dashboard/main.dart';
import 'package:doctor_nest/pages/intro/main.dart';
import 'package:doctor_nest/pages/register/main.dart';
import 'package:doctor_nest/pages/register/mobile/main.dart';
import 'package:doctor_nest/pages/register/mobile/otp/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DoctorNest());
}

class DoctorNest extends StatelessWidget {
  @override
  void initState() async {
    await () => ("");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/intro",
      onGenerateRoute: (RouteSettings settings) {
        print('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          "/": (context) => HomeDashBoard(),
          "/intro": (context) => IntroScreen(),
          "/register": (context) => RegisterHome(),
          "/register/mobile": (context) => RegisterMobile(),
          "/register/mobile/otp": (context) => MobileOtp(settings.arguments)
        };
        WidgetBuilder? builder = routes[settings.name];
        return MaterialPageRoute(builder: (ctx) => builder!(ctx));
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
