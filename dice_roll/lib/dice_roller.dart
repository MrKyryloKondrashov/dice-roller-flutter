import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({Key? key, required this.notifyParent}) : super(key: key);

  final Function(int firstIndex, int secondIndex) notifyParent;

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller>{
  final Random randomizer = Random();
  int currentDiceImagePath = 1;

  void rollDice() {
    setState(() {
      while(true)
      {
        var tempRandomizerValue = randomizer.nextInt(6)+1;
        if(tempRandomizerValue != currentDiceImagePath) {
          currentDiceImagePath= tempRandomizerValue;
          widget.notifyParent(randomizer.nextInt(6), randomizer.nextInt(6));
          break;
        }
      }
    });
  }
  
  @override
  Widget build(context){
    return Column(mainAxisSize: MainAxisSize.min, children: [
        Center(
          child: Image.asset(
            'assets/images/dice-images/dice-$currentDiceImagePath.png',
            width: 200,
          ),
        ),
        TextButton(
          onPressed: rollDice,
            style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.blue,
            textStyle: const TextStyle( fontWeight: FontWeight.bold, fontSize: 24)
          ),
          child: const Text('Roll Dice'),
          ),
      ]);
  }
}
