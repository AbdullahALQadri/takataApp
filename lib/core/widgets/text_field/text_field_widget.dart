import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';

Widget textFieldWidget({
  required TextEditingController controller,
  required String hintText,
  TextInputType? textInputType,
  String? Function(String?)? validator,
  // Function? validator,
  Widget? suffixIcon,
  Widget? prefixIcon,
  bool readOnly = false,
  int? maxLength,
  bool isPassword = false,
  TextInputType? keyboardType,
  // VoidCallback? onTap,
  // Function(String? value)? onSaved,
  // Function(String? value)? onChanged,
}) {
  return TextFormField(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    keyboardType: keyboardType,
    validator: (value) => validator!(value),
    maxLength: maxLength,
    obscureText: isPassword,
    readOnly: readOnly,
    cursorColor: AppColors.primaryColor,
    // onTap: onTap,
    // onSaved: onSaved,
    // onChanged: onChanged,
    decoration: InputDecoration(
      // fillColor: AppColors.container,
      // filled: true,
      counterText: "",
      fillColor: AppColors.grey,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
        fontFamily: AppStrings.fontFamily,
        color: AppColors.black,
        fontSize: 9,
        // fontSize: 9.sp,
        fontWeight: FontWeight.w300,
      ),
      suffixIcon: suffixIcon,
      suffixIconColor: AppColors.black,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          // color: AppColors.borderColor,
          width: 0.25,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          // color: AppColors.borderColor,
          width: 0.25,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          // color: AppColors.borderColor,
          width: 0.25,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.red,
          width: 0.25,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          // color: AppColors.borderColor,
          width: 0.25,
        ),
      ),

      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: BorderSide(
      //     color: AppColors.red,
      //     width: 0.25,
      //   ),
      // ),
    ),
  );
}
