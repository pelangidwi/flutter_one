import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Pastikan untuk menambahkan flutter_svg di pubspec.yaml

class IniBottomNavigationBar extends StatefulWidget {
  IniBottomNavigationBar({super.key});

  @override 
  _IniBottomNavigationBarState createState() => _IniBottomNavigationBarState();
}

class _IniBottomNavigationBarState extends State<IniBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Map<String, String>> menuItems = [
    {'icon': 'assets/home.svg', 'label': 'Home'},
    {'icon': 'assets/search.svg', 'label': 'Search'},
    {'icon': 'assets/profile.svg', 'label': 'Profile'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: SvgPicture.asset(
                i['icon']!,
                color: Colors.white,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon']!,
              color: Colors.grey,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: Text('Selected index: $_selectedIndex'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniBottomNavigationBar(),
  ));
}
