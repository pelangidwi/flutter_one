import 'package:flutter/material.dart';

class IniDropdown extends StatefulWidget {
  IniDropdown({super.key});

  @override
  _IniDropdownState createState() => _IniDropdownState();
}

class _IniDropdownState extends State<IniDropdown> {
  // Daftar pilihan dropdown
  List<String> dropdownList = ['Dart', 'Python', 'JavaScript', 'Java', 'C++'];
  
  // Menyimpan nilai yang dipilih
  String selected = 'Dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Your Favorite Language:'),
            const SizedBox(width: 8),
            DropdownButton<String>(
              value: selected,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 20,
              style: TextStyle(color: Colors.blue[600]),
              underline: Container(
                height: 2,
                color: Colors.blueGrey,
              ),
              items: dropdownList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue != null) selected = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniDropdown(),
  ));
}
