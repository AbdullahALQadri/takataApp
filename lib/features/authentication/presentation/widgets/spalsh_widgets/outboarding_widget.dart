import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_strings.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget OutBoardingWidget(String title, imgPath) {
  return Column(
    children: [
      textUtils(
        text: AppStrings.appName,
        color: AppColors.primaryColor,
        fontWeight: AppFontWeight.bold,
        fontSize: 36,
      ),
      SizedBox(height: 10),
      textUtils(
        text: title,
        color: AppColors.greyText,
        fontWeight: AppFontWeight.regular,
        fontSize: 16,
        textAlign: TextAlign.center
      ),
      SizedBox(height: 70),

      SizedBox(
        height: 220,
        width: double.infinity,
        child: Image.asset(imgPath, fit: BoxFit.contain),
      ),


    ],
  );
}
