import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  String data = 'Belum ada input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Dialog',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          data,
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.save),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Container(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1484517586036-ed3db9e3749e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: const Text('Alert Dialog'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          data = 'Cancel';
                        });
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          data = 'Yes';
                        });
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
