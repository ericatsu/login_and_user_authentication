import 'package:flutter/material.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/delivery.png'),
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
                  'Look good, Feel good',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.00,
                  ),
                ),
              ),
              const Text(
                "Discover the latest trend in fashion and explore your personality",
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
