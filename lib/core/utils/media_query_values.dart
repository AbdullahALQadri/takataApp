import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewPadding.bottom;


  // bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  // bool get isSmallScreen => width < 600;
  // bool get isMediumScreen => width >= 600 && width < 1200;
  // bool get isLargeScreen => width >= 1200;
  //
  // void showSnackBar(String message) {
  //   ScaffoldMessenger.of(this).showSnackBar(
  //     SnackBar(content: Text(message)),
  //   );
  // }
  //
  // EdgeInsets get safePadding => MediaQuery.of(this).viewPadding;
}