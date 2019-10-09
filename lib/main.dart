import 'package:examen/pizzeria.dart';
import 'package:examen/pizzeria1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp2());
}
class Myapp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       
       home: aplicacionpz(),
    
    );
  }
}