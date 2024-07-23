import 'package:flutter/material.dart';
import 'package:flutter_basic_with_kuldii/tab_bar.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Setting',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TabBars()),
              );
              },
            ),
            const ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text('Wallet'),
            ),
            const ListTile(
              leading: Icon(Icons.analytics_rounded),
              title: Text('Trade'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Some Text Here!'),
      ),
    );
  }
}
