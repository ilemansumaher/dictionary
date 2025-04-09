import 'package:dictionary_pro/common/common.dart';
import 'package:dictionary_pro/views/main_page/repository/main_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: materialColor,
        title: Text(
          "Search",
          style: TextStyle(color: borderColor),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.1,
            title: TextField(
              decoration: InputDecoration(
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.keyboard)),
                hintText: "Search...",
                fillColor: borderColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
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
