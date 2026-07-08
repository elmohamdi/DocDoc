import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/core/theming/color_manager.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:doc_advance/features/home/data/models/specializations_response_model.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorsModel: doctorsList?[index]);
        },
        itemCount: doctorsList?.length ?? 8,
      ),
    );
  }
}
