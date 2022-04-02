import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard4.dart';
import 'package:login_and_user_authentication/screens/Register.dart';

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
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                TextButton(
                  child: Text(
                    " Skip",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
               ]
              ),

              SizedBox(height: height * 0.25),
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
                  color: Colors.white54,
                  fontSize: 16.00,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
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
                            color: Colors.green[800],
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
                      ]),
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Onboard4()));
                  },
                ),
              ),
            ])),
      ),
    );
  }
}
