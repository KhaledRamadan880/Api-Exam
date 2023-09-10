import 'package:api_exam/core/database/api/api_consumer.dart';
import 'package:api_exam/core/database/api/dio_consumer.dart';
import 'package:api_exam/features/home/data/repository/home_repo.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void serviceInit() {
  sl.registerLazySingleton(() => HomeCubit(sl()));

  sl.registerLazySingleton(() => HomeRepository());

  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
}
