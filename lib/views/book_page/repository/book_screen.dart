import 'package:dictionary_pro/common/common.dart';
import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';
import 'package:dictionary_pro/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

List<bool> checkBox = List.generate(
  10,
  (index) => true,
);

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarSearch(),
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 10, (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: borderColor,
                ),
                padding: const EdgeInsets.all(3.0),
                margin: EdgeInsets.all(5.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutWordScreen(),
                      ),
                    );
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Abby",
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          ".(wɜːd): n a single unit of language",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  trailing: Checkbox(
                    value: checkBox[index],
                    onChanged: (value) {
                      setState(() {
                        checkBox[index] = value ?? false;
                      });
                    },
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
