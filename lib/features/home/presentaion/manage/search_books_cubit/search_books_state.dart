part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoading extends SearchBooksState {}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;
  const SearchBooksSuccess(this.books);
}

class SearchBooksFailure extends SearchBooksState {
  final String errMessage;
  const SearchBooksFailure(this.errMessage);
}
