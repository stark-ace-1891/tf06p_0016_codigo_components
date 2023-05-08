import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              // color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                    "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg"),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(10, 10),
                  blurRadius: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Flutter Components",
            style: GoogleFonts.poppins(
              fontSize: 22,
              letterSpacing: 1,
            ), //Para que funciona se requiere internet
          ),



          
        ],
      ),
    ));
  }
}
