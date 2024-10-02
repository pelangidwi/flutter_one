import 'package:flutter/material.dart';

class IniCenter extends StatelessWidget {
  IniCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadowColor: Colors.grey[20], // Menentukan bayangan tombol
            elevation: 5.0,
          ),
          child: Text(
            "Add To Cart".toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniCenter(),
  ));
}
