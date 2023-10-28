import 'package:flutter/material.dart';

class BusSeat extends StatefulWidget {
  final Color initColor;
  const BusSeat({super.key, required this.initColor});

  @override
  State<BusSeat> createState() => _BusSeatState();
}

class _BusSeatState extends State<BusSeat> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 40,
      width:40,
      padding: EdgeInsets.all(3),
      /* decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(4),
        color:Colors.lightGreen,
      ),*/

    );
  }
}
