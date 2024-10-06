import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../config/router/app_router.dart';

final getIt = GetIt.instance;

Future<void> initializeApp() async {
  // Create App Router Service
  final appRouter = AppRouter();
  final dio = Dio();
  dio.interceptors.add(PrettyDioLogger());

  // Register App Router Service
  getIt.registerSingleton<AppRouter>(appRouter);

  getIt.registerSingleton<Dio>(dio);

  // getIt.registerSingleton<ApiService>(
  //   ApiService(getIt<Dio>()),
  // );

  // getIt.registerSingleton<ApiRepository>(
  //   ApiRepositoryImpl(getIt<ApiService>()),
  // );
}