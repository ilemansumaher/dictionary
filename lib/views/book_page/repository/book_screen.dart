import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';

import 'package:dictionary_pro/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});

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
                  color: Theme.of(context).colorScheme.secondary,
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
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          ".(wɜːd): n a single unit of language",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  // trailing: Observer(builder: (_) {
                  //   return Checkbox(
                  //     value: controller.checkBox[index],
                  //     onChanged: (_value) {
                  //       controller.checkItBox(index, _value);
                  //       print("$index  ${controller.checkBox[index]} $_value" );
                  //     },
                  //   );
                  // }),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
