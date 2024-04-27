import 'package:flutter/material.dart';

class Viagem extends StatefulWidget {
  const Viagem({super.key});

  @override
  State<Viagem> createState() => _Viagem();
}

class _Viagem extends State<Viagem> {
  Image gato = Image.asset("images/gato.jpg",width: 100,height: 100,);
  Image gatoMaconha = Image.asset("images/gato2.jpg",width: 100,height: 100,);
  String escolha = "";
  late Image atual = gato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        GestureDetector(
          child: Image.asset('assets/images/montanha.jpg',width: 400,height: 400,),
          onTap: () {
            escolha = "montanha";
            setState(() {
            
          });
          },
        ),
        
        GestureDetector(child: Image.asset('assets/images/praia.jpg',width: 400,height: 400,),
        onTap: () {
          escolha = "praia";
          setState(() {
            
          });
        },
        ),

        
        Text("a minha próxima viagem é " + escolha),
        GestureDetector(
          child: atual,
          onTapDown: (details) {
            atual = gatoMaconha;
            setState(() {
              
            });
          },
          onTapUp: (details) {
            atual = gato;
            setState(() {
              
            });
          },
          )



      ],),
    ));
}
}