

import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';






class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Tarefas'),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: const [

          CustomCardType1(),

          SizedBox(height: 10,),

          CustomCardType2(name: 'Primeira Paisagem bonita', imageUrl: 'https://img.freepik.com/vetores-gratis/paisagem-natural-da-manha-com-colinas-e-barraca-de-acampamento-no-prado-ilustracao-vetorial_126523-4.jpg?w=2000',),

          SizedBox(height: 20,),
          CustomCardType2(name: 'Segunda Paisagem bonita', imageUrl: 'https://img.freepik.com/free-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000',),

          SizedBox(height: 20,),
          CustomCardType2(name: 'Terceira Paisagem bonita', imageUrl: 'https://img.freepik.com/free-vector/best-scene-nature-landscape-mountain-river-forest-with-sunset-evening-warm-tone-illustration_1150-39403.jpg?w=2000',),

          SizedBox(height: 100,),

            
        ],
      )

    );
  }
}

