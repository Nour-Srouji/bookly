import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manage/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/widget/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentaion/views/custom_search_text_field.dart';
import 'package:bookly/features/search/presentaion/views/search_resulte_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomSearchTextField(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Search Result',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchResulteListView())
        ],
      ),
    );
  }
}

<<<<<<< HEAD
class SearchResulteListView extends StatelessWidget {
  const SearchResulteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
  return ListView.builder(
      shrinkWrap: true, // انو تاخد الارتفاع تبع الابن
      itemCount:state.books.length,
      itemBuilder: (context, index) {
        //   return const Text("data");
    return  Expanded(
      child: BookListViewItem(
            bookModel: state.books[index]
          ),
    );
      });
}else if(state is SearchBooksFailure){
    return CustomErrorWidget(errMessage: state.errMessage);
}else{
    return const CustomLoadingIndicator();

}
      },
    );
  }
}
=======
>>>>>>> dd9bd6aba42fe7753f595a8504d895d8f5a7a410
