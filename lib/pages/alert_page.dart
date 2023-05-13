import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert(BuildContext mandarina) {
    showDialog(
        context: mandarina,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Titulo del alert"),
            backgroundColor: Colors.white,
            content: Text("Hola este es el contenido de mi alert"),
            actions: [
              // Text("Hola"),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar"),
              ),
            ],
          );
        });
  }

  void showMyAlert2(BuildContext mandarina) {
    showDialog(
        context: mandarina,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            // title: Text("Titulo del alert"),
            backgroundColor: Colors.white,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hola a todos",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                ),
                const SizedBox(
                  height: 6,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black12,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Hola de nuevo, este es el content, vamos a seguir practicando",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancelar"),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Aceptar"),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  void showMyAlertHeroes(BuildContext mandarina, Map<String, dynamic> data) {
    List<String> poderes = data["powers"];
    showDialog(
        context: mandarina,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            // title: Text("Titulo del alert"),
            backgroundColor: Colors.white,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  data["name"],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const Divider(
                  thickness: 0.7,
                ),
                const SizedBox(
                  height: 6,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  backgroundImage: NetworkImage(
                    data["image"],
                  ),
                ),
                Text("${data['age']} años"),
                const SizedBox(
                  height: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...poderes.toList().map(
                      (String e) {
                        int index = poderes.indexOf(e);
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(poderes[index])
                          ],
                        );
                      },
                    ),
                    // ...poderes.toList().map(
                    //       (e) => Icon(
                    //         Icons.star,
                    //         color: Colors.amber,
                    //       ),
                    //     ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  data["secretIdentity"],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Aceptar"),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 2"),
            ),
          ],
        ),
      ),
    );
  }
}
