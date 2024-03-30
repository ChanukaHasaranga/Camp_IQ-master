import 'package:demo_app/newpages/firstpage.dart';
import 'package:demo_app/screens/calender.dart';
import 'package:demo_app/screens/courses.dart';
import 'package:demo_app/screens/dpage.dart';
import 'package:demo_app/screens/drawerbox.dart';
import 'package:demo_app/screens/drawerflix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> items = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  int current = 0;

  int idx = 0;
  @override
  Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      
      child: Scaffold(
   
    
        drawer: drawerbox(),
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
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 49, 187),
                  image: DecorationImage(
                      image: AssetImage("lib/images/pic2.png"),
                      fit: BoxFit.cover),
                ),
                padding: EdgeInsets.symmetric(horizontal: width/20, vertical: height/35),
                child: Column(
                  children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: width/1.6),
            child: drawerfix(),
          ),
                
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hey \nAditi Sharma",
                          style: GoogleFonts.montserrat(
                              fontSize: width/13,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: height/55,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: width/22,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                                return Calender();
                              },));
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                                          
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        Color.fromARGB(255, 214, 213, 213),
                                    child: CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.black,
                                      backgroundColor:
                                          Color.fromARGB(255, 175, 201, 235),
                                      child: Icon(
                                        PhosphorIcons.calendarCheckBold,
                                        size: width/12,
                                      ),
                                    ),
                                  ),
                                                          
                                  Center(
                                    child: Text(
                                      "89%",
                                      style: GoogleFonts.montserrat(
                                          fontSize: width/12,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                                         
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Center(
                                      child: Text(
                                        "      Total \nattendence",
                                        style: GoogleFonts.montserrat(
                                            fontSize: width/26,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              width: width/2.6,
                            ),
                          ),
                          SizedBox(
                            width: width/20,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                                         
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 214, 213, 213),
                                  child: CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.black,
                                      backgroundColor:
                                          Color.fromARGB(255, 175, 201, 235),
                                      child: Icon(
                                        PhosphorIcons.bookmarkBold,
                                        size: width/12,
                                      )),
                                ),
                                  
                                Center(
                                  child: Text(
                                    "37",
                                    style: GoogleFonts.montserrat(
                                        fontSize: width/12,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                                        
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(
                                    child: Text(
                                      "   Total \n credits",
                                      style: GoogleFonts.montserrat(
                                          fontSize: width/26,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            width: width/2.6,
                          ),
                          SizedBox(
                            width: width/4,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                                         
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 214, 213, 213),
                                  child: CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.black,
                                      backgroundColor:
                                          Color.fromARGB(255, 175, 201, 235),
                                      child: Icon(
                                        PhosphorIcons.examBold,
                                        size: width/12,
                                      )),
                                ),
                              
                                Center(
                                  child: Text(
                                    "9.34",
                                    style: GoogleFonts.montserrat(
                                        fontSize: width/12,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                                         
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(
                                    child: Text(
                                      "   Current \n    CGPA",
                                      style: GoogleFonts.montserrat(
                                          fontSize: width/26,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            width: width/2.6,
                          ),
                          SizedBox(
                            width: width/20,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                           
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(255, 214, 213, 213),
                                  child: CircleAvatar(
                                      radius: 25,
                                      foregroundColor: Colors.black,
                                      backgroundColor:
                                          Color.fromARGB(255, 175, 201, 235),
                                      child: Icon(
                                        PhosphorIcons.examBold,
                                        size: width/12,
                                      )),
                                ),
                            
                                Center(
                                  child: Text(
                                    "9.27",
                                    style: GoogleFonts.montserrat(
                                        fontSize: width/12,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                           
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(
                                    child: Text(
                                      "   Prev. sem \n      CGPA",
                                      style: GoogleFonts.montserrat(
                                          fontSize: width/26,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            width: width/2.6,
                          ),
                          SizedBox(
                            width: width/20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2.2,
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height/45,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "     Todays class",
                            style: GoogleFonts.montserrat(
                                fontSize:width/19.2,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: height/12,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: items.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          current = index;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(milliseconds: 300),
                                        margin: const EdgeInsets.all(10),
                                        width: width/8,
                                        height: height/26,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(255, 148, 148, 148)
                                                      .withAlpha(60),
                                              blurRadius: 6.0,
                                              spreadRadius: 2.0,
                                              offset: Offset(
                                                0.0,
                                                3.0,
                                              ),
                                            ),
                                          ],
                                          color: current == index
                                              ? Color.fromARGB(255, 255, 255, 255)
                                              : Color.fromARGB(255, 248, 255, 248),
                                          borderRadius: current == index
                                              ? BorderRadius.circular(15)
                                              : BorderRadius.circular(10),
                                          border: current == index
                                              ? Border.all(
                                                  color:
                                                      Color.fromARGB(255, 0, 0, 0),
                                                  width: 2)
                                              : null,
                                        ),
                                        child: Center(
                                          child: Text(
                                            items[index],
                                            style: TextStyle(
                                              fontSize: width/25,
                                                fontWeight: FontWeight.bold,
                                                color: current == index
                                                    ? Color.fromARGB(255, 0, 0, 0)
                                                    : Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: SingleChildScrollView(
                           
                              child: Padding(
                                padding:  EdgeInsets.only(left:width/30 ,right: width/30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: GestureDetector(
                                        
                                            onTap: () {
                                              Navigator.of(context).push(MaterialPageRoute(builder:(context){

                                                return firstpage(txt:'Data Structure and algorithms',);
                                                
                                              },));
                                            },

                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                                                             
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 217, 226, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              height: height/17,
                                              width: width/10,
                                              child: Icon(
                                                PhosphorIcons.fileCode,
                                                size: width/13,
                                              ),
                                            ),
                                                                            
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Text(
                                                "Data structures and algorithms",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: width/23,
                                                    color:
                                                        Color.fromARGB(255, 0, 0, 0),
                                                    fontWeight: FontWeight.bold),
                                              ),
                                                Text(
                                                  "8:30 AM - 9:40 PM",
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: width/30,
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: width/23,)
                                          ],
                                                                            ),
                                        ),
                                      ),
                                    ),
                                  
                                  //next
                                  Padding(
                                    padding:  EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 217, 226, 255),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: height/17,
                                        width: width/10,
                                        child: Icon(
                                          PhosphorIcons.cpu,
                                          size: width/13,
                                        ),
                                      ),
                                     SizedBox(
                                      width: width/30,
                                     ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Analog Circuits",
                                            style: GoogleFonts.montserrat(
                                                fontSize: width/23,
                                                color:
                                                    Color.fromARGB(255, 0, 0, 0),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "9:40 AM - 10:40 PM",
                                            style: GoogleFonts.montserrat(
                                              fontSize: width/30,
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width/2.7,
                                      ),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: width/23,)

                                    ],
                                                                    ),
                                  ),

                                //next2
                                                                  Padding(
                                    padding:  EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 217, 226, 255),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: height/17,
                                        width: width/10,
                                        child: Icon(
                                          PhosphorIcons.desktopTower,
                                          size: width/13,
                                        ),
                                      ),
                                  
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Theory of computation",
                                            style: GoogleFonts.montserrat(
                                                fontSize: width/23,
                                                color:
                                                    Color.fromARGB(255, 0, 0, 0),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "9:40 AM - 10:40 PM",
                                            style: GoogleFonts.montserrat(
                                              fontSize: width/30,
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width/7.7,
                                      ),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: width/23,)

                                    ],
                                                                    ),
                                  ),
                                //next3

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 217, 226, 255),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: height/17,
                                        width: width/10,
                                        child: Icon(
                                         PhosphorIcons.cpu,                                       
                                          size: width/13,
                                        ),
                                      ),
                                     SizedBox(
                                      width: width/30,
                                     ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Circuit Theory",
                                            style: GoogleFonts.montserrat(
                                                fontSize: width/23,
                                                color:
                                                    Color.fromARGB(255, 0, 0, 0),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "9:40 AM - 10:40 PM",
                                            style: GoogleFonts.montserrat(
                                              fontSize: width/30,
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width/2.57,
                                      ),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: width/23,)

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 217, 226, 255),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: height/17,
                                        width: width/10,
                                        child: Icon(
                                         PhosphorIcons.cpu,                                       
                                          size: width/13,
                                        ),
                                      ),
                                     SizedBox(
                                      width: width/30,
                                     ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Circuit Theory",
                                            style: GoogleFonts.montserrat(
                                                fontSize: width/23,
                                                color:
                                                    Color.fromARGB(255, 0, 0, 0),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "9:40 AM - 10:40 PM",
                                            style: GoogleFonts.montserrat(
                                              fontSize: width/30,
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: width/2.57,
                                      ),
                                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: width/23,)

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height/14,
                                )

                                
                            


                                                          
                                                          
                                                          
                                                          
                                                          
                                  ],
                                ),
                              ),
                            
                          ),
                        )


                       
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26)),
                    height: MediaQuery.of(context).size.height - 30,
                    width: MediaQuery.of(context).size.width,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
