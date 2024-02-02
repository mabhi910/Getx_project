import 'package:admin/repo/auth_repo.dart';
import 'package:admin/request_interceptor.dart';
import 'package:admin/services/auth_service.dart';
import 'package:admin/view-model/login_bloc/login_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> init() async {
  serviceLocator.registerFactory(() => LoginBloc(authRepo: serviceLocator()));


  serviceLocator.registerLazySingleton<AuthRepo>(() => AuthService(dio: serviceLocator()));
  serviceLocator.registerLazySingleton<Dio>(() => DioClient().provideDio());

}
