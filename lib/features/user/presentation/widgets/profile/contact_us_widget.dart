import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget contactUsWidget({
  required IconData? icon,
  required String title,
  required String subTitle,
  void Function()? onTap,
}) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    leading: Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor.withOpacity(.1),
      ),
      child: Icon(icon , size: 22, color: AppColors.primaryColor,),
    ),
    title: textUtils(
      text: title,
      color: AppColors.black,
      fontWeight: AppFontWeight.regular,
      fontSize: 14,
    ),
    subtitle: textUtils(
      text: subTitle,
      color: AppColors.greyText,
      fontWeight: AppFontWeight.regular,
      fontSize: 14,
    ),
    onTap: onTap,
  );
}
