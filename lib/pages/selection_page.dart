import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SelectionPage extends StatefulWidget {
  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  final TextEditingController dateController = TextEditingController();
  int selectedValue = 1;
  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    dateController.text = dateSelected.toString().substring(0, 10);
    print(dateSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecion Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
              ),
              onTap: () {
                //oculata el teclado del movil
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
            SizedBox(
              height: 30,
            ),
            DropdownButton(
              value: selectedValue,
              items: [
                DropdownMenuItem(
                  child: Text("Elemento 1"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Elemento 2"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Elemento 3"),
                  value: 3,
                ),
              ],
              onChanged: (int? value) {
                print(value);
                selectedValue = value!;
                setState(() {
                  
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
