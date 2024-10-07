import 'package:flutter/material.dart';

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
