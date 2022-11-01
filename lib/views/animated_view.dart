import 'dart:math';


import 'package:flutter/material.dart';


class AnimatedContainerView extends StatefulWidget {
  const AnimatedContainerView({super.key});


  @override
  State<AnimatedContainerView> createState() => _AnimatedContainerViewState();
}


class _AnimatedContainerViewState extends State<AnimatedContainerView> {
  double _alto = 100.00;
  double _ancho = 100.00;
  Color _colorx = Colors.red;
  BorderRadius _borde = BorderRadius.circular(20);


  void changeshape() {
    final random = Random();
    _alto = random.nextInt(300).toDouble()+70;
    _ancho = random.nextInt(300).toDouble()+70;
    _colorx = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1);
    _borde = BorderRadius.circular(random.nextInt(100).toDouble()+10);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuandro Animado"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInBack,
          decoration: BoxDecoration(
            borderRadius: _borde,
            color: _colorx,
          ),
          width: _alto,
          height: _ancho,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeshape,
        child: const Icon(Icons.play_circle_outline),
        ),
    );
  }
}

