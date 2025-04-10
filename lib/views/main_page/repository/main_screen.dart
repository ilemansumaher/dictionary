import 'package:dictionary_pro/common/common.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar_search.dart';
import '../../../widgets/introduction_search.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        AppBarSearch(),
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
