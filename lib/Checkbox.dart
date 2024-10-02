import 'package:flutter/material.dart';

class IniCheckbox extends StatefulWidget {
  IniCheckbox({super.key});

  @override
  _IniCheckboxState createState() => _IniCheckboxState();
}

class _IniCheckboxState extends State<IniCheckbox> {
  bool isChecked = false; // Variabel untuk menyimpan status checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.blue,
              onChanged: (val) {
                setState(() {
                  if (val != null) {
                    isChecked = val;
                  }
                });
              },
            ),
            const SizedBox(width: 4),
            const Text(
              'Agree Term & Conditions',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniCheckbox(),
  ));
}
