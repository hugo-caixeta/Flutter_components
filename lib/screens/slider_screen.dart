
import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';


class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {




  double _sliderValue = 100;
  bool _sliderEnable = true;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [


            Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              //divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable 
              ? (value) {
                _sliderValue = value;
                setState(() {});
              }
              : null
            ),



/*
            Checkbox(
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              },
            ),


            Switch(
              value: _sliderEnable, 
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value;
                });
              },
            ),
*/

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable, 
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              },
            ),


            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable, 
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value;
                });
              },
            ),


            const AboutListTile(),
            



            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://www.agmar.com.br/imagens/galeria/g_plugdados-galeria-edificio-yora-cabecalho_shape.jpeg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
