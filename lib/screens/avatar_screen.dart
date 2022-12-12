

import 'package:flutter/material.dart';





class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //cabeçalho da tela
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hugo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const  CircleAvatar(
              child: const Text('HC'),
              backgroundColor: Colors.amber,
            ),
          )
        ],
      ),

      //centro da tela
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/01-domesticated-dog.jpg?w=710&h=474'),
         )
      ),

      //Rodape da tela

    );
  }
}