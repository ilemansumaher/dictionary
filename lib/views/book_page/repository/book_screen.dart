import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';
import 'package:dictionary_pro/views/main_page/data/dictionary_store.dart';
import 'package:dictionary_pro/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});

  final dictionaryStore = GetIt.I<DictionaryStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarSearch(),
          Observer(
            builder: (_) {
              final words = dictionaryStore.dictionary;

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: words.length,
                  (context, index) {
                    final entry = words[index];

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
                              builder: (context) => AboutWordScreen(
                                mainWord: entry.english.word,
                                definotion: entry.english.definition,
                              ),
                            ),
                          );
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              entry.english.word,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ), // İngilizce kelime
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                entry.english.definition
                                    .split('\n')[0], // ilk tanımı al
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
