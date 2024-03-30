import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
  @override
  Widget build(BuildContext context) {
            double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: hextoColor('#F5F6FF'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: height/30,
            ),
            Row(
              children: [
                SizedBox(
                  width: width/30,
                ),
                Icon(
                  PhosphorIcons.caretLeftBold,
                  size: width/15,
                ),
                SizedBox(
                  width: width/40,
                ),
                Text(
                  'COURSES',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: width/15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height/40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width/20),
                Text(
                  'Recomended Courses',
                  style: GoogleFonts.montserrat(
                    fontSize: width/20,
                    color: Color.fromARGB(255, 110, 108, 108),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height/46,
            ),
            Container(
              height: height/5,
              child: CarouselSlider(
                  items: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            color: hextoColor("#D1DDFF"),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: width/35,
                          height: height/5,
                        ),
                     
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  PhosphorIcons.desktopBold,
                                  size: width/8,
                                ),
                                SizedBox(
                                  width: width/20,
                                ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Data Structures and..",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "BCSE101L",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 107, 107, 107),
                                      ),
                                    ),
                                    Text(
                                      "Faculty: Dr.Shreya",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ]),
                      width: width/1.3,
                      height: height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            color: hextoColor("#D1DDFF"),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: width/35,
                          height: height/5,
                        ),
                     
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  PhosphorIcons.desktopBold,
                                  size: width/8,
                                ),
                                SizedBox(
                                  width: width/20,
                                ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Data Analysis and..",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "BDAT101L",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 107, 107, 107),
                                      ),
                                    ),
                                    Text(
                                      "Faculty: Dr.Utkarsha",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ]),
                      width: width/1.3,
                      height: height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            color: hextoColor("#D1DDFF"),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: width/35,
                          height: height/5,
                        ),
                     
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  PhosphorIcons.desktopBold,
                                  size: width/8,
                                ),
                                SizedBox(
                                  width: width/20,
                                ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Theory of computation",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "BCSE101L",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 107, 107, 107),
                                      ),
                                    ),
                                    Text(
                                      "Faculty: Dr.Mohana",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ]),
                      width: width/1.3,
                      height: height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            color: hextoColor("#D1DDFF"),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: width/35,
                          height: height/5,
                        ),
                     
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  PhosphorIcons.desktopBold,
                                  size: width/8,
                                ),
                                SizedBox(
                                  width: width/20,
                                ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Data Structures and..",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Text(
                                      "BCSE101L",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(
                                            255, 107, 107, 107),
                                      ),
                                    ),
                                    Text(
                                      "Faculty: Dr.Shreya",
                                      style: GoogleFonts.montserrat(
                                        fontSize: width/25,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ]),
                      width: width/1.3,
                      height: height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      autoPlay: true, aspectRatio: 3, enlargeCenterPage: true)),
            ),
            SizedBox(
              height: height/60,
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(
              height: height/60,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/30,right: width/30),
              child: Container(
                height: height/4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("lib/images/pic6.png"),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: height/60,
            ),
            Row(
              children: [
                SizedBox(
                  width: width/25,
                ),
                Text(
                  'Courses this semester',
                  style: GoogleFonts.montserrat(
                    fontSize: width/22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height/60,
            ),
            Container(
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: hextoColor("#D1DDFF"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: width/40,
                  height: height/3,
                ),
                SizedBox(
                  width: width/30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          PhosphorIcons.atomBold,
                          size: width/8,
                        ),
                        SizedBox(
                          width: width/40,
                        ),
                        Column(
                          children: [
                            Text(
                              "Digital System and Desi...",
                              style: GoogleFonts.montserrat(
                                fontSize: width/22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "BCEC101L                                    ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: width/26,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 107, 107, 107),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Faculty: Dr. Ramakrishna           ",
                              style: GoogleFonts.montserrat(
                                fontSize: width/27,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width/2,
                                ),
                                CircularPercentIndicator(
                                  circularStrokeCap: CircularStrokeCap.round,
                                  radius: 30,
                                  percent: 0.8,
                                  lineWidth: 7,
                                  center: Text(
                                    "80%",
                                    style: GoogleFonts.montserrat(
                                      fontSize: width/29,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  progressColor: hextoColor("#3953A0"),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ]),
              width: width/1.12,
              height: height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: height/60,
            ),
            Container(
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: hextoColor("#D1DDFF"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: width/40,
                  height: height/3,
                ),
                SizedBox(
                  width: width/30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          PhosphorIcons.atomBold,
                          size: width/8,
                        ),
                        SizedBox(
                          width: width/40,
                        ),
                        Column(
                          children: [
                            Text(
                              "Data Structures and...",
                              style: GoogleFonts.montserrat(
                                fontSize: width/22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "BCEC101L                                    ",
                                  style: GoogleFonts.montserrat(
                                    fontSize: width/26,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 107, 107, 107),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Faculty: Dr. Shreya           ",
                              style: GoogleFonts.montserrat(
                                fontSize: width/27,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width/2,
                                ),
                                CircularPercentIndicator(
                                  circularStrokeCap: CircularStrokeCap.round,
                                  radius: 30,
                                  percent: 0.8,
                                  lineWidth: 7,
                                  center: Text(
                                    "60%",
                                    style: GoogleFonts.montserrat(
                                      fontSize: width/29,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  progressColor: hextoColor("#3953A0"),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ]),
              width: width/1.12,
              height: height/5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: height/60,
            ),
          ]),
        ),
      ),
    );
  }
}

hextoColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
