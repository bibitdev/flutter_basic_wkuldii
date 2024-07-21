import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: const [
          Padding(padding: EdgeInsets.all(8)),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Ini adalah subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: Text('10:00PM'),
            tileColor: Colors.amber,
            // onTap: () {
            //   return;
            // },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Ini adalah subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: Text('10:00PM'),
            tileColor: Colors.amber,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Ini adalah subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: Text('10:00PM'),
            tileColor: Colors.amber,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Ini adalah subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: Text('10:00PM'),
            tileColor: Colors.amber,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('List Tile'),
            subtitle: Text('Ini adalah subtitle'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            trailing: Text('10:00PM'),
            tileColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
