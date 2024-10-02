import 'package:flutter/material.dart';

class inicontainer extends StatelessWidget {
  inicontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas pelangi'),
      ),
      body: Container(
  height: 300,
  width: double.infinity, 
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        offset: Offset.zero,
        blurRadius: 15.0,
      ),
    ],
  ),
), 
    );
  }
}
