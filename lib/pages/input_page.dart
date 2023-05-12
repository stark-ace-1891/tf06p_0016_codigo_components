import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input text",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.red,
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Direccion",
                hintStyle: TextStyle(
                  color: Colors.blue,
                ),
                label: Text("Direccion Label"),
                icon: Icon(
                  Icons.location_on,
                ),
                suffix: Icon(
                  Icons.check_circle_outline,
                ),
                prefix: Icon(
                  Icons.star,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
