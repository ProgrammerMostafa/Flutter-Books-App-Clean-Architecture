import '../../../../core/error/exceptions.dart';
import '../datasources/books_remote_data_source.dart';
import '../../domain/entities/book.dart';
import '../../../../core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repositories/base_books_repository.dart';

class BooksRepository extends BaseBooksRepository {
  final BaseBooksRemoteDataSource booksRemoteDataSource;

  BooksRepository(this.booksRemoteDataSource);

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      return Right(await booksRemoteDataSource.fetchFeaturedBooks());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchNewsetBooks() async {
    try {
      return Right(await booksRemoteDataSource.fetchNewsetBooks());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessage));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchSimlilarBooks({
    required String category,
  }) async {
    try {
      return Right(
        await booksRemoteDataSource.fetchSimilarBooks(category: category),
      );
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessage));
    }
  }
}
