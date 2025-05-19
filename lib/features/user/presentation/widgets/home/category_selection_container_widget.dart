import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/sized_box_widget.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget categorySelectionContainerWidget(IconData icon, String title) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        // height: 55,
        // width: 55,
        padding: EdgeInsetsDirectional.all(15),
        alignment: Alignment.center,
        margin: EdgeInsetsDirectional.only(end: 10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(icon, color: AppColors.primaryColor),
      ),

      sizedBoxWidget(height: 5),
      SizedBox(
        width: 55,
        child: textUtils(
          text: title,
          color: AppColors.greyText,
          fontWeight: AppFontWeight.regular,
          fontSize: 14,
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
