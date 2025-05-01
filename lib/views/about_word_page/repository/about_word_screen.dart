import 'package:dictionary_pro/views/book_page/repository/book_screen.dart';
import 'package:dictionary_pro/views/main_page/data/dictionary_store.dart';
import 'package:dictionary_pro/widgets/definitiona_word.dart';
import 'package:dictionary_pro/widgets/header_word.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

var controller = GetIt.instance<DictionaryStore>();

class AboutWordScreen extends StatelessWidget {
  AboutWordScreen({
    super.key,
    required this.id,
  });
  int id;
  var words = controller.dictionary;
  // final words = dictionaryStore.dictionary;
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
                      title: "${words[0][id].word}" ?? "",
                      fontWheit: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    // HeaderWord(
                    // title: "{${words[0][id].definition ?? ""}}",
                    //   fontWheit: FontWeight.normal,
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: ListView.builder(
                  itemCount: words[0][id].definition.length,
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
                            : index == words[0][id].definition.length - 1
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
                        type: words[0][0]
                            .definition[0]
                            .translate[0]
                            .description[0],
                        index: index + 1,
                        title: words[0][0]
                            .definition[0]
                            .translate[0]
                            .kelime[0]
                            .kelime,
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
