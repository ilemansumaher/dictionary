import 'package:dictionary_pro/common/common.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          title: TextField(
            decoration: InputDecoration(
              suffixIcon:
                  IconButton(onPressed: () {}, icon: Icon(Icons.keyboard)),
              hintText: "Search...",
              fillColor: borderColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [],
          ),
        ),
      ],
    );
  }
}
