import 'package:flutter/material.dart';

class AppColors {
  // static const Color primaryColor = Color(0xFF6887C5);
  static const Color primaryColor = Color(0xFF5F487F);
  static const Color secondaryColor = Color(0xFFF08C8E);
  static const Color tertiaryColor = Color(0xFFFEE0AB);
  static const Color hintColor = Colors.black;
  static const Color errorColor = Color(0xFFcc3300);
  static const Color successColor = Color(0xFF339900);
  static const Color scaffoldBackgroundColor = Color(0xffF9F9F9);
  static const Color darkScaffoldBackgroundColor = Colors.black45;
  static const Color cafeBrown =  Color(0xff632B13);
}

class AppColorSchemes {
  // --------------------------------------
  // Light Color scheme
  // --------------------------------------
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryColor,
    onSecondary: Colors.white,
    error: AppColors.errorColor,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    outline: AppColors.hintColor,
    tertiary: AppColors.tertiaryColor,
    onTertiary: Colors.white,
  );

  // --------------------------------------
  // Dark Color scheme
  // --------------------------------------
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryColor,
    onSecondary: Colors.white,
    error: AppColors.errorColor,
    onError: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
    outline: AppColors.hintColor,
    tertiary: AppColors.tertiaryColor,
    onTertiary: Colors.white,
  );
}
