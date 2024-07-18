import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget dasar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text('Flutter Basic'),
          backgroundColor: Colors.greenAccent,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
