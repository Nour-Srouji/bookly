import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/constant.dart';
import 'package:bookly/core/utils/service_locater.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentaion/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manage/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServerLocat();
  runApp( BooklyApp());
}

class BooklyApp extends StatelessWidget {
   BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
         BlocProvider(
          create: (context) => SearchBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchSearchBooks(query: ''),
        ),
      ],    
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      ),
    );
  }
}
