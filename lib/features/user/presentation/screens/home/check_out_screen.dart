import 'package:flutter/material.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';
import 'package:takata/features/user/presentation/widgets/home/container_chart_list_widget.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../../core/widgets/text_utils.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent1(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            textUtils(
              text: 'Your Chart',
              color: AppColors.black,
              fontWeight: AppFontWeight.bold,
              fontSize: 18,
            ),
            textUtils(
              text: '4 items',
              color: AppColors.greyText,
              fontWeight: AppFontWeight.regular,
              fontSize: 14,
            ),
          ],
        ),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  textUtils(
                    text: 'Wano Store',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                ],
              ),

              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return containerChartListWidget(
                    imagePath: 'assets/images/playStationHand.png',
                    title: 'Wireless Controller for PS4™',
                    subTitle: '\$64.99',
                  );
                },
              ),

              Row(
                children: [
                  textUtils(
                    text: 'Sportz Store',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                ],
              ),

              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return containerChartListWidget(
                    imagePath: 'assets/images/usa flag.png',
                    title: 'Wireless Controller for PS4™',
                    subTitle: '\$64.99',
                  );
                },
              ),

              // containerChartListWidget(
              //   imagePath: 'assets/images/playStationHand.png',
              //   title: 'Wireless Controller for PS4™',
              //   subTitle: '\$64.99',
              // ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.only(
          start: 30,
          end: 30,
          bottom: 20,
          top: 24,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // Soft shadow
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(0, -5), // Shadow direction: upward
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.ofWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.insert_chart_outlined,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    textUtils(
                      text: 'Add voucher code',
                      color: AppColors.black,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    textUtils(
                      text: 'Total:',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),
                    sizedBoxWidget(height: 5),
                    textUtils(
                      text: '\$337.15',
                      color: AppColors.black,
                      fontWeight: AppFontWeight.bold,
                      fontSize: 16,
                    ),
                  ],
                ),
                SizedBox(width: 55),
                Expanded(
                  child: elevatedButton(
                    title: 'Check Out',
                    titleColor: AppColors.white,
                    backgroundColor: AppColors.primaryColor,
                    // isLoading: isLoading,
                    onPress: () async {
                      Navigator.pushNamed(context, Routes.payNowRoute);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
