import 'package:flutter/material.dart';
import 'package:gui/registrations/registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "GUI",
      home: Registration(),
    );
  }
}