import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(31, 16, 50, 1),
      unselectedItemColor: const Color.fromRGBO(99, 82, 123, 1),
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_sharp, size: 45),
          label: 'Calender'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics_outlined, size: 45),
          label: 'Graphis'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 45),
          label: 'User'
        ),
      ]
    );
  }
}