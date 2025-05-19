import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/constants.dart';

import '../widgets/profile/menu_item_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Profile',
      body: Column(
        children: [
          const SizedBox(height: 24),
          // Profile Image
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/profileImage.png',
              ), // Replace with your image
            ),
          ),
          const SizedBox(height: 16),

          // Menu Options
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 20),
                menuItemWidget(
                  icon: Icons.person_outline,
                  title: 'My Account',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.myAccountRoute);
                  },
                ),
                menuItemWidget(
                  icon: Icons.notifications_none,
                  title: 'Notification',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.notificationRoute);
                  },
                ),
                menuItemWidget(
                  icon: Icons.settings_outlined,
                  title: 'Setting',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.settingsRoute);
                  },
                ),
                menuItemWidget(
                  icon: Icons.help_outline,
                  title: 'Help Center',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.helpCenterRoute);
                  },
                ),
                const Divider(height: 40),
                menuItemWidget(
                  icon: Icons.logout,
                  title: 'Log Out',
                  color: Colors.redAccent,
                  onTap: () {
                    // Add logout logic
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.initialRoute,
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
