import 'package:bookly/features/home/presentaion/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
//CustomScrollView لجعل كامل الشاشة ضمن سكرول
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBooksListView(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
