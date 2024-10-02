import 'package:flutter/material.dart';

class IniRadio extends StatefulWidget {
  const IniRadio({super.key});

  @override
  _IniRadioState createState() => _IniRadioState();
}

class _IniRadioState extends State<IniRadio> {
  String? sex; // Variable to hold the selected value

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
            const Text('Gender:'),
            const SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // Update the selected value
                    });
                  },
                ),
                const Text('Male'),
                const SizedBox(width: 16),
                Radio<String>(
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // Update the selected value
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniRadio(),
  ));
}
