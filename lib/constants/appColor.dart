
// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';

class AppColor {

 static const Color mainColor = Color(0xff6F2AF4);

static const Color dullBlack = Colors.black;

// static const Color dullerBlack = Color(0xffbfbfbf);

static const Color dullerBlack = Colors.black;

static const Color darkContainer = Color(0xffE5E5E5);

static const Color iconBlack = Color(0xff000001);




}



class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xff6F2AF4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xff6F2AF4 ),//10% 
      100: const Color(0xff6F2AF4),//20% 
      200: const Color(0xff6F2AF4),//30% 
      300: const Color(0xff6F2AF4),//40% 
      400: const Color(0xff6F2AF4),//50% 
      500: const Color(0xff6F2AF4),//60% 
      600: const Color(0xff451c16),//70% 
      700: const Color(0xff2e130e),//80% 
      800: const Color(0xff170907),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
} 