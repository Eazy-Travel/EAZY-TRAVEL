import 'package:flutter/material.dart';

import '../Pages/UsersRoute/TravelDetailsPage.dart';
import 'CustomButton.dart';

class FeaturedVehicleBox extends StatefulWidget {
  const FeaturedVehicleBox({super.key});

  @override
  State<FeaturedVehicleBox> createState() => _FeaturedVehicleBoxState();
}

class _FeaturedVehicleBoxState extends State<FeaturedVehicleBox> {
  @override
  Widget build(BuildContext context) {
    final heightBox = MediaQuery.of(context).size.height * 0.5;
    final widthBox = MediaQuery.of(context).size.width * 0.3;
    return SizedBox(

      height:290,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

            return  SizedBox(
            width:200,
            child:Card(
              elevation: 0.5,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                 Radius.circular(17),
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:Image.asset( "assets/bus.webp",
                          height:150,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height:5),
                      Container(
                          child:
                          Text("Link Bus ",
                            style: TextStyle(
                                color:Colors.black
                            ),
                          )
                      ),
                      SizedBox(height:5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.event_seat),
                          SizedBox(width: 6),
                          Text("Seats",
                            style: TextStyle(
                                color:Colors.black
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.route_sharp),
                          SizedBox(width: 6),
                          Text("Routes",
                            style: TextStyle(
                                color:Colors.black
                            ),
                          )
                        ],
                      ),
                      SizedBox(height:5),
                      CustomButton(
                        text: "Reserve Now",
                        txtColor: Colors.white,
                        size: 110,
                        btnColor: Colors.blueAccent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TravelDetails(),
                              ));
                        },)
                ]),
              ),
            )
            ));
          },
          separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 3)),
          itemCount: 5),
    );













    /*Container(
      padding: const EdgeInsets.only(left: 65, right: 65),
      height: heightBox,
      width: widthBox,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.white,
        width: 2,
      )),
      child: Column(children: <Widget>[
        Text("FEATURED VEHICLES"),
        Expanded(flex: 1, child: Image.asset("assets/bus.webp")),
        SizedBox(
          height: 8,
        ),
        Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Link Bus Carriers", style: TextStyle(fontSize: 24)),
                    SizedBox(height: 2),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.event_seat),
                             SizedBox(width: 10),
                             Text(" 15 Seats"),
                            SizedBox(width: 10),
                            Icon(Icons.route),
                            SizedBox(width: 10),
                             Text("routes"),
                      ],
                    )),
                    SizedBox(height: 2),
                    CustomButton(
                        text: 'Reserve Now',
                        btnColor: Colors.yellowAccent,
                        txtColor: Colors.black54,
                        size: 120,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TravelDetails()));
                        }),
                    SizedBox(height: 2),
                  ]),
            )),
      ]),
    );*/
  }
}
