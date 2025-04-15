import 'package:dictionary_pro/views/main_page/controller/main_controller.dart';
import 'package:dictionary_pro/widgets/header_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../widgets/app_bar_search.dart';
import '../../../widgets/introduction_search.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  ChangeContorller _contorller = ChangeContorller();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        AppBarSearch(),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.0),
                    onTap: () {
                      _contorller.switchLanguage(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HeaderWord(
                        title: _contorller.lang1,
                        fontWheit: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
              IconButton(
                onPressed: _contorller.swapLanguages,
                icon: Icon(
                  Icons.change_circle_outlined,
                  size: 35,
                ),
              ),
              Observer(builder: (_) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12.0),
                    onTap: () {
                      _contorller.switchLanguage(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HeaderWord(
                        title: _contorller.lang2,
                        fontWheit: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              IntroductionSearch(),
            ],
          ),
        ),
      ],
    );
  }
}
