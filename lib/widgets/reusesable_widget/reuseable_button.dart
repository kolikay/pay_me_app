// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseableButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final double? width;
  double? height = 50.h;
  final double textSize;
  final bool isActive;
  final Color backGroundColor;
  final Color textColor;

  ReuseableButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height = 50,
      this.textSize = 16,
      this.width = 366,
      this.isActive = true,
      this.backGroundColor = AppColor.mainColor,
      this.textColor = Colors.white,
      
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            backgroundColor: backGroundColor,
            minimumSize: Size.fromHeight(70.h),
            primary: Colors.white,
          ),
          onPressed: isActive ? onPressed : null,
          child: NormalText(
            size: textSize,
            color: textColor,
            fontWeight: FontWeight.normal,
            text: text,
          )),
    );
  }
}
