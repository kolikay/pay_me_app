

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NormalText(text: 'WELCOME TO PAY ME', size: 30, color: AppColor.mainColor,));
  }
}