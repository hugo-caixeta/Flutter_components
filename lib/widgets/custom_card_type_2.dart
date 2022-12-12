

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';



class CustomCardType2 extends StatelessWidget {

  const CustomCardType2({super.key, required this.imageUrl, required this.name});


  final String imageUrl;
  final String name;



  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 15,
      shadowColor: AppTheme.primary.withOpacity(0.8),
      child: Column(
        children: [

          FadeInImage(
                image: NetworkImage( imageUrl ), 
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
            ),


          
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name ))

        ],
      ),
    );
  }
}