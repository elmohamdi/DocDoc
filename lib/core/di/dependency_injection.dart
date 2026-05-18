import 'package:dio/dio.dart';
import 'package:doc_advance/core/netowrking/api_service.dart';
import 'package:doc_advance/core/netowrking/dio_factory.dart';
import 'package:doc_advance/features/login/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:doc_advance/features/login/logic/cubit/login_cubit.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio and apiService
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
}
