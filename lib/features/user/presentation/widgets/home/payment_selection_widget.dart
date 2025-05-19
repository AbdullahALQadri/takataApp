import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

Widget paymentSelectionWidget({required String imagePath}) {
  return Container(
    height: 55,
    width: 65,
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.only(right: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: AppColors.ofWhite,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Image.asset(imagePath, fit: BoxFit.contain),
  );
}
