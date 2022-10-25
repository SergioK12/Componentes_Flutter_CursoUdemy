import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
     super.key,
     required this.urldelaimagen,
     this.descripcion  
    }
  );

  final String urldelaimagen;
  final String? descripcion;
  

  @override
  Widget build(BuildContext context) {
    return Card(
         clipBehavior: Clip.antiAlias,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20)
          ),
         elevation: 20,
         shadowColor: AppTheme.primaryColor.withOpacity(0.7),
         child: Column(
         children: [
           FadeInImage(
            image:  NetworkImage(urldelaimagen),
            placeholder: const AssetImage('assets/load.gif'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            
           ),
           Container(
             alignment: AlignmentDirectional.center,
             padding: const EdgeInsets.only(top: 10, bottom: 10),
             child:  Text(
                 descripcion ?? "Este texto sale cuando no hay descripcion",
                 style: const TextStyle(
                  fontSize: 20,
                ),
              )
            ),            
          ],
        ),
      );
    }
}