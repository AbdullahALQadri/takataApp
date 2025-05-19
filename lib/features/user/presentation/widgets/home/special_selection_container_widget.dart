import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget specialSelectionContainerWidget(String image, title, subtitle) {
  return Container(
    height: 100,
    width: 242,

    // padding: EdgeInsetsDirectional.only(start: 20 , top: 20 , bottom: 20 ,end: 20 ),
    margin: EdgeInsetsDirectional.only(end: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.transparent,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            // height: 100,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.3),
            padding: EdgeInsetsDirectional.all(15),

            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textUtils(
                    text: title,
                    color: AppColors.white,
                    fontWeight: AppFontWeight.bold,
                    fontSize: 18,
                  ),
                  textUtils(
                    text: subtitle,
                    color: AppColors.white,
                    fontWeight: AppFontWeight.bold,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
