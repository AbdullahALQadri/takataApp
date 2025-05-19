import 'package:flutter/material.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';
import 'package:takata/features/user/presentation/widgets/home/payment_selection_widget.dart';
import 'package:takata/features/user/presentation/widgets/home/your_chart_selection_container_widget.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../../core/widgets/text_utils.dart';

class PayNowScreen extends StatefulWidget {
  const PayNowScreen({super.key});

  @override
  State<PayNowScreen> createState() => _PayNowScreenState();
}

class _PayNowScreenState extends State<PayNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent1(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            textUtils(
              text: 'Check Out',
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
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Your Chart',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: textUtils(
                      text: 'View All',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              sizedBoxWidget(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return yourChartSelectionContainerWidget(
                      imagePath: 'assets/images/playStationHand.png',
                    );
                  }),
                ),
              ),
              sizedBoxWidget(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Your Address',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: textUtils(
                      text: 'Edit Address',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              sizedBoxWidget(height: 10),

              textUtils(
                text:
                    'Jimmy Sullivan, (+1) 954-868-1190 Long Beach, California (Jimmy’s Home), 90712',
                color: AppColors.greyText,
                fontWeight: AppFontWeight.regular,
                fontSize: 14,
              ),
              sizedBoxWidget(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Shipping Options',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: textUtils(
                      text: 'Choose Service',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              Container(
                width: double.infinity,
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
                      height: 55,
                      width: 65,
                      padding: EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.ofWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/playStationHand.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          textUtils(
                            text: '\$131.18',
                            color: AppColors.primaryColor,
                            fontWeight: AppFontWeight.regular,
                            fontSize: 14,
                            // overFlow: TextOverflow.ellipsis,
                          ),
                          sizedBoxWidget(height: 5),
                          textUtils(
                            text: 'Will be received on July 12, 2020',
                            color: AppColors.greyText,
                            fontWeight: AppFontWeight.regular,
                            fontSize: 14,
                            // overFlow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxWidget(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Payment Methods',
                    color: AppColors.black,
                    fontWeight: AppFontWeight.regular,
                    fontSize: 18,
                  ),
                  InkWell(
                    onTap: () {},
                    child: textUtils(
                      text: 'View All',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              sizedBoxWidget(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return paymentSelectionWidget(
                      imagePath: 'assets/images/Vector.png',
                    );
                  }),
                ),
              ),
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
                    title: 'Pay Now',
                    titleColor: AppColors.white,
                    backgroundColor: AppColors.primaryColor,
                    // isLoading: isLoading,
                    onPress: () async {
                      // Navigator.pushReplacementNamed(context, Routes.orderSuccessRoute);
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.orderSuccessRoute,
                        (route) => false,
                      );

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
