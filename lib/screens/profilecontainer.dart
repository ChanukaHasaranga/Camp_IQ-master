import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class pcontainer extends StatefulWidget {
  Color colorback;
   pcontainer({
    required this.colorback,
    
    super.key});

  @override
  State<pcontainer> createState() => _pcontainerState();
}

class _pcontainerState extends State<pcontainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
            height: height/6,
            width: width/1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color:widget.colorback
        ),
child: Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [

Padding(
  padding: const EdgeInsets.only(left: 20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("What do you\nwant to learn\ntoday ?",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),),
      ElevatedButton(onPressed:() {
        
      }, child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Get Started",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
      ),
      
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
      ),
      ),
  
  
    ],
  ),
),

Container(
  height: 130,
  width: 109,
  decoration: BoxDecoration(
    image: DecorationImage(image:AssetImage("lib/images/girl.png"),fit: BoxFit.cover)
  ),
)


  ],
),

    );
  }
}