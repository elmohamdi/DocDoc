import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/core/theming/color_manager.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
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
                        'Name',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 011111111111',
                        style: TextStyles.font12grayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        'Email@gmail.com',
                        style: TextStyles.font12grayMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
