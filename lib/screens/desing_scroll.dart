import 'package:flutter/material.dart';

class DesingScrollScreen extends StatelessWidget {
   
  const DesingScrollScreen({Key? key}) : super(key: key);
  
  final boxDecoration = const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Color.fromARGB(255, 154, 245, 224),
              Color.fromARGB(255, 35, 173, 201)
            ] 
          )
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const[
            Page1(),
            Page2()
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const[
        //Imagen
        Background(),

        ContentPrincipal()
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class ContentPrincipal extends StatelessWidget {
  const ContentPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.black87);
    
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          const Text('11°', style: textStyle,),
          const Text('Miercoles', style: TextStyle(fontSize: 56)),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_outlined, size: 100,)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 33, 250),
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('BIENVENIDO', style: TextStyle(color: Colors.white, fontSize: 35),),
          ),
        ),
      ),
    );
  }
}