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
             const Text("Selecciona la hora"),
             CarouselSlider(
  options: CarouselOptions(height: 100.0),
  items: [1,2,3,4,5,6,7,8,9,10,11,12].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: double.infinity * 0.5,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration:  BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: Text('$i', style: const TextStyle(fontSize: 60.0),textAlign: TextAlign.center,))
        );
      },
    );
  }).toList(),
),
const Text("Selecciona los minutos"),
CarouselSlider(
  options: CarouselOptions(height: 100.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          curve: Curves.bounceInOut,
          
          width: double.infinity * 0.5,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration:   BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: Text('$i', style: const TextStyle(fontSize: 60.0), textAlign: TextAlign.center,))
        );
      },
    );
  }).toList(),
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        child: const  Text("Presiona"),
        onPressed: (){},
      ),
    )
  ],
)
             
          ],
        ),
      ),
    );
  }
}