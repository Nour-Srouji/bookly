import 'package:bookly/features/home/presentaion/manage/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            // لجعل صن وايقونة البحث ضمن اطار
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            hintText: "Search",
            suffixIcon: IconButton(
              onPressed: () {
                final query = _controller.text;
                context.read<SearchBooksCubit>().fetchSearchBooks(query: query);
              },
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
            )),
      ),
    );
  }
}
