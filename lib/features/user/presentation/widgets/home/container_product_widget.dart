import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';

Widget containerProductWidget({
  required String imagePath,
  required void Function()? onTap,
  required bool isSelected,
}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        padding: EdgeInsetsDirectional.all(7),
        margin: EdgeInsetsDirectional.only(end: 10),
        decoration: BoxDecoration(
          border:
              isSelected
                  ? Border.all(width: 1, color: AppColors.primaryColor)
                  : Border.all(width: 1, color: AppColors.transparent),

          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          "assets/images/playStationHand.png",
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
