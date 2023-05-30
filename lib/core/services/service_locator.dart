import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/datasources/books_remote_data_source.dart';
import '../../features/home/data/repositories/books_repository.dart';
import '../../features/home/domain/repositories/base_books_repository.dart';
import '../../features/home/domain/usecases/fetch_featured_books_usecase.dart';
import '../../features/home/domain/usecases/fetch_newset_books_usecase.dart';
import '../../features/home/domain/usecases/fetch_similar_books_usecase.dart';
import '../api/api_consumer.dart';
import '../api/app_interceptors.dart';
import '../api/dio_consumer.dart';

final GetIt getIt = GetIt.I;

void serviceLocatorInit() {
  // Data Sources
  getIt.registerLazySingleton<BaseBooksRemoteDataSource>(
      () => BooksRemoteDataSource(getIt()));

  // Repository
  getIt.registerLazySingleton<BaseBooksRepository>(
      () => BooksRepository(getIt()));

  // Usecases
  getIt.registerLazySingleton<FetchNewsetBooksUseCase>(
      () => FetchNewsetBooksUseCase(getIt()));

  getIt.registerLazySingleton<FetchFeaturedBooksUseCase>(
      () => FetchFeaturedBooksUseCase(getIt()));

  getIt.registerLazySingleton<FetchSimilarBooksUseCase>(
      () => FetchSimilarBooksUseCase(getIt()));

  // Core
  getIt.registerLazySingleton<ApiConsumer>(() => DioConsumer(Dio()));
  
  getIt.registerLazySingleton<AppInterceptors>(() => AppInterceptors());

  getIt.registerLazySingleton<LogInterceptor>(
    () => LogInterceptor(requestBody: true, responseBody: true),
  );
}
