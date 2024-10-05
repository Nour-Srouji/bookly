import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_rate,
          color: Colors.yellow,
        ),
        Text("4.8",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontFamily: AutofillHints.addressCityAndState)),
        SizedBox(width: 8),
        Text("(245)",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontFamily: AutofillHints.addressCityAndState)),
      ],
    );
  }
}

class BookRating2 extends StatelessWidget {
  const BookRating2({super.key, required this.rating, required this.count});
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate,
          color: Colors.yellow,
        ),
        Text(  rating.toString() ,
            style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontFamily: AutofillHints.addressCityAndState)),
        const SizedBox(width: 8),
        Text('($count)',
            style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontFamily: AutofillHints.addressCityAndState)),
      ],
    );
  }
}
