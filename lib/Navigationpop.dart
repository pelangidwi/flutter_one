import 'package:flutter/material.dart';

class ininavigationpop extends StatelessWidget {
  ininavigationpop({super.key});

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
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Go back (pop)'),
      ),
    ],
  ),
),
    );
  }
}
