import 'package:doc_advance/core/theming/color_manager.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focustBorder;
  final String hintText;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focustBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    this.isObsecureText,
    this.suffixIcon,
    this.backGroundColor,
    required this.hintText,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObsecureText ?? false,
      style: TextStyles.font14darkBlueMedium,
      decoration: InputDecoration(
        fillColor: backGroundColor ?? ColorManager.moreLightGray,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.font14lightGrayRegular,
        isDense: true,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focustBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorManager.primary,
                width: 1.3,
              ),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorManager.lighterGray,
                width: 1.3,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
