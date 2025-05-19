import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/app_font_weight.dart';
import 'package:takata/core/widgets/elevated_buttons/elevated_button.dart';
import 'package:takata/core/widgets/text_utils.dart';
import 'package:takata/features/authentication/presentation/widgets/spalsh_widgets/outboarding_indicator_widget.dart';
import 'package:takata/features/authentication/presentation/widgets/spalsh_widgets/outboarding_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 30, end: 30, bottom: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _currentPage > 0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: () {
                          _controller.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: textUtils(
                          text: 'Back',
                          color: AppColors.primaryColor,
                          fontWeight: AppFontWeight.medium,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _currentPage < 2,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          _controller.animateToPage(
                            2,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease,
                          );
                        },
                        child: textUtils(
                          text: 'Skip',
                          color: AppColors.primaryColor,
                          fontWeight: AppFontWeight.medium,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    OutBoardingWidget(
                      "Welcome to Takata, Let’s shop!",
                      "assets/images/onBoarding1.png",
                    ),
                    OutBoardingWidget(
                      "We help people conect with store around United State of America",
                      "assets/images/onBoarding2.png",
                    ),
                    OutBoardingWidget(
                      "We show the easy way to shop.Just stay at home with us",
                      "assets/images/onBoarding3.png",
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutBoardingIndeicatorWidget(_currentPage == 0 ? true : false),
                  OutBoardingIndeicatorWidget(_currentPage == 1 ? true : false),
                  OutBoardingIndeicatorWidget(_currentPage == 2 ? true : false),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _currentPage != 0,
                    // visible: _currentPage > 0,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInCirc,
                        );
                      },
                    ),
                  ),
                  Visibility(
                    visible: _currentPage < 2,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeIn,
                        );
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 70),

              elevatedButton(
                title: "Continue",
                titleColor: AppColors.white,
                backgroundColor: AppColors.primaryColor,
                onPress: () {
                  _controller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                  );

                  if (_currentPage == 2) {
                    Navigator.pushReplacementNamed(context, Routes.signInRoute);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
