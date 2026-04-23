import 'package:doc_advance/core/helpers/extensions.dart';
import 'package:doc_advance/core/routing/routes.dart';
import 'package:doc_advance/core/theming/colors.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:doc_advance/features/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.w,
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.w),
        color: ColorManager.primary,
      ),
      child: MaterialButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text('Get Started', style: TextStyles.font16white600weight),
        
      ),
    );
  }
}
