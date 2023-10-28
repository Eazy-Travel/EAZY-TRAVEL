import 'package:flutter/material.dart';
import '../Pages/UsersRoute/TravelDetailsPage.dart';
import 'CustomButton.dart';

class PopularJourneyBox extends StatelessWidget {
  const PopularJourneyBox({super.key});

  @override
  Widget build(BuildContext context) {
    final heightBox = MediaQuery.of(context).size.height * 0.5;
    final widthBox = MediaQuery.of(context).size.width * 0.3;
    return SizedBox(

      height:220,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {

            return  SizedBox(
                width:220,
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
                      padding: const EdgeInsets.all(3),
                      child: Column(
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
                          Row(
                            children: [
                              SizedBox(width: 4),
                              Icon(Icons.route_sharp),
                              SizedBox(width: 4),
                              Text("Routes",
                                style: TextStyle(
                                    color:Colors.black
                                ),
                              )
                            ],
                          ),
                          CustomButton(
                              text: "Reserve Now",
                              txtColor: Colors.white,
                              size: 80,
                              btnColor: Colors.blueAccent,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TravelDetails(),
                                    ));
                              },)

                        ],
                      ),
                    ),
                  ),
                )
            );
          },
          separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 10)),
          itemCount: 5),
    );
  }
}