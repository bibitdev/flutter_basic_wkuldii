import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  List<Color> color = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
  ];

  final List<Widget> list = List.generate(
    40,
    (index) => Text(
      index.toString(),
      style: const TextStyle(
        fontSize: 20.0,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        backgroundColor: Colors.greenAccent,
      ),

      body: ListView(
        children: list,
      ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 100,
      //       width: 100,
      //       decoration: const BoxDecoration(
      //         color: Colors.blue,
      //       ),
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     // buat memberi jarak
      //     return const Divider(
      //       color: Colors.red,
      //     );
      //   },
      //   itemCount: color.length,
      // ),
      // body: ListView.builder(
      //   itemCount: 4,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 300,
      //       width: 300,
      //       color: color[index],
      //     );
      //   },
      // ),
      // body: ListView(
      //   // scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(
      //       width: 400,
      //       height: 400,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 300,
      //       height: 300,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.amber,
      //     ),
    );
  }
}
