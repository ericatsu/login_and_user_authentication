import 'dart:html';

import 'package:flutter/material.dart';

class formData extends StatefulWidget {
  const formData({Key? key}) : super(key: key);

  @override
  State<formData> createState() => _formDataState();
}

class _formDataState extends State<formData> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Name', false),
        buildInputForm('Email', false),
        buildInputForm('Phone number', false),
        buildInputForm('Country', false),
        buildInputForm('Identification Type(Optional)', false),
        buildInputForm('ID Number', false),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black12),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black26)),
          ),
        )
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> IdItems = [
    DropdownMenuItem(child: Text("Identification Type(optional)", style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),), value: "Identification Type(optional)"),
    DropdownMenuItem(child: Text("NHIS Card"), value: "NHIS Card"),
    DropdownMenuItem(child: Text("Ghana Card"), value: "Ghana Card"),
    DropdownMenuItem(child: Text("Others"), value: "Others"),
  ];
  return IdItems;
}
