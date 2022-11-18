import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double _slidervalue = 100;
  bool _Sliderenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deslizador")),
      body: Column(
        children: [
          Slider.adaptive(
             activeColor: AppTheme.primaryColor,
              //divisions: 5,
              min: 0,
              max: 900,
              value: _slidervalue,
              onChanged: _Sliderenable 
              ? (value) {
                _slidervalue = value;
                setState(() {
                  
                });
              }: null 
          ),
           CheckboxListTile(
            title: const Text("Habilitar edicion"),
            value: _Sliderenable,
            onChanged: (value ){
               _Sliderenable = value ?? true;
               setState((){}
              );
            }
          ),
          SwitchListTile(
            title: const Text("Habilitar edicion"),
            value: _Sliderenable,
            onChanged: (value ){
               _Sliderenable = value;
               setState((){}
              );
            }
          ),
          // Checkbox(
          //   value: _Sliderenable,
          //   onChanged: (value ){
          //      _Sliderenable = value ?? true;
          //      setState((){}
          //     );
          //   }
          // ),

          // Switch(
          //   value: _Sliderenable,
          //   onChanged: ((value) => setState(() {
          //     _Sliderenable = value;
          //   })
          // )),

           Expanded(
             child: SingleChildScrollView(
               child: Image(image: 
                          const NetworkImage('https://f.vividscreen.info/soft/92d26ad4ca3148115d654987103746ec/Scorpion-in-Mortal-Kombat-480x800.jpg'),
                          //fit: BoxFit.contain,
                          width: _slidervalue,
                         ),
             ),
           )
        ],
      ),
    );
  }
}
