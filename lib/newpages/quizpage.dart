import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class quizpage extends StatefulWidget {
  const quizpage({super.key});

  @override
  State<quizpage> createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  String groupValue1='';
  String groupValue2='';
    String groupValue3='';

  int count=0;
  int count1=0;
  int count2=0;
    int _counter = 600; 
  bool _isYellow = false;
  bool _isred=false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
          if (_counter < 300) {
            _isYellow = true; 
            // Set color to yellow when 5 minutes remaining
          }
                    if (_counter == 60) {
            _isred = true; // Set color to red when 1 minute remaining
          }
      
        } else {
          timer.cancel();
          // Timer finished, you can perform any action here
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
        int minutes = _counter ~/ 60;
    int seconds = _counter % 60;

    return Scaffold(
      backgroundColor: Colors.white,
    



        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
                   Container(
                    color: const Color.fromARGB(255, 61, 91, 180),
                
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                  IconButton(onPressed:() {
                    
                  }, icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  Text("Physics",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                  
                  Icon(Icons.volume_mute,color: Colors.black,)
                  
                                ],
                              ),
                  
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 10),
                                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${count+count1+count2}/10",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    Center(
                          child: Container(
                            width: 100,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(158, 255, 255, 255), // Change color when it becomes yellow
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 6),
                              child: Row(
                                children: [
                  Icon(Icons.access_alarm,color: _isred ? Colors.red : (_isYellow ? Colors.yellow : Colors.blue),),
                  SizedBox(width: 10,),
                  Text(
                    '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
                    style: TextStyle(fontSize: 20, color:_isred ? Colors.red : (_isYellow ? Colors.yellow : Colors.blue),fontWeight: FontWeight.bold),
                  ),
                                ],
                              ),
                            ),
                          ),
                    )
                  
                  ],
                                ),
                              ),
                                          Padding(
                                padding:  EdgeInsets.only(left: 10,right: 10,top: 20),
                                child: LinearPercentIndicator(
                                  barRadius: Radius.circular(13),
                                  lineHeight: 7.84,
                                  percent:(count+count1+count2)/10,
                                  backgroundColor: Color.fromARGB(65, 137, 27, 205),
                                  progressColor:Color.fromARGB(255, 60, 11, 93)
                                ),
                              ),
                  
                              SizedBox(height: 20,)
                  
                            
                          
                  
                  
                            ],
                          ),
                ),
                
                
                   ),
                
                
                Container(
        height: MediaQuery.of(context).size.height/1.5,
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
            child: Column(
              children: [
                  Text("Q1.Two angles are complementary,if the sum of their measres is",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontWeight: FontWeight.w500,fontSize:18),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
            
                      color: Colors.white,
                      border: Border.all(color: const Color.fromARGB(39, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(13)
            
                      
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value:"-90", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue1, 
                              onChanged:(value) {
                                setState(() {
                              groupValue1=value!;
                                  count=1;
            
                                });
                              },),
                              Text("-90",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value:"-10", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue1, 
                              onChanged:(value) {
                                setState(() {
                              groupValue1=value!;
                                      count=1;
                                });
                              },),
                              Text("-10",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-180", 
                              activeColor:  Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue1, 
                              onChanged:(value) {
                                setState(() {
                              groupValue1=value!;
            
                                });
                              },),
                              Text("-180",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-360", 
                              activeColor:  Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue1, 
                              onChanged:(value) {
                                setState(() {
                              groupValue1=value!;
            count=1;
                                });
                              },),
                              Text("-360",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                     
                      ],
                    ),
                  ),
            
                  SizedBox(height: 30,),
            //second
            
            
            Text("Q1.Two angles are complementary,if the max of their measres is",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontWeight: FontWeight.w500,fontSize:18),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
            
                      color: Colors.white,
                      border: Border.all(color: const Color.fromARGB(39, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(13)
            
                      
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value:"-200", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue2, 
                              onChanged:(value) {
                                setState(() {
                              groupValue2=value!;
            count1=1;
                                });
                              },),
                              Text("-200",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value:"-500", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue2, 
                              onChanged:(value) {
                                setState(() {
                              groupValue2=value!;
            count1=1;
                                });
                              },),
                              Text("-500",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-190", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue2, 
                              onChanged:(value) {
                                setState(() {
                              groupValue2=value!;
            count1=1;
                                });
                              },),
                              Text("-190",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-369", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue2, 
                              onChanged:(value) {
                                setState(() {
                              groupValue2=value!;
            count1=1;
                                });
                              },),
                              Text("-369",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                     
                      ],
                    ),
                  ),
                                    SizedBox(height: 30,),

            
                  
                  Text("Q1.Two angles are complementary,if the sum of their measres is",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontWeight: FontWeight.w500,fontSize:18),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
            
                      color: Colors.white,
                      border: Border.all(color: const Color.fromARGB(39, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(13)
            
                      
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value:"-90", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue3, 
                              onChanged:(value) {
                                setState(() {
                              groupValue3=value!;
                                  count2=1;
            
                                });
                              },),
                              Text("-90",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value:"-10", 
                              activeColor:  Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue3, 
                              onChanged:(value) {
                                setState(() {
                              groupValue3=value!;
                                      count2=1;
                                });
                              },),
                              Text("-10",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-180", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue3, 
                              onChanged:(value) {
                                setState(() {
                              groupValue3=value!;
                                                  count2=1;

                                });
                              },),
                              Text("-180",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),Row(
                          children: [
                            Radio(
                              value:"-360", 
                              activeColor: Color.fromARGB(255, 15, 43, 144),
                              groupValue: groupValue3, 
                              onChanged:(value) {
                                setState(() {
                              groupValue3=value!;
                                      count2=1;
                                });
                              },),
                              Text("-360",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 18, 37, 52),fontSize: 18,fontWeight: FontWeight.w500),)
                          ],
                        ),
                     
                      ],
                    ),
                  ),
            
                  SizedBox(height: 30,),
                        ]
            ),
          ),
        )
                ),
                
                
                
        
                
                
                
                
        
        
        
          ],
        )),


    );
  }
}