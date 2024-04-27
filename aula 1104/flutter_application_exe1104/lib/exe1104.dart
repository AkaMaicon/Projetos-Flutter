import 'package:flutter/material.dart';

class exe1104 extends StatefulWidget {
  const exe1104({super.key});

  @override
  State<exe1104> createState() => _exe1104State();
}

class _exe1104State extends State<exe1104> {
  TextEditingController controlador1 = TextEditingController();
  TextEditingController controlador2 = TextEditingController();
  double v1 = 0;
  double v2 = 0;
  double resultado = 0;
  String resultado2 = ""; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255)
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          SizedBox(height: 200, width: 200,
          child: Image.network("https://cdn.pixabay.com/photo/2013/04/01/21/29/gas-99075_1280.png", ),),
          SizedBox(height: 20,),
          TextField(
              controller: controlador1,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Color.fromARGB(255, 74, 130, 163),
                labelText: "Digite o  preço do filtro de litro de alcool (ex. 2,79)",
              )
          ),
          SizedBox(height: 20,),
          TextField(
              controller: controlador2,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Color.fromARGB(255, 74, 130, 163),
                labelText: "Digite o  preço do filtro de litro de alcool (ex. 2,79)",
              )
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: (
                        ) {
                      v1 = double.parse(controlador1.text);
                      v2 = double.parse(controlador2.text);

                      resultado = v1 / v2;

                      if (resultado > 0.7){
                        resultado2 = "A melhor opção é gasolina";
                      } else if (resultado < 0.7) {
                        resultado2 = "A melhor opção é alcool";
                      }

                      setState(() {});
                    },
                    child: Text("Calcular")),
                    SizedBox(
                  width: 10,
                ),
        ]),
        Text("" + resultado2.toString()),
      ],),
    ));
  }
}