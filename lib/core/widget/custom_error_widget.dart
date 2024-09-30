import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: AutofillHints.addressCityAndState),
        textAlign: TextAlign.center,
      ),
    );
  }
}
