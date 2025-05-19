import 'package:flutter/material.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/features/user/presentation/widgets/profile/notification_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/text_utils.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Notification',
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textUtils(
                  text: 'Your Activity',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 18,
                ),
                InkWell(
                  onTap: () {},
                  child: textUtils(
                    text: 'See More',
                    color: AppColors.greyText,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return notificationWidget(
                  imagePath: 'assets/images/Vector.png',
                  title: 'Order Arrived',
                  subTitle:
                      ' has been completed & arrived at the destination address ( Please rates your order ) ',
                  numberSubTitle: '24089794727000824',
                  dateText: 'July 20, 2020 (08:00 pm)',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
