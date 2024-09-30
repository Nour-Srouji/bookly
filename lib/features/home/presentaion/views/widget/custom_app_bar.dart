import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 20),
      child: Row(children: [
        Image.asset(
          logo,
          height: 18,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push('/searchView');
            },
            icon: const Icon(
              Icons.search,
              size: 24,
            ))
      ]),
    );
  }
}
