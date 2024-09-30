import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextField(
        decoration: InputDecoration(
            // لجعل صن وايقونة البحث ضمن اطار
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),

            //     focusedBorder:  ,
            hintText: "Search",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
            )),
      ),
    );
  }
}
