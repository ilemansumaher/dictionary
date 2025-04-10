import 'package:dictionary_pro/common/common.dart';
import 'package:dictionary_pro/views/book_page/repository/book_screen.dart';
import 'package:dictionary_pro/views/main_page/repository/main_screen.dart';
import 'package:dictionary_pro/views/settings_page/repository/settings_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List headerText = ["Search", "Bookmarks", "Settings"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: materialColor,
        title: Text(
          headerText[currentIndex],
          style: TextStyle(color: borderColor),
        ),
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
            ),
            label: "",
            selectedIcon: Icon(
              Icons.home_outlined,
              color: selectedIconColor,
              size: 38,
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.book_outlined,
              size: 35,
            ),
            label: "",
            selectedIcon: Icon(
              Icons.book_outlined,
              color: selectedIconColor,
              size: 38,
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.settings_outlined,
              size: 35,
            ),
            label: "",
            selectedIcon: Icon(
              Icons.settings_outlined,
              color: selectedIconColor,
              size: 38,
            ),
          ),
        ],
        backgroundColor: materialColor,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStatePropertyAll(
          Colors.transparent,
        ),
      ),
    );
  }
}
