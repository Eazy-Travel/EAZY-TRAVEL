
import 'package:flutter/material.dart';
class  TextFed extends StatelessWidget {
  const TextFed({super.key,
    required this.hintText,
    required this.obscureText,
    this.pic,
    required this.labeltext,
    this.controller});

  final String hintText;
  final bool obscureText;
  final String? pic;
  final String labeltext;
  final controller;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:3, right: 3),
        child: TextField(
          controller:controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30.0))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:     BorderSide(color: Colors.grey.shade50,
            ),

          ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,

    ),
    ));
  }
}

/*
Widget textfild(){
  return  Container(
    height: 70.0,
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    margin: EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 10.0,

    ),

    decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius:BorderRadius.circular(20.0),
    ),

  );
}

*/