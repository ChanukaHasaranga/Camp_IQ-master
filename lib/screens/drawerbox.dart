import 'package:demo_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class drawerbox extends StatelessWidget {
  const drawerbox({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      
      child: Drawer(
       width: width/1.2,
       backgroundColor:Color.fromARGB(255, 214, 213, 213),
child: Column(

mainAxisAlignment: MainAxisAlignment.start,

crossAxisAlignment: CrossAxisAlignment.start,

children: [

  Container(
            height: 214,
        width: double.infinity,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(13),
              bottomRight: Radius.circular(13)
            ),
                    image: DecorationImage(image: AssetImage("lib/images/pic2.png"),fit: BoxFit.cover)        
           ),
          
           child: Center(
             child: Padding(
               padding: const EdgeInsets.only(left: 30,),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("lib/images/icon.png"),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Aditi\nSharma",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,color: Colors.white,letterSpacing: 5),)
                ],
               ),
             ),


           ),
          
            
          
          ),
      
    SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
        Icon(Icons.person_2_outlined,color: Colors.black,size: 26,),
        SizedBox(width: 12,),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
              return profile();
            },));
          },
          child: Text("My Profile",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),))
            ],
          ),
      ),
  SizedBox(height: 20,),
    
  Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
        Icon(PhosphorIcons.clipboardTextBold,size: 26,color: Colors.black,),
                    SizedBox(width: 10,),
      
        Text("Student ID card",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),
  SizedBox(height: 20,),
    Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
ImageIcon(AssetImage("lib/images/faculty.png"),size: 26,),
                    SizedBox(width: 10,),
      
        Text("Faculty Info",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),

  SizedBox(height: 20,),
    Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
ImageIcon(AssetImage("lib/images/Newspaper.png"),size: 26,),
                    SizedBox(width: 10,),
      
        Text("News and Events",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),
    SizedBox(height: 20,),
    Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
ImageIcon(AssetImage("lib/images/Books.png"),size: 26,),
                    SizedBox(width: 10,),
      
        Text("Exams",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),
  SizedBox(height: 20,),
    Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
ImageIcon(AssetImage("lib/images/Handshake.png"),size: 26,),
                    SizedBox(width: 10,),
      
        Text("Handshake",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),
  SizedBox(height: 20,),
    Padding(
        padding: const EdgeInsets.only(left: 13),
    child: Row(
      children: [
ImageIcon(AssetImage("lib/images/Newspaper.png"),size: 26,),
                    SizedBox(width: 10,),
      
        Text("Schedule",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),)
      ],
    ),
  ),
    


],

),
      )
      
      
      );
  }
}