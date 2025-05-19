import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

Widget yourChartSelectionContainerWidget({required String imagePath}) {
  return Container(
    width: 100,
    padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
    margin: EdgeInsetsDirectional.only(end: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: AppColors.ofWhite,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Image.asset(imagePath, fit: BoxFit.cover),
  );
}
