import 'package:dexef_task/core/api/api_consumers.dart';
import 'package:dexef_task/core/api/interceptor.dart';
import 'package:dexef_task/core/network/network_info.dart';
import 'package:dexef_task/features/authentication/data/data%20sources/get_user_data_remote_data_source.dart';
import 'package:dexef_task/features/authentication/data/repositories/user_data_repository_impl.dart';
import 'package:dexef_task/features/authentication/domain/repositories/user_data_repository.dart';
import 'package:dexef_task/features/authentication/domain/usecases/get_user_data.dart';
import 'package:dexef_task/features/authentication/persentation/cubit/auth_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/api/dio_consumers.dart';


final sl = GetIt.instance;

Future<void> init() async {
  //! Features

  // Blocs
  sl.registerFactory<AuthCubit>(
      () => AuthCubit(getUserDataUseCase: sl()));

  // Use cases
  sl.registerLazySingleton<GetUserData>(
      () => GetUserData(dataRepository: sl()));

  // Repository
  sl.registerLazySingleton<UserDataRepository>(() => UserDataRepositoryImpl(
      networkInfo: sl(),
      userDataRemoteDataSource: sl(),));

  // Data Sources
  sl.registerLazySingleton<UserDataRemoteDataSource>(
      () => UserDataRemoteDataSourceeImpl(apiConsumer: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));

  //! External
  sl.registerLazySingleton(() => AppIntercepters());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());
}
