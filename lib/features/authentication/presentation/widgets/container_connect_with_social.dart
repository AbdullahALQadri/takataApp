import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

Widget containerConnectWithSocial(VoidCallback? onPress , String imagePath) {
  return InkWell(
    onTap: onPress,
    child: Container(
      height: 40,
      width: 40,
      padding: EdgeInsetsDirectional.all(12),
      margin: EdgeInsetsDirectional.only(start: 10 , end: 10),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.circular(40),
      ),

      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );
}
