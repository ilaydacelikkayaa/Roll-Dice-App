import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override 
 State<DiceRoller> createState(){
return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  final randomizer=Random();
  var currentDiceRoll=2;
  
  void rollDice(){
    //var diceRoll=Random().nextInt(6)+1; //1 ve 6 arası
    currentDiceRoll=randomizer.nextInt(6)+1;;
    setState((){ //build fonksiyonunu yeniden calistirmanı soyler.
  // activeDiceImage='assets/images/dice-$diceRoll.png';
  });
}
  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,//icerik kadar yer kapla
              children: [Image.asset('assets/images/dice-$currentDiceRoll.png',width: 200,),
            TextButton(onPressed: rollDice,
             style:TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20,bottom: 10), 
              foregroundColor: const Color.fromARGB(255, 32, 29, 29),textStyle: const TextStyle(fontSize: 28),
               ),
             child: const Text('Roll Dice'),
            ),
            ],
            );//sutun widget birden fazla widgetı birbiri üzerinden birden fazla alt öğe olarak oluşturmamıza olanak sağlamak için vardır.
           //:asset projene ekeldigin gorselller
  }
}