import 'package:flutter/material.dart';
import 'package:pay_me_app/screens/landing_page_screens/landing_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Scholar Padi',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          // home: LoginScreen(),
          home: LandingPage()
          
        );
      },
    );
  }
}
