import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              height: 14,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto",
                prefixIcon: Icon(
                  Icons.search,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  // borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                  ),
                ),
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto...",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black38,
                ),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
