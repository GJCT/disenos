import 'package:flutter/material.dart';

class DesingBasicScreen extends StatelessWidget {
   
  const DesingBasicScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/_S6A1420-Edit-Edit.jpg')),
          //Titulo
          const Title(),
          //Botón 
          const ButtonSection(),
          //Descripción
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: const Text('Culpa sit consectetur non sint nostrud adipisicing velit enim ipsum voluptate veniam ipsum incididunt sit.'
            'Reprehenderit qui sint sint incididunt ad id ad cillum. Anim culpa est ad ipsum esse anim. Nisi id ut exercitation minim officia ut.'
            'Culpa aliqua quis ad proident amet cupidatat non. Veniam enim officia labore proident nulla non ipsum do nulla laboris minim.'
            ' Qui sunt eu nisi elit aliquip deserunt id labore ea sint occaecat enim est pariatur. Laborum ut consequat nulla culpa aliquip.'
            ' Sunt voluptate qui nisi sint tempor elit cupidatat anim. Amet nulla consectetur ullamco Lorem nostrud cillum. Minim cupidatat Lorem eiusmod proident est.'
            'Labore anim ea nisi labore. Consequat ad tempor quis laborum anim in veniam in. Amet exercitation consequat consequat est quis ex laboris incididunt.', 
            style: 
              TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold
              ),
            )
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45, fontSize: 18),),
            ],
          ),
          Expanded(child: Column()),
          Icon(Icons.star, color: Colors.red[700], size: 23,),
          const Text('41', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const[
          CustomButton(icon: Icons.call, text: 'Call',),
          CustomButton(icon: Icons.location_on, text: 'Location',),
          CustomButton(icon: Icons.share_outlined, text: 'Shared',),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key, 
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue[700], size: 35,),
        Text(text, style: const TextStyle(color: Colors.blue),),
      ],
    );
  }
}