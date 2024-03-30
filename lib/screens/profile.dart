import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_app/screens/calender.dart';
import 'package:demo_app/screens/courses.dart';
import 'package:demo_app/screens/profilecontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
      int current = 0;

  int idx = 0;
    final height=MediaQuery.of(context).size.height;
        final width=MediaQuery.of(context).size.width;


    return Scaffold(
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight:Radius.circular(35)
          ),
          child: BottomNavigationBar(
            
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
          
            onTap: (val) {
              idx = val;
              if (val == 1) {
                Get.to(() => CoursePage(),
                    transition: Transition.circularReveal,
                    duration: Duration(seconds: 1));
              }
              if (val == 2) {
                Get.to(() => CoursePage(),
                    transition: Transition.circularReveal,
                    duration: Duration(seconds: 1));
              }
              if (val == 3) {
                Get.to(() => CoursePage(),
                    transition: Transition.circularReveal,
                    duration: Duration(seconds: 1));
              }
              if (val == 4) {
                Get.to(() => Calender(),
                    transition: Transition.circularReveal,
                    duration: Duration(seconds: 1));
              }
            },
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(PhosphorIcons.houseBold), label: '',backgroundColor: Color.fromARGB(255, 8, 21, 56),),
              BottomNavigationBarItem(icon: Icon(PhosphorIcons.clipboardTextBold), label: ''),
              BottomNavigationBarItem(icon: Icon(PhosphorIcons.chartLineUpBold), label: ''),
              BottomNavigationBarItem(icon: Icon(PhosphorIcons.laptopBold), label: ''),
            ],
          ),
        ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),

      body: SafeArea(
        
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
               children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10,left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Aditi Sharma",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 24),),
                        Text("Let’s start learning",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),)
                    
                      ],
                    ),
                  ),
                  height: height/4,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 5, 27, 46),
                ),
                Positioned(
                  child: Padding(
                    padding:  EdgeInsets.only(left: width/18,right: width/18,top: height/5.8),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Learned today",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16),),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("My courses",style: GoogleFonts.montserrat(color: Color.fromARGB(255, 64, 117, 202),fontWeight: FontWeight.w300,fontSize: 16),),
                        
                        
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 22,right: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("46min",style: GoogleFonts.montserrat(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text("/60min",style: GoogleFonts.montserrat(color:Colors.black,fontWeight: FontWeight.w300,fontSize: 16),),
                              
                              
                                ],
                              ),
                              
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 18,right: 18),
                              child: LinearPercentIndicator(
                                lineHeight: 5.84,
                                percent:0.67,
                                backgroundColor: Colors.grey,
                                progressColor:Colors.orange
                              ),
                            )
                          ],
                        ),
                      ),
                      height: height/6.5,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
blurRadius: 2                     

   )],
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white
                      ),
                    ),
                  ),
                )
               ], 
              ),

              SizedBox(
                height: height/35,
              ),
                Container(
                  height: height/4,
                  child: CarouselSlider(
                    
                    items:[
                    
                     pcontainer(colorback: Color.fromARGB(255, 5, 31, 84),),
                                          pcontainer(colorback: Color.fromARGB(255, 3, 70, 65),),

                    ], 
                      options: CarouselOptions(
                      autoPlay: true, aspectRatio: 2, enlargeCenterPage: true)
                     )
                     
            
                     ),
                     SizedBox(
                      height: height/20,
                     ),

                     Padding(
                       padding:  EdgeInsets.only(left: width/18),
                       child: Text("Learning Plan",style:GoogleFonts.montserrat(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black)),
                     )
            

            ],
          ),
        ) 
      
      ),



    );
  }
}