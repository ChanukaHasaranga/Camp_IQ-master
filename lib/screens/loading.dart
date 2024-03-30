import 'package:demo_app/screen.dart';
import 'package:demo_app/screens/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:matcher/matcher.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/images/pic4.png"), fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Lottie.network(
                      "https://assets8.lottiefiles.com/packages/lf20_KvK0ZJBQzu.json"),
                  GestureDetector(
                    onTap: (() {
                      Get.to(() => Homepage(),
                          transition: Transition.circularReveal,
                          duration: Duration(seconds: 3));
                    }),
                    child: Text(
                      'LOADING',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
