import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_font_weight.dart';

import '../../../core/utils/app_strings.dart';



Widget elevatedButton({
  required VoidCallback? onPress,
  required String title,
  required Color? titleColor,
  required Color backgroundColor,
  Color? borderColor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(
        double.infinity,
        56,
        // 46.h,
      ),
      foregroundColor: titleColor,
      backgroundColor: backgroundColor,
      textStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        fontSize: 18,
        // fontSize: 12.sp,
        fontWeight: AppFontWeight.bold,
      ),
      side: BorderSide(color: borderColor ?? Colors.transparent),

      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(28),
          // Radius.circular(12.r),
        ),
      ),
    ),
    onPressed: onPress,
    child: Text(title),
  );
}
