import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/app_font_weight.dart';
import 'package:takata/core/widgets/text_utils.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../core/widgets/text_field/text_field_plus_widget.dart';

class SignUpDetailsScreen extends StatefulWidget {
  const SignUpDetailsScreen({super.key});

  @override
  State<SignUpDetailsScreen> createState() => _SignUpDetailsScreenState();
}

class _SignUpDetailsScreenState extends State<SignUpDetailsScreen> {
  final TextEditingController _firstNameTextController =
      TextEditingController();
  final TextEditingController _lastNameTextController = TextEditingController();
  final TextEditingController _phoneNumberTextController =
      TextEditingController();
  final TextEditingController _addressTextController = TextEditingController();

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
                  text: 'Complete Profile',
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
                  controller: _firstNameTextController,
                  textInputType: TextInputType.text,
                  hintLabel: 'First Name',
                  hintText: 'Enter your first name',
                  suffixIcon: Icon(
                    Icons.person_outline_rounded,
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
                  controller: _lastNameTextController,
                  textInputType: TextInputType.text,
                  hintLabel: 'Last Name',
                  hintText: 'Enter your last name',
                  suffixIcon: Icon(
                    Icons.person_outline_rounded,
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
                  controller: _phoneNumberTextController,
                  textInputType: TextInputType.text,
                  hintLabel: 'Phone Number',
                  hintText: 'Enter your phone number',
                  suffixIcon: Icon(
                    Icons.phone_iphone_outlined,
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
                  controller: _addressTextController,
                  textInputType: TextInputType.text,
                  hintLabel: 'Address',
                  hintText: 'Enter your address',
                  suffixIcon: Icon(
                    Icons.location_on_outlined,
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

                      final firstName = _firstNameTextController.text;
                      final lastName = _lastNameTextController.text;
                      final phoneNumber = _phoneNumberTextController.text;
                      final address = _addressTextController.text;

                      // firstName validation
                      if (firstName.isEmpty) {
                        _formErrorMessages.add("First Name Field is Required");
                      }

                      // lastName validation
                      if (lastName.isEmpty) {
                        _formErrorMessages.add("Last Name Field is Required");
                      }

                      // phoneNumber validation
                      if (phoneNumber.isEmpty) {
                        _formErrorMessages.add(
                          "Phone Number Field is Required",
                        );
                      }

                      // address validation
                      if (address.isEmpty) {
                        _formErrorMessages.add("Address Field is Required");
                      }

                      // If no errors, proceed
                      if (_formErrorMessages.isEmpty) {
                        // Do your login logic here
                        print("Form is valid. Proceed.");
                      }
                    });
                  },
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
