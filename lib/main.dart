import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

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
    // Widget dasar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text('Extract Widget'),
          backgroundColor: Colors.greenAccent,
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return CardItem(
              imageUrl: 'https://picsum.photos/id/$index/200/300',
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
        // body: ListView(
        //   children: const [
        //     // Ekstract Widget agar code tidak banyak
        //     CardItem(
        //       imageUrl: 'https://picsum.photos/id/1/200/300',
        //       title: 'Bibit',
        //       subtitle: 'Bibit Raikhan Azzaki',
        //     ),
        //     CardItem(
        //       imageUrl: 'https://picsum.photos/id/2/200/300',
        //       title: 'Anas',
        //       subtitle: 'Bibit Raikhan Azzaki',
        //     ),
        //     CardItem(
        //       imageUrl: 'https://picsum.photos/id/3/200/300',
        //       title: 'Didi',
        //       subtitle: 'Bibit Raikhan Azzaki',
        //     ),
        //     CardItem(
        //       imageUrl: 'https://picsum.photos/id/4/200/300',
        //       title: 'Adrian',
        //       subtitle: 'Bibit Raikhan Azzaki',
        //     ),
        //     CardItem(
        //       imageUrl: 'https://picsum.photos/id/5/200/300',
        //       title: 'Alfi',
        //       subtitle: 'Bibit Raikhan Azzaki',
        //     ),
        //   ],
        // ),
        // body: ListView(
        //   children: const [
        //     Padding(padding: EdgeInsets.all(8)),
        //     ListTile(
        //       title: Text('List Tile'),
        //       subtitle: Text('Ini adalah subtitle'),
        //       leading: CircleAvatar(
        //         backgroundColor: Colors.white,
        //         child: Icon(
        //           Icons.favorite,
        //           color: Colors.red,
        //         ),
        //       ),
        //       trailing: Text('10:00PM'),
        //       tileColor: Colors.amber,
        //       // onTap: () {
        //       //   return;
        //       // },
        //     ),
        //     Divider(
        //       color: Colors.black,
        //     ),

        // body: ListView(
        //   children: list,
        // ),
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
        // // body: ListView.builder(
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
      ),
    );
  }
}

// Exstract Widget
class CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text('10:00PM'),
    );
  }
}
