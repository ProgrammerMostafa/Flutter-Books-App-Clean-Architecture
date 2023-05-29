import 'package:flutter_books_app_clean_architecture/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_books_app_clean_architecture/core/usecases/base_usecase.dart';
import 'package:flutter_books_app_clean_architecture/features/home/domain/entities/book.dart';
import 'package:flutter_books_app_clean_architecture/features/home/domain/repositories/base_books_repository.dart';

class FetchNewsetBooksUseCase extends BaseUsecase<List<Book>, NoParametets> {
  final BaseBooksRepository repository;

  FetchNewsetBooksUseCase(this.repository);

  @override
  Future<Either<Failure, List<Book>>> call(NoParametets parameters) async {
    return await repository.fetchNewsetBooks();
  }
}
