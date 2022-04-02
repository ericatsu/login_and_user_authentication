import 'package:flutter/material.dart';

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
                    
                    
                    SizedBox(height: height * 0.32),
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
                          color: Colors.white,
                          fontSize: 16.00,
                        ),
                      ),

                  
                    ])
            ),
          ),
        );
  }
}