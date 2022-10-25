import 'package:flutter/material.dart';

class AnimatedContainerView extends StatefulWidget {
  const AnimatedContainerView({super.key});

  @override
  State<AnimatedContainerView> createState() => _AnimatedContainerViewState();
}

class _AnimatedContainerViewState extends State<AnimatedContainerView> {

  double _alto = 200.00;
  double _ancho = 200.00;
  Color _colorx = Colors.red;
  BorderRadius _borde = BorderRadius.circular(20);

  void changeshape(){
     _alto = 100.00;
     _ancho = 300.00;
     _colorx = Colors.blue;
     _borde = BorderRadius.circular(90);  
     setState(() {
       
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Cuandro Animado"),
      ),
      body:  Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _borde,
            color: _colorx,
          ),
          width: _alto,
          height: _ancho, 
        ),
      ),
      floatingActionButton:
       FloatingActionButton(
          onPressed: changeshape 
        ),
    );
  }
}