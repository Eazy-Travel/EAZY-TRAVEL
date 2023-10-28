import 'package:flutter/material.dart';
import 'package:project_1/Widgets/PopularJourneys.dart';
import '../../Widgets/CustomRow.dart';
import '../../Widgets/FeaturedVehiclesBox.dart';
import '../../Widgets/Search_Bar.dart';
import '../../Widgets/TextField.dart';
import '../../Widgets/TopRow.dart';


class HomeTab extends StatefulWidget {
   HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  TextEditingController search = TextEditingController();
  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topLeft,
            )),
            child: ListView(
              children: [
                TopRow(
                  text: 'Hi,Good Morning }',
                ),
                SizedBox(
                  height: 20,
                ),
                SearchBarz(),
                SizedBox(
                  height: 10,
                ),
                CustomRow(icon: Icons.location_pin,text: "Track Journey"),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 38,
                  child: const  Text('Featured Vehicles',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                  ),
                )),
                //CustomRow(),
                SizedBox(
                  height: 9,
                ),
                FeaturedVehicleBox(),
                SizedBox(height: 10),
                Container(
                    height: 50,
                    child: const  Text('Popular Journeys',
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    )),
                PopularJourneyBox(),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  color: Colors.lime[600],
                )
              ],
            )));
  }
}

