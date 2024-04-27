import 'package:flutter/material.dart';
import 'package:flutter_application_aula1804/Aluno.dart';

class MyFormulario extends StatefulWidget {
  const MyFormulario({super.key});

  @override
  State<MyFormulario> createState() => _MyFormularioState();
}

class _MyFormularioState extends State<MyFormulario> {
  List<Aluno> listaAluno = [];
  String tipoCurso = "";
  bool oficinaEscrita = false;
  bool oficinaLiteratura = false;
  bool oficinaArtes = false;
  bool notificEmail = false;
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário de interesse em oficinas"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255)
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 100,width: 50,),
        SizedBox(height: 100,width: 100, child: Image.network("https://cdn.pixabay.com/photo/2013/07/13/13/40/painter-161318_960_720.png") ),
        SizedBox(height: 20,),
        TextField(
          controller: nomeController,
          decoration: InputDecoration(labelText: "Nome: "),
          onChanged: (value) {
            
          },
        ),
        TextField(
          controller: emailController,
          decoration: InputDecoration(labelText: "Email: "),
          onChanged: (value) {
    
          },
        ),
        SizedBox(height: 20,),

        Text("Tipo de curso: "),
        RadioListTile(
              title: Text("Somente Técnico"),
              value: "T",
              groupValue: tipoCurso,
              onChanged: (value) {
                tipoCurso = value!;
                setState(() {
                  
                });
              },
              ),
              RadioListTile(
                title: Text("Integrado ao Médio"),
                value: "M",
                groupValue: tipoCurso,
                onChanged: (value) {
                  tipoCurso = value!;
                  setState(() {
                    
                  });
                },
                  ),
        Divider(color: Colors.black, thickness: 1.0,),
        SizedBox(height: 20,),

        Text("Ofinas de interesse: "),
        CheckboxListTile(
        title: Text("Escrita cientifica"),
        value: oficinaEscrita,
        onChanged: (value) {
          oficinaEscrita = value!;
          setState(() {
            
          });
        },),
        CheckboxListTile(
        title: Text("Literatura Africana"),
        value: oficinaLiteratura,
        onChanged: (value) {
          oficinaLiteratura = value!;
          setState(() {
            
          });
        },),
        CheckboxListTile(
        title: Text("Artes"),
        value: oficinaArtes,
        onChanged: (value) {
          oficinaArtes = value!;
          setState(() {
            
          });
        },),
        Divider(color: Colors.black, thickness: 1.0,),
        SizedBox(height: 20,),

        SwitchListTile(
        title: Text("Permitir envio de notificações pelo email"),
        value: notificEmail,
        onChanged: (value) {
          notificEmail = value!;
          setState(() {
            
          });
        },
        ),
        ElevatedButton(onPressed: () {
            String nome = nomeController.text;
            String email = emailController.text;
            List<String> interesses = [];
            if (oficinaEscrita)interesses.add("Escrita cientifica");
            if (oficinaLiteratura)interesses.add("Literatura Africana");
            if (oficinaArtes)interesses.add("Artes");
            
            Aluno novoAluno = Aluno(nome,email,tipoCurso,interesses,notificEmail);

            listaAluno.add(novoAluno);

            for (var Aluno in listaAluno) {
              print("nome: ${Aluno.nome}");
              print("email: ${Aluno.email}");
              print("curso: ${Aluno.tipocurso}");
              print("interesses: ${Aluno.interesses}");
              print("receber notificacoes: ${Aluno.notificacoesEmail}");
              print("----------------------------------------");
            }

            setState(() {
              
            });
          }, child: Text("Ok")),
          ElevatedButton(onPressed: () {
            nomeController.clear();
            emailController.clear();
            tipoCurso = "";
            oficinaArtes = false;
            oficinaEscrita = false;
            oficinaLiteratura = false;
            notificEmail = false;

            setState(() {
              
            });
          }, child: Text("Cancelar")),
        ],),),);
  }
}
  