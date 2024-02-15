import 'package:flutter/material.dart';

class MyRoute extends StatelessWidget {
  const MyRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My custom Route'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Text("This is a route"),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {},
            ),
          ])),
      bottomNavigationBar: (const BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.menu)
        ],
      ))),
    );
  }
}
