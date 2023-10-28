import "package:flutter/material.dart";

class TopRow extends StatelessWidget {
  final String text;



  const TopRow({super.key,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    final screenHeight=MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style:TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.8)
                ) ),


            SizedBox(width: 50),
            Icon(
              Icons.notifications,
              size: 40,
            )

          ]
      ),
    );

  }}

