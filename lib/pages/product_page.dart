import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_with_kuldii/models/product.dart';

class ProductModels extends StatelessWidget {
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          nama: faker.food.restaurant(),
          imageURL: 'https://picsum.photos/id/${index}/200/300',
          harga: Random().nextInt(100000),
          deskripsi: faker.lorem.sentence());
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 100,
        itemBuilder: (context, index) {
          return GridTile (
            footer: Container(
              width: 30,
              color: Colors.grey.withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dummyData[index].nama,
                    maxLines: 1,
                  ),
                  Text('Rp.${dummyData[index].harga}'),
                  Text(
                    dummyData[index].deskripsi,
                    maxLines: 2,
                  )
                ],
              ),
            ),
            child: SizedBox(
              width: 80,
              height: 100,
              child: Image.network(dummyData[index].imageURL),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
