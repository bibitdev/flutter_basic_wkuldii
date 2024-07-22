import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Dismissibles extends StatelessWidget {
  Dismissibles({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissbible'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            // menampilkan confirm
            onDismissed: (direction) {
              print('DISMISSED');
              if (direction == DismissDirection.endToStart) {
                print('END TO START');
              } else {
                print('START TO END');
              }
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Confirm'),
                    content: const Text('Are you sure to delete this item?'),
                    actions: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('No'),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  );
                },
              );
            },
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              child: Icon(Icons.delete),
              alignment: Alignment.centerRight,
              color: Colors.red,
              padding: const EdgeInsets.only(right: 8),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}
