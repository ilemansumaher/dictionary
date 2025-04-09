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
              filled: true,
              suffixIcon:
                  IconButton(onPressed: () {}, icon: Icon(Icons.keyboard)),
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
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              IntroductionSearch(),
            ],
          ),
        ),
      ],
    );
  }
}

class IntroductionSearch extends StatelessWidget {
  const IntroductionSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: borderColor,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Text(
            "Word",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            children: [
              Text(
                "n. (wɜːd): a single unit of language that means something and can be spoken or written",
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
