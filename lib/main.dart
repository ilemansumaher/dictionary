import 'package:dictionary_pro/common/common.dart';
import 'package:dictionary_pro/views/home_page/controller/home_controller.dart';
import 'package:dictionary_pro/views/home_page/repository/my_home_page.dart';
import 'package:dictionary_pro/views/main_page/data/data_storeen.dart';
import 'package:dictionary_pro/views/main_page/data/data_storetr.dart';
import 'package:dictionary_pro/views/main_page/data/dictionary_store.dart';
import 'package:dictionary_pro/views/settings_page/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

void main(List<String> args) async {
  GetIt.instance.registerSingleton<DictionaryStore>(DictionaryStore());
  GetIt.instance.registerSingleton<DataSoreEn>(DataSoreEn());
  GetIt.instance.registerSingleton<DataStoreTr>(DataStoreTr());
  WidgetsFlutterBinding.ensureInitialized();
  await GetIt.instance<DictionaryStore>().loadDictionary();
  await GetIt.instance<DataSoreEn>().loadDictionaryEn();
  await GetIt.instance<DataStoreTr>().loadDictionaryTr();
  GetIt.instance.registerSingleton<ThemeController>(ThemeController());
  GetIt.instance.registerSingleton<HomeController>(HomeController());
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
              onSecondary: backgroundColorDark),
        ),
        home: MyHomePage(),
      );
    });
  }
}
