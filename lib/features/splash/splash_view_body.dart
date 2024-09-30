import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody> {
  @override
  Widget build(BuildContext context) {
    navigatorTohome();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(logo),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  void navigatorTohome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/homeview');
    });
  }
}
