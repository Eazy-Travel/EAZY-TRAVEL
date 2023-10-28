import 'package:flutter/material.dart';

import '../Pages/UsersRoute/TravelDetailsPage.dart';
import 'CustomButton.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 80,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    label: Text('Track Journey'),
                    icon: Icon(Icons.location_pin),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(140, 100),
                        primary: Colors.pink,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    label: Text('Set timer'),
                    icon: Icon(Icons.timer),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,

                        maximumSize: Size(140, 100),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    label: Text('Set reminder'),
                    icon: Icon(Icons.remember_me),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(140, 100),
                        primary: Colors.deepOrange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: 3),
    );
  }
}
