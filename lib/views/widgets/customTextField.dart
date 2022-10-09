import 'package:flutter/material.dart';

Widget customTextfield( String label,
    Size size, String hintText, IconData icon, TextEditingController cont,bool obscure) {
  return Container(
    height: size.height / 9,
    width: size.width / 1.1,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: label,
                style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.black45),
                children: const <TextSpan>[
                  TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w100)),
                ],
              ),
            ),
          ),
        ),
        TextField(
          controller: cont,
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor:Color(0xffffffff) ,
            //prefixIcon: Icon(icon),
            suffixIcon: Icon(icon,
                color: Colors.black),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    ),
  );
}



Widget customEmailfield( String label,
    Size size, String hintText, TextEditingController cont,bool obscure) {
  return Container(
    height: size.height / 9,
    width: size.width / 1.1,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: label,
                style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black45),
                children: const <TextSpan>[
                  TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w100)),
                ],
              ),
            ),
          ),
        ),
        TextField(
          controller: cont,
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true,
            fillColor:Color(0xffffffff) ,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    ),
  );
}