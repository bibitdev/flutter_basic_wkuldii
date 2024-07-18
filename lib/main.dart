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
          body: Stack(
            children: [
              Container(
                width: 400,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 50,
                color: Colors.amber,
              ),
            ],
          )),
    );
  }
}
