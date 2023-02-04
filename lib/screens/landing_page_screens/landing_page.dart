import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/routes/page_routes.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button2.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/reusesable_widget/reuseable_button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController pageController;
  int currentPage = 0;
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();

    pageController =
        PageController(initialPage: currentPage, viewportFraction: 0.99.w);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              buildPage(
                urlImage: 'landingImage1.JPG',
                title: 'Fast Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
              buildPage(
                urlImage: 'landingImage2.JPG',
                title: 'Secure Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
              buildPage(
                urlImage: 'landingImage3.JPG',
                title: 'Scan Payment',
                subTitle1:
                    'Get your payment done with ease save the charges for something else',
              ),
            ],
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
          height: 425.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image:
                DecorationImage(image: AssetImage(urlImage), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 25.h,
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
          width: 300.w,
          child: Text(
            subTitle1,
            style: TextStyle(
              fontFamily: 'Objectivity',
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              dotWidth: 10.w,
              dotHeight: 5.h,
              activeDotColor: AppColor.mainColor,
              dotColor: Colors.black12),
          onDotClicked: (index) => pageController.animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut),
        ),
        SizedBox(
          height: 40.h,
        ),
        ReuseableButton(
          text: 'Sign Up',
          onPressed: () {},
        ),
        SizedBox(
          height: 32.h,
        ),
        ReuseableButton2(
          text: 'Login',
          onPressed: () {},
        ),
      ],
    );
  }
}
