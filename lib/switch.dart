import 'package:flutter/material.dart';

class Switchs extends StatefulWidget {
  const Switchs({super.key});

  @override
  State<Switchs> createState() => _SwitchsState();
}

class _SwitchsState extends State<Switchs> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Switch')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            // Switch.adaptif hanya biasa/basic
            Switch(
              activeColor: Colors.amber,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.red,
              activeThumbImage: NetworkImage(
                  'https://www.google.com/imgres?q=macbook%20pro%20laptop%20apple%20space%20gray%20macbook%20air%20m1%20silver&imgurl=https%3A%2F%2Fhelios-i.mashable.com%2Fimagery%2Freviews%2F06P4Fqbrovc6FRkw649HArJ%2Fimages-655.fill.size_2000x1125.v1637096407.jpg&imgrefurl=https%3A%2F%2Fmashable.com%2Freview%2Fapple-macbook-pro-m1-pro-review&docid=W0LJW_2IVPM6YM&tbnid=iBH4KbJCTO2PlM&vet=12ahUKEwjSg6id_b-HAxXqR2wGHe-WBmI4ChAzegQIHRAA..i&w=2000&h=1125&hcb=2&ved=2ahUKEwjSg6id_b-HAxXqR2wGHe-WBmI4ChAzegQIHRAA'),
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
                print(statusSwitch);
              },
            ),
            Text(
              (statusSwitch == true) ? 'Switch On' : 'Swicth Off',
              style: const TextStyle(
                fontSize: 16.0,
              ),
            )
            // if (statusSwitch == true)
            //   const Text(
            //     'Switch On',
            //     style: TextStyle(
            //       fontSize: 16.0,
            //     ),
            //   )
            // else
            //   const Text(
            //     'Switch Off',
            //     style: TextStyle(
            //       fontSize: 16.0,
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
