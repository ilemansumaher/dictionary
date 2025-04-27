// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_storeen.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DataSoreEn on _DataSoreEnBase, Store {
  late final _$dictionaryAtom =
      Atom(name: '_DataSoreEnBase.dictionary', context: context);

  @override
  ObservableList<DataModelEn> get dictionary {
    _$dictionaryAtom.reportRead();
    return super.dictionary;
  }

  @override
  set dictionary(ObservableList<DataModelEn> value) {
    _$dictionaryAtom.reportWrite(value, super.dictionary, () {
      super.dictionary = value;
    });
  }

  late final _$loadDictionaryEnAsyncAction =
      AsyncAction('_DataSoreEnBase.loadDictionaryEn', context: context);

  @override
  Future<void> loadDictionaryEn() {
    return _$loadDictionaryEnAsyncAction.run(() => super.loadDictionaryEn());
  }

  @override
  String toString() {
    return '''
dictionary: ${dictionary}
    ''';
  }
}
