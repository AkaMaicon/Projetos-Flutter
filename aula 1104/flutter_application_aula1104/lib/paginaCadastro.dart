import 'package:flutter/material.dart';
import 'package:flutter_application_aula1104/aluno.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController raController = TextEditingController();
  List<aluno> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          TextField(
            controller: nomeController,
            decoration: InputDecoration(labelText: "Digite o nome: "),
            
          ),
          TextField(
          controller: raController,
          decoration: InputDecoration(labelText: "Digite o RA: "),
          ),
          ElevatedButton(onPressed: () {
            int ra = int.parse(raController.text);
            String nome = nomeController.text;
            aluno a = aluno(ra, nome);
            lista.add(a);
            Mostrar();
          }, child: Text("Cadastrar"))
        ],
      ),),
    );
  }
  void Mostrar()
  {
    lista.forEach((aluno a) {
      print(a.ra.toString() + "" + a.nome);
     });
  }
}
