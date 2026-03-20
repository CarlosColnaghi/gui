import 'package:flutter/material.dart';

class Registration extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercício Montagem GUI",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "TELA DE CADASTRO",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            _field("NOME:", "Digite o nome:"),
            _field("ENDEREÇO:", "Digite o endereço:"),
            _field("EMAIL:", "Digite o email:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _button(context, "Cancelar", 'Clicou em "Cancelar"'),
                _button(context, "Salvar", 'Clicou em "Salvar"', last: true)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _field(String text, String labelText){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10,),
        Text(text,),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText
          ),
        ),
        SizedBox(height: 10,)
      ]
    );
  }

  Widget _button(BuildContext context, String text, String content, {bool last = false}){
    return Row(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            _dialog(context, content);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
          ),
          child: Text(
           text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        if(!last) SizedBox(width: 10,)
      ],
    );
  }

  void _dialog(BuildContext context, String content){
    var alertDialog = AlertDialog(
      title: Text("Registration"),
      content: Text(content),
    );
    showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
    );
  }
}