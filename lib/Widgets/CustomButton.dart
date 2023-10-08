//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color? txtColor;
  final Color btnColor;
  double size;

  CustomButton({super.key,
    //required this.onTap,
    required this.text,
    required this.txtColor,
    required this.size,
    required this.btnColor, required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child:Container(
          width: size,
          height:40,
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child:Text(
              text,
              style: TextStyle(
                color:txtColor,
                fontWeight:FontWeight.bold,
              ),
            ),

          ),
        )
    );

  }
}
