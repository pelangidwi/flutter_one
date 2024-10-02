import 'package:flutter/material.dart';

class IniSnackBar extends StatelessWidget {
  const IniSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center( // Center the button in the body
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.blue,
                content: Text('Your request is successful'),
              ),
            );
          },
          child: const Text('Open Snackbar'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniSnackBar(),
  ));
}
