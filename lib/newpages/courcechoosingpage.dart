import 'package:demo_app/newpages/courcecontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class courcechoosing extends StatefulWidget {
  String txt;
   courcechoosing({
    
    required this.txt,
    super.key});

  @override
  State<courcechoosing> createState() => _courcechoosingState();
}

class _courcechoosingState extends State<courcechoosing> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
        double width=MediaQuery.of(context).size.width;


    return Scaffold(

      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      appBar: AppBar(
                    automaticallyImplyLeading: false,


        backgroundColor: const Color.fromARGB(255, 61, 91, 180),

        title:Text(widget.txt,style: GoogleFonts.montserrat(fontSize: width/18,color: Colors.white,fontWeight: FontWeight.bold,)),
      ),

body: SafeArea(
  
  child:SingleChildScrollView(
    physics: BouncingScrollPhysics(),

child: Padding(
  padding:  EdgeInsets.only(top:height/30 ,left: width/20,right: width/20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


  courcecontainer(txt:"T1: Vector Space | Definition Of Vector\nSpace | Examples Of Vector Space",),
  SizedBox(height: height/20,),
  courcecontainer(txt:"T${widget.txt[0]}.2 Binary Search",),
  SizedBox(height: height/20,),
  courcecontainer(txt:"T${widget.txt[0]}.3 ABCD Search",),
  SizedBox(height: height/20,),
  courcecontainer(txt:"T${widget.txt[0]}.4 WXYS Search",),
  SizedBox(height: height/20,),
  courcecontainer(txt:"T${widget.txt[0]}.5 HJKL Search",),
  SizedBox(height: height/20,),
  courcecontainer(txt:"T${widget.txt[0]}.6 OKLI Search",),
  SizedBox(height: height/20,)




  
  
  
  
    ],
  ),
),


  ) 



),

    );
  }
}