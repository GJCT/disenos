import 'package:disenos/widgets/backgroud.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const[
          //BackGround
          BackGround(),
          //Home
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottom(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const[
          //Titulos
          PageTitle(),

          SizedBox(height: 30,),
          
          //Card
          CardTable()
        ],
      ),
    );
  }
}