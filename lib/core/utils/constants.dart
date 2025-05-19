import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_font_weight.dart';

import '../widgets/text_utils.dart';
import 'app_colors.dart';

class Constants {
  static bool isAdmin = false;

  static const String emptyImage =
      "https://envothemes.com/envo-magazine-pro/wp-content/uploads/sites/8/2018/04/no-image.jpg";
  static String validationEmail =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static void showErrorDialog({
    required BuildContext context,
    required String msg,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text(
              msg,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Ok'),
              ),
            ],
          ),
    );
  }

  // static void showToast({
  //   required String msg,
  //   Color? color,
  //   ToastGravity? gravity,
  // }) {
  //   Fluttertoast.showToast(
  //     toastLength: Toast.LENGTH_LONG,
  //     msg: msg,
  //     backgroundColor: color ?? AppColors.primaryColor,
  //     gravity: gravity ?? ToastGravity.BOTTOM,
  //   );
  // }

  static Widget scaffoldComponent({
    required String appBarTitle,
    bool centerTitle = true,
    Widget? body,
    Widget? bottomNavigationBar,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        // leading: leading ,
        leading: leading ,
        title: Text(
          appBarTitle,
          style: TextStyle(
            color: AppColors.appBarTextColor,
            fontSize: 18,
            fontWeight: AppFontWeight.bold,
          ),
        ),
        centerTitle: centerTitle,
        actions: actions,
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: body,
      ),
    );
  }

  static Widget scaffoldComponentForSearch({
    required Widget appBar,
    bool centerTitle = true,
    Widget? body,
    Widget? bottomNavigationBar,
    Widget? leading,
    List<Widget>? actions,
  }) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: leading,
        title: appBar,
        centerTitle: centerTitle,
        actions: actions,
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: body,
      ),
    );
  }

  static Widget scaffoldComponent1({
    // required String appBarTitle ,
    PreferredSizeWidget? appBar,
    // bool centerTitle = true,
    Widget? body,
    Widget? bottomNavigationBar,
    // Widget? leading,
    // List<Widget>? actions,
    Color? backgroundColor ,
  }) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.white,
      appBar: appBar,
      // appBar: AppBar(
      //   leading: leading,
      //   title: textUtils(
      //     text: appBarTitle,
      //     color: AppColors.black,
      //     fontWeight: FontWeight.w500,
      //     fontSize: 17,
      //   ),
      //   centerTitle: centerTitle,
      //   actions: actions,
      // ),
      bottomNavigationBar: bottomNavigationBar,

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: body,
      ),
    );
  }

  static Widget scaffoldComponent2({
    String appBarTitle = "",
    bool centerTitle = true,
    Widget? body,
    Widget? bottomNavigationBar,
    Widget? leading,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    Key? key,
    Widget? floatingActionButton,
  }) {
    return Scaffold(
      backgroundColor: AppColors.white,
      key: key,
      floatingActionButton: floatingActionButton,
      appBar: AppBar(
        elevation: 0,
        // toolbarHeight: 60,
        toolbarHeight: 8,
        leading: leading,
        bottom: bottom,

        title: textUtils(
          text: appBarTitle,
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        // Text(
        //   appBarTitle,
        //   style: TextStyle(
        //     color: AppColors.black,
        //     fontSize: 17,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
        centerTitle: centerTitle,
        actions: actions,
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: body,
      ),
    );
  }
}
