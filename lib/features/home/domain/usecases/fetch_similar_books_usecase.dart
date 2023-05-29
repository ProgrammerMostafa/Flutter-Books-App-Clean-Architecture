import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/base_usecase.dart';
import '../entities/book.dart';
import '../repositories/base_books_repository.dart';

class FetchSimilarBooksUseCase
    extends BaseUsecase<List<Book>, SimilarBooksParam> {
  final BaseBooksRepository repository;

  FetchSimilarBooksUseCase(this.repository);

  @override
  Future<Either<Failure, List<Book>>> call(SimilarBooksParam parameters) async {
    return await repository.fetchSimlilarBooks(category: parameters.category);
  }
}

class SimilarBooksParam extends Equatable {
  final String category;

  const SimilarBooksParam(this.category);

  @override
  List<Object?> get props => [category];
}
