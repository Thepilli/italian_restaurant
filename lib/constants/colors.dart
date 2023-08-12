import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const jPrimaryColor = Color(0xFF1E4634);
  static const jPrimaryColorContainer = Color(0xFF3E926C);
  static const jSecondaryColor = Color(0xFFF7C75C);
  static const jAccentColor = Color(0xFF001BFF);
  static const jCardBgColor = Color(0xffffdcbd);

  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const completed = Color(0xFFCCFBAD);
  static const notCompleted = Color(0xFFFFB0A6);
  static const textLightColor = Colors.white;
  static const textDarkColor = Color(0xFF121212);
  static const transparent = Colors.transparent;

  static const lightBgdark = Color(0xFFFFF0DE);
  static const lightBg = Color(0xFFFFEEF1);
  static const lightBglight = Color(0xFFFFFFFF);
  static const darkBgdark = Color(0xFFB19CD7);
  static const darkBg = Color(0xFFCEC2EB);
  static const darkBglight = Color(0xFFEBE8FC);
  static const introBg = Color(0xFFB1454A);
  static const introBgLight = Color(0xFFBD6367);
  static const introBgDark = Color(0xFFB44C51);

  static const colors = [
    Colors.red,
    Colors.white,
    Colors.yellow,
    Colors.green,
    Color(0xFFABB2BF),
  ];

  static const red = Colors.red;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;
  static const green = Colors.green;
  static const grey = Color(0xFFABB2BF);
  static const orange = Color(0xFFF8C67B);

  static Color randomColor() {
    final random = Random();
    int randomIndex = random.nextInt(AppColors.colors.length);
    return AppColors.colors[randomIndex];
  }
}
