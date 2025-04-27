// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChangeContorller on _ChangeContorllerBase, Store {
  Computed<String>? _$hiddenLangComputed;

  @override
  String get hiddenLang =>
      (_$hiddenLangComputed ??= Computed<String>(() => super.hiddenLang,
              name: '_ChangeContorllerBase.hiddenLang'))
          .value;

  late final _$chosse_lanAtom =
      Atom(name: '_ChangeContorllerBase.chosse_lan', context: context);

  @override
  String get chosse_lan {
    _$chosse_lanAtom.reportRead();
    return super.chosse_lan;
  }

  @override
  set chosse_lan(String value) {
    _$chosse_lanAtom.reportWrite(value, super.chosse_lan, () {
      super.chosse_lan = value;
    });
  }

  late final _$to_lanAtom =
      Atom(name: '_ChangeContorllerBase.to_lan', context: context);

  @override
  String get to_lan {
    _$to_lanAtom.reportRead();
    return super.to_lan;
  }

  @override
  set to_lan(String value) {
    _$to_lanAtom.reportWrite(value, super.to_lan, () {
      super.to_lan = value;
    });
  }

  late final _$lang1Atom =
      Atom(name: '_ChangeContorllerBase.lang1', context: context);

  @override
  String get lang1 {
    _$lang1Atom.reportRead();
    return super.lang1;
  }

  @override
  set lang1(String value) {
    _$lang1Atom.reportWrite(value, super.lang1, () {
      super.lang1 = value;
    });
  }

  late final _$lang2Atom =
      Atom(name: '_ChangeContorllerBase.lang2', context: context);

  @override
  String get lang2 {
    _$lang2Atom.reportRead();
    return super.lang2;
  }

  @override
  set lang2(String value) {
    _$lang2Atom.reportWrite(value, super.lang2, () {
      super.lang2 = value;
    });
  }

  late final _$_ChangeContorllerBaseActionController =
      ActionController(name: '_ChangeContorllerBase', context: context);

  @override
  void switchLanguage(int whichButton) {
    final _$actionInfo = _$_ChangeContorllerBaseActionController.startAction(
        name: '_ChangeContorllerBase.switchLanguage');
    try {
      return super.switchLanguage(whichButton);
    } finally {
      _$_ChangeContorllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void swapLanguages() {
    final _$actionInfo = _$_ChangeContorllerBaseActionController.startAction(
        name: '_ChangeContorllerBase.swapLanguages');
    try {
      return super.swapLanguages();
    } finally {
      _$_ChangeContorllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chosse_lan: ${chosse_lan},
to_lan: ${to_lan},
lang1: ${lang1},
lang2: ${lang2},
hiddenLang: ${hiddenLang}
    ''';
  }
}
