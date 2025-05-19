import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';

Widget OutBoardingIndeicatorWidget(bool isSelected) {
  return Container(
    height: 6,
    width: isSelected ? 20 : 6,
    margin: EdgeInsetsDirectional.only(start: 6, end: 6),
    decoration: BoxDecoration(
      color: isSelected ? AppColors.primaryColor : AppColors.grey,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
