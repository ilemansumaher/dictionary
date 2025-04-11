import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Theme.of(context).colorScheme.secondary,),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              
              tileColor: 
              title: Text("English"),
              trailing: Radio(
                value: false,
                groupValue: null,
                onChanged: (ValueKey) {},
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Theme.of(context).colorScheme.secondary,
              title: Text("Turkmen"),
              trailing: Radio(
                value: false,
                groupValue: null,
                onChanged: (ValueKey) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
