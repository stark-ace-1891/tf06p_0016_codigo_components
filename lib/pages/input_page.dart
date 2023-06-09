import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String textGeneral = "";
  final TextEditingController _myController = TextEditingController(text: "Luis");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input text",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              TextField(
                obscureText: isInvisible,
                // obscuringCharacter: "x",
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  suffix: IconButton(
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                    icon: isInvisible
                        ? Icon(Icons.remove_red_eye)
                        : Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _myController,
                style: GoogleFonts.poppins(),
                decoration: InputDecoration(
                  counterText: "",
                ),
                onTap: () {
                  print("On tap");
                },
                onChanged: (String text) {
                  print(text);
                  textGeneral = text;
                },
                // maxLength: 8,
                keyboardType: TextInputType.text,
                cursorColor: Colors.pinkAccent,
                readOnly: false,
                onSubmitted: (String value) {
                  //Se llama cuando se hace clic en el boton check del telefono, que es el boton de confirmado para que se oculte el teclado
                  print(value);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_myController.text);
                },
                child: Text("Obtener valor del text"),
              ),
              ElevatedButton(
                onPressed: () {
                  // _myController.text = "Cesar";
                  _myController.clear();
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
