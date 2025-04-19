// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookController on _BookControllerBase, Store {
  late final _$checkBoxAtom =
      Atom(name: '_BookControllerBase.checkBox', context: context);

  @override
  List<bool> get checkBox {
    _$checkBoxAtom.reportRead();
    return super.checkBox;
  }

  @override
  set checkBox(List<bool> value) {
    _$checkBoxAtom.reportWrite(value, super.checkBox, () {
      super.checkBox = value;
    });
  }

  late final _$_BookControllerBaseActionController =
      ActionController(name: '_BookControllerBase', context: context);

  @override
  void checkItBox(int index, bool? check) {
    final _$actionInfo = _$_BookControllerBaseActionController.startAction(
        name: '_BookControllerBase.checkItBox');
    try {
      return super.checkItBox(index, check);
    } finally {
      _$_BookControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
checkBox: ${checkBox}
    ''';
  }
}
