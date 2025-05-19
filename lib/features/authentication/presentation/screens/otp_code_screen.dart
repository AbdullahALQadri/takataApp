import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:takata/core/widgets/elevated_buttons/elevated_button.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_font_weight.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/sized_box_widget.dart';
import '../../../../core/widgets/text_utils.dart';

class OtpCodeScreen extends StatefulWidget {
  const OtpCodeScreen({super.key});

  @override
  State<OtpCodeScreen> createState() => _OtpCodeScreenState();
}

class _OtpCodeScreenState extends State<OtpCodeScreen> {
  final TextEditingController _pinCodeTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  String? _formErrorMessage;

  Widget _buildPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      controller: _pinCodeTextController,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      appContext: context,
      autoFocus: true,
      cursorColor: AppColors.primaryColor,
      keyboardType: TextInputType.number,
      length: 4,
      obscureText: true,
      obscuringCharacter: '●',
      animationType: AnimationType.scale,
      textStyle: TextStyle(
        color: AppColors.greyText,
        fontFamily: AppStrings.fontFamily,
        fontSize: 24,
        fontWeight: AppFontWeight.regular,
      ),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(15),
        fieldHeight: 60,
        fieldWidth: 60,
        borderWidth: 1,
        activeColor: AppColors.grey,
        activeFillColor: AppColors.white,

        inactiveColor: AppColors.grey,
        inactiveFillColor: AppColors.white,

        selectedColor: AppColors.grey,
        selectedFillColor: AppColors.white,

        errorBorderColor: AppColors.red,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (submittedCode) {
        // otpCode = submittedCode;
        debugPrint("Completed");
      },
      onChanged: (value) {
        debugPrint(value);
      },
      validator: (value) {
        // if (_pinCodeTextController.value.text.length < 4 ||
        //     _pinCodeTextController.value.text.isEmpty) {
        //   return 'Field is Required';
        // }
        // if (value == null || value.isEmpty) {
        //   return AppLocalizations.of(context)!
        //       .translate("field_is_required")
        //       .toString();
        // }
        // if (!RegExp(Constants.validationPinCode).hasMatch(value)) {
        //   return AppLocalizations.of(context)!
        //       .translate("code_is_not_valid")
        //       .toString();
        // }
        // else {
        return null;
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'OTP Verification',

      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsetsDirectional.all(30),

            child: Column(
              children: [
                textUtils(
                  text: 'OTP Verification',
                  color: AppColors.black,
                  fontWeight: AppFontWeight.bold,
                  fontSize: 28,
                ),
                sizedBoxWidget(height: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'We sent your code to +1 898 860 *** This code will expired in ',
                        style: TextStyle(
                          color: AppColors.greyText,
                          fontWeight: AppFontWeight.regular,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: '00:30',
                        style: TextStyle(
                          color: AppColors.red,
                          fontWeight: AppFontWeight.regular,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                sizedBoxWidget(height: 100),

                _buildPinCodeFields(context),
                sizedBoxWidget(height: 100),

                elevatedButton(
                  onPress: () {
                    final code = _pinCodeTextController.text.trim();
                    // final code = _formKey.currentState!.validate();

                    setState(() {
                      if (code.isEmpty) {
                        _formErrorMessage = 'Field is Required';
                      } else if (code.length < 4) {
                        _formErrorMessage = 'Please enter a valid 4-digit code';
                      } else {
                        _formErrorMessage = null;
                        print('OTP submitted: $code');
                        // Continue your logic
                      }
                    });

                    //   final isValid = _formKey.currentState!.validate();
                    //
                    //   setState(() {
                    //     if (!isValid) {
                    //       _formErrorMessage = 'Please fix the errors above';
                    //     } else {
                    //       _formErrorMessage = null;
                    //       // Do the actual sign-in action here
                    //       print('zabatat');
                    //     }
                    //   });
                  },
                  title: 'Continue',
                  titleColor: AppColors.white,
                  backgroundColor: AppColors.primaryColor,
                ),
                sizedBoxWidget(height: 100),

                if (_formErrorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: textUtils(
                      text: _formErrorMessage!,
                      color: AppColors.red,
                      fontWeight: AppFontWeight.regular,
                      fontSize: 14,
                      textAlign: TextAlign.center,
                    ),
                  ),

                textUtils(
                  text: 'Resend OTP Code',
                  color: AppColors.greyText,
                  fontWeight: AppFontWeight.regular,
                  fontSize: 14,
                  underLine: TextDecoration.underline,
                ),

                // _buildResendCodeButton(state),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
