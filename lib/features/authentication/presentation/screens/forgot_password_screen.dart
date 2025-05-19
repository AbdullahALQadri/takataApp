import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/widgets/sized_box_widget.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_font_weight.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../core/widgets/text_field/text_field_plus_widget.dart';
import '../../../../core/widgets/text_utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailTextController = TextEditingController();

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
                  text: 'Forgot Password',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.bold,
                  fontSize: 28,
                ),
                SizedBox(height: 10),
                textUtils(
                  text:
                      'Please enter your email and we will send you a link to return to your account',
                  color: AppColors.greyText,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 14,
                  textAlign: TextAlign.center,
                ),
                sizedBoxWidget(height: 100),

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

                    final isValid = _formKey.currentState!.validate();

                    setState(() {
                      _formErrorMessages.clear();

                      final email = _emailTextController.text;

                      // Email validation
                      if (email.isEmpty) {
                        _formErrorMessages.add("E-MAIL can't be Empty");
                      } else if (!RegExp(
                        Constants.validationEmail,
                      ).hasMatch(email)) {
                        _formErrorMessages.add("Correct your E-MAIL");
                      }

                      // If no errors, proceed
                      if (_formErrorMessages.isEmpty) {
                        // Do your login logic here
                        print("Form is valid. Proceed.");

                        Navigator.pushNamed(context, Routes.confirmPasswordRoute);
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
