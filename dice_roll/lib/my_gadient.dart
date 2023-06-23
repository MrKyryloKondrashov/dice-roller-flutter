import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';


class MyGradient extends StatefulWidget{
  const MyGradient({super.key});


  @override
  State<MyGradient> createState() {
    return _MyGradientState();
  }
}


class _MyGradientState extends State<MyGradient>{
  _MyGradientState();

  final List<Color> startGradient = const [ Color.fromARGB(255, 6, 224, 115), Color.fromARGB(255, 165, 239, 27), Color.fromARGB(255, 20, 55, 232), Color.fromARGB(255, 111, 3, 3), Color.fromARGB(255, 248, 22, 180), Color.fromARGB(255, 22, 252, 252)];
  final List<Color> endGradient =  const [ Color.fromARGB(255, 3, 92, 245),  Color.fromARGB(218, 191, 24, 169), Color.fromARGB(255, 142, 242, 48), Color.fromARGB(255, 11, 24, 94), Color.fromARGB(255, 116, 22, 22), Color.fromARGB(198, 136, 156, 90)];

  int startGraientIndex = 0;
  int endGraientIndex = 0;


  refresh(int firstIndex, int secondIndex) {
  setState(() {
          startGraientIndex = firstIndex;
          endGraientIndex = secondIndex;
  });
}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [startGradient[startGraientIndex], endGradient[endGraientIndex]], radius: 2),
      ),
      child: Center(
          child:DiceRoller(notifyParent: refresh),
      )
    );
  }
}





