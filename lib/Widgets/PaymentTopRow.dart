import "package:flutter/material.dart";

class PaymentTopRow extends StatelessWidget {
  final String text;


  const PaymentTopRow({super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight=MediaQuery.of(context).size.height;
    return  Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 20,top:10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image.asset("assets/AirtelMtn.jpg"), ),

            SizedBox(width:10),
            Text(text,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style:TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.8)
                ) ),



            /*Text( screenHeight.toString(),
                style:TextStyle(
                  fontSize: 18,
                ) ,) ,*/


          ]
      ),
    );}}
