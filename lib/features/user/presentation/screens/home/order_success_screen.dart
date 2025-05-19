import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/widgets/elevated_buttons/elevated_button.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/text_utils.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Transaction Status',
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   icon: Icon(Icons.arrow_back_ios_rounded),
      // ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 30, bottom: 30),

        child: Column(
          children: [
            Image.asset('assets/images/SuccessImage.png'),
            sizedBoxWidget(height: 100),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 65),

              child: textUtils(
                text: 'Order Success',
                color: AppColors.black,
                fontWeight: AppFontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 65),

              child: textUtils(
                text:
                    'Your packet will send to your address, thanks for order!',
                color: AppColors.greyText,
                fontWeight: AppFontWeight.medium,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
            ),
            sizedBoxWidget(height: 50),

            Padding(
              padding: EdgeInsetsDirectional.only(start: 90, end: 90),
              child: elevatedButton(
                title: 'Back to home',
                titleColor: AppColors.white,
                backgroundColor: AppColors.primaryColor,
                onPress: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    Routes.mainRoute,
                    (route) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
