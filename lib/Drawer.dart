import 'package:flutter/material.dart';

class inidrawer extends StatelessWidget {
  inidrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas pelangi'),
      ),
      // ... (bagian kode sebelumnya)
endDrawer: Drawer(
  child: Container(
    color: Colors.white,
    padding: const EdgeInsets.all(8),
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: const CircleAvatar(
            child: FlutterLogo(size: 50),
          ),
          decoration: BoxDecoration(color: Colors.grey[200]),
          accountName: const Text('Sabrina'),
          accountEmail: const Text('sabrina.dev@gmail.com'),
        ),
        ListTile(
          title: const Text('Menu 1'),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: const Text('Menu 2'),
          onTap: () {},
        ),
      ],
    ),
  ),
),
// ... (bagian kode setelahnya)
    );
  }
}
