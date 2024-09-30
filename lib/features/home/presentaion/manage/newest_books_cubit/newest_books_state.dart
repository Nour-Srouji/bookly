part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewestBooksState {}

class NewsetBooksLoading extends NewestBooksState {}

class NewsetBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewestBooksState {
  final String errMessage;
  const NewsetBooksFailure(this.errMessage);
}
