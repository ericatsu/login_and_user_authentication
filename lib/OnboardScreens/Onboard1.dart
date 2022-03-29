import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return Scaffold(
      body: SafeArea(child:
            Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(

                    image: AssetImage('assets/images/hungry.png'),
                    fit: BoxFit.fitWidth,
                    colorFilter:
                    ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.darken),
                  ),
                ),
                child: Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment. end,
                          children:<Widget>[  FlatButton(
                            child: const Text(
                              " Skip", style: TextStyle(
                                  fontSize: 18, color: Colors.white ),
                            ),
                            onPressed:(){},
                          ),
                      ]
                    ),
                      Container(
                        margin: EdgeInsets.only(top:330.0,bottom:6.0 ),
                        child: const Text('Hungry?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.00,
                          ),
                        ),
                      ),
                      const Text(
                        "Confused about which Outfit to wear? Dont worry, find te best outfits here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16.00,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical:30.0,horizontal: 10 ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120,right:120),
                          //Slider
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:<Widget>[

                                SmoothPageIndicator(controller: _controller, count: 5),
                              ]
                          ),
                        ),
                      ),
                      Expanded(

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          width: 320 ,
                          child: FlatButton(
                            color: Colors.orange[800],
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            onPressed: (
                                ){ 
                                  Navigator.push(
                                    context, MaterialPageRoute(
                                      builder: (context) => Onboard2()
                                      )
                                  );
                                },
                          ),
                        ),
                      ),
                    ])
            ),
          ),
        );
  }
}