// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseableButton2 extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final double? width;
  double? height = 50.h;
  final double textSize;
  final bool isActive;
  final Color backGroundColor;
  final Color textColor;

  ReuseableButton2(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height = 50,
      this.textSize = 16,
      this.width = 327,
      this.isActive = true,
      this.backGroundColor = Colors.white,
      this.textColor = AppColor.mainColor,
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1, color:AppColor.mainColor),
      ),
      margin: EdgeInsets.fromLTRB(20.0.w, 0.0.h, 20.0.w, 0.0.h),
      height: height,
      width: width,
      child: Center(
        child: NormalText(
              size: textSize,
              color: textColor,
              fontWeight: FontWeight.normal,
              text: text,
            ),
      ),

    );
  }
}
