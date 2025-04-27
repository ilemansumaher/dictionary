// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_storetr.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DataStoreTr on _DataStoreTrBase, Store {
  late final _$dictionaryAtom =
      Atom(name: '_DataStoreTrBase.dictionary', context: context);

  @override
  ObservableList<DataModelTr> get dictionary {
    _$dictionaryAtom.reportRead();
    return super.dictionary;
  }

  @override
  set dictionary(ObservableList<DataModelTr> value) {
    _$dictionaryAtom.reportWrite(value, super.dictionary, () {
      super.dictionary = value;
    });
  }

  late final _$loadDictionaryTrAsyncAction =
      AsyncAction('_DataStoreTrBase.loadDictionaryTr', context: context);

  @override
  Future<void> loadDictionaryTr() {
    return _$loadDictionaryTrAsyncAction.run(() => super.loadDictionaryTr());
  }

  @override
  String toString() {
    return '''
dictionary: ${dictionary}
    ''';
  }
}
