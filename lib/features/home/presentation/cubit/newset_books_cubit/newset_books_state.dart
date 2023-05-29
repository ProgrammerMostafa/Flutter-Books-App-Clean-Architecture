part of 'newset_books_cubit.dart';

abstract class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoadingState extends NewsetBooksState {}

class NewsetBooksSuccessState extends NewsetBooksState {
  final List<Book> books;
  const NewsetBooksSuccessState(this.books);
}

class NewsetBooksErrorState extends NewsetBooksState {
  final String errorMessage;
  const NewsetBooksErrorState(this.errorMessage);
}
