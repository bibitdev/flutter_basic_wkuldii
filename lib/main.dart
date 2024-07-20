import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Latihan AppBar',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          leading: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Icon(
                Icons.developer_board,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.black,
            ),
          ),
          // ruang kosong
          flexibleSpace: Container(
            color: Colors.green,
            height: 150,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'App Bar',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
