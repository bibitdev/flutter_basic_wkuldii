import 'package:flutter/material.dart';

class DatePickers extends StatefulWidget {
  const DatePickers({super.key});

  @override
  State<DatePickers> createState() => _DatePickersState();
}

class _DatePickersState extends State<DatePickers> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Date Picker')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                    // initialEntryMode: DatePickerEntryMode.input,
                    helpText: 'Help Text',
                    cancelText: 'Cancel Text',
                    confirmText: 'Confirm Text',
                    fieldHintText: 'Field Hint Text',
                    fieldLabelText: 'Field Label Text',
                    errorFormatText: 'Error Format Text',
                    // builder: (context, child) {
                    //   return Theme(
                    //     data: ThemeData.dark(),
                    //     child: Text(''),
                    //   );
                    // },
                  ).then((value) {
                    setState(() {
                      selectDate == value;
                    });
                  });
                },
                child: const Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
