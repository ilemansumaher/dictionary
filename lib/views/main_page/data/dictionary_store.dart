import 'dart:convert';
import 'package:dictionary_pro/views/main_page/model/data_modelru.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'dictionary_store.g.dart';

class DictionaryStore = _DictionaryStore with _$DictionaryStore;

abstract class _DictionaryStore with Store {
  @observable
  ObservableList<DataModelRu> dictionary = ObservableList<DataModelRu>();

  @action
  Future<void> loadDictionary() async {
    final jsonString = await rootBundle.loadString('assets/language/ru.json');
    final data = json.decode(jsonString);
    final List<dynamic> entries = data['russian'];
    dictionary = ObservableList.of(entries.map((e) => DataModelRu.fromJson(e)));
  }
}
