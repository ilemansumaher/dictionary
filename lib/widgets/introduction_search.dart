import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';
import 'package:flutter/material.dart';

class IntroductionSearch extends StatelessWidget {
  const IntroductionSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Theme.of(context).colorScheme.secondary,
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                textAlign: TextAlign.center,
                "n. (wɜːd): a single unit of language that means something and can be spoken or written",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          // Spacer(),
          Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutWordScreen(
                          mainWord: "",
                          definotion: "",
                        ),
                      ),
                    );
                  },
                  iconAlignment: IconAlignment.end,
                  icon: Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 25,
                  ),
                  label: Text(
                    "See more meanings",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
