import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/usecases/base_usecase.dart';
import '../../../domain/entities/book.dart';
import '../../../domain/usecases/fetch_Featured_books_usecase.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase) : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    final result = await fetchFeaturedBooksUseCase.call(const NoParametets());
    result.fold(
      (error) => emit(FeaturedBooksErrorState(error.errorMsg)),
      (books) => emit(FeaturedBooksSuccessState(books)),
    );
  }
}
