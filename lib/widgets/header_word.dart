import 'package:flutter/material.dart';

class HeaderWord extends StatelessWidget {
  HeaderWord({super.key, required this.title, required this.fontWheit});
  String title;
  FontWeight fontWheit;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: fontWheit,
      ),
    );
  }
}
