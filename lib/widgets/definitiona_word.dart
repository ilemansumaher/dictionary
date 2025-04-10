import 'package:flutter/material.dart';

class DefinitionaWord extends StatelessWidget {
  DefinitionaWord(
      {super.key,
      required this.title,
      required this.index,
      required this.type});
  String title;
  int index;
  String type;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$index.",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("$type."),
        ),
        Wrap(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
