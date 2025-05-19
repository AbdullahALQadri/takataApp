import 'package:flutter/material.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../../core/widgets/text_utils.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotificationEnabled = true;
  bool askBeforeBuy = true;
  bool colorMode = false;

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Settings',
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
                  text: 'Notifications',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 16,
                ),
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primaryColor,
                ),
              ],
            ),
            sizedBoxWidget(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textUtils(
                  text: 'Ask before buy',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 16,
                ),
                Switch(
                  value: askBeforeBuy,
                  onChanged: (value) {
                    setState(() {
                      askBeforeBuy = value;
                    });
                  },
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primaryColor,
                ),
              ],
            ),

            sizedBoxWidget(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textUtils(
                  text: 'Color blind mode',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 16,
                ),
                Switch(
                  value: colorMode,
                  onChanged: (value) {
                    setState(() {
                      colorMode = value;
                    });
                  },
                  activeColor: AppColors.white,
                  activeTrackColor: AppColors.primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.only(
          start: 55,
          end: 55,
          bottom: 20,
          top: 24,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: elevatedButton(
          title: 'Save Changes',
          titleColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
          onPress: () async {
            // Navigator.pushNamed(context, Routes.checkOutRoute);
          },
        ),
      ),
    );
  }
}
