import 'package:bookly/core/utils/service_locater.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentaion/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widget/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/widget/home_view.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:bookly/features/splash/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        }),
    GoRoute(
        path: '/homeview',
        builder: (context, state) {
          return const HomeView();
        }),
    GoRoute(
        path: '/bookdetailsview',
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel ),
          );
        }),
    GoRoute(
        path: '/searchView',
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
