import 'package:doc_advance/features/home/data/models/specializations_response_model.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_specility_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DoctorsSpecilityListViewItem(
            specializationData:
                specializationDataList[index] ?? [] as SpecializationsData,
            itemIndex: index,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
      ),
    );
  }
}
