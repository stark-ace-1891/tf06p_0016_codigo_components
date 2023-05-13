import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  List<String> superheroes = [
    "Batman",
    "Superman",
    "Wonder woman",
    "Flash",
    "Aquaman"
  ];

  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      },
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("List page"),
      ),
      body: ListView.builder(
        itemCount: teamMap["members"].length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return ListTile(
            title: Text(teamMap["members"][index]["name"]),
            subtitle: Text(teamMap["members"][index]["secretIdentity"]),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(teamMap["members"][index]["image"]),
            ),
            trailing: Icon(Icons.view_carousel),
          );
        },
      ),
      // body: ListView.builder(
      //   itemCount: superheroes.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     print(index);
      //     return ListTile(
      //       title: Text(superheroes[index]),
      //       leading: CircleAvatar(
      //         child: Text(superheroes[index].toString().substring(0, 1)),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
