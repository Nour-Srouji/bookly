import 'package:bookly/features/home/presentaion/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widget/books_action.dart';
import 'package:bookly/features/home/presentaion/views/widget/similiar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBooy extends StatelessWidget {
  const BookDetailsViewBooy({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: CustomBookDetailsAppbar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .1),
          child: const SizedBox(
              height: 270,
              width: 200,
              child: CustomBookImage(
                imageUrl:
                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDhrEonKm0pDm7xvsVPOyCOTk3hTX-bwZAfw&s',
              )),
        ),
        const Text(
          'The jungle Book',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
        //  const SizedBox(height: 4),
        const Text(
          'Rudy kihkd',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(child: BookRating2(
          rating: 5,count: 250,
        )),
        const SizedBox(
          height: 18,
        ),
        const BooksAction(),
        const SizedBox(
          height: 40,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('You Can Also Like'),
            )),
        const SizedBox(
          height: 6,
        ),
        const SimilarBooksListview(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
