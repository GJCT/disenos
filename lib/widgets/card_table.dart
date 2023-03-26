

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.border_all_rounded,
              color: Colors.blue,
              text: 'General',
            ),
            _SingleCard(
              icon: Icons.car_rental_outlined,
              color: Colors.purple,
              text: 'Transport',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag_rounded,
              color: Colors.pinkAccent,
              text: 'Shopping',
            ),
            _SingleCard(
              icon: Icons.feed_outlined,
              color: Colors.orangeAccent,
              text: 'Bills',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_outlined,
              color: Colors.indigoAccent,
              text: 'Entertainment',
            ),
            _SingleCard(
              icon: Icons.fastfood_outlined,
              color: Colors.purple,
              text: 'Grosery',
            )
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie_outlined,
              color: Colors.indigoAccent,
              text: 'Entertainment',
            ),
            _SingleCard(
              icon: Icons.fastfood_outlined,
              color: Colors.purple,
              text: 'Grosery',
            )
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color, 
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 220,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(35)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 60,
                  child: Icon(icon, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 20,),
                Text(text, style: TextStyle(color: color, fontSize: 25),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}