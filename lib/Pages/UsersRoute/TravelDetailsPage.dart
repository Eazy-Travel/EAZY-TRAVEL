import 'package:project_1/Widgets/CustomButton.dart';
import 'package:project_1/Widgets/TextField.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Widgets/TopRow.dart';
import 'BookSeatPage.dart';
import 'PaymentMM.dart';

class TravelDetails extends StatefulWidget {
  const TravelDetails({super.key});

  @override
  State<TravelDetails> createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  TextEditingController userName=TextEditingController();
  TextEditingController userPass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 4;
    final height7 = MediaQuery.of(context).size.height / 7;
    final height10 = MediaQuery.of(context).size.height / 10;
    final height15= MediaQuery.of(context).size.height / 15;
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.blue[900],
      title: Text("Travel details",
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
                TopRow(text: "Travel Details"),
                SizedBox(height: height15),
                Text("From"),
                TextFed(hintText: 'from',
                    obscureText: false,
                    labeltext:' from',
                    controller:userName),
                SizedBox(height: 14,),
                Text("To"),
                TextFed(hintText: "destination",
                    obscureText: true,
                    labeltext:"Destination",
                    controller:userPass),
                SizedBox(height: 14,),
                Text("Dates"),
                TextFed(hintText: "02/03/2023",
                    obscureText: true,
                    labeltext:"Date of travel",
                    controller:userPass),
                SizedBox(height: 14,),
                CustomButton(
                    text: "Search",
                    txtColor: Colors.black,
                    size: 140,
                    btnColor: Colors.tealAccent,
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>BookSeatPage()
                        /*CreateAccountPage()*/));
                    })
              ],
            )
          ),
        ));
  }
}

