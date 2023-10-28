import 'package:flutter/material.dart';

class SquareBox extends StatelessWidget {

  final String btnName;
  final Color? BGcolor;
  final  Icon? icon;
  final TextStyle? textstyle;
  final  VoidCallback? callBack;


  const SquareBox({super.key,
    required this.icon,
    required this.btnName, this.callBack, this.BGcolor, this.textstyle
  });

  @override
  Widget build(BuildContext context) {
    final btnWidth=MediaQuery.of(context).size.width;
    final btnHeight=MediaQuery.of(context).size.height/10;
    return Container(
      padding: EdgeInsets.all(2),
      width: btnWidth,
      height: btnHeight   ,
        decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),

      ),
      child:ElevatedButton(

        onPressed: () { callBack!(); },
      style: ElevatedButton.styleFrom(
        backgroundColor:BGcolor,
        //shadowColor: BGcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),

          )
        ),

      ),
        child: Icon!=null ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children:[
            icon!,
            Text(btnName, style:textstyle),
            icon!,
          ]
        ):Text(btnName, style:textstyle),
      )
    );
  }
}
