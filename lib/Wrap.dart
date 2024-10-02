import 'package:flutter/material.dart';

class IniWrap extends StatelessWidget {
  IniWrap({super.key});

  // Define a list of colors
  final List<Color> cColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center( // Center the Wrap widget in the body
        child: Wrap(
          spacing: 20, // Horizontal space between the circles
          runSpacing: 10, // Vertical space between the rows
          children: cColors.map((color) {
            return InkWell(
              onTap: () {
                // You can add any action you want here
                print('Tapped on color: $color');
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.grey),
                  color: color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset.zero,
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniWrap(),
  ));
}
