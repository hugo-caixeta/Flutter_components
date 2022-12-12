

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';




class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogIos(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo Cupertino'),
          content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este é um conteúdo do alerta'),
                  SizedBox(height: 10,),
                  FlutterLogo(size: 50,)
                ],
              ),

              actions: [

                TextButton(
                  onPressed: () => Navigator.pop(context), 
                  child: const Text('Fechar', style: TextStyle(color: Colors.red),)
                  ),

                  TextButton(
                  onPressed: () => Navigator.pop(context), 
                  child: const Text('Continuar')
                  )

              ],
        );
      },
      );

  }

  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false,
      context: context, 
        builder:  (context) {
          
          return AlertDialog(
              elevation: 15,
              title: const Text('Titulo'),
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este é um conteúdo do alerta'),
                  SizedBox(height: 10,),
                  FlutterLogo(size: 50,)
                ],
              ),
              actions: [

                TextButton(
                  onPressed: () => Navigator.pop(context), 
                  child: const Text('Fechar', style: TextStyle(color: Colors.red),)
                  ),

                  TextButton(
                  onPressed: () => Navigator.pop(context), 
                  child: const Text('Continuar')
                  )

              ],
          );

        },
      );

  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

         child: ElevatedButton(
          //style: ElevatedButton.styleFrom(
            //primary: Colors.green,
            //shape: const StadiumBorder(),
            //elevation: 5
          //),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          ),
          //onPressed: () => displayDialogAndroid (context),
          onPressed: () => Platform.isAndroid 
          ? displayDialogAndroid(context)
          : displayDialogIos (context),
        
         ),
         

      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.touch_app),
        onPressed: () => Navigator.pop(context)
        ),
    );
  }
}