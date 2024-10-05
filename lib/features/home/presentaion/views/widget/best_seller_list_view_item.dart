import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/views/widget/custom_book_image.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookdetailsview',
        extra:bookModel 
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            const SizedBox(width: 10),
            CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''
            ),
            const SizedBox(width: 70),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      // "Harry Potter and the Goblet of Fire",
                      style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontFamily: AutofillHints.addressCityAndState),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                   bookModel.volumeInfo.authors![0],
                    style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontFamily: AutofillHints.addressCityAndState),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Text(
                       'Free',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontFamily: AutofillHints.addressCityAndState),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      BookRating2(
                        rating:bookModel.volumeInfo.averageRating?.round() ?? 0 ,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                        )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
