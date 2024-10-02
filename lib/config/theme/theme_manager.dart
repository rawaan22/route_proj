import 'package:flutter/material.dart';
import 'package:graduation_proj/core/constants/constants.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Constants.yellowColor,

    scaffoldBackgroundColor: const Color(0xff121312),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 20),
      selectedIconTheme: IconThemeData(color: Constants.yellowColor, size: 20),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        color: Constants.yellowColor,
      ),
      unselectedItemColor: Colors.white,
      selectedItemColor: Constants.yellowColor,
      backgroundColor: Color(0XFF1A1A1A),
    ),

    // Tyoography //

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 20,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 18,
      ),
      bodyMedium: TextStyle(
        color: Color(0XFFCBCBCB),
        fontSize: 12,
      ),
      bodySmall: TextStyle(
        color: Color(0XFFCBCBCB),
        fontSize: 8,
      ),
    ),
  );
}
