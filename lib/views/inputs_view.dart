import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entradas"),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
          child: Column(
              children: const [
                 CustomImputWidget()
              ],
          ),
          ),
      )

    );
  }
}

