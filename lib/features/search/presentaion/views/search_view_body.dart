//import 'package:bookly/features/home/presentaion/views/widget/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentaion/views/custom_search_text_field.dart';
import 'package:bookly/features/search/presentaion/views/search_resulte_list_view.dart';
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

