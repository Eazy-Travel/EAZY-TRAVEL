import 'package:flutter/material.dart';
import '../Pages/ClientsRoute/UpdateTravelStatus.dart';

class ClientCustomRow extends StatelessWidget {

  const ClientCustomRow({super.key, this.icon, this.text, required this.scrollController});

  final IconData? icon;
  final String? text;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 80,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          itemBuilder: (context, index) {

            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    label: Text('Track Busses'),
                    icon: Icon(Icons.location_pin),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(140, 100),
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    label: Text('Add Bus to schedule'),
                    icon: Icon(Icons.add),
                    onPressed: () {

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>UpdateSchedule()));
                    },
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
                    label: Text('Post'),
                    icon: Icon(Icons.remember_me),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(140, 100),
                        primary: Colors.deepOrange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    label: Text('View Cancellatiions'),
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
