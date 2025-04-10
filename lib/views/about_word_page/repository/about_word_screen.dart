import 'package:dictionary_pro/common/common.dart';
import 'package:flutter/material.dart';

import '../../../widgets/definitiona_word.dart';
import '../../../widgets/header_word.dart';

class AboutWordScreen extends StatelessWidget {
  AboutWordScreen({super.key});
  int count = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meanings",
          style: TextStyle(
            color: borderColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace_rounded,
            color: borderColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: materialColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: borderColor,
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
                      title: "Word",
                      fontWheit: FontWeight.bold,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    HeaderWord(
                      title: "{wɜːd}",
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
                  itemCount: count,
                  padding: EdgeInsets.all(5.0),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: borderColor,
                        borderRadius: index == 0
                            ? BorderRadiusDirectional.only(
                                topStart: Radius.circular(12),
                                topEnd: Radius.circular(12),
                              )
                            : index == count - 1
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
                          index: index + 1,
                          type: "n",
                          title:
                              "a promise or guarantee that you will do something or that something will happen or is true"),
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
