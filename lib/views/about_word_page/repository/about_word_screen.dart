import 'package:dictionary_pro/views/book_page/repository/book_screen.dart';
import 'package:flutter/material.dart';

import '../../../widgets/definitiona_word.dart';
import '../../../widgets/header_word.dart';

class AboutWordScreen extends StatelessWidget {
  AboutWordScreen({
    super.key,
    required this.id,
  });
  int id;

  final words = dictionaryStore.dictionary;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meanings",
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderWord(
                      title: "${words[id].word}" ?? "",
                      fontWheit: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    HeaderWord(
                      title: "{${words[id].pronunciation}}",
                      fontWheit: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: ListView.builder(
                  itemCount: words[id].definitionEn.length,
                  padding: EdgeInsets.all(5.0),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: index == 0
                            ? BorderRadiusDirectional.only(
                                topStart: Radius.circular(12),
                                topEnd: Radius.circular(12),
                              )
                            : index == words[id].definitionEn.length - 1
                                ? BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(12),
                                    bottomStart: Radius.circular(12),
                                  )
                                : null,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: DefinitionaWord(
                        type: words[id].definitionEn[index].type,
                        index: index + 1,
                        title: words[id].definitionEn[index].meaning,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
