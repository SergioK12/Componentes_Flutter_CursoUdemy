import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AlarmasView extends StatelessWidget {
  const AlarmasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Programacion de alarmas"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             const Text("Personaliza tus alarmas"),
             CarouselSlider(
  options: CarouselOptions(height: 100.0),
  items: [1,2,3,4,5,6,7,8,9,10,11,12].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: 30,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: const TextStyle(fontSize: 16.0),textAlign: TextAlign.center,)
        );
      },
    );
  }).toList(),
),
CarouselSlider(
  options: CarouselOptions(height: 100.0),
  items: [1,2,3,4,5,6,7,8,9,10,11,12].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: 30,
          //height: 10,
          //margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(
            color: Colors.red
          ),
          child: Text('text $i', style: const TextStyle(fontSize: 16.0, ),textAlign: TextAlign.center,)
        );
      },
    );
  }).toList(),
)
             
          ],
        ),
      ),
    );
  }
}