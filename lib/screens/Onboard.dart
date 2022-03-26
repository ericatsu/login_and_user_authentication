import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/screens/Register.dart';

import '../constants/constant.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _current_index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            pages[_current_index].img,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: size.height * .4,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      //Title
                      Text(
                        pages[_current_index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      //Subtitle
                      Container(
                        width: size.width * .7,
                        child: Text(
                          pages[_current_index].subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[300],
                              fontSize: 15
                          ),
                        ),
                      ),
                      //Button
                      Container(
                        width: size.width * .8,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Material(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (_current_index < 4) _current_index++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //TODO: Do not go through all onboard
                                child: FlatButton(
                                  child: Text(
                                    _current_index == 4
                                        ? "Register"
                                        : "Next",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: _current_index == 4
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) => Register(),),);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //todo: slider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 0
                                  ? Colors.red
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 1
                                  ? Colors.redAccent
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 2
                                  ? Colors.red
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 3
                                  ? Colors.red
                                  : Colors.grey[300],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current_index == 4
                                  ? Colors.red
                                  : Colors.grey[300],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
