import 'package:dictionary_pro/common/common.dart';
import 'package:dictionary_pro/views/home_page/repository/my_home_page.dart';
import 'package:dictionary_pro/views/settings_page/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

void main(List<String> args) {
  GetIt.instance.registerSingleton<ThemeController>(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var controller = GetIt.instance<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: controller.themeMode,
        theme: ThemeData(
          brightness: Brightness.light,
          
          colorScheme: ColorScheme.light(
            primary: materialColor,
            secondary: borderColor,
            background: Colors.white,
            onPrimary: textColorInSearch,
            onSecondary: secondaryColor,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            primary: materialColorDark,
            secondary: textColorInSearchDark,
            background: backgroundColorDark,
            onPrimary: secondaryColorDark,
            onSecondary: backgroundColorDark
          ),
        ),
        home: MyHomePage(),
      );
    });
  }
}
