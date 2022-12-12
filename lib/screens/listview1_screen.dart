import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {



  final options = const ['Nome 01', 'Nome 02', 'Nome 03', 'Nome 04'];




  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: [


          ...options.map(
            (carros) => ListTile(
              title: Text(carros),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
            ).toList()

            
 

          //ListTile(
          //  leading: Icon(Icons.production_quantity_limits),
          //  title: Text('Ola mundo'),
          //)

        ],
      ),
    );
  }
}
