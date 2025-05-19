import 'package:flutter/material.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_font_weight.dart';
import '../../../../core/widgets/text_utils.dart';

Widget messageItemWidget({
  required String imagePath,
  required String title,
  required String subTitle,
  required String timeText,
  required String messageNumber,
  required bool noMessages,
  required bool yesterdayMessage,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsetsDirectional.symmetric(vertical: 10),
    margin: EdgeInsetsDirectional.only(bottom: 10),

    decoration: BoxDecoration(),
    child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: EdgeInsetsDirectional.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.ofWhite,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),

        SizedBox(width: 15),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textUtils(
                text: title,
                color: AppColors.black,
                fontWeight: AppFontWeight.bold,
                fontSize: 16,
              ),
              sizedBoxWidget(height: 5),
              textUtils(
                text: subTitle,
                color: AppColors.greyText,
                fontWeight: AppFontWeight.regular,
                fontSize: 14,
                overFlow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            textUtils(
              text: yesterdayMessage ? 'Yesterday' : '$timeText am',
              color: AppColors.greyText,
              fontWeight: AppFontWeight.regular,
              fontSize: 14,
              overFlow: TextOverflow.ellipsis,
            ),
            sizedBoxWidget(height: 5),
            noMessages
                ? Container(
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: textUtils(
                    text: messageNumber,
                    color: AppColors.white,
                    fontWeight: AppFontWeight.bold,
                    fontSize: 14,
                  ),
                )
                : Container(
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
          ],
        ),
      ],
    ),
  );
}
