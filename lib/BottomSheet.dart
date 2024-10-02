import 'package:flutter/material.dart';

class IniButtonSheet extends StatelessWidget {
  IniButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Your order was placed!'),
                        const SizedBox(height: 20.0),
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
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open BottomSheet'),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniButtonSheet(),
  ));
}
