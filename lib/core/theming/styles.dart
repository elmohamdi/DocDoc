import 'dart:ui';

import 'package:doc_advance/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontSize: 24.sp,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontWeight: FontWeight.bold,
    color: ColorManager.primary,
    fontSize: 32.sp,
  );
    static TextStyle font12gray400weight = TextStyle(
    fontWeight: FontWeight.w400,
    color: ColorManager.gray,
    fontSize: 12.sp,
  );
    static TextStyle font16white600weight = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 16.sp,
  );
}
