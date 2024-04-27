import 'package:flutter/material.dart';

class MyFormulario extends StatefulWidget {
  const MyFormulario({super.key});

  @override
  State<MyFormulario> createState() => _MyFormularioState();
}

class _MyFormularioState extends State<MyFormulario> {
  @override
  Widget build(BuildContext context) {
    String tipoCurso = "";

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
          decoration: InputDecoration(labelText: "Nome"),
        ),
        TextField(
          decoration: InputDecoration(labelText: "Email"),
        ),
        SizedBox(height: 20,),


        Row(children: <Widget>[
          Expanded(child:
        RadioListTile(
              title: Text("Somente Técnico"),
              value: "Tec",
              groupValue: tipoCurso,
              onChanged: (value) {
                tipoCurso = value!;
                setState(() {
                  
                });
              },
              ),
              Expanded(child:
              RadioListTile(
                title: Text("Integrado ao Médio"),
                value: "Med",
                groupValue: tipoCurso,
                onChanged: (value) {
                  tipoCurso = value!;
                  setState(() {
                    
                  });
                },
                  ) ,),
              
          ),
        ],)
        
      ]),)
    );
  }
}