import 'dart:convert';
import 'package:dictionary_pro/views/main_page/model/data_model.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'dictionary_store.g.dart';

class DictionaryStore = _DictionaryStore with _$DictionaryStore;

abstract class _DictionaryStore with Store {
  @observable
  ObservableList<List<WordEntry>> dictionary = ObservableList();

  @action
  Future<void> loadDictionary() async {
    final jsonString = await rootBundle.loadString('assets/language/word.json');
    final data = json.decode(jsonString);
    final List<dynamic> entries = data['dictionary'];

    dictionary = ObservableList.of(entries.map<List<WordEntry>>(
        (list) => (list as List).map((e) => WordEntry.fromJson(e)).toList()));
    print(dictionary);
  }
}
