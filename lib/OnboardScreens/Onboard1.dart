import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard2.dart';
import 'package:login_and_user_authentication/screens/Register.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:<Widget>[  
                            TextButton(
                            child: Text(
                              " Skip", style: TextStyle(
                                  fontSize: 18, color: Colors.white ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Register()
                                  )
                              );
                            },
                          ),
                      ]
                    ),
                    
                    SizedBox(height: height * 0.25),
                      Container(
                        margin: EdgeInsets.only(top:300.0, bottom:5.0),
                        child: Text('Hungry?',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.00,
                          ),
                        ),
                      ),
                      Text(
                        "Confused about which Outfit to wear? Dont worry, find te best outfits here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 16.00,
                        ),
                      ),

                      // Sliders; 
                      Container(
                        margin: EdgeInsets.symmetric(vertical:50.0,horizontal: 15 ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100, right:100),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:<Widget>[
                                Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: new BoxDecoration(
                               color: Colors.orange,
                                shape: BoxShape.circle,
                               ),
                             ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),

                           Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 327,
                            height: 50,
                            child: TextButton(
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
                      
                    ])
            ),
          ),
        );
  }
}