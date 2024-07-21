import 'dart:math';

import 'package:flutter/material.dart';

class GridViews extends StatelessWidget {
  final List<Container> listContainer = List.generate(60, (index) {
    return Container(
      width: 150,
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    );
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Grid View',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      // body: GridView(
      //   padding: const EdgeInsets.all(8.0),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 3 / 4,
      //   ),
      //   children: listContainer,
      // ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: listContainer,
      // ),
      body: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: 4,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.purple,
            child: const Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
