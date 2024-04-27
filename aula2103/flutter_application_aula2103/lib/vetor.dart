import 'package:flutter/material.dart';

class MyVetor extends StatefulWidget {
  const MyVetor({super.key});

  @override
  State<MyVetor> createState() => _MyVetorState();
}

class _MyVetorState extends State<MyVetor> {

  List<int> vetor = [1,4,7,3,2,0];
  String textovetor = "";
  int soma = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de Vetor"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        Text("Exibição do Vetor" + textovetor),
  ElevatedButton(onPressed: () {
    mostrar();
    setState(() {
      

      Text("resultado:" );
    });
  }, child: Text("Mostrar Vetor")),
  ElevatedButton(onPressed: () {
    somar();
    setState(() {

      Text("resultado:" );
  })}, child: Text("Somar"))
      ],),),

    );
  }

  void mostrar()
  {
    textovetor = "";
    for (int i = 0; i<vetor.length; i ++){
      textovetor = textovetor + "" + vetor[i].toString();

    }
  }

  void somar() {
    for (int i = 0; i < vetor.length; i++) {
      soma += vetor[i];
    }
  }

}