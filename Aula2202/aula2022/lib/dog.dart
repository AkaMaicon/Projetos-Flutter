// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDog extends StatelessWidget {
  const MyDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gato"),backgroundColor: const Color.fromARGB(255, 161, 44, 44),),
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan,
        height: 50,
        child: Text("Gato laranja",textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
        ), 
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(child:
      Center(child: Column(children: [
        Text("Laranja"),
        Image.network('https://cdn.pixabay.com/photo/2023/12/08/05/38/cat-8436843_1280.jpg'),
      ],))),

    );
  }
}