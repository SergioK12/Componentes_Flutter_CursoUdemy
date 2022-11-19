import 'package:flutter/material.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({super.key});

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {

  final List<int>imagesid = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() { 
      debugPrint('${scrollController.position.pixels},${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent ){
        add10();
      }
    });
  }

  void add10(){
    final lastid = imagesid.last;
    imagesid.addAll([1,2,3,4,5].map((e) => lastid + e));
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text("List View Builder")),
        body: MediaQuery.removePadding(
          removeTop: true,
          removeBottom: true,
          context: context,
          child: ListView.builder(
            physics:const  BouncingScrollPhysics(),
            controller: scrollController,
              itemCount: imagesid.length,
              itemBuilder: (context, index) {
          return  FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
              placeholder:  const AssetImage('assets/load.gif'),
              //https://picsum.photos/id/237/200/300
              //image: NetworkImage("https://picsum.photo/500/300?image=${index +1}"));
              image: NetworkImage("https://picsum.photos/id/${imagesid[index]}/500/300"));
              },
            ),
        ));
  }
}
