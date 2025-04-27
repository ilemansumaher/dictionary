import 'dart:convert';

import 'package:dictionary_pro/views/main_page/model/data_modeltr.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
part 'data_storetr.g.dart';

class DataStoreTr = _DataStoreTrBase with _$DataStoreTr;

abstract class _DataStoreTrBase with Store {
  @observable
  ObservableList<DataModelTr> dictionary = ObservableList<DataModelTr>();

  @action
  Future<void> loadDictionaryTr() async {
    final jsonString = await rootBundle.loadString('assets/language/tr.json');
    final data = json.decode(jsonString);
    final List<dynamic> entries = data['turkish'];
    dictionary = ObservableList.of(entries.map((e) => DataModelTr.fromJson(e)));
  }
}
