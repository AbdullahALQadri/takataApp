import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/app_font_weight.dart';
import 'package:takata/core/widgets/text_utils.dart';
import 'package:takata/features/authentication/presentation/widgets/container_connect_with_social.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../core/widgets/text_field/text_field_plus_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  // String? _formErrorMessage;

  List<String> _formErrorMessages = [];

  //
  // void _doSomething() {
  //   print('Loggined');
  // }

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: "Sign In",
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   icon: Icon(Icons.arrow_back_ios_rounded),
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsetsDirectional.all(30),

            child: Column(
              children: [
                textUtils(
                  text: 'Welcome Back',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.bold,
                  fontSize: 28,
                ),
                SizedBox(height: 10),
                textUtils(
                  text:
                      'Sign in with your email and password or continue with social media',
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.primaryColor,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              // isChecked = value!;
                              // widget.isChecked = value!;
                              // agree = value ?? false;
                              // widget.isChecked = value ?? false;
                              isChecked = value!;

                              // agree = isChecked;
                            });
                          },
                        ),

                        textUtils(
                          text: 'Remember me',
                          color: AppColors.greyText,
                          fontWeight: AppFontWeight.regular,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.forgotPasswordRoute,
                        );
                      },
                      child: textUtils(
                        text: 'Forgot Password',
                        color: AppColors.greyText,
                        fontWeight: AppFontWeight.regular,
                        fontSize: 14,
                        underLine: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                elevatedButton(
                  // onPress: isChecked ? _doSomething : null,
                  title: 'Continue',
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.primaryColor,
                  onPress: () async {
                    // if (_formKey.currentState!.validate()) {}

                    final isValid = _formKey.currentState!.validate();

                    // setState(() {
                    //   if (!isValid) {
                    //     _formErrorMessage = 'Please fix the errors above';
                    //   } else {
                    //     _formErrorMessage = null;
                    //     // Do the actual sign-in action here
                    //   }
                    // });

                    setState(() {
                      _formErrorMessages.clear();

                      final email = _emailTextController.text;
                      final password = _passwordTextController.text;

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

                      // If no errors, proceed
                      if (_formErrorMessages.isEmpty) {
                        // Do your login logic here
                        print("Form is valid. Proceed.");
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Routes.mainRoute,
                          (route) => false,
                        );
                      }
                    });
                  },
                ),

                // if (_formErrorMessage != null)
                //   Padding(
                //     padding: const EdgeInsets.only(top: 16),
                //     child: textUtils(
                //       text: _formErrorMessage!,
                //       color: AppColors.red,
                //       fontWeight: AppFontWeight.regular,
                //       fontSize: 14,
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textUtils(
                      text: 'Don’t have an account? ',
                      color: AppColors.greyText,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 16,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, Routes.otpCodeRoute);
                        // Navigator.pushNamed(context, Routes.signUpDetailsRoute);
                        Navigator.pushNamed(context, Routes.signUpRoute);
                      },
                      child: textUtils(
                        text: 'Sign Up',
                        color: AppColors.primaryColor,
                        fontWeight: AppFontWeight.regular,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
