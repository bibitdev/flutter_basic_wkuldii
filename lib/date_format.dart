import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormats extends StatelessWidget {
  const DateFormats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Date Time'),
      ),
      body: Center(
        child: Text(
          DateFormat.yMMMEd().format(DateTime.now()),
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
