import 'package:flutter/material.dart';

class MyLampada extends StatefulWidget {
  const MyLampada({super.key});

  @override
  State<MyLampada> createState() => _MyLampadaState();
}

class _MyLampadaState extends State<MyLampada> {

  Image LampadaAcesa = Image.asset('assets/images/acesa.png',width: 800,height: 800,);
  Image LampadaApagada = Image.asset('assets/images/apagada.png',width: 800,height: 800,);
  late Image LampadaAtual = LampadaApagada;
  late String estado = 'Apagada';

  void mudaEstado(){
    if(LampadaAtual == LampadaAcesa){
      LampadaAtual = LampadaApagada;
      estado = 'Apagada';
    }
    else{
      LampadaAtual = LampadaAcesa;
      estado = 'Acesa';
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
      body: Center(child: SingleChildScrollView (child: Column(children: [
        LampadaAtual,
        SizedBox(height: 20),
        Text(
              'Lampada $estado',
              style: TextStyle(fontSize: 20),
            ),
        ElevatedButton(
          onPressed: () {
          mudaEstado();

          setState(() {
            
          });
        }, child: Text("clique aqui"))
      ],)),
    ));
    
  }
}