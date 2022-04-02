import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/screens/Register.dart';

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
                margin: EdgeInsets.only(top: 330.0, bottom: 6.0),
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
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
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
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
              ),
            ])),
      ),
    );
  }
}
