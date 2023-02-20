import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/screens/authentication/views/loginScreen.dart';
import 'package:pay_me_app/screens/authentication/views/signUpScreen.dart';
import 'package:pay_me_app/screens/authentication/views/verifyScreen.dart';
import 'package:pay_me_app/screens/landing_page_screens/landing_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_me_app/screens/landing_page_screens/landing_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,

            theme:  ThemeData(
              primarySwatch: Palette.kToDark,
            ),
            // home: LoginScreen(),
            home:const LandingPage());
      },
    );
  }
}
 const MaterialColor myColor =  MaterialColor(0xff6F2AF4, <int, Color>{50: Color(0xff6F2AF4)});