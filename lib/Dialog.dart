import 'package:flutter/material.dart';

class IniDialog extends StatelessWidget {
  IniDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showDialog<void>(
              context: context,
              barrierDismissible: true, // Klik di luar dialog akan menutup dialog
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Info'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: const [
                        Text('Your order was placed!'),
                      ],
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniDialog(),
  ));
}
