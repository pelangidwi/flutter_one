import 'package:flutter/material.dart';

class IniStack extends StatelessWidget {
  const IniStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center( // Center the Stack in the body
        child: Stack(
          clipBehavior: Clip.none,
          children: const [
            Icon(
              Icons.shopping_cart,
              size: 50,
            ), // Icon
            Positioned(
              top: -4.0,
              right: -4.0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
              ), // CircleAvatar
            ), // Positioned
          ], // children
        ), // Stack
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniStack(),
  ));
}
