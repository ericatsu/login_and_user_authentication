import 'package:flutter/material.dart';


class Onboard4 extends StatelessWidget {
  const Onboard4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/garbage.jpg'),
                fit: BoxFit.fitWidth,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
            child: Column(children: <Widget>[
            
              SizedBox(height: height * 0.32),
              Container(
                margin: EdgeInsets.only(top:  300.0, bottom: 5.0),
                child: const Text(
                  'Your style, Your way',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.00,
                  ),
                ),
              ),
              const Text(
                "Customize your unique styles, so you can look amazing anyday",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.00,
                ),
              ),
              
              
            ])),
      ),
    );
  }
}
