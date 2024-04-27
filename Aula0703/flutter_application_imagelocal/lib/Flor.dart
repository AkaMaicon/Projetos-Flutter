import 'package:flutter/material.dart';

class MyFlor extends StatelessWidget {

  final texto1 = Text("Flores do campo");
  final imgGato = Image.asset('assets/images/gatoflor.jpg');
  final texto2 = Text("minha flor preferida",style: TextStyle(fontSize: 30),);

  MyFlor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minhas flores")),backgroundColor: const Color.fromARGB(255, 219, 180, 180),
      body: Center(child: Column(children: [
        texto1,
        imgGato,
        texto2,
      ],)),
    );
  }
}