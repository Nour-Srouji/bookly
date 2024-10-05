//import 'package:bookly/features/home/presentaion/views/widget/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentaion/views/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Search Result',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResulteListView())
        ],
      ),
    );
  }
}

class SearchResulteListView extends StatelessWidget {
  const SearchResulteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, // انو تاخد الارتفاع تبع الابن
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Text("data");
          //const BookListViewItem();
        });
  }
}
