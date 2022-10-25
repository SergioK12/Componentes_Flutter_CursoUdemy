import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Avatar"),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 20),
            
            child: const CircleAvatar(
              child: Text("SD"),
            ),
          )
        ],
      ),
      
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage("https://static.wikia.nocookie.net/naruto/images/a/ab/Kakuzu_Parte_I_y_II_Anime.png/revision/latest?cb=20160627134853&path-prefix=es"),
          maxRadius: 120,
          
        ),
      )
    );
  }
}