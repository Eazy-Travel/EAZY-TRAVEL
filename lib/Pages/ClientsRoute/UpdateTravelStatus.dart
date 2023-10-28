import 'package:firebase_core/firebase_core.dart';
import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/TextField.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../DataBaseOperations/SampleDb.dart';


Future addUserDetails(
    String From,String To,
    String DepartureTime,
    String Price) async {
  await FirebaseFirestore.instance.collection('users').add({
    "From":From,
    'To':To,
    "Departure Time":DepartureTime,
    "Price":Price

  });
}


class UpdateSchedule extends StatefulWidget {
  const UpdateSchedule({super.key});

  @override
  State<UpdateSchedule> createState() => _UpdateScheduleState();
}

class _UpdateScheduleState extends State<UpdateSchedule> {
  TextEditingController _JourneyStartController=TextEditingController();
  TextEditingController _DestinationController=TextEditingController();
  TextEditingController _RouteController=TextEditingController();
  TextEditingController _DepartureTimeController=TextEditingController();
  TextEditingController _PriceController=TextEditingController();
  @override
  void dispose(){

  _JourneyStartController.dispose();
  _DestinationController.dispose();
  _RouteController.dispose();
  _DepartureTimeController.dispose();
  _PriceController.dispose();
  super.dispose();
  }
  //add Bus details
  Future addBusdetails(
      String From,
      String to,
      String Route,
      String Depature
      ,String Price ) async{
    await FirebaseFirestore.instance.collection("Bus Details").add({
      'From':From,
      'to':to,
      'Route':Route,
      'Depature':Depature,
      'Price':Price,
    });
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 4;
    final height7 = MediaQuery.of(context).size.height / 7;
    final height10 = MediaQuery.of(context).size.height / 10;
    final height20= MediaQuery.of(context).size.height / 20;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          title: Text("Update Schedule"
          ),
          actions: [
            IconButton(onPressed: () {  }, icon:const Icon(Icons.help)),

          ],
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(right: 20,left: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height20),
                  Text("From"),
                  TextFed(hintText: 'from',
                      obscureText: false,
                      labeltext:' from',
                      controller:_JourneyStartController),
                  SizedBox(height: 14,),
                  Text("To"),
                  TextFed(hintText: "destination",
                      obscureText: false,
                      labeltext:"Destination",
                      controller:_DestinationController),
                  SizedBox(height: 14),
                  Text("Route"),
                  TextFed(hintText: "xxxxx-xxxxx",
                      obscureText: false,
                      labeltext:"route used",
                      controller:_RouteController),
                  SizedBox(height: 14),
                  Text("Departure"),
                  TextFed(hintText: "9:00AmM",
                      obscureText: false,
                      labeltext:"Set Off time",
                      controller:_DepartureTimeController),
                  SizedBox(height: 14),
                  Text("Price"),
                  TextFed(hintText: "UGX xx,xxx",
                      obscureText: true,
                      labeltext:"Fee",
                      controller:_PriceController),
                  CustomButton(
                      text: "Submit",
                      txtColor: Colors.black,
                      size: 140,
                      btnColor: Colors.tealAccent,
                      onTap: (){



                        addBusdetails(
                          _JourneyStartController.text.trim(),
                          _DestinationController.text.trim(),
                          _RouteController.text.trim(),
                          _DepartureTimeController.text.trim(),
                          _PriceController.text.trim(),
                        );
                      })
                ],
              )
          ),
        )
    );
  }
}

