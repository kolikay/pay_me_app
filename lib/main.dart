import 'package:flutter/material.dart';
import 'package:pay_me_app/screens/authentication/views/loginScreen.dart';
import 'package:pay_me_app/screens/authentication/views/signUpScreen.dart';
import 'package:pay_me_app/screens/authentication/views/verifyScreen.dart';
import 'package:pay_me_app/screens/landing_page_screens/landing_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false,

            // theme: ThemeData(
            //   primarySwatch: Colors.black,
            // ),
            // home: LoginScreen(),
            home: LandingPage());
      },
    );
  }
}
