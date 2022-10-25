import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
        
      ),
      body: ListView(
        padding: const  EdgeInsets.all(8),
        children: const [
          CustomCard1(),
          SizedBox(height: 20,),
          CustomCard2(
            urldelaimagen: 'https://scontent-gua1-1.xx.fbcdn.net/v/t31.18172-8/21200478_113741775982158_8924065010101511463_o.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_ohc=iWfst8Y0mZAAX8v4QFk&_nc_ht=scontent-gua1-1.xx&oh=00_AT8FCPGV_Ii7yVbxWZsWhSHpNV7ZqxFqSek-pyVByo1OsA&oe=637D2E3E',
            descripcion: "Este es ubu norte",
            ),
            SizedBox(height: 20,),
          CustomCard2(
            urldelaimagen: "http://inifom.gob.ni/wp-content/uploads/2021/10/ocotalparque-800x445.jpg",
            descripcion: "Este es Ocotal",
           ),
           SizedBox(height: 20,),
           CustomCard2(
            urldelaimagen: "https://www.kionetworks.com/hubfs/ALCHEMYLABS/Google-IMAGEN-project.jpg",
            ),
        ],
      ),
    );
  }
}

