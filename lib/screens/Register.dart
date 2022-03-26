import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/screens/Platform.dart';


import '../constants/formData.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("STEP 1 OF 2"),
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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.04),
              Text("Join the Emrys Family", style: TextStyle(fontSize: 22, color:Colors.black, fontWeight: FontWeight.bold),),
              Text("Please fill in a few details below", style: TextStyle(fontSize: 19, color:Colors.black54, fontWeight: FontWeight.normal),),
              //Name
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "e.g.. John Doe",
                  hintStyle: TextStyle(fontSize: 18 ), //hint text style
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]').hasMatch(value!)){
                   return "Enter a valid name";
                   } else{
                    return null;
                  }
                },
              ),
              //Email
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "e.g.. name@email.com",
                  hintStyle: TextStyle(fontSize: 18 ), //hint text style
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)){
                    return "Enter a valid email";
                  } else{
                    return null;
                  }
                },
              ),

              //Phone Number TODO: Add International options
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "e.g.. 123xxxxxxxxx",
                  hintStyle: TextStyle(fontSize: 18 ), //hint text style
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
                validator: (value){
                  if(value!.isEmpty ||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value!)){
                    return "Enter a valid phone number";
                  } else{
                    return null;
                  }
                },
              ),
              //Country TODO: Add countries dropdown
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Counntry",
                  hintText: "Select your country",
                  hintStyle: TextStyle(fontSize: 18 ), //hint text style
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),

              //Identification Type TODO: Add ID dropdown
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Identification Type(Optional)",
                  hintText: "Select your ID Type",
                  hintStyle: TextStyle(fontSize: 18 ), //hint text style
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),

              //ID Number
              SizedBox(height: height*0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "ID Number",
                  hintText: "Enter your ID Number here",
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
              MaterialPageRoute(builder: (context) => Platform()),
              )
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.grey)
    );
  }
}
