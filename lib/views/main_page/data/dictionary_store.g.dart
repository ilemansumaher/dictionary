// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DictionaryStore on _DictionaryStore, Store {
  late final _$dictionaryAtom =
      Atom(name: '_DictionaryStore.dictionary', context: context);

  @override
  ObservableList<DataModelRu> get dictionary {
    _$dictionaryAtom.reportRead();
    return super.dictionary;
  }

  @override
  set dictionary(ObservableList<DataModelRu> value) {
    _$dictionaryAtom.reportWrite(value, super.dictionary, () {
      super.dictionary = value;
    });
  }

  late final _$loadDictionaryAsyncAction =
      AsyncAction('_DictionaryStore.loadDictionary', context: context);

  @override
  Future<void> loadDictionary() {
    return _$loadDictionaryAsyncAction.run(() => super.loadDictionary());
  }

  @override
  String toString() {
    return '''
dictionary: ${dictionary}
    ''';
  }
}
