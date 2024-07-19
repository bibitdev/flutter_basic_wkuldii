import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> listdata = [
    {
      'Name': 'Sandika',
      'age': 23,
      'favcolor': [
        'red',
        'blue',
        'green',
        'yellow',
        'white',
        'purple',
        'blue',
        'black',
        'red'
      ]
    },
    {
      'Name': 'Erico',
      'age': 23,
      'favcolor': [
        'yellow',
        'white',
        'purple',
        'red',
        'blue',
        'green',
        'blue',
        'black',
        'red'
      ]
    },
    {
      'Name': 'Saiful',
      'age': 23,
      'favcolor': [
        'blue',
        'black',
        'red',
        'red',
        'blue',
        'green',
        'yellow',
        'white',
        'purple',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mapping List'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: listdata.map(
            (data) {
              // print(data['Name']);
              List myfavcolor = data['favcolor'];
              return Card(
                margin: const EdgeInsets.all(16.0),
                color: Colors.cyan,
                child: Column(
                  children: [
                    // profile
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.circle_notifications_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${data['Name']}'),
                            Text('Age: ${data['age']}'),
                          ],
                        ),
                      ],
                    ),
                    // fav color
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((colors) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 8),
                            child: Text(colors),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
