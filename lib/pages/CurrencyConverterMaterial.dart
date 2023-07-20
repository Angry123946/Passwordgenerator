import 'package:flutter/material.dart';
import 'package:first_project/services/GeneratePassword.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  @override
  PascalCase createState() => PascalCase();
}

var genpassword = new GeneratePassword();
var myController = new TextEditingController();

class PascalCase extends State<CurrencyConverterMaterialPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        AppBar(
          title: Text('Generator haseł'),
        ),
        Container(
          transformAlignment: Alignment.center,
          child: Text(
            'Twoje hasło to: ' + genpassword.getPassword(),
            style: TextStyle(
              fontSize: 34,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => {
            setState(() {
              genpassword.Generate();
            })
          },
          child: Text('Generuj'),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => genpassword.Copy(),
          child: Text("Kopiuj"),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Opcje hasła',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          child: TextField(
            controller: myController,
            decoration: InputDecoration(
                hintText: 'Długość hasła', border: OutlineInputBorder()),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => {
                  genpassword.setSizepassword(int.parse(myController.text)),
                },
            child: Text('Ustaw liczbę')),
      ],
    )));
  }
}
