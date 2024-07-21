import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basic'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.green,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
