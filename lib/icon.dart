import 'package:flutter/material.dart';

class iniicon extends StatelessWidget {
  iniicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas pelangi'),
      ),
body: Container(
  padding: const EdgeInsets.all(10.0),
  child: Column(
    children: const [
      Icon(
        Icons.share,
        size: 32.0,
      ), // Icon
      Icon(
        Icons.favorite,
        size: 36.0,
        color: Colors.red,
      ), // Icon
    ], // Column
  ), // Container
),    );
  }
}
