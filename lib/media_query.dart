import 'package:flutter/material.dart';

class MediaQuerys extends StatelessWidget {
  const MediaQuerys({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: const Center(child: Text('Media Query')),
      backgroundColor: Colors.blue,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(children: [
                Container(
                  height: bodyHeight * 0.5,
                  width: mediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                  height: bodyHeight * 0.5,
                  color: Colors.red.withOpacity(0.8),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: bodyHeight * 0.5,
                              width: mediaQueryWidth,
                              color: Colors.purple,
                              child: Center(
                                  child: Text(
                                'Hello Dunia',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        );
                      }),
                )
              ])
            : Column(children: [
                Container(
                  height: bodyHeight * 0.3,
                  width: mediaQueryWidth,
                  color: Colors.amber,
                ),
                Container(
                  height: bodyHeight * 0.7,
                  color: Colors.red.withOpacity(0.8),
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.blue,
                          ),
                          title: Text('Hello World'),
                        );
                      }),
                )
              ]),
      ),
    );
  }
}
