import 'dart:convert';

import 'package:dictionary_pro/views/main_page/model/data_modelen.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
part 'data_storeen.g.dart';

class DataSoreEn = _DataSoreEnBase with _$DataSoreEn;

abstract class _DataSoreEnBase with Store {
  @observable
  ObservableList<DataModelEn> dictionary = ObservableList<DataModelEn>();

  @action
  Future<void> loadDictionaryEn() async {
    final jsonString = await rootBundle.loadString('assets/language/en.json');
    final data = json.decode(jsonString);
    final List<dynamic> entries = data['english'];
    dictionary = ObservableList.of(entries.map((e) => DataModelEn.fromJson(e)));
  }
}
