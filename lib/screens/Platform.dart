import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/screens/OTPcode.dart';
import 'package:login_and_user_authentication/screens/Register.dart';

class Platform extends StatefulWidget {
  const Platform({Key? key}) : super(key: key);

  @override
  State<Platform> createState() => _PlatformState();
}

class _PlatformState extends State<Platform> {
  final formKey = GlobalKey<FormState>();
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
            centerTitle:true,
            title: Text("STEP 2 OF 3"),
            titleTextStyle: TextStyle(color: Colors.black54, fontSize: 14, fontWeight: FontWeight.w300),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                    Icons.info,
                    color: Colors.black),
              ),
            ],
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
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
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.04),
                Text("Provide Platform Details", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold),),
                Text("Please fill in a few details below", style: TextStyle(fontSize: 19, color:Colors.black54, fontWeight: FontWeight.normal),),
                //Package TODO: Create a dropdown
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Package",
                    hintText: "Select your package",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                //Region TODO: Maybe add dropdown
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Region",
                    hintText: "e.g.. Accra",
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),

                //Branch
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Branch",
                    hintText: "e.g.. Haatso",
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
                //Voucher Number
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Voucher Number",
                    hintText: "Eg: 10123123",
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),

                //Identification Type TODO: Add ID dropdown
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Sponsor Code",
                    hintText: "Eg: 10123123",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),

                //ID Number
                SizedBox(height: height*0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Placement Code",
                    hintText: "Eg: 10123123",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintStyle: TextStyle(fontSize: 18 ), //hint text style
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => OTPcode()),
              )
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.grey)
    );
  }
}

