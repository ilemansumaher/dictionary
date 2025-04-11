// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeChange on _ThemeChangeBase, Store {
  late final _$themeModeAtom =
      Atom(name: '_ThemeChangeBase.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$themeDataAtom =
      Atom(name: '_ThemeChangeBase.themeData', context: context);

  @override
  bool get themeData {
    _$themeDataAtom.reportRead();
    return super.themeData;
  }

  @override
  set themeData(bool value) {
    _$themeDataAtom.reportWrite(value, super.themeData, () {
      super.themeData = value;
    });
  }

  late final _$_ThemeChangeBaseActionController =
      ActionController(name: '_ThemeChangeBase', context: context);

  @override
  dynamic themeChange() {
    final _$actionInfo = _$_ThemeChangeBaseActionController.startAction(
        name: '_ThemeChangeBase.themeChange');
    try {
      return super.themeChange();
    } finally {
      _$_ThemeChangeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode},
themeData: ${themeData}
    ''';
  }
}
