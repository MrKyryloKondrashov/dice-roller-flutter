import 'package:flutter/material.dart';


class MyText extends StatelessWidget{

  const MyText({super.key});

  @override
  Widget build(context){
    return const Text(
           'I love Alonka',
            style: TextStyle(color: Colors.white, fontSize: 28),
          );
  }

}
