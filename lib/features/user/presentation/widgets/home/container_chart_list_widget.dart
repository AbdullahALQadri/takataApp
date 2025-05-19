import 'package:flutter/cupertino.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget containerChartListWidget({
  required String imagePath,
  required String title,
  required String subTitle,
}) {
  return Row(
    children: [
      Container(
        width: 248,
        // width: double.infinity,
        // alignment: Alignment.center,
        // height: 83,
        padding: EdgeInsets.only(top: 24),
        margin: EdgeInsetsDirectional.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          // borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 88,
              padding: EdgeInsets.only(bottom: 20, top: 20, left: 10, right: 10),
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.ofWhite,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  textUtils(
                    text: title,
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 14,
                    // overFlow: TextOverflow.ellipsis,
                  ),
                  sizedBoxWidget(height: 10),
                  textUtils(
                    text: subTitle,
                    color: AppColors.primaryColor,
                    fontWeight: AppFontWeight.bold,
                    fontSize: 14,
                    // overFlow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
