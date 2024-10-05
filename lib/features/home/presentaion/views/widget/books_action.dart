import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/core/widget/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
              text: ('Free'),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: (){
                launchCustomUr(context, bookModel.volumeInfo.previewLink);
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              text: grtText(bookModel),
            ),
          )
        ],
      ),
    );
  }
}

String grtText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) 
  {
    return 'Not Avaliable';
  } 
  else 
  {
    return 'Preview';
  }
}
