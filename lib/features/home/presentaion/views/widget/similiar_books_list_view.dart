import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      itemCount: state.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
                imageUrl:
                state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''
                  ),
          );
        }),
  );
}if(state is SimilarBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage);
}else{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
