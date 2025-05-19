import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget favouriteItemWidget({
  required String imagePath,
  required title,
  required textPrice,
  required void Function()? onPressed,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    // height: 300,
    width: 150,
    decoration: BoxDecoration(
      // color: Colors.teal,
      // borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 30,
            vertical: 60,
          ),
          decoration: BoxDecoration(
            color: AppColors.ofWhite,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        sizedBoxWidget(height: 10),
        textUtils(
          text: title,
          color: AppColors.black,
          fontWeight: AppFontWeight.regular,
          fontSize: 14,
        ),
        sizedBoxWidget(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textUtils(
              text: textPrice,
              color: AppColors.primaryColor,
              fontWeight: AppFontWeight.bold,
              fontSize: 18,
            ),

            Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.red.withOpacity(.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                onPressed: onPressed,

                icon: Icon(Icons.favorite, size: 12 , color: AppColors.red,),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
