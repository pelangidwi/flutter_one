import 'package:flutter/material.dart';

class inipadding extends StatelessWidget {
  inipadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas pelangi'),
      ),
     body: Container(
  height: 500,
  width: 300,
  margin: const EdgeInsets.all(10.0),
  decoration: BoxDecoration(border: Border.all()),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 30,
          bottom: 40,
        ), // EdgeInsets.only
        child: Text(
          'Categories',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ), // TextStyle
        ), // Text
      ), // Padding
    ], // children
  ), // Column
), // Container
    );
  }
}
