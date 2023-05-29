import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/book.dart';

abstract class BaseBooksRepository {
  Future<Either<Failure, List<Book>>> fetchNewsetBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchSimlilarBooks(
      {required String category});
}
