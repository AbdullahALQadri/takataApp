import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/app_font_weight.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';
import 'package:takata/core/widgets/text_field/serach_text_field_widget.dart';
import 'package:takata/core/widgets/text_utils.dart';
import 'package:takata/features/user/presentation/widgets/home/category_selection_container_widget.dart';
import 'package:takata/features/user/presentation/widgets/home/popular_selection_container_widget.dart';
import 'package:takata/features/user/presentation/widgets/home/special_selection_container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponentForSearch(
      appBar: Padding(
        padding: EdgeInsetsDirectional.only(start: 10, end: 10),
        child: Row(
          children: [
            Expanded(
              child: searchTextFieldWidget(
                controller: _searchTextController,
                prefix: Icon(Icons.search),
                hintText: 'Search Product',
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColors.iconsColor,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: AppColors.iconsColor,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.all(24),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsetsDirectional.all(24),
                decoration: BoxDecoration(
                  color: AppColors.blueContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textUtils(
                      text: 'A Summer Surprise',
                      color: AppColors.white,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 10,
                    ),
                    sizedBoxWidget(height: 5),
                    textUtils(
                      text: 'Cashback 20%',
                      color: AppColors.white,
                      fontWeight: AppFontWeight.bold,
                      fontSize: 24,
                    ),
                  ],
                ),
              ),

              sizedBoxWidget(height: 30),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return categorySelectionContainerWidget(
                      Icons.electric_bolt_outlined,
                      'Flash Deal',
                    );
                  }),
                ),
              ),

              sizedBoxWidget(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Special for you',
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

              sizedBoxWidget(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return specialSelectionContainerWidget(
                      'assets/images/maidDailyTask.png',
                      'Smartphone',
                      '18 Brands',
                    );
                  }),
                ),
              ),
              sizedBoxWidget(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textUtils(
                    text: 'Popular Product',
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

              sizedBoxWidget(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.productDetailsRoute,
                        );
                      },
                      child: popularSelectionContainerWidget(
                        imagePath: 'assets/images/playStationHand.png',
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
