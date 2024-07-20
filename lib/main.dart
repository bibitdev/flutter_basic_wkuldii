import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date Time'),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().format(DateTime.now())
          ),
        ),
      ),
    );
  }
}
