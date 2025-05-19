import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

Widget popularSelectionContainerWidget({required String imagePath}) {
  return Container(
    width: 140,
    padding: EdgeInsetsDirectional.all(25),
    margin: EdgeInsetsDirectional.only(end: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: AppColors.container,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Image.asset(imagePath, fit: BoxFit.cover),
  );
}
