import 'package:flutter/material.dart';

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
          title: Text("STEP 2 OF 2"),
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
            onPressed: () => {},
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
                Text("OTP", style: TextStyle(fontSize: 19, color:Colors.black54, fontWeight: FontWeight.normal),),
                //OTP Field
                SizedBox(height: height*0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(first: true, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: false),
                    _textFieldOTP(first: false, last: true),
                  ],
                ),
              ],
            ),
          ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => OTPcode()),
              )
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.teal)
        );
  }

  Widget _textFieldOTP({required bool first, last}){
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
