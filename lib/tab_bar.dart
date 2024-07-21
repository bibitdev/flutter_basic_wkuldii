import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  final List<Tab> myTab = const [
    Tab(
      text: 'Tab 1',
      icon: Icon(Icons.shopify),
    ),
    Tab(
      text: 'Tab 2',
    ),
    Tab(
      icon: Icon(Icons.settings),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan AppBar'),
          backgroundColor: Colors.cyan,
          bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.red,
            // indicatorColor: Colors.red,
            // indicatorWeight: 15,
            // indicatorPadding: const EdgeInsets.all(2),
            indicator: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            tabs: myTab,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
          ],
        ),
      ),
    );
  }
}
