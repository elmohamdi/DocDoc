import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_advance/features/home/logic/cubit/home_state.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_blue_container.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_list_view.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_speciality_list_view.dart';
import 'package:doc_advance/features/home/presentation/widgets/doctors_speciality_see_all.dart';
import 'package:doc_advance/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(32),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) {
                  return current.maybeWhen(
                    specializationLoading: () => true,
                    specializationSuccess: (_) => true,
                    specializationError: (_) => true,
                    orElse: () => false,
                  );
                },

                builder: (context, state) {
                  return state.maybeWhen(
                    specializationLoading: () =>
                        const Center(child: CircularProgressIndicator()),
                    specializationSuccess: (specializationsResponseModel) {
                      var specializationsList =
                          specializationsResponseModel.specializationDataList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorsSpecialityListView(
                              specializationDataList: specializationsList ?? [],
                            ),
                            verticalSpace(8),
                             DoctorsListView(
                              doctorsList:  specializationsList?[0]?.doctorsList,
                            ),
                          ],
                        ),
                      );
                    },
                    specializationError: (errorHandler) =>
                        const SizedBox.shrink(),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
              // const DoctorsSpecialityListView(),
              // verticalSpace(8),
              // const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
