import 'package:flutter/material.dart';
import 'package:takata/features/user/presentation/screens/message_screen.dart';
import 'package:takata/features/user/presentation/screens/favourite_screen.dart';
import 'package:takata/features/user/presentation/screens/profile_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/bn_item.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnItem> bnItem = <BnItem>[
    BnItem(title: ' Home', widget: HomeScreen()),
    BnItem(title: 'Favourite', widget: const FavouriteScreen()),
    BnItem(title: 'Message', widget: const MessageScreen()),
    BnItem(title: 'Profile', widget: const ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      fallbackHeight: MediaQuery.of(context).size.height,
      fallbackWidth: MediaQuery.of(context).size.width,
      child: Constants.scaffoldComponent1(
        // appBarTitle: bnItem[_currentIndex].title,
        // centerTitle: _currentIndex == 0 ? false : true,
        // leading: _currentIndex == 0 ? Row(
        //   children: [
        //     Container(
        //       height: 48,
        //       width: 48,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(12),
        //       ),
        //       child: Image.asset("assets/images/logo.png"),
        //     ),
        //   ],
        // ) : Text(""),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Stack(
            children: [
              BottomNavigationBar(
                backgroundColor: AppColors.white,
                selectedItemColor: AppColors.primaryColor,
                elevation: 0,
                // showUnselectedLabels: false,
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                onTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                showSelectedLabels: true,
                showUnselectedLabels: false,
                unselectedItemColor: AppColors.grey,
                selectedLabelStyle: TextStyle(
                  fontSize: 6,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(fontSize: 0),
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.home_outlined,
                      color: AppColors.primaryColor,
                    ),
                    icon: Icon(Icons.home_outlined, color: AppColors.grey),
                    label: "●",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.favorite_outline,
                      color: AppColors.primaryColor,
                    ),
                    icon: Icon(Icons.favorite_outline, color: AppColors.grey),
                    label: "●",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.message_outlined,
                      color: AppColors.primaryColor,
                    ),
                    icon: Icon(Icons.message_outlined, color: AppColors.grey),
                    label: "●",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.person_outline,
                      color: AppColors.primaryColor,
                    ),
                    icon: Icon(Icons.person_outline, color: AppColors.grey),
                    label: "●",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: bnItem[_currentIndex].widget,
      ),
    );
  }
}
