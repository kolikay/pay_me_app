

import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/screens/authentication/views/loginScreen.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button2.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/reusesable_widget/reuseable_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  CarouselController carouselController = CarouselController();
  int currentPage = 0;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              viewportFraction: 0.99,
              height: 913.h,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayAnimationDuration: const Duration(milliseconds: 600),
              onPageChanged: (index, reason) {
                setState(() {
                  isLastPage = index == 2;
                  currentPage = index;
                });
              },
            ),
            items: [
              buildPage(
                urlImage: 'assets/landingImage1.JPG',
                title: 'Fast Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
              buildPage(
                urlImage: 'assets/landingImage2.JPG',
                title: 'Secure Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
              buildPage(
                urlImage: 'assets/landingImage3.JPG',
                title: 'Scan Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SizedBox(
            height: 280.h,
            child: Column(
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: currentPage,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotWidth: 10.w,
                      dotHeight: 7.h,
                      activeDotColor: AppColor.mainColor,
                      dotColor: Colors.black12),
                  onDotClicked: (index) => carouselController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut),
                ),
                SizedBox(
                  height: 100.h,
                ),
                ReuseableButton(
                  width: 323.w,
                  text: isLastPage ? 'Login' : 'Continue',
                  onPressed: () {
                    !isLastPage
                        ? carouselController.nextPage(
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
          height: 450.h,
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
