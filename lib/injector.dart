import 'package:api_call/api_app/core/api_provider.dart';
import 'package:api_call/api_app/core/connection_checker.dart';
import 'package:api_call/api_app/data/remote/data_source/appdata_source.dart';
import 'package:api_call/api_app/data/repository/app_repository.dart';
import 'package:api_call/api_app/domain/repositories/app_repositoryimpl.dart';
import 'package:api_call/api_app/domain/usecase/login_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;
Future<void> setUp() async {
  //core
  sl.registerLazySingleton<ApiProvider>(() => ApiProvider());
  sl.registerLazySingleton<AppdataSource>(() => AppDataSourceImpl(sl()));
  sl.registerLazySingleton<AppRepository>(() => AppRepositoryimpl(sl()));
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
  sl.registerLazySingleton<ConnectionChecker>(
      () => ConnectionCheckerImpl(sl()));

  sl.registerLazySingleton<LoginUsecase>(
    () => LoginUsecase(sl()),
  );
}
