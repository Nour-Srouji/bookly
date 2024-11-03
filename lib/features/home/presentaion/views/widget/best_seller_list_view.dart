import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
  return ListView.builder(
    shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      // يعني لا تعمل سكرول لانو يلي فوق رح تعمل سكرول
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:
           BookListViewItem(
            bookModel: state.books[index],
          ),
        );
      });
}else if(state is NewsetBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage);
}else{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
