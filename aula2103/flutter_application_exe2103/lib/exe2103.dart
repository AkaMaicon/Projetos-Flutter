import 'package:flutter/material.dart';

import 'dart:math';

class exercico2103 extends StatefulWidget {
  const exercico2103({super.key});

  @override
  State<exercico2103> createState() => _exercico2103State();
}

class _exercico2103State extends State<exercico2103> {
  final List<String> frases = [
    "O café da manhã é como uma sinfonia de sabores, despertando os sentidos para o dia que se inicia.",
    "Uma xícara de café e uma fatia de pão fresco: a combinação perfeita para começar o dia com energia e sabor.",
    "O café da manhã é a primeira página em branco do livro do dia, pronta para ser preenchida com momentos deliciosos.",
    "Entre o aroma do café recém-passado e o crocante do pão tostado, encontra-se a magia das manhãs.",
    "No café da manhã, cada mordida é um convite para explorar novos horizontes culinários e nutricionais.",
  ];

  String fraseAtual ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases da manhã"),
        backgroundColor: Colors.pink,
        centerTitle:  true,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 20,width: 20,),
        Image.network("https://cdn.pixabay.com/photo/2016/11/29/12/45/beverage-1869598_1280.jpg", width: 400,height: 400,),
        SizedBox(height: 50,width: 800, child: Center(child: Text("" + fraseAtual,style: TextStyle(fontSize: 15),),),),
        ElevatedButton(onPressed: () {
          GerarFrase();
          setState(() {
            
          });
        }, child: Text("nova frase"))

      ],)),);
  }

  void GerarFrase(){
        setState((){
          final random = Random();
          final index = random.nextInt(frases.length);
          fraseAtual = frases[index];
        });
      }
}