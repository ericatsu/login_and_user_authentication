import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/screens/Platform.dart';

class OTPcode extends StatefulWidget {
  const OTPcode({Key? key}) : super(key: key);

  @override
  State<OTPcode> createState() => _OTPcodeState();
}

class _OTPcodeState extends State<OTPcode> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          centerTitle:true,
          title: Text("STEP 3 OF 3"),
          titleTextStyle: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w300),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(onPressed: () => {},
              icon: Icon(
                  Icons.info,
                  color: Colors.black),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Platform()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
      ),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.04),
                Text("You are almost there!", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold),),
                Text("You only have to enter an OTP code we sent via SMS to your registered phone number +233203620462", style: TextStyle(fontSize: 19, color:Colors.black54, fontWeight: FontWeight.normal),),
                //OTP Field
                SizedBox(height: height*0.02),
                      Container(
                        height: 70,
                        child: TextField(
                        decoration: InputDecoration(
                          //ellipse icon not added
                          // prefixIcon: Icon(Icons.arrow_circle_up, color: Colors.green, size: 11,),
                          suffixText: '00:48', suffixStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        ),
                        border: OutlineInputBorder(),
                          labelText: 'OTP*',
                          hintText: '4450',
                          hintStyle: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w900)
                         ), 
                        ),
                      ),
              ],
            ),
          ),
        
        );
  }
}
