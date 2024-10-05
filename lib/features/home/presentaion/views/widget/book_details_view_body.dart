import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widget/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widget/books_action.dart';
import 'package:bookly/features/home/presentaion/views/widget/similiar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBooy extends StatelessWidget {
  const BookDetailsViewBooy({super.key, required this.book});
final BookModel book;
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
          child:  SizedBox(
              height: 270,
              width: 200,
              child: CustomBookImage(
                imageUrl:
                book.volumeInfo.imageLinks?.thumbnail ?? ''
              )),
        ),
         FittedBox(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
              book.volumeInfo.title!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  ),
                     ),
           ),
         ),
        //  const SizedBox(height: 4),
         Text(
          book.volumeInfo.authors?[0] ?? '',
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
        ),
         Center(child: BookRating2(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        )),
        const SizedBox(
          height: 18,
        ),
         BooksAction(bookModel: book),
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
