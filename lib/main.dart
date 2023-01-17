import 'package:firebloc/pages/home.dart';
import 'package:firebloc/values/tema.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override 
  Widget build (BuildContext context) {

      return MaterialApp(
        theme: miTema(context),
        title: 'Firebloc',
        home: HomePage(),
        );
    
  }
}