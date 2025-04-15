import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'settings_controller.g.dart';

class ThemeController = _ThemeChangeBase with _$ThemeController;

abstract class _ThemeChangeBase with Store {
  @observable
  ThemeMode themeMode = ThemeMode.light;
  @observable
  bool themeData = true;
  @action
  themeChange() {
    themeData = !themeData;
    themeMode = themeData ? ThemeMode.light : ThemeMode.dark;
  }
}
