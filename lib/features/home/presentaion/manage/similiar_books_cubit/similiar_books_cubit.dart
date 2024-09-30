// import 'package:bloc/bloc.dart';
// import 'package:bookly/features/home/data/models/book_model/book_model.dart';
// import 'package:bookly/features/home/data/repos/home_repo.dart';
// import 'package:equatable/equatable.dart';

// part 'similiar_books_state.dart';

// class SimilarBooksCubit extends Cubit<SimiliarBooksState> {
//   SimilarBooksCubit(this.homeRepo) : super(SimiliarBooksInitial());

//   final HomeRepo homeRepo;

//   Future<void> fetchSimilarBooks() async {
//     emit(SimiliarBooksLoading());
//     var result = await homeRepo.fetchSimilarBooks();
//     result.fold((failure) {
//       emit(SimilarBooksFailure(failure.errMessage));
//     }, (books) {
//       emit(SimilarBooksSuccess(books));
//     });
//   }
// }

// // class SimiliarBooksCubit extends Cubit<SimiliarBooksCubitState> {
// //   SimiliarBooksCubit() : super(SimiliarBooksCubitInitial());
// // }
