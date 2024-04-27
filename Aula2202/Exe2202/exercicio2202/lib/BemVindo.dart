import 'package:flutter/material.dart';

class Exercico2202 extends StatelessWidget {
  const Exercico2202
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(centerTitle: true,
    title: Text ("Bem-Vindo(a)"),backgroundColor: const Color.fromARGB(255, 161, 44, 44),),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        height: 50,
        child: Text("Venha estudar conosco!",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
        ), 
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(child:
      Center(child: Column(children:[
        Image.network('https://cdn.pixabay.com/photo/2023/12/08/05/38/cat-8436843_1280.jpg'),
        Text("Bem Vindo(a) à aula de desenvolvimento de aplicativos para dispositivos Móveis",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
        SizedBox(height: 15,),
        Text("Aqui você vai encontrar:",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
        SizedBox(height: 10,),
        Row(children:[
          SizedBox(height: 20, width: 80,child: Image.network('https://cdn.pixabay.com/photo/2013/07/13/09/39/checkbox-155884_1280.png')),
        Text("Conceitos basicos da linguagem Dart",style: TextStyle(fontSize: 17),),
        ]),
        SizedBox(height: 10,),
        Row(children:[
          SizedBox(height: 20, width: 80,child: Image.network('https://cdn.pixabay.com/photo/2013/07/13/09/39/checkbox-155884_1280.png')),
        Text("Stateless e Stateful Widgets",style: TextStyle(fontSize: 17),),
        ]), 
        SizedBox(height: 10,),
        Row(children:[
          SizedBox(height: 20, width: 80,child: Image.network('https://cdn.pixabay.com/photo/2013/07/13/09/39/checkbox-155884_1280.png')),
        Text("Exemplos práticos",style: TextStyle(fontSize: 17),),
        ]),
      ]),),

    ));
  }
}