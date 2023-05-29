import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/usecases/base_usecase.dart';
import '../../../domain/entities/book.dart';
import '../../../domain/usecases/fetch_newset_books_usecase.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  final FetchNewsetBooksUseCase fetchNewsetBooksUseCase;

  NewsetBooksCubit(this.fetchNewsetBooksUseCase) : super(NewsetBooksInitial());

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoadingState());
    final result = await fetchNewsetBooksUseCase.call(const NoParametets());
    result.fold(
      (error) => emit(NewsetBooksErrorState(error.errorMsg)),
      (books) => emit(NewsetBooksSuccessState(books)),
    );
  }
}
