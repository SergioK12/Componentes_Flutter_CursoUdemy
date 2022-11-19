import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderView extends StatefulWidget {
  const ListViewBuilderView({super.key});

  @override
  State<ListViewBuilderView> createState() => _ListViewBuilderViewState();
}

class _ListViewBuilderViewState extends State<ListViewBuilderView> {

  final List<int>imagesid = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool _isloading = false;

  Future fetchData() async{
    if(_isloading == true) return;

    _isloading = true;
    setState(() {
      
    });

    await Future.delayed(const Duration(seconds: 3));
    add10();
    _isloading = false;
    
  }


  @override
  void initState() {
    super.initState();
    scrollController.addListener(() { 
      debugPrint('${scrollController.position.pixels},${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent ){
        fetchData();
        //add10();
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

    final size = MediaQuery.of(context).size;
    return Scaffold(
        //appBar: AppBar(title: const Text("List View Builder")),
        body: MediaQuery.removePadding(
          removeTop: true,
          removeBottom: true,
          context: context,
          child: Stack(
            children: [
              ListView.builder(
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

                 Positioned(
                  bottom: 40,
                  left: size.width * 0.5 -30,
                  child: const Loading()
                )
            ],
          ),
        ));
  }
}

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(color: AppTheme.primaryColor,),
    );
  }
}
