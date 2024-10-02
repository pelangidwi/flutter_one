import 'package:flutter/material.dart';

class iniimage extends StatelessWidget {
  iniimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas pelangi'),
      ),
body: Container(
  padding: const EdgeInsets.all(10.0),
  child: Column(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ), // BorderRadius.only
        child: Image.asset("asset/test.jpg"),
      ), // ClipRRect
    ], // Column
  ), // Container
),    );
  }
}
