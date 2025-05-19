import 'package:flutter/material.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_font_weight.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../core/widgets/text_field/text_field_plus_widget.dart';
import '../../../../core/widgets/text_utils.dart';

class ConfirmPasswordScreen extends StatefulWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  State<ConfirmPasswordScreen> createState() => _ConfirmPasswordScreenState();
}

class _ConfirmPasswordScreenState extends State<ConfirmPasswordScreen> {
  final TextEditingController _passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<String> _formErrorMessages = [];

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Forgot Password',
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
                  text: 'Confirm Password',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.bold,
                  fontSize: 28,
                ),
                SizedBox(height: 10),
                textUtils(
                  text:
                      'Please enter your new password ',
                  color: AppColors.greyText,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                sizedBoxWidget(height: 100),

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
                    padding: EdgeInsetsDirectional.only(top: 20, start: 10),
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

                sizedBoxWidget(height: 100),
                elevatedButton(
                  title: 'Continue',
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.primaryColor,
                  onPress: () async {
                    // if (_formKey.currentState!.validate()) {}

                    setState(() {
                      _formErrorMessages.clear();

                      final password = _passwordTextController.text;

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
                      }
                    });
                  },
                ),
                sizedBoxWidget(height: 100),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
