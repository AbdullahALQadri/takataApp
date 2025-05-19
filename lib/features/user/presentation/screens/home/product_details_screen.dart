import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/features/user/presentation/widgets/home/container_product_widget.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../../core/widgets/text_utils.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isSelected1 = true;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent1(
      backgroundColor: AppColors.ofWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: Container(
                        height: 240,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/playStationHand.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_rounded),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 28,
                        width: 64,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: textUtils(
                                text: '4.5',
                                color: AppColors.black,
                                fontWeight: AppFontWeight.bold,
                                fontSize: 14,
                                overFlow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      left: 75,
                      right: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          containerProductWidget(
                            imagePath: 'assets/images/playStationHand.png',
                            onTap: () {
                              setState(() {
                                isSelected1 = true;
                                isSelected2 = false;
                                isSelected3 = false;
                                isSelected4 = false;
                              });
                            },
                            isSelected: isSelected1,
                          ),
                          containerProductWidget(
                            imagePath: 'assets/images/playStationHand.png',
                            onTap: () {
                              setState(() {
                                isSelected1 = false;
                                isSelected2 = true;
                                isSelected3 = false;
                                isSelected4 = false;
                              });
                            },
                            isSelected: isSelected2,
                          ),
                          containerProductWidget(
                            imagePath: 'assets/images/playStationHand.png',
                            onTap: () {
                              setState(() {
                                isSelected1 = false;
                                isSelected2 = false;
                                isSelected3 = true;
                                isSelected4 = false;
                              });
                            },
                            isSelected: isSelected3,
                          ),
                          containerProductWidget(
                            imagePath: 'assets/images/playStationHand.png',
                            onTap: () {
                              setState(() {
                                isSelected1 = false;
                                isSelected2 = false;
                                isSelected3 = false;
                                isSelected4 = true;
                              });
                            },
                            isSelected: isSelected4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                // padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 24, top: 24),
                      child: textUtils(
                        text: 'Wireless Controller for PS4™',
                        color: AppColors.black,
                        fontWeight: AppFontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 24, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textUtils(
                            text: '\$64.99',
                            color: AppColors.primaryColor,
                            fontWeight: AppFontWeight.bold,
                            fontSize: 24,
                          ),

                          Container(
                            height: 50,
                            width: 64,
                            decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 24,
                        top: 10,
                        end: 80,
                      ),
                      child: textUtils(
                        text:
                            'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                        color: AppColors.greyText,
                        fontWeight: AppFontWeight.regular,
                        fontSize: 14,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 24,
                        top: 10,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          textUtils(
                            text: 'See More Detail',
                            color: AppColors.primaryColor,
                            fontWeight: AppFontWeight.bold,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsetsDirectional.only(
                        start: 24,
                        top: 15,
                        bottom: 15,
                        end: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.ofWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                containerProductWidget(
                                  imagePath:
                                      'assets/images/playStationHand.png',
                                  onTap: () {
                                    setState(() {
                                      isSelected1 = true;
                                      isSelected2 = false;
                                      isSelected3 = false;
                                      isSelected4 = false;
                                    });
                                  },
                                  isSelected: isSelected1,
                                ),
                                containerProductWidget(
                                  imagePath:
                                      'assets/images/playStationHand.png',
                                  onTap: () {
                                    setState(() {
                                      isSelected1 = false;
                                      isSelected2 = true;
                                      isSelected3 = false;
                                      isSelected4 = false;
                                    });
                                  },
                                  isSelected: isSelected2,
                                ),
                                containerProductWidget(
                                  imagePath:
                                      'assets/images/playStationHand.png',
                                  onTap: () {
                                    setState(() {
                                      isSelected1 = false;
                                      isSelected2 = false;
                                      isSelected3 = true;
                                      isSelected4 = false;
                                    });
                                  },
                                  isSelected: isSelected3,
                                ),
                                containerProductWidget(
                                  imagePath:
                                      'assets/images/playStationHand.png',
                                  onTap: () {
                                    setState(() {
                                      isSelected1 = false;
                                      isSelected2 = false;
                                      isSelected3 = false;
                                      isSelected4 = true;
                                    });
                                  },
                                  isSelected: isSelected4,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            margin: EdgeInsetsDirectional.only(
                              end: 15,
                              start: 15,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: textUtils(
                              text: '-',
                              color: AppColors.black,
                              fontWeight: AppFontWeight.bold,
                              fontSize: 24,
                            ),
                          ),

                          textUtils(
                            text: '1',
                            color: AppColors.black,
                            fontWeight: AppFontWeight.medium,
                            fontSize: 18,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            margin: EdgeInsetsDirectional.only(start: 15),

                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: textUtils(
                              text: '+',
                              color: AppColors.black,
                              fontWeight: AppFontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(height: 400), // just for testing long scroll
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.only(
          start: 55,
          end: 55,
          bottom: 10,
          top: 24,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: elevatedButton(
          title: 'Add to Chart',
          titleColor: AppColors.white,
          backgroundColor: AppColors.primaryColor,
          // isLoading: isLoading,
          onPress: () async {
            Navigator.pushNamed(context, Routes.checkOutRoute);
          },
        ),
      ),
    );
  }
}
