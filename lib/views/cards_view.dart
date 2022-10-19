import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tarjetas"),
       centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          CustomCard1(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
          CustomCard2(),
        ],

      ),
    );
  }
}

