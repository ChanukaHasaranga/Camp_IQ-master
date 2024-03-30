import 'package:demo_app/screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
    DateTime today = DateTime.now();
     int current = 0;

  int idx = 0;

  @override
  Widget build(BuildContext context) {
            double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
   
   bottomNavigationBar:  ClipRRect(
    
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

   body: SafeArea(child: SingleChildScrollView(
    child: Column(
children: [

  SizedBox(
        height: 10,
      ),
      Row(
        children: [

          IconButton(onPressed:() {
            
          }, icon:Icon(Icons.arrow_back_ios,color: Colors.black,size: 22,)),

          Text(
            "Schedule",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: width/15,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(
            width: width/20,
          )
        ],
      ),
      Padding(
    padding:  EdgeInsets.only(left:width/15 ,right: width/15),
        child: Container(
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 43,
            headerStyle: HeaderStyle(formatButtonVisible: false),
            focusedDay: today,
            
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
          ), // TableCalendar
        ),
      ),
       Container(
          decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 6, offset: Offset(2, 3))],
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(52)),
                width: MediaQuery.of(context).size.width,
                    
                height: 500,
         
                
                
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: height/17,
                    ),
                    Container(
                      
                      
                      child: SingleChildScrollView(
       
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                SizedBox(
                                  width: width/15,
                                ),
                                CircleAvatar(
                                    radius: 8,
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 0, 0),
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                    )),
                                SizedBox(
                                  width: width/30,
                                ),
                                Text("8:50 AM-9:40 AM",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width/25,
                                      color: Color.fromARGB(255, 97, 97, 97),
                                    )),
                                    SizedBox(
                                      width: width/2.6,
                                    ),
                                    Icon(Icons.more_horiz,size: width/15,)
                              ],
                            ),
                            SizedBox(
                              height: height/60,
                            ),
                            Text(
                              "Data structure and algotithms",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: width/20,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            SizedBox(
                              height: height/60,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width/12,
                                ),
                                Text(
                                  "linked list and its impli.... ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: width/25,
                                    color: Color.fromARGB(255, 107, 107, 107),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15)),
                      height: height/7,
                    ),
                    SizedBox(
                      height: height/40,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              SizedBox(
                                width: width/15,
                              ),
                              CircleAvatar(
                                  radius: 8,
                                  backgroundColor:
                                      Color.fromARGB(255, 115, 198, 142),
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  )),
                              SizedBox(
                                width: width/30,
                              ),
                              Text("9:40 AM-10:30 AM",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width/25,
                                    color: Color.fromARGB(255, 97, 97, 97),
                                  )),
                                  
                                    SizedBox(
                                      width: width/2.6,
                                    ),
                                    Icon(Icons.more_horiz,size:width/15 ,)
                            ],
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Text(
                            "Theory of computation             ",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: width/20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/12,
                              ),
                              Text(
                                "automata theory and its impli.... ",
                                style: GoogleFonts.montserrat(
                                  fontSize: width/25,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15)),
                      height: height/7,
                    ),
                    //3
                    SizedBox(
                      height: height/40,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              SizedBox(
                                width: width/15,
                              ),
                              CircleAvatar(
                                  radius: 8,
                                  backgroundColor:
                                      Color.fromARGB(255, 115, 198, 142),
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  )),
                              SizedBox(
                                width: width/30,
                              ),
                              Text("10:40 AM-11:30 AM",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width/25,
                                    color: Color.fromARGB(255, 97, 97, 97),
                                  )),
                                  
                                    SizedBox(
                                      width: width/2.6,
                                    ),
                                    Icon(Icons.more_horiz,size:width/15 ,)
                            ],
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Text(
                            "Soft Skills                                   ",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: width/20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/12,
                              ),
                              Text(
                                "Data interpretation impli...",
                                style: GoogleFonts.montserrat(
                                  fontSize: width/25,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15)),
                      height: height/7,
                    ),
                    SizedBox(height: height/40,),
                    Container(
                      
                      
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              SizedBox(
                                width: width/15,
                              ),
                              CircleAvatar(
                                  radius: 8,
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 0, 0),
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  )),
                              SizedBox(
                                width: width/30,
                              ),
                              Text("8:50 AM-9:40 AM",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width/25,
                                    color: Color.fromARGB(255, 97, 97, 97),
                                  )),
                                  SizedBox(
                                    width: width/2.6,
                                  ),
                                  Icon(Icons.more_horiz,size: width/15,)
                            ],
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Text(
                            "Data structure and algotithms",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: width/20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(
                            height: height/60,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/12,
                              ),
                              Text(
                                "linked list and its impli.... ",
                                style: GoogleFonts.montserrat(
                                  fontSize: width/25,
                                  color: Color.fromARGB(255, 107, 107, 107),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15)),
                      height: height/7,
                    ),
             SizedBox(height: height/2,)
       
                  ]),
                ),
               
              )
              

       // Container

],

    ),
   )),



    );
  }
}