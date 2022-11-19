import 'package:flutter/material.dart';

class ListViewBuilderView extends StatelessWidget {
  const ListViewBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text("List View Builder")),
        body: MediaQuery.removePadding(
          removeTop: true,
          removeBottom: true,
          context: context,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
          return   FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
              placeholder:  const AssetImage('assets/load.gif'),
              //https://picsum.photos/id/237/200/300
              //image: NetworkImage("https://picsum.photo/500/300?image=${index +1}"));
              image: NetworkImage("https://picsum.photos/id/${index+1}/500/300"));
              },
            ),
        ));
  }
}
