import 'package:flutter/material.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget notificationWidget({
  required String imagePath,
  required String title,
  required String subTitle,
  required String numberSubTitle,
  required String dateText,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsetsDirectional.only(bottom: 15, top: 5),
    decoration: BoxDecoration(),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor.withOpacity(.1),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(width: 15),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textUtils(
                text: title,
                color: AppColors.black,
                fontWeight: AppFontWeight.bold,
                fontSize: 16,
              ),
              sizedBoxWidget(height: 5),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.greyText,
                    fontWeight: AppFontWeight.regular,
                  ),
                  children: [
                    const TextSpan(text: 'Order '),
                    TextSpan(
                      text: numberSubTitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     TextSpan(
                      text: subTitle,
                    ),
                  ],
                ),
              ),
              sizedBoxWidget(height: 5),
              textUtils(
                text: dateText,
                color: AppColors.greyText,
                fontWeight: AppFontWeight.regular,
                fontSize: 12,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
