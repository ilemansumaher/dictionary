import 'dart:convert';
import 'package:dictionary_pro/views/main_page/model/data_model.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'dictionary_store.g.dart';

class DictionaryStore = _DictionaryStore with _$DictionaryStore;

abstract class _DictionaryStore with Store {
  @observable
  ObservableList<WordEntry> dictionary = ObservableList<WordEntry>();

  @action
  Future<void> loadDictionary() async {
    final jsonString = await rootBundle.loadString('assets/language/data.json');
    final data = json.decode(jsonString);
    final List<dynamic> entries = data['dictionary'];
    dictionary = ObservableList.of(entries.map((e) => WordEntry.fromJson(e)));
  }
}
