import 'package:flutter/material.dart';

class IniAspectRatio extends StatelessWidget {
  IniAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 180 / 240, // Aspect ratio of 3:4
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniAspectRatio(),
  ));
}
