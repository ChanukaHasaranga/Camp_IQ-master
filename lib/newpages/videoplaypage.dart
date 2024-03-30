import 'package:demo_app/newpages/quizpage.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class videoplaypage extends StatefulWidget {
  const videoplaypage({super.key});

  @override
  State<videoplaypage> createState() => _videoplaypageState();
}

class _videoplaypageState extends State<videoplaypage> {

late FlickManager flickManager;
  @override
  void initState(){
    super.initState();
    flickManager=FlickManager(videoPlayerController: VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));
  }


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 229, 229, 229),
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
              decoration: BoxDecoration(
              ),
               child: AspectRatio(
                
                aspectRatio: 16/10,
                
                
                child: FlickVideoPlayer(flickManager: flickManager)),
             ),
        
             SizedBox(
              height: height/24,
             ),
        
              ElevatedButton(onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                  return quizpage();
                },));
                
              }, child:Padding(
                padding:  EdgeInsets.only(left: width/4,right: width/4,top: height/75,bottom: height/75),
                child: Text("Attempt Quiz",style: GoogleFonts.montserrat(color: Colors.white,fontSize:width/20,),),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
              ),
              
              ),
              Padding(
                padding:  EdgeInsets.only(left: width/20,right: width/20,top: height/75,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discussion",style: GoogleFonts.montserrat(color: Colors.black,fontSize: width/20,fontWeight: FontWeight.bold),),
                    Icon(Icons.close,color: Colors.black,size: width/20,)
                  ],
                ),
              ),
        
              Padding(
                padding:  EdgeInsets.only(top: height/40,),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 1)
                  ),
                  height: height/2.5,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.only(left: width/25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height/30,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image:AssetImage("lib/images/icon.png"),)
                                ),
                              ),
                              SizedBox(width: width/20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("@RaselAhmed-ix5ee.3 yr ago",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 94, 94, 94),fontSize: width/30,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      width: width/4.5,
                                    ),
                                    Icon(Icons.more_vert,color: Colors.black,size: width/20,)
                                  ],
                                ),

                                Container(
                                  width: width/1.36,
                                  child: Text(
                                    "like everyone else i see this video to pass exam,but i also wish to see vids where we are actually taught ,where questions in exams are from the stuff that is taught ,rather than the stuff that is being taught is based on the question that we will have to answer in the test,understanding is more importnt than answering questions ,i hope teachers read this and work towards it"
                                 ,style: TextStyle(fontSize: width/30), ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined,color: Colors.black,size: width/22,),
                                    SizedBox(width: width/30,),
                                    Text("282",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    SizedBox(width: width/25,),
                                  Icon(Icons.thumb_down_alt_outlined,color: Colors.black,size: width/22,),
                                  SizedBox(width: width/10,),
                                  Icon(Icons.message,size:width/22 ,color: Colors.black,)

                                  ],
                                ),
                                SizedBox(height: height/36,),

                                Text("17 replies",style: TextStyle(color: Colors.blue,fontSize: width/26,fontWeight: FontWeight.bold),)
                                    
                              ],
                            )
                                    
                            ],
                          ),
                          SizedBox(height: height/30,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image:AssetImage("lib/images/icon.png"),)
                                ),
                              ),
                              SizedBox(width: width/20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("@AyushKumar-qy5cj.1 yr ago",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 94, 94, 94),fontSize: width/30,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                      width: width/4.5,
                                    ),
                                    Icon(Icons.more_vert,color: Colors.black,size: width/20,)
                                  ],
                                ),

                                Container(
                                  width: width/1.36,
                                  child: Text(
 "Sir, It's simple for you only, if someone is totally then how he or she can understand if you write these things by yourself then it is far far better sir.Thanks Sir"
                                 ,style: TextStyle(fontSize: width/30), ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.thumb_up_alt_outlined,color: Colors.black,size: width/22,),
                                    SizedBox(width: width/30,),
                                    Text("282",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    SizedBox(width: width/25,),
                                  Icon(Icons.thumb_down_alt_outlined,color: Colors.black,size: width/22,),
                                  SizedBox(width: width/10,),
                                  Icon(Icons.message,size:width/22 ,color: Colors.black,)

                                  ],
                                ),
                                SizedBox(height: height/36,),

                                Text("2 replies",style: TextStyle(color: Colors.blue,fontSize: width/26,fontWeight: FontWeight.bold),)
                                    
                              ],
                            )
                                    
                            ],
                          ),
                                                
                                                SizedBox(height: height/30,),

                      
                          
                        ],
                      ),
                    ),
                
                  ),
                
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(left: width/25,top: height/30,bottom: height/30),
                child: Row(
                  children: [
                     Container(
                      height: height/20,
                      width: width/10,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 9, 57, 11),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text("M",style: TextStyle(fontSize: width/18,color: Colors.white,fontWeight: FontWeight.bold),),),
                     ),
                     SizedBox(width: width/22,),
                     Container(
                      height: height/20,
                      width: width/1.5,
                      color: Colors.grey,
                       child: Center(
                         child: TextField(
                          
                          decoration: InputDecoration(
                            hintText: "Add a Comment...",
                            
                            border: OutlineInputBorder(
                              
                            )
                          ),
                         ),
                       ),
                     ),
                     SizedBox(width: width/24,),
                     Icon(Icons.favorite_outline,size: width/18,color: Colors.black,)

                    
                  ],
                ),
              )
        
        
          ],
        ),
      )
      
      ),

    );
  }
}