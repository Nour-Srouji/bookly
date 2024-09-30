import 'package:bookly/features/home/presentaion/views/widget/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/widget/home_view.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:bookly/features/splash/splash_view.dart';
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
          return const BookDetailsView();
        }),
    GoRoute(
        path: '/searchView',
        builder: (context, state) {
          return const SearchView();
        }),
  ]);
}
