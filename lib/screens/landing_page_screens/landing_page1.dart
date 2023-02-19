// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/reusesable_widget/reuseable_button.dart';
import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/routes/page_routes.dart';
import 'package:pay_me_app/screens/authentication/views/loginScreen.dart';
import 'package:pay_me_app/screens/authentication/views/signUpScreen.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button2.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/reusesable_widget/reuseable_button.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({Key? key}) : super(key: key);

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  late PageController pageController;
  int currentPage = 0;
  bool isLastPage = false;
  int lastPageNum = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  void firstPage() {
    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 600), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {
      // setState(() {
      //   lastPageNum = lastPageNum + 1;
      // });
      // print(lastPageNum);
      if (lastPageNum % 3 != 0) {
        nextPage();
      } else {
        firstPage();
      }
    });

    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            buildPage(
              urlImage: 'assets/firstImage.png',
              title: 'Fast Payment',
              subTitle1:
                  'Get your payment done with ease save the charges for something else',
            ),
            buildPage(
              urlImage: 'assets/secondImage.png',
              title: 'Secure Payment',
              subTitle1:
                  'Get your payment done with ease save the charges for something else',
            ),
            buildPage(
              urlImage: 'assets/thirdImage.png',
              title: 'Scan Payment',
              subTitle1:
                  'Get your payment done with ease save the charges for something else',
            ),
          ],
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SizedBox(
            height: 310.h,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotWidth: 10.w,
                      dotHeight: 7.h,
                      activeDotColor: AppColor.mainColor,
                      dotColor: Colors.black12),
                  onDotClicked: (index) => pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut),
                ),
                SizedBox(
                  height: 60.h,
                ),
                ReuseableButton(
                  width: 323.w,
                  text: isLastPage ? 'Login' : 'Continue',
                  onPressed: () {
                    !isLastPage
                        ? pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOut)
                        : Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => const LoginScreen()),
                            ),
                          );
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                ReuseableButton2(
                  width: 323.w,
                  text: isLastPage ? 'Register' : 'Skip',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPage({
    required String urlImage,
    required String title,
    required String subTitle1,
  }) {
    return Column(
      children: [
        Container(
          height: 440.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image:
                DecorationImage(image: AssetImage(urlImage), fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        NormalText(
          text: title,
          size: 32.sp,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          width: 400.w,
          height: 52.h,
          child: Text(
            subTitle1,
            style: TextStyle(
              fontFamily: 'Objectivity',
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
