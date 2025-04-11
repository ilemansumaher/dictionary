import 'package:dictionary_pro/views/book_page/repository/book_screen.dart';
import 'package:dictionary_pro/views/main_page/repository/main_screen.dart';
import 'package:dictionary_pro/views/settings_page/controller/settings_controller.dart';
import 'package:dictionary_pro/views/settings_page/repository/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List headerText = ["Search", "Bookmarks", "Settings"];
  int currentIndex = 0;
  bool darkMod = false;
  var controller = GetIt.instance<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          headerText[currentIndex],
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        actions: [
          Observer(builder: (_) {
            return CupertinoSwitch(
              value: controller.themeData,
              activeColor: Theme.of(context).colorScheme.secondary,
              thumbIcon: WidgetStatePropertyAll(
                Icon(
                  controller.themeData ? Icons.dark_mode : Icons.sunny,
                ),
              ),
              onChanged: (value) {
                controller.themeChange();
              },
            );
          })
        ],
        centerTitle: true,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          MainScreen(),
          BookScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedIndex: currentIndex,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              size: 35,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            label: "",
            selectedIcon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.secondary,
              size: 38,
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.book_outlined,
              size: 35,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            label: "",
            selectedIcon: Icon(
              Icons.book_outlined,
              color: Theme.of(context).colorScheme.secondary,
              size: 38,
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings_outlined,
              size: 35,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            label: "",
            selectedIcon: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).colorScheme.secondary,
              size: 38,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStatePropertyAll(
          Colors.transparent,
        ),
      ),
    );
  }
}
