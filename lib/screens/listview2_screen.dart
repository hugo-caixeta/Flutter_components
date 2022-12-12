

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {


  final options = const ['Sobrenome 01', 'Sobrenome 02', 'Sobrenome 03', 'Sobrenome 04'];


  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 2',),
        
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
          onTap: () {
            final carros = options[i];
            print(carros);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
