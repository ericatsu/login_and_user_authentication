import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/Onboard5.dart';

class Onboard4 extends StatelessWidget {
  const Onboard4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                TextButton(
                  child: Text(
                    " Skip",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Onboard5()));
                  },
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 330.0, bottom: 6.0),
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
                  color: Colors.white54,
                  fontSize: 16.00,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 120, right: 120),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.white70,
                            shape: BoxShape.circle,
                          ),
                        ),
                        
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.white70,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.white70,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.green[800],
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.white70,
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
                        MaterialPageRoute(builder: (context) => Onboard5()));
                  },
                ),
              ),
            ])),
      ),
    );
  }
}
