import 'package:dio/dio.dart';
import 'package:doc_advance/core/networking/api_service.dart';
import 'package:doc_advance/core/networking/dio_factory.dart';
import 'package:doc_advance/features/home/data/apis/home_api_service.dart';
import 'package:doc_advance/features/home/data/repos/home_repo.dart';
import 'package:doc_advance/features/login/data/repos/login_repo.dart';
import 'package:doc_advance/features/signUp/data/repos/sign_up_repo.dart';
import 'package:doc_advance/features/signUp/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:doc_advance/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio and apiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //SignUp
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
