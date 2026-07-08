import 'package:doc_advance/core/networking/api_result.dart';
import 'package:doc_advance/features/home/data/repos/home_repo.dart';
import 'package:doc_advance/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit( HomeRepo homeRepo)
    : _homeRepo = homeRepo,
      super(HomeState.initial());

  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(
      success: (data) {
        emit(HomeState.specializationSuccess(data));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler));
      },
    );
  }
}
