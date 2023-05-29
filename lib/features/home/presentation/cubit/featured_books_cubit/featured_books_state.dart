part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<Book> books;
  const FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksErrorState extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksErrorState(this.errorMessage);
}
