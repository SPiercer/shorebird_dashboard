import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shorebird_dashboard/app/core/provider/app_provider.dart';
import 'package:shorebird_dashboard/app/core/services/http_service.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  sl.registerLazySingleton(() => Dio());

  sl.registerLazySingleton<HttpService>(() => HttpServiceImpl(sl()));

  sl.registerSingleton(AppProvider());
}
