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
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  offset: Offset(3, 4),
                  blurRadius: 12,
                ),
              ]),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto...",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black38,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Container(
                    margin: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0,
                    ),
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
