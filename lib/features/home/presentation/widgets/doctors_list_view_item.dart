import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:doc_advance/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.network(
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
              'https://www.westsidehn.com/wp-content/uploads/2015/12/pic-team-1.jpg',
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Doctor Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree ?? 'Degree'} | ${doctorsModel?.phone ?? '011111111111'}',
                  style: TextStyles.font12grayMedium,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.email ?? 'Email@gmail.com'}',
                  style: TextStyles.font12grayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
