import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';
import 'package:dictionary_pro/views/main_page/data/dictionary_store.dart';
import 'package:dictionary_pro/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});
  var controller = GetIt.instance<DictionaryStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarSearch(),
          Observer(
            builder: (_) {
              var wordsen = controller.dictionary;
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: wordsen[0].length,
                  (context, index) {
                    var entry = wordsen[0][index];
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
                              builder: (context) => AboutWordScreen(id: index),
                            ),
                          );
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              entry.word,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                entry.definition.first.translate
                                    .firstWhere((e) => e.lang == "ru")
                                    .description
                                    .first,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
