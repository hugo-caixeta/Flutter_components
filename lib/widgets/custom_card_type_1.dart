
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';






class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Card(
      child: Column(
        children: [


          const ListTile(
            leading: Icon(Icons.work, color: AppTheme.primary,),
            title: Text('Sou um titulo'),

            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                  ),

                  TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                  )
              ],
            ),
          )


        ],
      ),
    );



  }
}