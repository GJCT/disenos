import 'dart:math';

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({super.key});
  final  boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xff2E203F),
        Color(0xff202222)
      ]
    )
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Morado
        Container(decoration: boxDecoration),
        //Rosado
        Positioned(
          top: -120,
          left: -25,
          child: _Pink())

      ],
    );
  }
}

class _Pink extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4.6,
      child: Container(
        width: 460,
        height: 440,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(225, 41, 161, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}