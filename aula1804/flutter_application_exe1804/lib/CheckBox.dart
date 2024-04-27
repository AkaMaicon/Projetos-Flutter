import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool paoSelecionado = false;
  bool leiteSelecionado = false;
  bool oleoSelecionado = false;
  bool aulaAcabaSelecionado = false;
  bool saircedoSelecionado = false;
  bool fomeSelecionado = false;
  String aulaCedo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Text("Lista de compras"),

        Text("Pao"),
        Checkbox(
          value: paoSelecionado,
          onChanged: (value) {
            paoSelecionado = value!;
            setState(() {
              
            });
          },
          ),
          Text("Leite"),
          Checkbox(value: leiteSelecionado,  
          onChanged: (value) {
            leiteSelecionado = value!;
            setState(() {
              
            });
          },
          ),
          Text("óleo"),
          Checkbox(value: oleoSelecionado,  
          onChanged: (value) {
            oleoSelecionado = value!;
            setState(() {
              
            });
          },
          ),
          
          ElevatedButton(onPressed: () {
            print(paoSelecionado.toString() + "" + leiteSelecionado.toString());
            print("Rádio" + aulaCedo);
            print("Switch" + fomeSelecionado.toString());
            setState(() {
              
            });
          }, child: Text("Ok")),

          Text("Hoje eu só quero"),

          CheckboxListTile(
            title: Text("A aula acabe"),
            subtitle: Text("A Tania não da folga"),
            secondary: Icon(Icons.person),
            value: aulaAcabaSelecionado,
          onChanged: 
          (value) {
            aulaAcabaSelecionado = value!;
            setState(() {
              
            });
          },
          ),
          CheckboxListTile(
            title: Text("Sair mais cedo"),
            subtitle: Text("A Tania não deixa"),
            secondary: Icon(Icons.warning),
            
            value: saircedoSelecionado,
            onChanged: (value) {
              saircedoSelecionado = value!;
              setState(() {
                
              });
            },
            ),
            SwitchListTile(
              title: Text("Estou com fome"),
              subtitle: Text("Quero jantar"),
              secondary: Icon(Icons.food_bank),
              value: fomeSelecionado,
              onChanged: (value) {
                fomeSelecionado = value!;
                setState(() {
                  
                });
              },
             ),
             Text("A Tania vai terminar a aula mais cedo"),
             RadioListTile(
              title: Text("Sim"),
              value: "S",
              groupValue: aulaCedo,
              onChanged: (value) {
                aulaCedo = value!;
                setState(() {
                  
                });
              },
              ),
              RadioListTile(
                title: Text("Não"),
                value: "N",
                groupValue: aulaCedo,
                onChanged: (value) {
                  aulaCedo = value!;
                  setState(() {
                    
                  });
                },
                  )

      ],)),
    );
  }
}