



import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';



class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[

      //MenuOption(
      //  route: 'home', 
      //  name: 'Home Screen', 
      //  screen: const HomeScreen(), 
      //  icon: Icons.home
      //  ),

      MenuOption(
        route: 'Listview1', 
        name: 'List view tipo 1', 
        screen: const Listview1Screen(), 
        icon: Icons.format_list_numbered_rtl
        ),

        MenuOption(
        route: 'Listview2', 
        name: 'List view tipo 2', 
        screen: const Listview2Screen(), 
        icon: Icons.format_list_numbered_outlined
        ),

        MenuOption(
        route: 'Alert', 
        name: 'Alertas - Alerts', 
        screen: const AlertScreen(), 
        icon: Icons.info_outline
        ),

        MenuOption(
        route: 'List View Builder', 
        name: 'InfiniteScrol & Pull to Refresh', 
        screen: const ListViewBuilderScreen(), 
        icon: Icons.expand
        ),

        MenuOption(
        route: 'Card', 
        name: 'Cartão - Cards', 
        screen: const CardScreen(), 
        icon: Icons.credit_card
        ),

        MenuOption(
        route: 'Avatar', 
        name: 'Circle - Avatar', 
        screen: const AvatarScreen(), 
        icon: Icons.account_circle
        ),

        MenuOption(
        route: 'Animated Container', 
        name: 'Animação - Animation', 
        screen: const AnimatedScreen(), 
        icon: Icons.play_arrow_rounded
        ),

        MenuOption(
        route: 'Inputs', 
        name: 'Inputs', 
        screen: const InputsScreen(), 
        icon: Icons.input
        ),

        MenuOption(
        route: 'Slider', 
        name: 'Slider & Checks', 
        screen: const SliderScreen(), 
        icon: Icons.swap_vert
        ),

        
      
  ];


  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

      appRoutes.addAll({'home' : (context) => const HomeScreen() });


    for (final option in menuOptions) {
      appRoutes.addAll({ option.route: (context) => option.screen });
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {

  //      'home'      : (context) => const HomeScreen(),
  //      'listview1' : (context) => const Listview1Screen(),
  //      'listview2' : (context) => const Listview2Screen(),
  //      'alert'     : (context) => const AlertScreen(),
  //      'card'      : (context) => const CardScreen(),
  //    };

      
      static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const Listview1Screen(),
        );
      }


}
