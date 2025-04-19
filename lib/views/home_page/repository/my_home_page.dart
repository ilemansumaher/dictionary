import 'package:dictionary_pro/views/book_page/repository/book_screen.dart';
import 'package:dictionary_pro/views/home_page/controller/home_controller.dart';
import 'package:dictionary_pro/views/main_page/repository/main_screen.dart';
import 'package:dictionary_pro/views/settings_page/controller/settings_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List headerText = ["Search", "Bookmarks", "Settings"];

  int currentIndex = 0;

  bool darkMod = false;

  HomeController controllerChange = HomeController();

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
      body: Observer(builder: (_) {
        return IndexedStack(
          index: controllerChange.currentIndex,
          children: [
            MainScreen(),
            BookScreen(),
          ],
        );
      }),
      bottomNavigationBar: Observer(builder: (_) {
        return NavigationBar(
          onDestinationSelected: (int index) {
            controllerChange.chagePageNavBar(index);
          },
          selectedIndex: controllerChange.currentIndex,
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
          ],
          backgroundColor: Theme.of(context).colorScheme.primary,
          indicatorColor: Colors.transparent,
          overlayColor: WidgetStatePropertyAll(
            Colors.transparent,
          ),
        );
      }),
    );
  }
}
