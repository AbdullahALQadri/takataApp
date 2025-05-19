import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,

    fontFamily: AppStrings.fontFamily,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 22.0,
        fontFamily: AppStrings.fontFamily,
      ),
      iconTheme: IconThemeData(color: AppColors.black),
      // toolbarHeight: 90,
    ),
  );
}
