import 'package:flutter/material.dart';
import 'package:takata/features/authentication/presentation/screens/confirm_password_screen.dart';
import 'package:takata/features/authentication/presentation/screens/forgot_password_screen.dart';
import 'package:takata/features/authentication/presentation/screens/login_success_screen.dart';
import 'package:takata/features/authentication/presentation/screens/otp_code_screen.dart';
import 'package:takata/features/authentication/presentation/screens/sign_in_screen.dart';
import 'package:takata/features/authentication/presentation/screens/sign_up_screen.dart';
import 'package:takata/features/user/presentation/screens/home/order_success_screen.dart';
import 'package:takata/features/user/presentation/screens/home/pay_now_screen.dart';
import 'package:takata/features/user/presentation/screens/home/product_details_screen.dart';
import 'package:takata/features/user/presentation/screens/main_screen.dart';
import 'package:takata/features/user/presentation/screens/message/message_details_screen.dart';
import 'package:takata/features/user/presentation/screens/profile/my_account_screen.dart';
import 'package:takata/features/user/presentation/screens/profile/notification_screen.dart';
import 'package:takata/features/user/presentation/screens/profile/help_center_screen.dart';
import 'package:takata/features/user/presentation/screens/profile/settings_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/authentication/presentation/screens/sign_up_details_screen.dart';
import '../../features/authentication/presentation/screens/splash_screen.dart';
import '../../features/user/presentation/screens/home/check_out_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String signInRoute = '/signInScreen';
  static const String forgotPasswordRoute = '/forgotPasswordScreen';
  static const String confirmPasswordRoute = '/confirmPasswordScreen';
  static const String loginSuccessRoute = '/loginSuccessScreen';
  static const String signUpRoute = '/signUpScreen';
  static const String signUpDetailsRoute = '/signUpDetailsScreen';
  static const String otpCodeRoute = '/otpCodeScreen';
  static const String mainRoute = '/mainScreen';
  static const String productDetailsRoute = '/productDetailsScreen';
  static const String checkOutRoute = '/checkOutScreen';
  static const String payNowRoute = '/payNowScreen';
  static const String orderSuccessRoute = '/orderSuccessScreen';
  static const String messageDetailsRoute = '/messageDetailsScreen';
  static const String myAccountRoute = '/myAccountScreen';
  static const String notificationRoute = '/notificationScreen';
  static const String settingsRoute = '/settingsScreen';
  static const String helpCenterRoute = '/helpCenterScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) => const SplashScreen()));

      // case Routes.initialRoute:
      //   return MaterialPageRoute(builder: ((context) => const MainScreen()));

      case Routes.signInRoute:
        return MaterialPageRoute(builder: ((context) => SignInScreen()));
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: ((context) => ForgotPasswordScreen()),
        );
      case Routes.confirmPasswordRoute:
        return MaterialPageRoute(
          builder: ((context) => ConfirmPasswordScreen()),
        );
      case Routes.loginSuccessRoute:
        return MaterialPageRoute(builder: ((context) => LoginSuccessScreen()));
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: ((context) => SignUpScreen()));
      case Routes.signUpDetailsRoute:
        return MaterialPageRoute(builder: ((context) => SignUpDetailsScreen()));
      case Routes.otpCodeRoute:
        return MaterialPageRoute(builder: ((context) => OtpCodeScreen()));
      case Routes.mainRoute:
        return MaterialPageRoute(builder: ((context) => MainScreen()));
      case Routes.productDetailsRoute:
        return MaterialPageRoute(
          builder: ((context) => ProductDetailsScreen()),
        );
      case Routes.checkOutRoute:
        return MaterialPageRoute(builder: ((context) => CheckOutScreen()));
      case Routes.payNowRoute:
        return MaterialPageRoute(builder: ((context) => PayNowScreen()));
      case Routes.orderSuccessRoute:
        return MaterialPageRoute(builder: ((context) => OrderSuccessScreen()));
      case Routes.messageDetailsRoute:
        return MaterialPageRoute(
          builder: ((context) => MessageDetailsScreen()),
        );
      case Routes.myAccountRoute:
        return MaterialPageRoute(builder: ((context) => MyAccountScreen()));
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: ((context) => NotificationScreen()));
      case Routes.settingsRoute:
        return MaterialPageRoute(builder: ((context) => SettingsScreen()));
      case Routes.helpCenterRoute:
        return MaterialPageRoute(builder: ((context) => HelpCenterScreen()));

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder:
          ((context) =>
              const Scaffold(body: Center(child: Text(AppStrings.noRoute)))),
    );
  }
}
