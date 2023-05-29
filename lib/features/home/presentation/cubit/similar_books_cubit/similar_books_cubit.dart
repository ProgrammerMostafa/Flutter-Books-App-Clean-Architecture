import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/book.dart';
import '../../../domain/usecases/fetch_Similar_books_usecase.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final FetchSimilarBooksUseCase fetchSimilarBooksUseCase;

  SimilarBooksCubit(this.fetchSimilarBooksUseCase)
      : super(SimilarBooksInitial());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoadingState());
    final result =
        await fetchSimilarBooksUseCase.call(SimilarBooksParam(category));
    result.fold(
      (error) => emit(SimilarBooksErrorState(error.errorMsg)),
      (books) => emit(SimilarBooksSuccessState(books)),
    );
  }
}
