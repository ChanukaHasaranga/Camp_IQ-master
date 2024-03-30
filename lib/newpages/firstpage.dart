import 'package:demo_app/newpages/buttonsforpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstpage extends StatelessWidget {
  String txt;

   firstpage({
    required this.txt,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 229, 229),

      appBar: AppBar(
            automaticallyImplyLeading: false,

            title: Padding(
              padding:  EdgeInsets.only(bottom: height/70,top: height/90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("BMAT302L",style: GoogleFonts.montserrat(fontSize: width/28,color: Colors.white,fontWeight: FontWeight.bold,)),
                  Text(txt,style: GoogleFonts.montserrat(fontSize: width/18,color: Colors.white,fontWeight: FontWeight.bold,)),
              
              
                ],
              ),
            ),

        backgroundColor: const Color.fromARGB(255, 61, 91, 180),
      ),

body: SafeArea(
  
  
  child:SingleChildScrollView(

    child: Padding(
      padding:  EdgeInsets.only(left: width/10,right: width/10,top: height/30),
      child: Column(
      
        children: [
          buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 1',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 2',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 3',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 4',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 5',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 6',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 7',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 8',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 9',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 10',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 11',),
          SizedBox(height: 20,),
                    buttonforpage(txt: 'Linear Algebra', txt2: 'Chapter 12',),
          SizedBox(height: 20,),



       
 
      


        ],
        
      
      
      ),
    ),
  ) 






),

    );
  }
}