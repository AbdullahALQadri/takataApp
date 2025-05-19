import 'package:flutter/material.dart';
import 'package:takata/core/widgets/elevated_buttons/elevated_button.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_font_weight.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/text_utils.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Login Success',
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 30, bottom: 30),

        child: Column(
          children: [
            Image.asset('assets/images/SuccessImage.png'),
            sizedBoxWidget(height: 100),
            textUtils(
              text: 'Login Success',
              color: AppColors.black,
              fontWeight: AppFontWeight.bold,
              fontSize: 30,
            ),
            SizedBox(height: 10),
            textUtils(
              text: 'Now you\'re ready to go shopping',
              color: AppColors.greyText,
              fontWeight: AppFontWeight.medium,
              fontSize: 18,
              textAlign: TextAlign.center,
            ),
            sizedBoxWidget(height: 50),

            Padding(
              padding: EdgeInsetsDirectional.only(start: 90, end: 90),
              child: elevatedButton(
                onPress: () {},
                title: 'Back to home',
                titleColor: AppColors.white,
                backgroundColor: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
