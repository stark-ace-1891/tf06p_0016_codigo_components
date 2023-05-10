import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
