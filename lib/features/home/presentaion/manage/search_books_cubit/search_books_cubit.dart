import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSearchBooks({required String query}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(query: query);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, 
    (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
