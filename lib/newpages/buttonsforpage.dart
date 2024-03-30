import 'package:demo_app/newpages/courcechoosingpage.dart';
import 'package:demo_app/screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttonforpage extends StatefulWidget {
  String txt;
  String txt2;
   buttonforpage({
    
    required this.txt,
    required this.txt2,

    
    super.key});

  @override
  State<buttonforpage> createState() => _buttonforpageState();
}

class _buttonforpageState extends State<buttonforpage> {
  @override
  Widget build(BuildContext context) {
        double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  GestureDetector(
            onTap:() {
        if (widget.txt=="Linear Algebra") {

          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return courcechoosing(txt: widget.txt);
          },));
          
        }else    if (widget.txt=="Linear Algebra") {

          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
            return courcechoosing(txt: widget.txt);
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
                    height: 59,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.txt2,style: GoogleFonts.montserrat(color: Color.fromARGB(255, 114, 114, 114),fontWeight: FontWeight.w200,fontSize: width/28),),
                       Text(widget.txt,style: GoogleFonts.montserrat(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w400,fontSize: width/18),)

                    ],
                  )
                ],
                )
              ),
    );





  }
}