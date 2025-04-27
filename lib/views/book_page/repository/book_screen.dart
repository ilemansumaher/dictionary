import 'package:dictionary_pro/views/about_word_page/repository/about_word_screen.dart';
import 'package:dictionary_pro/views/main_page/data/data_storeen.dart';
import 'package:dictionary_pro/views/main_page/data/data_storetr.dart';
import 'package:dictionary_pro/views/main_page/data/dictionary_store.dart';
import 'package:dictionary_pro/views/main_page/model/data_modelen.dart';
import 'package:dictionary_pro/views/main_page/model/data_modeltr.dart';
import 'package:dictionary_pro/widgets/app_bar_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

final dictionaryStoreRu = GetIt.instance<DictionaryStore>();
final dictionaryStoreEn = GetIt.instance<DataSoreEn>();
final dictionaryStoreTr = GetIt.instance<DataStoreTr>();

class BookScreen extends StatelessWidget {
  BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarSearch(),
          Observer(
            builder: (_) {
              final wordsen = dictionaryStoreEn.dictionary;
              final wordstr = dictionaryStoreTr.dictionary;
              final wordsru = dictionaryStoreRu.dictionary;
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: wordsru.length,
                  (context, index) {
                    var entry = wordsen[index];

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
                                id: index,
                              ),
                            ),
                          );
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${entry.word} ." ?? "",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(entry.definitionRu[0].type),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text(
                                entry.definitionRu[0].meaning,
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
