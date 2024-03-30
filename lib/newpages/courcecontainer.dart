import 'package:demo_app/newpages/videoplaypage.dart';
import 'package:demo_app/screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class courcecontainer extends StatefulWidget {
String txt;

   courcecontainer({
    required this.txt,
    
    super.key});

  @override
  State<courcecontainer> createState() => _courcecontainerState();
}

class _courcecontainerState extends State<courcecontainer> {
  @override
  Widget build(BuildContext context) {
        double height=MediaQuery.of(context).size.height;
        double width=MediaQuery.of(context).size.width;

        String txtget=widget.txt;
    return GestureDetector(
      onTap: () {
        if (widget.txt==txtget) {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return videoplaypage();
          },));
          
        } 
        
      },
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            blurRadius: 1,
            color: Color.fromARGB(255, 255, 255, 255)
          )],
          borderRadius: BorderRadius.circular(13)
        ),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: hextoColor("#D1DDFF"),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    width: 10,
                    height: 247,
                  ),
                  SizedBox(
                    width: width/18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.txt,style: GoogleFonts.montserrat(color: Color.fromARGB(255, 30, 30, 30),fontWeight: FontWeight.w500,fontSize: width/28),),
                      Container(
                        height: height/4.2,
                        width: width/1.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage("lib/images/thumnail.png"),fit: BoxFit.contain)
                        ),
                      )

                    ],
                  )
                ],
                )
              ),





      
    );
  }
}