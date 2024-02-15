import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _filter = TextEditingController();
  List<String> items = <String>[
    'Hello',
    'is',
    'it',
    'me',
    'you are looking for'
  ];
  List<String> filteredItems = <String>[];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
    _filter.addListener(() {
      setState(() {
        filteredItems = items
            .where((item) =>
                item.toLowerCase().contains(_filter.text.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _filter,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Search for text"),
              )),
          Expanded(
              child: ListView.builder(
            itemCount: filteredItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      filteredItems[index],
                      textAlign: TextAlign.center,
                    ),
                  ));
            },
          ))
        ]),
      ),
    );
  }
}
