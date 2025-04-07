import 'package:flutter/material.dart';
import 'package:second_app/dice_roller.dart';
import 'package:second_app/text_style.dart';

const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;
//constta eşittir işaretinin sol tarafında saklanan degerin
//sabit bir derleme zmaanu oldugunu soyluyoruz bu kod derlenince
//kilitlenir.

//Statelesswidget - Statefullwidget
/*Statelesswidget:İçeriği hiç değişmeyen, sabit kalan widget'lardır.
 StatefulWidget:İçeriği değişebilen, kullanıcıyla etkileşim kuran widget'lardır.


 */
class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color,{super.key});
  
  final List<Color>color;
 
  @override
  Widget build(context){
    return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:color,
              begin: startAlignment,
              end:endAlignment,
            ),
          ),
          child:  Center(
            child:DiceRoller(),
          ),
        );
  }
}
