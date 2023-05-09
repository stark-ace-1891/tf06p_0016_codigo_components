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
          const SizedBox(
            width: 160,
            child: Divider(),
          ),
          ItemComponentWidget(),
          ItemComponentWidget(),
          ItemComponentWidget(),
          ItemComponentWidget(),
          ItemComponentWidget(),
        ],
      ),
    ));
  }
}

class ItemComponentWidget extends StatelessWidget {
  const ItemComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 12,
            offset: Offset(4, 4),
          )
        ],
      ),
      child: ListTile(
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff14213d),
        ),
        title: Text(
          "Avatar",
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          "Ir al detalle del avatar",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Color(0xff14213d),
        ),
      ),
    );
  }
}
