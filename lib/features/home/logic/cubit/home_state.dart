import 'package:doc_advance/core/networking/api_error_handler.dart';
import 'package:doc_advance/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  //specialization States
  const factory HomeState.specializationLoading() = _SpecializationLoading;
  const factory HomeState.specializationSuccess(
    SpecializationsResponseModel specializationsResponseModel,
  ) = _SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler errorHandler) =
      _SpecializationError;
}
