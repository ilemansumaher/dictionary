import 'package:dictionary_pro/common/common.dart';
import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      floating: true,
      title: TextField(
        decoration: InputDecoration(
          filled: true,
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.keyboard)),
          hintText: "Search...",
          hintStyle: TextStyle(
            color: textColorInSearch,
          ),
          fillColor: borderColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
