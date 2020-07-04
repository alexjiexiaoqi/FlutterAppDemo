import 'package:flutter/material.dart';

///颜色
class AppColors {
  static const Color color_595959 = Color(0xff595959);
  static const Color color_ff5a37 = Color(0xffff5a37);
  static const Color color_dddddd = Color(0xffdddddd);
  static const Color color_f6f6f6 = Color(0xfff6f6f6);
  static const Color color_8C8C8C = Color(0xff8C8C8C);
  static const Color color_9AD708 = Color(0xff9AD708);
  static const Color color_BF6466 = Color(0xFFBF6466);
  static const Color color_3A5ED2 = Color(0xFF3A5ED2);
  static const Color color_D9D9D9 = Color(0xFFD9D9D9);
  static const Color color_FFEE00 = Color(0xFFFFEE00);
  static const Color color_FF8105 = Color(0xFFFF8105);
  static const Color color_D25755 = Color(0xFFD25755);
}

///文本样式
class Constant {
  static const largeTextSize = 30.0;
  static const bigTextSize = 24.0;
  static const normalTextSize = 18.0;
  static const middleTextWhiteSize = 16.0;
  static const smallTextSize = 14.0;
  static const minTextSize = 12.0;

  static const homeTopTitleText =
      TextStyle(fontSize: smallTextSize, color: AppColors.color_595959);
  static const homeTopValueText =
      TextStyle(fontSize: largeTextSize, color: AppColors.color_ff5a37);
  static const homeTopUnitText =
      TextStyle(fontSize: minTextSize, color: AppColors.color_8C8C8C);
  static const iconItemTopText = TextStyle(fontSize: 12, color: Colors.white);
}
