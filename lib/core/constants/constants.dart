import 'package:flutter/material.dart';

import '../../../main.dart';

class Constants {
  static const Color yellowColor = Color(0XFFFFBB3B);
  static const Color unSelectedIcon = Color(0XFFC6C6C6);

  static var theme = Theme.of(navigatorKey.currentState!.context);

  //   responsive design   //

  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static String apiKey = 'd48ad7d4e74aa38da0d47d646eacfb36';
  //
  // class MediaQueryUtils {
  // static double getScreenHeight(BuildContext context) {
  // return MediaQuery.of(context).size.height;
  // }
  // static double getScreenWidth(BuildContext context) {
  // return MediaQuery.of(context).size.width;
  // }
  //
  // static double getHeightPercentage(BuildContext context, double percentage) {
  // return MediaQuery.of(context).size.height * percentage;
  // }
  //
  // static double getWidthPercentage(BuildContext context, double percentage) {
  // return MediaQuery.of(context).size.width * percentage;
  // }
  // static EdgeInsets getScreenPadding(BuildContext context) {
  // return MediaQuery.of(context).padding;
  // }
  // }
  // static double getPixelRatio(BuildContext context) {
  // return MediaQuery.of(context).devicePixelRatio;
  // }
}
