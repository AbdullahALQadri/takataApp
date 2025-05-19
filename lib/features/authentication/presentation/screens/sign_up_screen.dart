import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/app_font_weight.dart';
import 'package:takata/core/widgets/text_utils.dart';
import 'package:takata/features/authentication/presentation/widgets/container_connect_with_social.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../core/widgets/text_field/text_field_plus_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _confirmPasswordTextController =
      TextEditingController();
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  // String? _formErrorMessage;

  List<String> _formErrorMessages = [];

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Sign Up',
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsetsDirectional.all(30),

            child: Column(
              children: [
                textUtils(
                  text: 'Register Account',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.bold,
                  fontSize: 28,
                ),
                SizedBox(height: 10),
                textUtils(
                  text: 'Complete your details or continue with social media',
                  color: AppColors.greyText,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 50),

                textFieldPlusWidget(
                  controller: _emailTextController,
                  textInputType: TextInputType.emailAddress,
                  hintLabel: 'Email',
                  hintText: 'Enter your email',
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: AppColors.iconsColor,
                  ),
                  validator: (value) {
                    // if (value == null || value.isEmpty) {
                    //   return '';
                    //   // return 'E-MAIL can\'t be Empty';
                    // }
                    // if (!RegExp(Constants.validationEmail).hasMatch(value)) {
                    //   return '';
                    //   // return 'Correct your E-MAIL';
                    // } else {
                    return null;
                    // }
                  },
                ),

                SizedBox(height: 25),

                textFieldPlusWidget(
                  controller: _passwordTextController,
                  textInputType: TextInputType.text,
                  isPassword: true,

                  hintLabel: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.iconsColor,
                  ),
                  validator: (value) {
                    // if (value == null || value.isEmpty) {
                    //   return '';
                    //   // return 'Password is required';
                    // }
                    // if (value.length < 6) {
                    //   return '';
                    //   // return 'Password can\'t be less than 8 digits';
                    // }
                    return null;
                  },
                ),

                SizedBox(height: 25),

                textFieldPlusWidget(
                  controller: _confirmPasswordTextController,
                  textInputType: TextInputType.text,
                  isPassword: true,

                  hintLabel: 'Confirm Password',
                  hintText: 'Re-enter your password',
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColors.iconsColor,
                  ),
                  validator: (value) {
                    // if (value == null || value.isEmpty) {
                    //   return '';
                    //   // return 'Password is required';
                    // }
                    // if (value.length < 6) {
                    //   return '';
                    //   // return 'Password can\'t be less than 8 digits';
                    // }
                    return null;
                  },
                ),

                if (_formErrorMessages.isNotEmpty)
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 10, start: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          _formErrorMessages.map((msg) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Icon(
                                  Icons.cancel_outlined,
                                  size: 14,
                                  color: AppColors.red,
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  child: Text(
                                    msg,
                                    style: TextStyle(
                                      color: AppColors.red,
                                      fontSize: 14,
                                      fontWeight: AppFontWeight.regular,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                    ),
                  ),

                SizedBox(height: 20),

                elevatedButton(
                  title: 'Continue',
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.primaryColor,
                  onPress: () async {
                    setState(() {
                      _formErrorMessages.clear();

                      final email = _emailTextController.text;
                      final password = _passwordTextController.text;
                      final confirmPassword =
                          _confirmPasswordTextController.text;

                      // Email validation
                      if (email.isEmpty) {
                        _formErrorMessages.add("E-MAIL can't be Empty");
                      } else if (!RegExp(
                        Constants.validationEmail,
                      ).hasMatch(email)) {
                        _formErrorMessages.add("Correct your E-MAIL");
                      }

                      // Password validation
                      if (password.isEmpty) {
                        _formErrorMessages.add("Password is required");
                      } else if (password.length < 6) {
                        _formErrorMessages.add(
                          "Password can't be less than 8 digits",
                        );
                      }

                      // confirmPassword validation
                      if (confirmPassword.isEmpty) {
                        _formErrorMessages.add("Confirm-Password is required");
                      } else if (confirmPassword.length < 6) {
                        _formErrorMessages.add(
                          "Password can't be less than 8 digits",
                        );
                      } else if (_confirmPasswordTextController.text !=
                          _passwordTextController.text) {
                        _formErrorMessages.add("Correct your Password");
                      }

                      // If no errors, proceed
                      if (_formErrorMessages.isEmpty) {
                        // Do your login logic here
                        print("Form is valid. Proceed.");

                        Navigator.pushNamed(context, Routes.signUpDetailsRoute);
                      }
                    });
                  },
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    containerConnectWithSocial(() {}, 'assets/images/ok2.png'),
                    containerConnectWithSocial(() {}, 'assets/images/ok2.png'),
                    containerConnectWithSocial(() {}, 'assets/images/ok2.png'),
                  ],
                ),
                SizedBox(height: 20),
                textUtils(
                  text:
                      'By continuing your confirm that you agree with our Term and Condition',
                  color: AppColors.greyText,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 12,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
