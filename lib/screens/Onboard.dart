import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard1.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard2.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard4.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard5.dart';
import 'package:login_and_user_authentication/OnboardScreens/onboard3.dart';
import 'package:login_and_user_authentication/screens/Register.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatefulWidget {
  const Onboard({ Key? key }) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  // Keep track of pages
  PageController _controller = PageController();
  //Check whether on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Pageview
          PageView(
          controller: _controller,
          onPageChanged: (index){
           setState(() {
             onLastPage = (index == 4);
           });
          },
          children: [
            Onboard1(),
            Onboard2(),
            Onboard3(),
            Onboard4(),
            Onboard5()
          ],
        ),
        //Sliders
        Container(
          // Alignments of dots
          child: Column(
            children: [

              //Skip
                   GestureDetector(
                       onTap: () {
                         _controller.jumpToPage(4);
                        },
                       child: Text('Skip',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                       ),
                      ),
                   

                  // dot slider
                  SmoothPageIndicator(controller: _controller, count: 5),
               
              //Next and Join
              onLastPage
                 ? GestureDetector(
                   onTap: () {
                     Navigator.push(context, 
                       MaterialPageRoute(builder: (context) {
                         return Register();
                       }));
                    },
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.orange,
                           borderRadius: BorderRadius.circular(10), 
                     ),
                          width: 327,
                          height: 50,
                     child: Center(
                       child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                     ),
                   )
                   )
                  : GestureDetector(
                   onTap: () {
                     _controller.nextPage(
                       duration: Duration(milliseconds: 500), curve: Curves.easeIn
                       );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 327,
                          height: 50,
                      child: Center(
                        child: Text('Next',
                        style: TextStyle(color: Colors.white, fontSize: 18),),
                      ),
                    )
                  ) 
            ],
          ),
        ),
        ],
      )
    );
  }
}