import 'package:flutter/material.dart';

class Onboard5 extends StatelessWidget {
  const Onboard5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/greenpepper.png'),
                fit: BoxFit.fitWidth,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
            child: Column(children: <Widget>[
              
              SizedBox(height: height * 0.25),
              Container(
                margin: EdgeInsets.only(top:  300.0, bottom: 5.0),
                child: Text(
                  'Order groceries,beverages and essentials',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.00,
                  ),
                ),
              ),
              Text(
                "Order all your groceries online and get them to yu at your doorstep.",
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
