import 'package:flutter/material.dart';

class IniTextField extends StatelessWidget {
  IniTextField({super.key});

  // Declare a TextEditingController
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center( // Center widget to center the TextField
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding for better spacing
          child: TextField(
            maxLength: 20,
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Name',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ), // TextStyle
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ), // BorderSide
              ), // UnderlineInputBorder
              helperText: "What's your name?",
            ), // InputDecoration
            onChanged: (value) {
              // Optionally handle changes
            },
          ), // TextField
        ), // Padding
      ), // Center
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniTextField(),
  ));
}
