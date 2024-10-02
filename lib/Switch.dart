import 'package:flutter/material.dart';

class IniSwitch extends StatefulWidget {
  const IniSwitch({super.key});

  @override
  _IniSwitchState createState() => _IniSwitchState();
}

class _IniSwitchState extends State<IniSwitch> {
  bool isOn = false; // Initial value for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the Row
        children: [
          const Text('Connect Instagram'),
          const SizedBox(width: 8),
          Switch(
            value: isOn,
            onChanged: (bool val) {
              setState(() {
                isOn = val; // Update the switch state
              });
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniSwitch(),
  ));
}
