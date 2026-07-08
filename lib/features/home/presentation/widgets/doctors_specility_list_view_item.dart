import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/core/theming/color_manager.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:doc_advance/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecilityListViewItem extends StatelessWidget {
  SpecializationsData specializationData;
  final int itemIndex;
  DoctorsSpecilityListViewItem({
    super.key,
    required this.specializationData,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorManager.lightblue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationData.name ?? 'specialization',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
