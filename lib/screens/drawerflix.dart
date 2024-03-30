import 'package:flutter/material.dart';

class drawerfix extends StatefulWidget {
  const drawerfix({super.key});

  @override
  State<drawerfix> createState() => _drawerfixState();
}

class _drawerfixState extends State<drawerfix> {

  @override
  Widget build(BuildContext context) {


                 
               


        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
    
            Scaffold.of(context).openDrawer(
              
              
            );
    
            },
            child: Builder(
              builder: (context) {
                return Container(
                  height: 23,
                 decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("lib/images/draw.png"))
                 ),
                  
                );
              }
            ),
          ),
        );
               }

    
           
    
    }

               
      
    
  
