import 'package:flutter/material.dart';

class StyleText extends  StatelessWidget{
   StyleText(this.outputtext, {super.key});
  String outputtext;
  @override
  Widget build(context){
    return  Text(outputtext, style: const TextStyle(
              color:Colors.white,
              fontSize: 28,

               ), 
               );
  }

}