import 'package:flutter/material.dart';

class initext extends StatelessWidget {
  initext({super.key});

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
      Text(
        'hai semua saya pelangi dwi lestianingrum, saya lahir pada tanggal 25 oktober 2007',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
        ),
      ),
    ],
  ),
),
    );
  }
}
