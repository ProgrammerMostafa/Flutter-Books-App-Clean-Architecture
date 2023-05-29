import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/base_usecase.dart';
import '../entities/book.dart';
import '../repositories/base_books_repository.dart';

class FetchFeaturedBooksUseCase extends BaseUsecase<List<Book>, NoParametets> {
  final BaseBooksRepository repository;

  FetchFeaturedBooksUseCase(this.repository);

  @override
  Future<Either<Failure, List<Book>>> call(NoParametets parameters) async {
    return await repository.fetchFeaturedBooks();
  }
}
