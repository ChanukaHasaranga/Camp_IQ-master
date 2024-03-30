import 'package:demo_app/screens/calender.dart';
import 'package:demo_app/screens/courses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


class bottomnavigator extends StatelessWidget {




   bottomnavigator({
 

    
    
    super.key});
    int current = 0;

  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
    child: Align(
      
      alignment: Alignment(0.0,1.0),
      child: ClipRRect(
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
    ),
  );
  }
}