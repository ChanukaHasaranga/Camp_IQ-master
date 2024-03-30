import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo_app/screen.dart';
import 'package:demo_app/screens/colors.dart';
import 'package:demo_app/screens/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

final email=TextEditingController();
final password=TextEditingController();
Color colorsforbox=const Color.fromARGB(255, 0, 0, 0);
bool passwordvisible=true;
     Future Signin() async {

try {

  await FirebaseAuth.instance.signInWithEmailAndPassword(
  email: email.text.trim(), 
  
  
  password: password.text.trim()
  
  
  
  
  );
setState(() {
  print(password.text);

                              Get.to(() => Loading(),
                                    transition: Transition.circularReveal,
                                    duration: Duration(seconds: 1));

});
  
} catch (e) {
  
setState(() {
  
colorsforbox=Colors.red;



});



}



}


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 21, 47, 120),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 150, child: Image.asset("lib/images/pic3.png")),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 20),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Login / Sign up",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: width/18,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                             SizedBox(
                              height: height/45,
                            ),
                            SizedBox(
                              height: height/18,
                              child:TextField(
      controller: email,
      decoration: InputDecoration(
        
          labelText: "Email or Username",
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide:BorderSide(color:colorsforbox)
              ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:ColorConstants.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(26)),
          ),
          suffixIcon: Icon(PhosphorIcons.envelopeSimpleBold)),
    ),
                            ),




                             SizedBox(height: height/42),
                            SizedBox(
                              height: height/18,
                              child: TextField(
      controller: password,
      obscureText: passwordvisible,
      decoration: InputDecoration(
        
          labelText: "Password",
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide:BorderSide(color:colorsforbox)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(26)),
          ),
          suffixIcon: IconButton(onPressed:() {
  setState(() {
                  passwordvisible=!passwordvisible;

  });

            
          }, icon:Icon( passwordvisible? Icons.visibility_off:Icons.visibility))
          
          
          
          ),
    ),
    
                            ),

                            SwitchListTile.adaptive(
                              value: true,
                              onChanged: ((value) {}),
                              contentPadding: const EdgeInsets.all(0),
                              title: Text(
                                'Remember me',
                                style: GoogleFonts.montserrat(
                                  fontSize: width/29,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31)),
                              height: height/20,
                              color: Color.fromRGBO(21, 47, 120, 1),
                              onPressed: () {
                                setState(() {
                                Signin();

                                });

                                    print(email.text);
                              },
                              child: Text(
                                'LOG IN',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: width/29,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                             SizedBox(
                              height: height/50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                 SizedBox(
                                  width: width/30,
                                ),
                                Text('OR',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: width/29,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    )),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                             SizedBox(
                              height:height/ 40 ,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: height/18,
                                    child: Icon(
                                      PhosphorIcons.googleLogoBold,
                                      size: 32.0,
                                    )),
                                const SizedBox(
                                  width: 16,
                                ),
                                SizedBox(
                                    height: height/18,
                                    child: Icon(
                                      PhosphorIcons.facebookLogoBold,
                                      size: 32.0,
                                    )),
                              ],
                            ),
                             SizedBox(
                              height: height/62,
                            ),
                            Text(
                              'Forget password ?',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: width/29,
                                color: Color.fromARGB(255, 73, 63, 132),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: width/29,
                              color: Color.fromARGB(255, 100, 77, 235),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign up now',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: width/29,
                              color: Color.fromARGB(255, 100, 77, 235),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 44,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

