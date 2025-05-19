import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

Widget questionListWidget({required String questionText}) {
  return Padding(
    padding: EdgeInsetsDirectional.only(bottom: 10),
    child: Column(
      children: [
        Row(
          children: [
            textUtils(
              text: questionText,
              color: AppColors.black,
              fontWeight: AppFontWeight.regular,
              fontSize: 14,
            ),
          ],
        ),
        Divider(),
      ],
    ),
  );
}