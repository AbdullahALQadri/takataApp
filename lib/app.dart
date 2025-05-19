// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'config/routes/app_routes.dart';
import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';

class Takata extends StatelessWidget {
  const Takata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,


      // locale: state.locale,
      // supportedLocales: AppLocalizationsSetup.supportedLocales,
      // localeResolutionCallback:
      // AppLocalizationsSetup.localeResolutionCallback,
      // localizationsDelegates:
      // AppLocalizationsSetup.localizationsDelegates,
    );
  }
}
