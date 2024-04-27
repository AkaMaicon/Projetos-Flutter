import 'package:flutter/material.dart';

class exeTextField extends StatefulWidget {
  const exeTextField({super.key});

  @override
  State<exeTextField> createState() => _exeTextFieldState();
}

class _exeTextFieldState extends State<exeTextField> {
  TextEditingController controlador1 = TextEditingController();
    TextEditingController controlador2 = TextEditingController();
    String texto = "";
    double v1 = 0;
    double v2 = 0;
    double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operações"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255)
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text("Operações para aprendizado do uso  do Widget Text Field"),
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
                labelText: "digite um valor",
                prefixIcon: Icon(Icons.abc),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controlador2,
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: const Color.fromARGB(255, 74, 130, 163),
                labelText: "digite um valor",
                prefixIcon: Icon(Icons.abc),
              ),
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

                      resultado = v1 + v2;

                      setState(() {});
                    },
                    child: Text("+")),
                    SizedBox(
                  width: 10,
                ),

                ElevatedButton(
                    onPressed: (
                        ) {
                      v1 = double.parse(controlador1.text);
                      v2 = double.parse(controlador2.text);

                      resultado = v1 - v2;

                      setState(() {});
                    },
                    child: Text("-")),

                SizedBox(
                  width: 10,
                ),

                ElevatedButton(
                    onPressed: (
                        ) {
                      v1 = double.parse(controlador1.text);
                      v2 = double.parse(controlador2.text);

                      resultado = v1 * v2;

                      setState(() {});
                    },
                    child: Text("*")),

                SizedBox(
                  width: 10,
                ),

                ElevatedButton(
                    onPressed: (
                        ) {
                      v1 = double.parse(controlador1.text);
                      v2 = double.parse(controlador2.text);

                      resultado = v1 / v2;

                      setState(() {});
                    },
                    child: Text("/")),

                SizedBox(
                  width: 10,
                ),

                ElevatedButton(
                    onPressed: (
                        ) {
                      controlador1.clear();
                      controlador2.clear();
                      resultado = 0;

                      setState(() {});
                    },
                    child: Text("CE")),

                SizedBox(
                  width: 10,
                ),
              ],
            ),

            Text("O resultado é: " + resultado.toString()),
          ],
        ),
      ),
    );
  }
}