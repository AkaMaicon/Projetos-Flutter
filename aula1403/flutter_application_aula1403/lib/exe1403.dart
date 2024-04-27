import 'package:flutter/material.dart';

class Exercicio extends StatefulWidget {
  const Exercicio({super.key});

  @override
  State<Exercicio> createState() => _ExercicioState();
}

class _ExercicioState extends State<Exercicio> {
  int valor = 0;

  void incremento() {
    valor++;
  }

  void decremento() {
    valor--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/imagem.png',
            width: 400,
            height: 400,
          ),
          Text("contador usando Stateful Widget: "),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  incremento();
                  setState(() {});
                },
                child: const Icon(Icons.add),
              ),
              Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 76, 168, 175),
                  ),
                  child: Text("$valor")),
              FloatingActionButton(
                onPressed: () {
                  decremento();
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              )
            ],
          ),
          Text("valor do contador: $valor"),
        ],
      )),
    );
  }
}