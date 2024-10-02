import 'package:flutter/material.dart';

class IniNavigationPush extends StatelessWidget {
  IniNavigationPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const MaterialPagePop();
                  }),
                );
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class MaterialPagePop extends StatelessWidget {
  const MaterialPagePop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Text('You are now on the next page!'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniNavigationPush(),
  ));
}
