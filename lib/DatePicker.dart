import 'package:flutter/material.dart';

class IniDatePicker extends StatefulWidget {
  IniDatePicker({super.key});

  @override
  _IniDatePickerState createState() => _IniDatePickerState();
}

class _IniDatePickerState extends State<IniDatePicker> {
  String selectedDate = '2022-08-01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pelangi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null) {
              setState(() {
                selectedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
              });
            }
          },
          child: TextFormField(
            initialValue: selectedDate,
            maxLength: 20,
            enabled: false,
            decoration: const InputDecoration(
              labelText: 'Birth date',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              suffixIcon: Icon(Icons.date_range),
              helperText: "What's your birth date?",
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IniDatePicker(),
  ));
}
