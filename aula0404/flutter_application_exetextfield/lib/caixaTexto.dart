import 'package:flutter/material.dart';

class CaixaTexto extends StatefulWidget {
  const CaixaTexto({super.key});

  @override
  State<CaixaTexto> createState() => _CaixaTextoState();
}

class _CaixaTextoState extends State<CaixaTexto> {
  TextEditingController textocontroller = new TextEditingController();
  TextEditingController textocontroller2 = new TextEditingController();
  String textodigitado = "";
  String textodigitado2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Text Field"),backgroundColor: Colors.green,),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
        TextField(
          controller: textocontroller,
          onChanged: (value) {
            print(value);
          },
          decoration: InputDecoration(
            labelText: "Digite um texto",
            filled: true,
            fillColor: Color.fromARGB(255, 63, 181, 63),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: Icon(Icons.access_alarm),
          ),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),

        TextField(
          controller: textocontroller2,
        ),

        ElevatedButton(onPressed: () {
          textodigitado = textocontroller.text;
          textodigitado2 = textocontroller2.text;
          setState(() {
            
          });
        }, child: Text("Clique aqui")),
        Text("Você digitou: " + textodigitado),
        Text("Você digitou: " + textodigitado2),
      ],)),
    );
  }
}