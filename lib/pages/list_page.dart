import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  List<String> superheroes = [
    "Batman",
    "Superman",
    "Wonder woman",
    "Flash",
    "Aquaman"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("List page"),
      ),
      body: ListView.builder(
        itemCount: superheroes.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return ListTile(
            title: Text(superheroes[index]),
            leading: CircleAvatar(
              child: Text(superheroes[index].toString().substring(0, 1)),
            ),
          );
        },
      ),
    );
  }
}
